.class public Lcom/android/server/stats/pull/StatsPullAtomService;
.super Lcom/android/server/SystemService;
.source "StatsPullAtomService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;,
        Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;,
        Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;,
        Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;,
        Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    }
.end annotation


# static fields
.field private static final APP_OPS_SAMPLING_INITIALIZATION_DELAY_MILLIS:J = 0xafc8L

.field private static final APP_OPS_SIZE_ESTIMATE:I = 0x7d0

.field private static final APP_OPS_TARGET_COLLECTION_SIZE:Ljava/lang/String; = "app_ops_target_collection_size"

.field private static final COMMON_PERMISSION_PREFIX:Ljava/lang/String; = "android.permission."

.field private static final CPU_CYCLES_PER_UID_CLUSTER_VALUES:I = 0x3

.field private static final CPU_TIME_PER_THREAD_FREQ_MAX_NUM_FREQUENCIES:I = 0x8

.field private static final DANGEROUS_PERMISSION_STATE_SAMPLE_RATE:Ljava/lang/String; = "dangerous_permission_state_sample_rate"

.field private static final DEBUG:Z = true

.field private static final DIMENSION_KEY_SIZE_HARD_LIMIT:I = 0x320

.field private static final DIMENSION_KEY_SIZE_SOFT_LIMIT:I = 0x1f4

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAX_PROCSTATS_RAW_SHARD_SIZE:I = 0xe666

.field private static final MAX_PROCSTATS_SHARDS:I = 0x5

.field private static final MAX_PROCSTATS_SHARD_SIZE:I = 0xc000

.field private static final MILLIS_PER_SEC:J = 0x3e8L

.field private static final MILLI_AMP_HR_TO_NANO_AMP_SECS:J = 0xd693a400L

.field private static final MIN_CPU_TIME_PER_UID_FREQ:I = 0xa

.field private static final NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

.field private static final OP_FLAGS_PULLED:I = 0x9

.field private static final RANDOM_SEED:I

.field private static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field private static final TAG:Ljava/lang/String; = "StatsPullAtomService"


# instance fields
.field private final mAppOpsLock:Ljava/lang/Object;

.field private mAppOpsSamplingRate:I

.field private final mAppSizeLock:Ljava/lang/Object;

.field private final mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

.field private final mAttributedAppOpsLock:Ljava/lang/Object;

.field private mBaseDir:Ljava/io/File;

.field private final mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

.field private final mBinderCallsStatsLock:Ljava/lang/Object;

.field private final mBluetoothActivityInfoLock:Ljava/lang/Object;

.field private final mBluetoothBytesTransferLock:Ljava/lang/Object;

.field private final mBuildInformationLock:Ljava/lang/Object;

.field private final mCategorySizeLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mCooldownDeviceLock:Ljava/lang/Object;

.field private final mCpuActiveTimeLock:Ljava/lang/Object;

.field private final mCpuClusterTimeLock:Ljava/lang/Object;

.field private final mCpuTimePerClusterFreqLock:Ljava/lang/Object;

.field private final mCpuTimePerThreadFreqLock:Ljava/lang/Object;

.field private final mCpuTimePerUidFreqLock:Ljava/lang/Object;

.field private final mCpuTimePerUidLock:Ljava/lang/Object;

.field private mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

.field private mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

.field private mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

.field private mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

.field private final mDangerousAppOpsList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDangerousAppOpsListLock:Ljava/lang/Object;

.field private final mDangerousPermissionStateLock:Ljava/lang/Object;

.field private final mDataBytesTransferLock:Ljava/lang/Object;

.field private final mDebugElapsedClockLock:Ljava/lang/Object;

.field private mDebugElapsedClockPreviousValue:J

.field private mDebugElapsedClockPullCount:J

.field private final mDebugFailingElapsedClockLock:Ljava/lang/Object;

.field private mDebugFailingElapsedClockPreviousValue:J

.field private mDebugFailingElapsedClockPullCount:J

.field private final mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

.field private final mDirectoryUsageLock:Ljava/lang/Object;

.field private final mDiskIoLock:Ljava/lang/Object;

.field private final mDiskStatsLock:Ljava/lang/Object;

.field private final mExternalStorageInfoLock:Ljava/lang/Object;

.field private final mFaceSettingsLock:Ljava/lang/Object;

.field private final mHealthHalLock:Ljava/lang/Object;

.field private mHealthService:Lcom/android/server/health/HealthServiceWrapper;

.field private final mHistoricalSubs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/stats/pull/netstats/SubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

.field private final mInstalledIncrementalPackagesLock:Ljava/lang/Object;

.field private final mIonHeapSizeLock:Ljava/lang/Object;

.field private mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

.field private final mKernelWakelockLock:Ljava/lang/Object;

.field private mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

.field private final mKeystoreLock:Ljava/lang/Object;

.field private final mLooperStatsLock:Ljava/lang/Object;

.field private final mModemActivityInfoLock:Ljava/lang/Object;

.field private final mNetworkStatsBaselines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field private mNotificationManagerService:Landroid/app/INotificationManager;

.field private final mNotificationRemoteViewsLock:Ljava/lang/Object;

.field private final mNotificationStatsLock:Ljava/lang/Object;

.field private final mNumBiometricsEnrolledLock:Ljava/lang/Object;

.field private final mPowerProfileLock:Ljava/lang/Object;

.field private final mProcStatsLock:Ljava/lang/Object;

.field private final mProcessCpuTimeLock:Ljava/lang/Object;

.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private final mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

.field private final mProcessMemoryStateLock:Ljava/lang/Object;

.field private mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

.field private final mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

.field private final mRoleHolderLock:Ljava/lang/Object;

.field private final mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

.field private final mSettingsStatsLock:Ljava/lang/Object;

.field private mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

.field private mStatsManager:Landroid/app/StatsManager;

.field private mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageService:Landroid/os/IStoraged;

.field private final mStoragedLock:Ljava/lang/Object;

.field private mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

.field private final mSystemElapsedRealtimeLock:Ljava/lang/Object;

.field private final mSystemIonHeapSizeLock:Ljava/lang/Object;

.field private final mSystemUptimeLock:Ljava/lang/Object;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private final mTemperatureLock:Ljava/lang/Object;

.field private final mThermalLock:Ljava/lang/Object;

.field private mThermalService:Landroid/os/IThermalService;

.field private final mTimeZoneDataInfoLock:Ljava/lang/Object;

.field private final mTimeZoneDetectionInfoLock:Ljava/lang/Object;

.field private mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

.field private final mWifiActivityInfoLock:Ljava/lang/Object;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppsOnExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAttributedAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBinderCallsStatsExceptionsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBinderCallsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBuildInformationLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCategorySizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCooldownDeviceLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCpuActiveTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCpuClusterTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCpuTimePerClusterFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerClusterFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCpuTimePerThreadFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCpuTimePerUidLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDangerousPermissionStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDebugElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDebugFailingElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceCalculatedPowerUseLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDirectoryUsageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDiskIoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDiskStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceSettingsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHealthHalLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHistoricalSubs(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstalledIncrementalPackagesLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mInstalledIncrementalPackagesLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKernelWakelockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLooperStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModemActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkStatsBaselines(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationRemoteViewsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerProfileLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessCpuTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessMemoryHighWaterMarkLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessMemoryStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoleHolderLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRuntimeAppOpAccessMessageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemElapsedRealtimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemUptimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephony(Lcom/android/server/stats/pull/StatsPullAtomService;)Landroid/telephony/TelephonyManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemperatureLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeZoneDataInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeZoneDetectionInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDetectionInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mestimateAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->estimateAppOpsSamplingRate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpullDataBytesTransferLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDataBytesTransferLocked(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNumBiometricsEnrolledLocked(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpullPendingIntentsPerPackage(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPendingIntentsPerPackage(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcStatsLocked(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetRANDOM_SEED()I
    .registers 1

    sget v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 258
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 277
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 452
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 307
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    .line 311
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    .line 325
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    .line 327
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 330
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 332
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 375
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsListLock:Ljava/lang/Object;

    .line 376
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    .line 398
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    .line 399
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    .line 400
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    .line 401
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerClusterFreqLock:Ljava/lang/Object;

    .line 402
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    .line 403
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    .line 404
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    .line 405
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    .line 406
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    .line 407
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    .line 408
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    .line 409
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    .line 410
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    .line 411
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;

    .line 412
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    .line 413
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 414
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    .line 415
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 416
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    .line 417
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    .line 418
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    .line 419
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    .line 420
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    .line 421
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    .line 422
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    .line 423
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    .line 424
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    .line 425
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    .line 426
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    .line 427
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    .line 428
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    .line 429
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    .line 430
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    .line 431
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    .line 432
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    .line 433
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    .line 434
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    .line 435
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    .line 436
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    .line 437
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDetectionInfoLock:Ljava/lang/Object;

    .line 438
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    .line 439
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    .line 440
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    .line 441
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    .line 442
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    .line 443
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    .line 444
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    .line 445
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    .line 446
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    .line 447
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    .line 448
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mInstalledIncrementalPackagesLock:Ljava/lang/Object;

    .line 449
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    .line 453
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 454
    return-void
.end method

.method private addBytesTransferByTagAndMeteredAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .registers 18
    .param p1, "statsExt"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1242
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStats$Entry;

    .line 1243
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/16 v3, 0x2763

    .line 1244
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v4

    .line 1245
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getMetered()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_23

    move v5, v6

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    :goto_24
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v6

    .line 1246
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v9

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v11

    .line 1247
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v13

    .line 1243
    invoke-static/range {v3 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZIJJJJ)Landroid/util/StatsEvent;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    goto :goto_8

    .line 1249
    :cond_42
    move-object/from16 v4, p2

    return-void
.end method

.method private static addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V
    .registers 21
    .param p0, "atomTag"    # I
    .param p2, "threadGroup"    # I
    .param p3, "cpuTimesUs"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;I[J)V"
        }
    .end annotation

    .line 1940
    .local p1, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p3

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v1

    .line 1941
    .local v1, "freqsClusters":[I
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v2

    .line 1942
    .local v2, "clusters":I
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v3

    .line 1943
    .local v3, "freqs":[J
    new-array v4, v2, [J

    .line 1944
    .local v4, "aggregatedCycles":[J
    new-array v5, v2, [J

    .line 1945
    .local v5, "aggregatedTimesUs":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_13
    array-length v7, v0

    const-wide/16 v8, 0x3e8

    if-ge v6, v7, :cond_31

    .line 1946
    aget v7, v1, v6

    aget-wide v10, v4, v7

    aget-wide v12, v3, v6

    aget-wide v14, v0, v6

    mul-long/2addr v12, v14

    div-long/2addr v12, v8

    add-long/2addr v10, v12

    aput-wide v10, v4, v7

    .line 1947
    aget v7, v1, v6

    aget-wide v8, v5, v7

    aget-wide v10, v0, v6

    add-long/2addr v8, v10

    aput-wide v8, v5, v7

    .line 1945
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 1949
    .end local v6    # "i":I
    :cond_31
    const/4 v6, 0x0

    .local v6, "cluster":I
    :goto_32
    if-ge v6, v2, :cond_50

    .line 1950
    aget-wide v10, v4, v6

    const-wide/32 v12, 0xf4240

    div-long v13, v10, v12

    aget-wide v10, v5, v6

    div-long v15, v10, v8

    move/from16 v10, p0

    move/from16 v11, p2

    move v12, v6

    invoke-static/range {v10 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJ)Landroid/util/StatsEvent;

    move-result-object v7

    move-object/from16 v10, p1

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1949
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_50
    move-object/from16 v10, p1

    .line 1954
    .end local v6    # "cluster":I
    return-void
.end method

.method private addDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .registers 26
    .param p1, "statsExt"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1258
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-ne v1, v4, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    .line 1260
    .local v1, "is5GNsa":Z
    :goto_c
    if-nez v1, :cond_18

    iget v4, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_15

    goto :goto_18

    :cond_15
    move/from16 v21, v3

    goto :goto_1a

    :cond_18
    :goto_18
    move/from16 v21, v2

    .line 1262
    .local v21, "isNR":Z
    :goto_1a
    iget-object v2, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v2}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats$Entry;

    .line 1263
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    nop

    .line 1265
    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v7

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1266
    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    .line 1267
    if-eqz v1, :cond_46

    const/16 v4, 0xd

    goto :goto_48

    :cond_46
    iget v4, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    :goto_48
    move/from16 v16, v4

    iget-object v4, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-object v4, v4, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-object v5, v5, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget v6, v6, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    .line 1271
    move/from16 v22, v1

    .end local v1    # "is5GNsa":Z
    .local v22, "is5GNsa":Z
    iget-object v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-boolean v1, v1, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    if-eqz v1, :cond_62

    .line 1272
    const/4 v1, 0x2

    move/from16 v20, v1

    goto :goto_65

    .line 1273
    :cond_62
    const/4 v1, 0x3

    move/from16 v20, v1

    .line 1263
    :goto_65
    move/from16 v19, v6

    const/16 v1, 0x2762

    move v6, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-static/range {v6 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJILjava/lang/String;Ljava/lang/String;IIZ)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v4, p2

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    move/from16 v1, v22

    goto :goto_20

    .line 1276
    .end local v22    # "is5GNsa":Z
    .restart local v1    # "is5GNsa":Z
    :cond_7a
    return-void
.end method

.method private addNetworkStats(ILjava/util/List;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V
    .registers 19
    .param p1, "atomTag"    # I
    .param p3, "statsExt"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ")V"
        }
    .end annotation

    .line 1222
    .local p2, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStats$Entry;

    .line 1224
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    iget-boolean v3, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    if-eqz v3, :cond_3e

    .line 1226
    nop

    .line 1227
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v5

    .line 1228
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    if-lez v3, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :goto_26
    move v6, v3

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v9

    .line 1229
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v11

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v13

    .line 1226
    move/from16 v4, p1

    invoke-static/range {v4 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZJJJJ)Landroid/util/StatsEvent;

    move-result-object v3

    .local v3, "statsEvent":Landroid/util/StatsEvent;
    goto :goto_59

    .line 1232
    .end local v3    # "statsEvent":Landroid/util/StatsEvent;
    :cond_3e
    nop

    .line 1233
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v5

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v6

    .line 1234
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v10

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v12

    .line 1232
    move/from16 v4, p1

    invoke-static/range {v4 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJ)Landroid/util/StatsEvent;

    move-result-object v3

    .line 1236
    .restart local v3    # "statsEvent":Landroid/util/StatsEvent;
    :goto_59
    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v3    # "statsEvent":Landroid/util/StatsEvent;
    goto :goto_8

    .line 1238
    :cond_5f
    move-object/from16 v4, p2

    return-void
.end method

.method private addOemDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .registers 27
    .param p1, "statsExt"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1280
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    .line 1281
    .local v14, "oemManaged":I
    iget-object v15, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    array-length v12, v15

    const/16 v16, 0x0

    move/from16 v13, v16

    :goto_b
    if-ge v13, v12, :cond_63

    aget v17, v15, v13

    .line 1282
    .local v17, "transport":I
    iget-object v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_15
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/net/NetworkStats$Entry;

    .line 1283
    .local v19, "entry":Landroid/net/NetworkStats$Entry;
    const/16 v1, 0x2774

    .line 1284
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    .line 1285
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    if-lez v3, :cond_31

    const/4 v3, 0x1

    goto :goto_33

    :cond_31
    move/from16 v3, v16

    :goto_33
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v6

    .line 1286
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v8

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v10

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v20

    .line 1283
    move v4, v14

    move/from16 v5, v17

    move/from16 v22, v12

    move/from16 v23, v13

    move-wide/from16 v12, v20

    invoke-static/range {v1 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZIIJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1287
    .end local v19    # "entry":Landroid/net/NetworkStats$Entry;
    move/from16 v12, v22

    move/from16 v13, v23

    goto :goto_15

    .line 1282
    :cond_5a
    move-object/from16 v2, p2

    move/from16 v22, v12

    move/from16 v23, v13

    .line 1281
    .end local v17    # "transport":I
    add-int/lit8 v13, v23, 0x1

    goto :goto_b

    .line 1289
    :cond_63
    move-object/from16 v2, p2

    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .registers 5
    .param p0, "receiver"    # Landroid/os/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    .line 1610
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1611
    return-object v0

    .line 1615
    :cond_4
    const-wide/16 v1, 0x7d0

    .line 1616
    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 1617
    .local v1, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1f

    .line 1619
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 1621
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2
    :try_end_1c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_1c} :catch_20

    .line 1622
    .local v2, "data":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_1f

    .line 1623
    return-object v2

    .line 1628
    .end local v1    # "result":Landroid/os/SynchronousResultReceiver$Result;
    .end local v2    # "data":Landroid/os/Parcelable;, "TT;"
    :cond_1f
    goto :goto_44

    .line 1626
    :catch_20
    move-exception v1

    .line 1627
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatsPullAtomService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_44
    return-object v0
.end method

.method private collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;
    .registers 16
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation

    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_e8

    .line 1159
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown atomTag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1155
    :sswitch_23
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForOemManaged()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1156
    goto/16 :goto_e6

    .line 1133
    :sswitch_2c
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1134
    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 1133
    invoke-direct {p0, v1, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1135
    .local v1, "wifiStats":Landroid/net/NetworkStats;
    new-instance v3, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v3, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1137
    invoke-virtual {v3, v2}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 1135
    invoke-direct {p0, v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v2

    .line 1138
    .local v2, "cellularStats":Landroid/net/NetworkStats;
    if-eqz v1, :cond_e6

    if-eqz v2, :cond_e6

    .line 1139
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1140
    .local v3, "stats":Landroid/net/NetworkStats;
    new-instance v13, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    const/4 v4, 0x2

    new-array v6, v4, [I

    fill-array-data v6, :array_106

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    .end local v3    # "stats":Landroid/net/NetworkStats;
    goto/16 :goto_e6

    .line 1149
    .end local v1    # "wifiStats":Landroid/net/NetworkStats;
    .end local v2    # "cellularStats":Landroid/net/NetworkStats;
    :sswitch_6e
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_74
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 1150
    .local v2, "subInfo":Lcom/android/server/stats/pull/netstats/SubInfo;
    invoke-direct {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1151
    .end local v2    # "subInfo":Lcom/android/server/stats/pull/netstats/SubInfo;
    goto :goto_74

    .line 1152
    :cond_88
    goto :goto_e6

    .line 1124
    :sswitch_89
    nop

    .line 1125
    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1126
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    if-eqz v3, :cond_e6

    .line 1127
    new-instance v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    new-array v6, v2, [I

    aput v1, v6, v1

    invoke-direct {v4, v5, v6, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e6

    .line 1115
    .end local v3    # "stats":Landroid/net/NetworkStats;
    :sswitch_a1
    nop

    .line 1116
    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1117
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    if-eqz v3, :cond_e6

    .line 1118
    new-instance v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    new-array v2, v2, [I

    aput v1, v2, v1

    invoke-direct {v4, v5, v2, v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e6

    .line 1107
    .end local v3    # "stats":Landroid/net/NetworkStats;
    :sswitch_b9
    invoke-direct {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1108
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    if-eqz v3, :cond_e6

    .line 1109
    new-instance v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    new-array v6, v2, [I

    aput v2, v6, v1

    invoke-direct {v4, v5, v6, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e6

    .line 1099
    .end local v3    # "stats":Landroid/net/NetworkStats;
    :sswitch_d0
    invoke-direct {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1100
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    if-eqz v3, :cond_e6

    .line 1101
    new-instance v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    new-array v6, v2, [I

    aput v2, v6, v1

    invoke-direct {v4, v5, v6, v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    .end local v3    # "stats":Landroid/net/NetworkStats;
    :cond_e6
    :goto_e6
    return-object v0

    nop

    :sswitch_data_e8
    .sparse-switch
        0x2710 -> :sswitch_d0
        0x2711 -> :sswitch_b9
        0x2712 -> :sswitch_a1
        0x2713 -> :sswitch_89
        0x2762 -> :sswitch_6e
        0x2763 -> :sswitch_2c
        0x2774 -> :sswitch_23
    .end sparse-switch

    :array_106
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method private static convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B
    .registers 11
    .param p0, "suggestion"    # Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 3428
    if-nez p0, :cond_4

    .line 3429
    const/4 v0, 0x0

    return-object v0

    .line 3434
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3435
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3436
    .local v1, "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->isCertain()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3437
    const/4 v2, 0x1

    goto :goto_17

    .line 3438
    :cond_16
    const/4 v2, 0x2

    :goto_17
    nop

    .line 3439
    .local v2, "typeProtoValue":I
    const-wide v3, 0x10e00000001L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3441
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->isCertain()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 3442
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->getZoneIdOrdinals()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_2d
    if-ge v6, v4, :cond_3c

    aget v7, v3, v6

    .line 3443
    .local v7, "zoneIdOrdinal":I
    const-wide v8, 0x20500000002L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3442
    .end local v7    # "zoneIdOrdinal":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 3447
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->getZoneIds()[Ljava/lang/String;

    move-result-object v3

    .line 3448
    .local v3, "zoneIds":[Ljava/lang/String;
    if-eqz v3, :cond_52

    .line 3449
    array-length v4, v3

    :goto_43
    if-ge v5, v4, :cond_52

    aget-object v6, v3, v5

    .line 3450
    .local v6, "zoneId":Ljava/lang/String;
    const-wide v7, 0x20900000003L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3449
    .end local v6    # "zoneId":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 3456
    .end local v3    # "zoneIds":[Ljava/lang/String;
    :cond_52
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3457
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3458
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private convertToAccessibilityShortcutType(I)I
    .registers 3
    .param p1, "shortcutType"    # I

    .line 4774
    packed-switch p1, :pswitch_data_c

    .line 4782
    const/4 v0, 0x0

    return v0

    .line 4780
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 4778
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 4776
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static convertToMetricsDetectionMode(I)I
    .registers 2
    .param p0, "detectionMode"    # I

    .line 3413
    packed-switch p0, :pswitch_data_c

    .line 3421
    const/4 v0, 0x0

    return v0

    .line 3419
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 3417
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 3415
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private countAccessibilityServices(Ljava/lang/String;)I
    .registers 6
    .param p1, "semicolonList"    # Ljava/lang/String;

    .line 4736
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4737
    return v1

    .line 4739
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v2

    long-to-int v0, v2

    .line 4740
    .local v0, "semiColonNums":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_23

    :cond_21
    add-int/lit8 v1, v0, 0x1

    :goto_23
    return v1
.end method

.method private createModeGroups([Landroid/view/Display$Mode;)Ljava/util/Map;
    .registers 15
    .param p1, "supportedModes"    # [Landroid/view/Display$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/Display$Mode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4698
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4699
    .local v0, "modeGroupIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .line 4700
    .local v1, "groupId":I
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v2, :cond_61

    aget-object v5, p1, v4

    .line 4701
    .local v5, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 4702
    goto :goto_5e

    .line 4704
    :cond_1c
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4705
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_31
    if-ge v8, v7, :cond_5c

    aget v9, v6, v8

    .line 4706
    .local v9, "refreshRate":F
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v10

    .line 4707
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v11

    .line 4706
    invoke-direct {p0, p1, v10, v11, v9}, Lcom/android/server/stats/pull/StatsPullAtomService;->findModeId([Landroid/view/Display$Mode;IIF)I

    move-result v10

    .line 4708
    .local v10, "alternativeModeId":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_59

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_59

    .line 4709
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4705
    .end local v9    # "refreshRate":F
    .end local v10    # "alternativeModeId":I
    :cond_59
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    .line 4712
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    .line 4700
    .end local v5    # "mode":Landroid/view/Display$Mode;
    :goto_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 4714
    :cond_61
    return-object v0
.end method

.method private estimateAppOpsSamplingRate()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3772
    move-object/from16 v1, p0

    const-string/jumbo v0, "permissions"

    const-string v2, "app_ops_target_collection_size"

    const/16 v3, 0x7d0

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 3775
    .local v2, "appOpsTargetCollectionSize":I
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AppOpsManager;

    .line 3777
    .local v3, "appOps":Landroid/app/AppOpsManager;
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v4, v0

    .line 3778
    .local v4, "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 3780
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v5

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v5, v7, v8, v6}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 3781
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v0

    .line 3782
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v5

    .line 3783
    .local v5, "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    invoke-direct {v6, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v5, v0, v6}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3784
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 3786
    .local v6, "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    nop

    .line 3787
    const/16 v0, 0x275b

    const/16 v7, 0x64

    invoke-direct {v1, v6, v0, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v7

    .line 3789
    .local v7, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    const-wide/16 v8, 0x0

    .line 3790
    .local v8, "estimatedSize":J
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    .line 3791
    .local v10, "nOps":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_70
    if-ge v0, v10, :cond_92

    .line 3792
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 3793
    .local v11, "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    iget-object v12, v11, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x20

    iget-object v13, v11, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    if-nez v13, :cond_86

    const/4 v13, 0x1

    goto :goto_8c

    .line 3794
    :cond_86
    iget-object v13, v11, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    :goto_8c
    add-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v8, v12

    .line 3791
    .end local v11    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 3797
    .end local v0    # "i":I
    :cond_92
    mul-int/lit8 v0, v2, 0x64

    int-to-long v11, v0

    div-long v13, v11, v8

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x64

    invoke-static/range {v13 .. v18}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v11

    long-to-int v11, v11

    .line 3799
    .local v11, "estimatedSamplingRate":I
    iget-object v12, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3800
    :try_start_a3
    iget v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 3801
    monitor-exit v12

    .line 3802
    return-void

    .line 3801
    :catchall_ad
    move-exception v0

    monitor-exit v12
    :try_end_af
    .catchall {:try_start_a3 .. :try_end_af} :catchall_ad

    throw v0
.end method

.method private fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .registers 5

    .line 1633
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1634
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_21

    .line 1635
    new-instance v1, Landroid/os/SynchronousResultReceiver;

    const-string v2, "bluetooth"

    invoke-direct {v1, v2}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1637
    .local v1, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    new-instance v2, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>()V

    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$1;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    .line 1659
    invoke-static {v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    return-object v2

    .line 1661
    .end local v1    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_21
    const-string v1, "StatsPullAtomService"

    const-string v2, "Failed to get bluetooth adapter!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const/4 v1, 0x0

    return-object v1
.end method

.method private findModeId([Landroid/view/Display$Mode;IIF)I
    .registers 9
    .param p1, "modes"    # [Landroid/view/Display$Mode;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "refreshRate"    # F

    .line 4718
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 4719
    .local v2, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v2, p2, p3, p4}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4720
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    return v0

    .line 4718
    .end local v2    # "mode":Landroid/view/Display$Mode;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4723
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method private static getAllCollapsedRatTypes()[I
    .registers 7

    .line 1414
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    .line 1415
    .local v0, "ratTypes":[I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1416
    .local v1, "collapsedRatTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_1e

    aget v5, v0, v4

    .line 1417
    .local v5, "ratType":I
    invoke-static {v5}, Landroid/app/usage/NetworkStatsManager;->getCollapsedRatType(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1416
    .end local v5    # "ratType":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1422
    :cond_1e
    const/4 v2, -0x2

    .line 1423
    invoke-static {v2}, Landroid/app/usage/NetworkStatsManager;->getCollapsedRatType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1422
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1425
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1426
    invoke-static {v1}, Lcom/android/net/module/util/CollectionUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    return-object v2
.end method

.method private getDataUsageBytesTransferSnapshotForOemManaged()Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation

    .line 1293
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/Pair;

    .line 1294
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    .line 1295
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    .line 1296
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1293
    invoke-static {v1, v2, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1298
    .local v1, "matchRulesAndTransports":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    new-array v2, v3, [I

    fill-array-data v2, :array_b6

    .line 1301
    .local v2, "oemManagedTypes":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 1304
    .local v7, "ruleAndTransport":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 1305
    .local v8, "matchRule":Ljava/lang/Integer;
    array-length v9, v2

    move v10, v6

    :goto_4e
    if-ge v10, v9, :cond_b2

    aget v15, v2, v10

    .line 1309
    .local v15, "oemManaged":I
    new-instance v11, Landroid/net/NetworkTemplate$Builder;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v12}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1310
    invoke-virtual {v11, v15}, Landroid/net/NetworkTemplate$Builder;->setOemManaged(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v14

    .line 1311
    .local v14, "template":Landroid/net/NetworkTemplate;
    invoke-direct {v0, v14, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v13

    .line 1312
    .local v13, "stats":Landroid/net/NetworkStats;
    iget-object v11, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v11

    check-cast v20, Ljava/lang/Integer;

    .line 1313
    .local v20, "transport":Ljava/lang/Integer;
    if-eqz v13, :cond_a8

    .line 1314
    new-instance v12, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {v0, v13}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v16

    new-array v11, v4, [I

    .line 1315
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aput v17, v11, v6

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v11

    move-object v11, v12

    move-object v4, v12

    move-object/from16 v12, v16

    move-object/from16 v24, v13

    .end local v13    # "stats":Landroid/net/NetworkStats;
    .local v24, "stats":Landroid/net/NetworkStats;
    move-object/from16 v13, v23

    move-object/from16 v23, v14

    .end local v14    # "template":Landroid/net/NetworkTemplate;
    .local v23, "template":Landroid/net/NetworkTemplate;
    move/from16 v14, v17

    move/from16 v25, v15

    .end local v15    # "oemManaged":I
    .local v25, "oemManaged":I
    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v21

    move-object/from16 v18, v22

    move/from16 v19, v25

    invoke-direct/range {v11 .. v19}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    .line 1314
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    .line 1313
    .end local v23    # "template":Landroid/net/NetworkTemplate;
    .end local v24    # "stats":Landroid/net/NetworkStats;
    .end local v25    # "oemManaged":I
    .restart local v13    # "stats":Landroid/net/NetworkStats;
    .restart local v14    # "template":Landroid/net/NetworkTemplate;
    .restart local v15    # "oemManaged":I
    :cond_a8
    move-object/from16 v24, v13

    move-object/from16 v23, v14

    move/from16 v25, v15

    .line 1305
    .end local v13    # "stats":Landroid/net/NetworkStats;
    .end local v14    # "template":Landroid/net/NetworkTemplate;
    .end local v15    # "oemManaged":I
    .end local v20    # "transport":Ljava/lang/Integer;
    :goto_ae
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x1

    goto :goto_4e

    .line 1320
    .end local v7    # "ruleAndTransport":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8    # "matchRule":Ljava/lang/Integer;
    :cond_b2
    const/4 v4, 0x1

    goto :goto_3c

    .line 1322
    :cond_b4
    return-object v3

    nop

    :array_b6
    .array-data 4
        0x3
        0x1
        0x2
    .end array-data
.end method

.method private getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .registers 22
    .param p1, "subInfo"    # Lcom/android/server/stats/pull/netstats/SubInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/SubInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation

    .line 1389
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    invoke-static {}, Lcom/android/server/stats/pull/StatsPullAtomService;->getAllCollapsedRatTypes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v3, :cond_69

    aget v15, v2, v5

    .line 1391
    .local v15, "ratType":I
    new-instance v6, Landroid/net/NetworkTemplate$Builder;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    move-object/from16 v14, p1

    iget-object v8, v14, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    .line 1393
    invoke-static {v8}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    .line 1394
    invoke-virtual {v6, v15}, Landroid/net/NetworkTemplate$Builder;->setRatType(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    .line 1395
    invoke-virtual {v6, v7}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v13

    .line 1396
    .local v13, "template":Landroid/net/NetworkTemplate;
    nop

    .line 1397
    invoke-direct {v0, v13, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v12

    .line 1398
    .local v12, "stats":Landroid/net/NetworkStats;
    if-eqz v12, :cond_61

    .line 1399
    new-instance v11, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-direct {v0, v12}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v8

    new-array v9, v7, [I

    aput v4, v9, v4

    const/4 v10, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object v6, v11

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move/from16 v10, v16

    move-object v4, v11

    move/from16 v11, v17

    move-object/from16 v17, v12

    .end local v12    # "stats":Landroid/net/NetworkStats;
    .local v17, "stats":Landroid/net/NetworkStats;
    move v12, v15

    move-object/from16 v19, v13

    .end local v13    # "template":Landroid/net/NetworkTemplate;
    .local v19, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v13, p1

    move/from16 v14, v18

    invoke-direct/range {v6 .. v14}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 1398
    .end local v17    # "stats":Landroid/net/NetworkStats;
    .end local v19    # "template":Landroid/net/NetworkTemplate;
    .restart local v12    # "stats":Landroid/net/NetworkStats;
    .restart local v13    # "template":Landroid/net/NetworkTemplate;
    :cond_61
    move-object/from16 v17, v12

    move-object/from16 v19, v13

    .line 1390
    .end local v12    # "stats":Landroid/net/NetworkStats;
    .end local v13    # "template":Landroid/net/NetworkTemplate;
    .end local v15    # "ratType":I
    :goto_65
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_e

    .line 1405
    :cond_69
    return-object v1
.end method

.method private getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;
    .registers 5

    .line 994
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    if-nez v1, :cond_2e

    .line 996
    const-string v1, "android.security.metrics"

    .line 997
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 996
    invoke-static {v1}, Landroid/security/metrics/IKeystoreMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/metrics/IKeystoreMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_32

    .line 998
    if-eqz v1, :cond_2e

    .line 1000
    :try_start_15
    invoke-interface {v1}, Landroid/security/metrics/IKeystoreMetrics;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_22} :catch_23
    .catchall {:try_start_15 .. :try_end_22} :catchall_32

    .line 1008
    goto :goto_2e

    .line 1005
    :catch_23
    move-exception v1

    .line 1006
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with IKeystoreMetrics failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1007
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    .line 1011
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2e
    :goto_2e
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    monitor-exit v0

    return-object v1

    .line 1012
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private getINotificationManagerService()Landroid/app/INotificationManager;
    .registers 5

    .line 1038
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1039
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    if-nez v1, :cond_14

    .line 1040
    const-string/jumbo v1, "notification"

    .line 1041
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1040
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 1043
    :cond_14
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_35

    if-eqz v1, :cond_31

    .line 1045
    :try_start_18
    invoke-interface {v1}, Landroid/app/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26
    .catchall {:try_start_18 .. :try_end_25} :catchall_35

    .line 1053
    goto :goto_31

    .line 1050
    :catch_26
    move-exception v1

    .line 1051
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_27
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with notificationManager failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 1055
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_35

    .line 1056
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    return-object v0

    .line 1055
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private getIProcessStatsService()Lcom/android/internal/app/procstats/IProcessStats;
    .registers 5

    .line 1060
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1061
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    if-nez v1, :cond_14

    .line 1062
    const-string/jumbo v1, "procstats"

    .line 1063
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1062
    invoke-static {v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 1065
    :cond_14
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_35

    if-eqz v1, :cond_31

    .line 1067
    :try_start_18
    invoke-interface {v1}, Lcom/android/internal/app/procstats/IProcessStats;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26
    .catchall {:try_start_18 .. :try_end_25} :catchall_35

    .line 1075
    goto :goto_31

    .line 1072
    :catch_26
    move-exception v1

    .line 1073
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_27
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with ProcessStats failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1074
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 1077
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_35

    .line 1078
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    return-object v0

    .line 1077
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private getIStoragedService()Landroid/os/IStoraged;
    .registers 5

    .line 1016
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1017
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    if-nez v1, :cond_14

    .line 1018
    const-string/jumbo v1, "storaged"

    .line 1019
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1018
    invoke-static {v1}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 1021
    :cond_14
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_35

    if-eqz v1, :cond_31

    .line 1023
    :try_start_18
    invoke-interface {v1}, Landroid/os/IStoraged;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26
    .catchall {:try_start_18 .. :try_end_25} :catchall_35

    .line 1031
    goto :goto_31

    .line 1028
    :catch_26
    move-exception v1

    .line 1029
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_27
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with storagedService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1030
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 1033
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_35

    .line 1034
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    return-object v0

    .line 1033
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private getIThermalService()Landroid/os/IThermalService;
    .registers 5

    .line 972
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 973
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    if-nez v1, :cond_2f

    .line 974
    const-string/jumbo v1, "thermalservice"

    .line 975
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 974
    invoke-static {v1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_33

    .line 976
    if-eqz v1, :cond_2f

    .line 978
    :try_start_16
    invoke-interface {v1}, Landroid/os/IThermalService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_24
    .catchall {:try_start_16 .. :try_end_23} :catchall_33

    .line 986
    goto :goto_2f

    .line 983
    :catch_24
    move-exception v1

    .line 984
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_25
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with thermalService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 985
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 989
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    monitor-exit v0

    return-object v1

    .line 990
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_33

    throw v1
.end method

.method private getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;
    .registers 18
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "includeTags"    # Z

    .line 1354
    move-object v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1355
    .local v1, "elapsedMillisSinceBoot":J
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 1356
    .local v3, "currentTimeInMillis":J
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-wide v6, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    const-string/jumbo v8, "netstats_uid_bucket_duration"

    invoke-static {v5, v8, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    .line 1364
    .local v12, "bucketDuration":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_34

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1365
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v5}, Landroid/app/usage/NetworkStatsManager;->forceUpdate()V

    .line 1368
    :cond_34
    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    sub-long v7, v3, v1

    sub-long v8, v7, v12

    .line 1369
    move-object/from16 v7, p1

    move-wide v10, v3

    invoke-virtual/range {v6 .. v11}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object v5

    .line 1373
    .local v5, "queryNonTaggedStats":Landroid/app/usage/NetworkStats;
    nop

    .line 1374
    invoke-static {v5}, Lcom/android/net/module/util/NetworkStatsUtils;->fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v14

    .line 1375
    .local v14, "nonTaggedStats":Landroid/net/NetworkStats;
    if-nez p2, :cond_49

    return-object v14

    .line 1377
    :cond_49
    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    sub-long v7, v3, v1

    sub-long v8, v7, v12

    .line 1378
    move-object/from16 v7, p1

    move-wide v10, v3

    invoke-virtual/range {v6 .. v11}, Landroid/app/usage/NetworkStatsManager;->queryTaggedSummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object v6

    .line 1381
    .local v6, "queryTaggedStats":Landroid/app/usage/NetworkStats;
    nop

    .line 1382
    invoke-static {v6}, Lcom/android/net/module/util/NetworkStatsUtils;->fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v7

    .line 1383
    .local v7, "taggedStats":Landroid/net/NetworkStats;
    invoke-virtual {v14, v7}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v8

    return-object v8
.end method

.method private getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;
    .registers 5
    .param p1, "transport"    # I

    .line 1330
    const/4 v0, 0x0

    .line 1331
    .local v0, "template":Landroid/net/NetworkTemplate;
    packed-switch p1, :pswitch_data_2c

    .line 1340
    const-string v1, "StatsPullAtomService"

    const-string v2, "Unexpected transport."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 1337
    :pswitch_c
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 1338
    goto :goto_26

    .line 1333
    :pswitch_17
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1334
    invoke-virtual {v1, v2}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 1335
    nop

    .line 1342
    :goto_26
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_c
    .end packed-switch
.end method

.method private initAndRegisterNetworkStatsPullers()V
    .registers 4

    .line 939
    const-string v0, "StatsPullAtomService"

    const-string v1, "Registering NetworkStats pullers with statsd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 943
    const/16 v1, 0x2710

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 942
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 944
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 945
    const/16 v1, 0x2711

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 944
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 946
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 947
    const/16 v1, 0x2712

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 946
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 948
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2713

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 950
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2763

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 952
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 953
    const/16 v1, 0x2762

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 952
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 954
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 955
    const/16 v1, 0x2774

    invoke-direct {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 954
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 959
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 960
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 959
    invoke-virtual {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 962
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiBytesTransfer()V

    .line 963
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiBytesTransferBackground()V

    .line 964
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransfer()V

    .line 965
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransferBackground()V

    .line 966
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBytesTransferByTagAndMetered()V

    .line 967
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDataUsageBytesTransfer()V

    .line 968
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerOemManagedBytesTransfer()V

    .line 969
    return-void
.end method

.method private native initializeNativePullers()V
.end method

.method private isAccessibilityFloatingMenuUser(Landroid/content/Context;I)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 4763
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4764
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "accessibility_button_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 4766
    .local v1, "mode":I
    const-string v3, "accessibility_button_targets"

    invoke-static {v0, v3, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4769
    .local v3, "software_string":Ljava/lang/String;
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1c

    .line 4770
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    move v2, v4

    goto :goto_1d

    :cond_1c
    nop

    .line 4769
    :goto_1d
    return v2
.end method

.method private isAccessibilityShortcutUser(Landroid/content/Context;I)Z
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 4744
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4746
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "accessibility_button_targets"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4748
    .local v1, "software_shortcut_list":Ljava/lang/String;
    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 4750
    .local v2, "hardware_shortcut_list":Ljava/lang/String;
    const-string v3, "accessibility_shortcut_dialog_shown"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1c

    move v3, v5

    goto :goto_1d

    :cond_1c
    move v3, v4

    .line 4752
    .local v3, "hardware_shortcut_dialog_shown":Z
    :goto_1d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v5

    .line 4753
    .local v6, "software_shortcut_enabled":Z
    if-eqz v3, :cond_2c

    .line 4754
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2c

    move v7, v5

    goto :goto_2d

    :cond_2c
    move v7, v4

    .line 4755
    .local v7, "hardware_shortcut_enabled":Z
    :goto_2d
    const-string v8, "accessibility_display_magnification_enabled"

    invoke-static {v0, v8, v4, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v5, :cond_37

    move v8, v5

    goto :goto_38

    :cond_37
    move v8, v4

    .line 4758
    .local v8, "triple_tap_shortcut_enabled":Z
    :goto_38
    if-nez v6, :cond_3e

    if-nez v7, :cond_3e

    if-eqz v8, :cond_3f

    :cond_3e
    move v4, v5

    :cond_3f
    return v4
.end method

.method static synthetic lambda$countAccessibilityServices$22(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 4739
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$pullCpuActiveTimeLocked$15(Ljava/util/List;IILjava/lang/Long;)V
    .registers 6
    .param p0, "pulledData"    # Ljava/util/List;
    .param p1, "atomTag"    # I
    .param p2, "uid"    # I
    .param p3, "cpuActiveTimesMs"    # Ljava/lang/Long;

    .line 1973
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1974
    return-void
.end method

.method static synthetic lambda$pullCpuClusterTimeLocked$16(Ljava/util/List;II[J)V
    .registers 7
    .param p0, "pulledData"    # Ljava/util/List;
    .param p1, "atomTag"    # I
    .param p2, "uid"    # I
    .param p3, "cpuClusterTimesMs"    # [J

    .line 1995
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_10

    .line 1996
    aget-wide v1, p3, v0

    .line 1997
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v1

    .line 1996
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1995
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1999
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method static synthetic lambda$pullCpuCyclesPerUidClusterLocked$13(Landroid/util/SparseArray;I[I[J[DI[J)V
    .registers 22
    .param p0, "aggregated"    # Landroid/util/SparseArray;
    .param p1, "clusters"    # I
    .param p2, "freqsClusters"    # [I
    .param p3, "freqs"    # [J
    .param p4, "freqsPowers"    # [D
    .param p5, "uid"    # I
    .param p6, "cpuFreqTimeMs"    # [J

    .line 1796
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1799
    return-void

    .line 1800
    :cond_a
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1802
    const v2, 0xea5f

    .end local p5    # "uid":I
    .local v2, "uid":I
    goto :goto_18

    .line 1805
    .end local v2    # "uid":I
    .restart local p5    # "uid":I
    :cond_14
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1808
    .end local p5    # "uid":I
    .restart local v2    # "uid":I
    :goto_18
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    .line 1809
    .local v3, "values":[D
    if-nez v3, :cond_27

    .line 1810
    mul-int/lit8 v4, p1, 0x3

    new-array v3, v4, [D

    .line 1811
    invoke-virtual {p0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1814
    :cond_27
    const/4 v4, 0x0

    .local v4, "freqIndex":I
    :goto_28
    array-length v5, v1

    if-ge v4, v5, :cond_54

    .line 1815
    aget v5, p2, v4

    .line 1816
    .local v5, "cluster":I
    aget-wide v6, v1, v4

    .line 1817
    .local v6, "timeMs":J
    mul-int/lit8 v8, v5, 0x3

    aget-wide v9, v3, v8

    aget-wide v11, p3, v4

    mul-long/2addr v11, v6

    long-to-double v11, v11

    add-double/2addr v9, v11

    aput-wide v9, v3, v8

    .line 1818
    mul-int/lit8 v8, v5, 0x3

    add-int/lit8 v8, v8, 0x1

    aget-wide v9, v3, v8

    long-to-double v11, v6

    add-double/2addr v9, v11

    aput-wide v9, v3, v8

    .line 1819
    mul-int/lit8 v8, v5, 0x3

    add-int/lit8 v8, v8, 0x2

    aget-wide v9, v3, v8

    aget-wide v11, p4, v4

    long-to-double v13, v6

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    aput-wide v9, v3, v8

    .line 1814
    .end local v5    # "cluster":I
    .end local v6    # "timeMs":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 1822
    .end local v4    # "freqIndex":I
    :cond_54
    return-void
.end method

.method static synthetic lambda$pullCpuTimePerUidFreqLocked$14(Landroid/util/SparseArray;I[J)V
    .registers 9
    .param p0, "aggregated"    # Landroid/util/SparseArray;
    .param p1, "uid"    # I
    .param p2, "cpuFreqTimeMs"    # [J

    .line 1858
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1861
    return-void

    .line 1862
    :cond_7
    invoke-static {p1}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1864
    const p1, 0xea5f

    goto :goto_15

    .line 1867
    :cond_11
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 1870
    :goto_15
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1871
    .local v0, "aggCpuFreqTimeMs":[J
    if-nez v0, :cond_23

    .line 1872
    array-length v1, p2

    new-array v0, v1, [J

    .line 1873
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1875
    :cond_23
    const/4 v1, 0x0

    .local v1, "freqIndex":I
    :goto_24
    array-length v2, p2

    if-ge v1, v2, :cond_31

    .line 1876
    aget-wide v2, v0, v1

    aget-wide v4, p2, v1

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 1875
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 1878
    .end local v1    # "freqIndex":I
    :cond_31
    return-void
.end method

.method static synthetic lambda$pullCpuTimePerUidLocked$12(Ljava/util/List;II[J)V
    .registers 15
    .param p0, "pulledData"    # Ljava/util/List;
    .param p1, "atomTag"    # I
    .param p2, "uid"    # I
    .param p3, "timesUs"    # [J

    .line 1746
    const/4 v0, 0x0

    aget-wide v7, p3, v0

    .local v7, "userTimeUs":J
    const/4 v0, 0x1

    aget-wide v9, p3, v0

    .line 1747
    .local v9, "systemTimeUs":J
    nop

    .line 1748
    move v1, p1

    move v2, p2

    move-wide v3, v7

    move-wide v5, v9

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v0

    .line 1747
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1749
    return-void
.end method

.method static synthetic lambda$pullDataBytesTransferLocked$7(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z
    .registers 3
    .param p0, "item"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .param p1, "it"    # Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 1174
    invoke-virtual {p1, p0}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->hasSameSlicing(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$pullDiskIOLocked$21(Ljava/util/List;IIJJJJJJJJJJ)V
    .registers 25
    .param p0, "pulledData"    # Ljava/util/List;
    .param p1, "atomTag"    # I
    .param p2, "uid"    # I
    .param p3, "fgCharsRead"    # J
    .param p5, "fgCharsWrite"    # J
    .param p7, "fgBytesRead"    # J
    .param p9, "fgBytesWrite"    # J
    .param p11, "bgCharsRead"    # J
    .param p13, "bgCharsWrite"    # J
    .param p15, "bgBytesRead"    # J
    .param p17, "bgBytesWrite"    # J
    .param p19, "fgFsync"    # J
    .param p21, "bgFsync"    # J

    .line 2959
    invoke-static/range {p1 .. p22}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object v1, p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2962
    return-void
.end method

.method static synthetic lambda$pullProcessMemoryHighWaterMarkLocked$18(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .registers 3
    .param p0, "processCmdlines"    # Landroid/util/SparseArray;
    .param p1, "managedProcess"    # Landroid/app/ProcessMemoryState;

    .line 2225
    iget v0, p1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method static synthetic lambda$pullProcessMemorySnapshot$19(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .registers 3
    .param p0, "processCmdlines"    # Landroid/util/SparseArray;
    .param p1, "managedProcess"    # Landroid/app/ProcessMemoryState;

    .line 2278
    iget v0, p1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method static synthetic lambda$pullWifiActivityInfoLocked$17(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 4
    .param p0, "wifiReceiver"    # Landroid/os/SynchronousResultReceiver;
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 2027
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2028
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2029
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 2030
    return-void
.end method

.method static synthetic lambda$readProcStatsHighWaterMark$20(ILjava/io/File;Ljava/lang/String;)Z
    .registers 6
    .param p0, "section"    # I
    .param p1, "d"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 2924
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sliceNetworkStatsByFgbg$9(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 20
    .param p0, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 1446
    new-instance v18, Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v18

    .line 1447
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    .line 1450
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1451
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 1446
    return-object v18
.end method

.method static synthetic lambda$sliceNetworkStatsByUid$8(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 20
    .param p0, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 1433
    new-instance v18, Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v18

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    .line 1437
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1438
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 1433
    return-object v18
.end method

.method static synthetic lambda$sliceNetworkStatsByUidAndFgbg$10(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 20
    .param p0, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 1459
    new-instance v18, Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v18

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    .line 1460
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    .line 1463
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1464
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 1459
    return-object v18
.end method

.method static synthetic lambda$sliceNetworkStatsByUidTagAndMetered$11(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 20
    .param p0, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 1472
    new-instance v18, Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v18

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    .line 1473
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v4

    .line 1474
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getMetered()I

    move-result v5

    .line 1476
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1477
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 1472
    return-object v18
.end method

.method private milliAmpHrsToNanoAmpSecs(D)J
    .registers 7
    .param p1, "mAh"    # D

    .line 3085
    const-wide v0, 0x41ead27480000000L    # 3.6E9

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method private processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "op"    # Landroid/app/AppOpsManager$HistoricalOp;
    .param p3, "uid"    # I
    .param p4, "samplingRatio"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3838
    .local p2, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    const/4 v0, 0x0

    .line 3839
    .local v0, "firstChar":I
    if-eqz p6, :cond_1d

    invoke-virtual {p6, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3840
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    .line 3841
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    invoke-virtual {p6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1d

    .line 3842
    add-int/lit8 v0, v0, 0x1

    .line 3845
    :cond_1d
    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 3846
    if-nez p6, :cond_23

    const/4 v1, 0x0

    goto :goto_27

    :cond_23
    invoke-virtual {p6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_27
    move-object v4, v1

    move-object v1, v7

    move-object v2, p0

    move-object v3, p5

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;I)V

    .line 3848
    .local v1, "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    iget v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    if-ge v2, p4, :cond_37

    .line 3849
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3851
    :cond_37
    return-void
.end method

.method private processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;
    .registers 24
    .param p1, "histOps"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "atomTag"    # I
    .param p3, "samplingRatio"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;"
        }
    .end annotation

    .line 3806
    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3807
    .local v1, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    const/4 v2, 0x0

    move v9, v2

    .local v9, "uidIdx":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v2

    if-ge v9, v2, :cond_96

    .line 3808
    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v11

    .line 3809
    .local v11, "uidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v12

    .line 3810
    .local v12, "uid":I
    const/4 v2, 0x0

    move v13, v2

    .local v13, "pkgIdx":I
    :goto_1b
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v2

    if-ge v13, v2, :cond_92

    .line 3811
    invoke-virtual {v11, v13}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v14

    .line 3812
    .local v14, "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    const/16 v2, 0x275b

    if-ne v0, v2, :cond_6b

    .line 3813
    const/4 v2, 0x0

    move v15, v2

    .line 3814
    .local v15, "attributionIdx":I
    :goto_2b
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v2

    if-ge v15, v2, :cond_6a

    .line 3815
    nop

    .line 3816
    invoke-virtual {v14, v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v8

    .line 3817
    .local v8, "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    const/4 v2, 0x0

    move v7, v2

    .local v7, "opIdx":I
    :goto_38
    invoke-virtual {v8}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v2

    if-ge v7, v2, :cond_63

    .line 3818
    invoke-virtual {v8, v7}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v16

    .line 3819
    .local v16, "op":Landroid/app/AppOpsManager$HistoricalOp;
    nop

    .line 3820
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v8}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v18

    .line 3819
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object v4, v1

    move v5, v12

    move/from16 v6, p3

    move/from16 v19, v7

    .end local v7    # "opIdx":I
    .local v19, "opIdx":I
    move-object/from16 v7, v17

    move-object/from16 v17, v8

    .end local v8    # "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .local v17, "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    move-object/from16 v8, v18

    invoke-direct/range {v2 .. v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    .line 3817
    .end local v16    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    add-int/lit8 v7, v19, 0x1

    move-object/from16 v8, v17

    .end local v19    # "opIdx":I
    .restart local v7    # "opIdx":I
    goto :goto_38

    .end local v17    # "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .restart local v8    # "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_63
    move/from16 v19, v7

    move-object/from16 v17, v8

    .line 3814
    .end local v7    # "opIdx":I
    .end local v8    # "attributedOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    add-int/lit8 v15, v15, 0x1

    goto :goto_2b

    .end local v15    # "attributionIdx":I
    :cond_6a
    goto :goto_8f

    .line 3823
    :cond_6b
    const/16 v2, 0x274c

    if-ne v0, v2, :cond_8f

    .line 3824
    const/4 v2, 0x0

    move v15, v2

    .local v15, "opIdx":I
    :goto_71
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v2

    if-ge v15, v2, :cond_8f

    .line 3825
    invoke-virtual {v14, v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v16

    .line 3826
    .restart local v16    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    nop

    .line 3827
    invoke-virtual {v14}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 3826
    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object v4, v1

    move v5, v12

    move/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    .line 3824
    .end local v16    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    add-int/lit8 v15, v15, 0x1

    goto :goto_71

    .line 3810
    .end local v14    # "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    .end local v15    # "opIdx":I
    :cond_8f
    :goto_8f
    add-int/lit8 v13, v13, 0x1

    goto :goto_1b

    .line 3807
    .end local v11    # "uidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .end local v12    # "uid":I
    .end local v13    # "pkgIdx":I
    :cond_92
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9

    :cond_96
    move-object/from16 v10, p1

    .line 3832
    .end local v9    # "uidIdx":I
    return-object v1
.end method

.method private pullDataBytesTransferLocked(ILjava/util/List;)I
    .registers 24
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1165
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v3

    .line 1167
    .local v3, "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    const/4 v4, 0x1

    const-string v5, ", return."

    const-string v6, "StatsPullAtomService"

    if-nez v3, :cond_2c

    .line 1168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current snapshot is null for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return v4

    .line 1172
    :cond_2c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_30
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 1173
    .local v8, "item":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    iget-object v9, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda1;

    invoke-direct {v10, v8}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V

    invoke-static {v9, v10}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 1178
    .local v9, "baseline":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    if-nez v9, :cond_66

    .line 1179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "baseline is null for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    return v4

    .line 1183
    :cond_66
    new-instance v19, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    iget-object v10, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    iget-object v11, v9, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    .line 1184
    invoke-virtual {v10, v11}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/stats/pull/StatsPullAtomService;->removeEmptyEntries(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    iget-boolean v13, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    iget-boolean v14, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    iget-boolean v15, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    iget v10, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    iget-object v4, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    move-object/from16 v20, v3

    .end local v3    # "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    .local v20, "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    iget v3, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    move/from16 v16, v10

    move-object/from16 v10, v19

    move-object/from16 v17, v4

    move/from16 v18, v3

    invoke-direct/range {v10 .. v18}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    move-object/from16 v3, v19

    .line 1189
    .local v3, "diff":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    iget-object v4, v3, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v4}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_a1

    move-object/from16 v3, v20

    const/4 v4, 0x1

    goto :goto_30

    .line 1191
    :cond_a1
    sparse-switch v1, :sswitch_data_be

    .line 1202
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->addNetworkStats(ILjava/util/List;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V

    goto :goto_b4

    .line 1199
    :sswitch_a8
    invoke-direct {v0, v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addOemDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    .line 1200
    goto :goto_b4

    .line 1193
    :sswitch_ac
    invoke-direct {v0, v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addBytesTransferByTagAndMeteredAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    .line 1194
    goto :goto_b4

    .line 1196
    :sswitch_b0
    invoke-direct {v0, v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    .line 1197
    nop

    .line 1204
    .end local v3    # "diff":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .end local v8    # "item":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    .end local v9    # "baseline":Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
    :goto_b4
    move-object/from16 v3, v20

    const/4 v4, 0x1

    goto/16 :goto_30

    .line 1205
    .end local v20    # "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    .local v3, "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    :cond_b9
    move-object/from16 v20, v3

    .end local v3    # "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    .restart local v20    # "current":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/netstats/NetworkStatsExt;>;"
    const/4 v3, 0x0

    return v3

    nop

    :sswitch_data_be
    .sparse-switch
        0x2762 -> :sswitch_b0
        0x2763 -> :sswitch_ac
        0x2774 -> :sswitch_a8
    .end sparse-switch
.end method

.method private pullNumBiometricsEnrolledLocked(IILjava/util/List;)I
    .registers 20
    .param p1, "modality"    # I
    .param p2, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2811
    .local p3, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2812
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 2813
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v4, 0x0

    .line 2815
    .local v4, "faceManager":Landroid/hardware/face/FaceManager;
    const-string v5, "android.hardware.fingerprint"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2816
    iget-object v5, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    move-object v5, v0

    goto :goto_22

    .line 2815
    :cond_21
    move-object v5, v0

    .line 2818
    .end local v0    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .local v5, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    :goto_22
    const-string v0, "android.hardware.biometrics.face"

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2819
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/face/FaceManager;

    .line 2822
    :cond_35
    const/4 v0, 0x1

    if-ne v2, v0, :cond_3b

    if-nez v5, :cond_3b

    .line 2823
    return v0

    .line 2825
    :cond_3b
    const/4 v6, 0x4

    if-ne v2, v6, :cond_41

    if-nez v4, :cond_41

    .line 2826
    return v0

    .line 2828
    :cond_41
    iget-object v7, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 2829
    .local v7, "userManager":Landroid/os/UserManager;
    if-nez v7, :cond_4e

    .line 2830
    return v0

    .line 2833
    :cond_4e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2835
    .local v8, "token":J
    :try_start_52
    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 2836
    .local v11, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 2837
    .local v12, "userId":I
    const/4 v13, 0x0

    .line 2838
    .local v13, "numEnrolled":I
    if-ne v2, v0, :cond_7b

    .line 2839
    invoke-virtual {v5, v12}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v13, v14

    goto :goto_86

    .line 2840
    :cond_7b
    if-ne v2, v6, :cond_97

    .line 2841
    invoke-virtual {v4, v12}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14
    :try_end_85
    .catchall {:try_start_52 .. :try_end_85} :catchall_a9

    move v13, v14

    .line 2845
    :goto_86
    move/from16 v14, p2

    :try_start_88
    invoke-static {v14, v12, v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v15
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_95

    move-object/from16 v6, p3

    :try_start_8e
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_93

    .line 2846
    const/4 v6, 0x4

    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "userId":I
    .end local v13    # "numEnrolled":I
    goto :goto_5a

    .line 2848
    :catchall_93
    move-exception v0

    goto :goto_ae

    :catchall_95
    move-exception v0

    goto :goto_ac

    .line 2843
    .restart local v11    # "user":Landroid/content/pm/UserInfo;
    .restart local v12    # "userId":I
    .restart local v13    # "numEnrolled":I
    :cond_97
    move/from16 v14, p2

    move-object/from16 v6, p3

    .line 2848
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2843
    return v0

    .line 2848
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "userId":I
    .end local v13    # "numEnrolled":I
    :cond_9f
    move/from16 v14, p2

    move-object/from16 v6, p3

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2849
    nop

    .line 2850
    const/4 v0, 0x0

    return v0

    .line 2848
    :catchall_a9
    move-exception v0

    move/from16 v14, p2

    :goto_ac
    move-object/from16 v6, p3

    :goto_ae
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2849
    throw v0
.end method

.method private pullPendingIntentsPerPackage(ILjava/util/List;)I
    .registers 9
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4621
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 4622
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getPendingIntentStats()Ljava/util/List;

    move-result-object v0

    .line 4623
    .local v0, "pendingIntentStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntentStats;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntentStats;

    .line 4624
    .local v2, "stats":Landroid/app/PendingIntentStats;
    iget v3, v2, Landroid/app/PendingIntentStats;->uid:I

    iget v4, v2, Landroid/app/PendingIntentStats;->count:I

    iget v5, v2, Landroid/app/PendingIntentStats;->sizeKb:I

    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4626
    .end local v2    # "stats":Landroid/app/PendingIntentStats;
    goto :goto_10

    .line 4627
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method private pullProcStatsLocked(IILjava/util/List;)I
    .registers 26
    .param p1, "section"    # I
    .param p2, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2874
    .local p3, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    move/from16 v9, p1

    const-string v0, "_"

    const-string v10, "/"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIProcessStatsService()Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v11

    .line 2875
    .local v11, "processStatsService":Lcom/android/internal/app/procstats/IProcessStats;
    const/4 v12, 0x1

    if-nez v11, :cond_10

    .line 2876
    return v12

    .line 2879
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2882
    .local v13, "token":J
    :try_start_14
    invoke-direct/range {p0 .. p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->readProcStatsHighWaterMark(I)J

    move-result-wide v2

    move-wide v7, v2

    .line 2884
    .local v7, "lastHighWaterMark":J
    const/4 v2, 0x5

    new-array v2, v2, [Landroid/util/proto/ProtoOutputStream;

    move-object v15, v2

    .line 2885
    .local v15, "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    array-length v3, v15
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1f} :catch_105
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_105
    .catchall {:try_start_14 .. :try_end_1f} :catchall_fd

    if-ge v2, v3, :cond_3d

    .line 2886
    :try_start_21
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    aput-object v3, v15, v2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_34
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_28} :catch_34
    .catchall {:try_start_21 .. :try_end_28} :catchall_2b

    .line 2885
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 2915
    .end local v2    # "i":I
    .end local v7    # "lastHighWaterMark":J
    .end local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    :catchall_2b
    move-exception v0

    move/from16 v7, p2

    move-wide/from16 v20, v13

    move-object/from16 v14, p3

    goto/16 :goto_11a

    .line 2911
    :catch_34
    move-exception v0

    move/from16 v7, p2

    move-wide/from16 v20, v13

    move-object/from16 v14, p3

    goto/16 :goto_10c

    .line 2889
    .restart local v7    # "lastHighWaterMark":J
    .restart local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    :cond_3d
    :try_start_3d
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_43} :catch_105
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_43} :catch_105
    .catchall {:try_start_3d .. :try_end_43} :catchall_fd

    move-object v5, v2

    .line 2891
    .local v5, "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v2, v11

    move-wide v3, v7

    move-object/from16 v18, v5

    .end local v5    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v18, "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    move/from16 v5, p1

    move/from16 v19, v6

    move/from16 v6, v16

    move-wide/from16 v20, v13

    move-wide v12, v7

    .end local v7    # "lastHighWaterMark":J
    .end local v13    # "token":J
    .local v12, "lastHighWaterMark":J
    .local v20, "token":J
    move-object/from16 v7, v17

    move-object/from16 v8, v18

    :try_start_59
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/app/procstats/IProcessStats;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide v2

    .line 2893
    .local v2, "highWaterMark":J
    const-wide/32 v4, 0xe666

    move-object/from16 v6, v18

    .end local v18    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v6, "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v6, v15, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    .line 2895
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_66
    array-length v5, v15

    if-ge v4, v5, :cond_8f

    .line 2896
    aget-object v5, v15, v4

    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v5

    .line 2897
    .local v5, "bytes":[B
    array-length v7, v5
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_70} :catch_f7
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_70} :catch_f7
    .catchall {:try_start_59 .. :try_end_70} :catchall_f1

    if-lez v7, :cond_88

    .line 2898
    move/from16 v7, p2

    :try_start_74
    invoke-static {v7, v5, v4}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[BI)Landroid/util/StatsEvent;

    move-result-object v8
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_78} :catch_83
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_78} :catch_83
    .catchall {:try_start_74 .. :try_end_78} :catchall_7e

    move-object/from16 v14, p3

    :try_start_7a
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 2915
    .end local v2    # "highWaterMark":J
    .end local v4    # "i":I
    .end local v5    # "bytes":[B
    .end local v6    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v12    # "lastHighWaterMark":J
    .end local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    :catchall_7e
    move-exception v0

    move-object/from16 v14, p3

    goto/16 :goto_11a

    .line 2911
    :catch_83
    move-exception v0

    move-object/from16 v14, p3

    goto/16 :goto_10c

    .line 2897
    .restart local v2    # "highWaterMark":J
    .restart local v4    # "i":I
    .restart local v5    # "bytes":[B
    .restart local v6    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v12    # "lastHighWaterMark":J
    .restart local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    :cond_88
    move/from16 v7, p2

    move-object/from16 v14, p3

    .line 2895
    .end local v5    # "bytes":[B
    :goto_8c
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    :cond_8f
    move/from16 v7, p2

    move-object/from16 v14, p3

    .line 2907
    .end local v4    # "i":I
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2908
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2909
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2910
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_e9} :catch_ef
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_e9} :catch_ef
    .catchall {:try_start_7a .. :try_end_e9} :catchall_119

    .line 2915
    nop

    .end local v2    # "highWaterMark":J
    .end local v6    # "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v12    # "lastHighWaterMark":J
    .end local v15    # "protoStreams":[Landroid/util/proto/ProtoOutputStream;
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2916
    nop

    .line 2917
    return v19

    .line 2911
    :catch_ef
    move-exception v0

    goto :goto_10c

    .line 2915
    :catchall_f1
    move-exception v0

    move/from16 v7, p2

    move-object/from16 v14, p3

    goto :goto_11a

    .line 2911
    :catch_f7
    move-exception v0

    move/from16 v7, p2

    move-object/from16 v14, p3

    goto :goto_10c

    .line 2915
    .end local v20    # "token":J
    .restart local v13    # "token":J
    :catchall_fd
    move-exception v0

    move/from16 v7, p2

    move-wide/from16 v20, v13

    move-object/from16 v14, p3

    .end local v13    # "token":J
    .restart local v20    # "token":J
    goto :goto_11a

    .line 2911
    .end local v20    # "token":J
    .restart local v13    # "token":J
    :catch_105
    move-exception v0

    move/from16 v7, p2

    move-wide/from16 v20, v13

    move-object/from16 v14, p3

    .line 2912
    .end local v13    # "token":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "token":J
    :goto_10c
    :try_start_10c
    const-string v2, "StatsPullAtomService"

    const-string v3, "Getting procstats failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_113
    .catchall {:try_start_10c .. :try_end_113} :catchall_119

    .line 2913
    nop

    .line 2915
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2913
    const/4 v2, 0x1

    return v2

    .line 2915
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_119
    move-exception v0

    :goto_11a
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2916
    throw v0
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .registers 11
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3888
    const/4 v0, 0x0

    .line 3889
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 3890
    .local v1, "initialAvail":I
    if-lez v1, :cond_a

    add-int/lit8 v2, v1, 0x1

    goto :goto_c

    :cond_a
    const/16 v2, 0x4000

    :goto_c
    new-array v2, v2, [B

    .line 3892
    .local v2, "data":[B
    :goto_e
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 3894
    .local v3, "amt":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of avail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatsPullAtomService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3896
    const/4 v4, 0x0

    if-gez v3, :cond_68

    .line 3898
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** FINISHED READING: pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    aput v0, p1, v4

    .line 3901
    return-object v2

    .line 3903
    :cond_68
    add-int/2addr v0, v3

    .line 3904
    array-length v6, v2

    if-lt v0, v6, :cond_95

    .line 3905
    add-int/lit16 v6, v0, 0x4000

    new-array v6, v6, [B

    .line 3907
    .local v6, "newData":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Copying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes to new array len "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    invoke-static {v2, v4, v6, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3910
    move-object v2, v6

    .line 3912
    .end local v3    # "amt":I
    .end local v6    # "newData":[B
    :cond_95
    goto/16 :goto_e
.end method

.method private readProcStatsHighWaterMark(I)J
    .registers 9
    .param p1, "section"    # I

    .line 2923
    const-string v0, "StatsPullAtomService"

    const-wide/16 v1, 0x0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;

    invoke-direct {v4, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 2926
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_48

    array-length v4, v3

    if-nez v4, :cond_15

    goto :goto_48

    .line 2929
    :cond_15
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_30

    .line 2930
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Only 1 file expected for high water mark. Found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    :cond_30
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_47} :catch_50
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_47} :catch_49

    return-wide v0

    .line 2927
    :cond_48
    :goto_48
    return-wide v1

    .line 2935
    .end local v3    # "files":[Ljava/io/File;
    :catch_49
    move-exception v3

    .line 2936
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Failed to parse file name."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    .line 2933
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_50
    move-exception v3

    .line 2934
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "Failed to get procstats high watermark file."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2937
    .end local v3    # "e":Ljava/lang/SecurityException;
    nop

    .line 2938
    :goto_57
    return-wide v1
.end method

.method private registerAccessibilityFloatingMenuStats()V
    .registers 6

    .line 4223
    const/16 v0, 0x2790

    .line 4224
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4230
    return-void
.end method

.method private registerAccessibilityShortcutStats()V
    .registers 6

    .line 4213
    const/16 v0, 0x278f

    .line 4214
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4220
    return-void
.end method

.method private registerAppOps()V
    .registers 6

    .line 3611
    const/16 v0, 0x274c

    .line 3612
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3618
    return-void
.end method

.method private registerAppSize()V
    .registers 6

    .line 2688
    const/16 v0, 0x272b

    .line 2689
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2695
    return-void
.end method

.method private registerAppsOnExternalStorageInfo()V
    .registers 6

    .line 3507
    const/16 v0, 0x2749

    .line 3508
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3514
    return-void
.end method

.method private registerAttributedAppOps()V
    .registers 6

    .line 3716
    const/16 v0, 0x275b

    .line 3717
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3723
    return-void
.end method

.method private registerBatteryCycleCount()V
    .registers 6

    .line 4010
    const/16 v0, 0x273d

    .line 4011
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4017
    return-void
.end method

.method private registerBatteryLevel()V
    .registers 6

    .line 3970
    const/16 v0, 0x273b

    .line 3971
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3977
    return-void
.end method

.method private registerBatteryVoltage()V
    .registers 6

    .line 4000
    const/16 v0, 0x272e

    .line 4001
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4007
    return-void
.end method

.method private registerBinderCallsStats()V
    .registers 6

    .line 2500
    const/16 v0, 0x2726

    .line 2501
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    .line 2502
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2503
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2504
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2510
    return-void

    nop

    :array_20
    .array-data 4
        0x4
        0x5
        0x6
        0x8
        0xc
    .end array-data
.end method

.method private registerBinderCallsStatsExceptions()V
    .registers 6

    .line 2534
    const/16 v0, 0x2727

    .line 2535
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2541
    return-void
.end method

.method private registerBluetoothActivityInfo()V
    .registers 6

    .line 2112
    const/16 v0, 0x2717

    .line 2113
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2119
    return-void
.end method

.method private registerBluetoothBytesTransfer()V
    .registers 6

    .line 1592
    const/16 v0, 0x2716

    .line 1593
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    .line 1594
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1595
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1596
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1602
    return-void

    nop

    :array_20
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method private registerBuildInformation()V
    .registers 6

    .line 3181
    const/16 v0, 0x273c

    .line 3182
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3188
    return-void
.end method

.method private registerBytesTransferByTagAndMetered()V
    .registers 6

    .line 1553
    const/16 v0, 0x2763

    .line 1554
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_22

    .line 1555
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1556
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1557
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1560
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1557
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1563
    return-void

    nop

    :array_22
    .array-data 4
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private registerCategorySize()V
    .registers 6

    .line 2727
    const/16 v0, 0x272c

    .line 2728
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2734
    return-void
.end method

.method private registerCoolingDevice()V
    .registers 6

    .line 2468
    const/16 v0, 0x274b

    .line 2469
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2475
    return-void
.end method

.method private registerCpuActiveTime()V
    .registers 6

    .line 1959
    const/16 v0, 0x2720

    .line 1960
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    .line 1961
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1962
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1963
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1969
    return-void
.end method

.method private registerCpuClusterTime()V
    .registers 6

    .line 1981
    const/16 v0, 0x2721

    .line 1982
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v2, v3

    .line 1983
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1984
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1985
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1991
    return-void
.end method

.method private registerCpuCyclesPerThreadGroupCluster()V
    .registers 6

    .line 1895
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1896
    const/16 v0, 0x2772

    .line 1897
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_26

    .line 1898
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1899
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1900
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1907
    .end local v0    # "tagId":I
    .end local v1    # "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    :cond_24
    return-void

    nop

    :array_26
    .array-data 4
        0x3
        0x4
    .end array-data
.end method

.method private registerCpuCyclesPerUidCluster()V
    .registers 6

    .line 1756
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v0

    if-lez v0, :cond_2a

    .line 1757
    :cond_c
    const/16 v0, 0x2770

    .line 1758
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2c

    .line 1759
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1760
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1761
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1768
    .end local v0    # "tagId":I
    .end local v1    # "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    :cond_2a
    return-void

    nop

    :array_2c
    .array-data 4
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private registerCpuTimePerClusterFreq()V
    .registers 6

    .line 1701
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1702
    const/16 v0, 0x276f

    .line 1703
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v2, v3

    .line 1704
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1705
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1706
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1713
    .end local v0    # "tagId":I
    .end local v1    # "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    :cond_25
    return-void
.end method

.method private registerCpuTimePerThreadFreq()V
    .registers 6

    .line 3014
    const/16 v0, 0x2735

    .line 3015
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    .line 3016
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 3017
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 3018
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3024
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

.method private registerCpuTimePerUid()V
    .registers 6

    .line 1732
    const/16 v0, 0x2719

    .line 1733
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    .line 1734
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1735
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1736
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1742
    return-void

    nop

    :array_20
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method private registerCpuTimePerUidFreq()V
    .registers 6

    .line 1842
    const/16 v0, 0x271a

    .line 1843
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v2, v3

    .line 1844
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1845
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1846
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1852
    return-void
.end method

.method private registerDangerousPermissionState()V
    .registers 6

    .line 3248
    const/16 v0, 0x2742

    .line 3249
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3255
    return-void
.end method

.method private registerDangerousPermissionStateSampled()V
    .registers 6

    .line 3960
    const/16 v0, 0x2753

    .line 3961
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3967
    return-void
.end method

.method private registerDataUsageBytesTransfer()V
    .registers 6

    .line 1566
    const/16 v0, 0x2762

    .line 1567
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_22

    .line 1568
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1569
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1570
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1573
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1570
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1576
    return-void

    nop

    :array_22
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private registerDebugElapsedClock()V
    .registers 6

    .line 3112
    const/16 v0, 0x273e

    .line 3113
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    .line 3114
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 3115
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 3116
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3122
    return-void

    nop

    :array_20
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private registerDebugFailingElapsedClock()V
    .registers 6

    .line 3147
    const/16 v0, 0x273f

    .line 3148
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    .line 3149
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 3150
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 3151
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3157
    return-void

    nop

    :array_20
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private registerDeviceCalculatedPowerUse()V
    .registers 6

    .line 3089
    const/16 v0, 0x2737

    .line 3090
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3096
    return-void
.end method

.method private registerDirectoryUsage()V
    .registers 6

    .line 2654
    const/16 v0, 0x272a

    .line 2655
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2661
    return-void
.end method

.method private registerDiskIO()V
    .registers 6

    .line 2942
    const/16 v0, 0x2730

    .line 2943
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_26

    .line 2944
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2945
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2946
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2947
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2953
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

.method private registerDiskStats()V
    .registers 6

    .line 2594
    const/16 v0, 0x2729

    .line 2595
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2601
    return-void
.end method

.method private registerExternalStorageInfo()V
    .registers 6

    .line 3462
    const/16 v0, 0x2745

    .line 3463
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3469
    return-void
.end method

.method private registerFaceSettings()V
    .registers 6

    .line 3559
    const/16 v0, 0x274a

    .line 3560
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3566
    return-void
.end method

.method private registerFullBatteryCapacity()V
    .registers 6

    .line 3990
    const/16 v0, 0x2724

    .line 3991
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3997
    return-void
.end method

.method private registerInstalledIncrementalPackages()V
    .registers 6

    .line 4095
    const/16 v0, 0x2782

    .line 4096
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4102
    return-void
.end method

.method private registerIonHeapSize()V
    .registers 6

    .line 2313
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/ion/total_heaps_kb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2314
    return-void

    .line 2316
    :cond_e
    const/16 v0, 0x2756

    .line 2317
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2323
    return-void
.end method

.method private registerKernelWakelock()V
    .registers 6

    .line 1679
    const/16 v0, 0x2714

    .line 1680
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1686
    return-void
.end method

.method private registerKeystoreAtomWithOverflow()V
    .registers 6

    .line 4173
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2789

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4178
    return-void
.end method

.method private registerKeystoreCrashStats()V
    .registers 6

    .line 4205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x278d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4210
    return-void
.end method

.method private registerKeystoreKeyCreationWithAuthInfo()V
    .registers 6

    .line 4157
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2787

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4162
    return-void
.end method

.method private registerKeystoreKeyCreationWithGeneralInfo()V
    .registers 6

    .line 4149
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2786

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4154
    return-void
.end method

.method private registerKeystoreKeyCreationWithPurposeModesInfo()V
    .registers 6

    .line 4165
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2788

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4170
    return-void
.end method

.method private registerKeystoreKeyOperationWithGeneralInfo()V
    .registers 6

    .line 4189
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x278b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4194
    return-void
.end method

.method private registerKeystoreKeyOperationWithPurposeAndModesInfo()V
    .registers 6

    .line 4181
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x278a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4186
    return-void
.end method

.method private registerKeystoreStorageStats()V
    .registers 6

    .line 4133
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2777

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4138
    return-void
.end method

.method private registerLooperStats()V
    .registers 6

    .line 2562
    const/16 v0, 0x2728

    .line 2563
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    .line 2564
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2565
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2566
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2572
    return-void

    nop

    :array_20
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method private registerMediaCapabilitiesStats()V
    .registers 6

    .line 4233
    const/16 v0, 0x2792

    .line 4234
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4240
    return-void
.end method

.method private registerMobileBytesTransfer()V
    .registers 6

    .line 1527
    const/16 v0, 0x2712

    .line 1528
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    .line 1529
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1530
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1531
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1537
    return-void

    nop

    :array_20
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private registerMobileBytesTransferBackground()V
    .registers 6

    .line 1540
    const/16 v0, 0x2713

    .line 1541
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    .line 1542
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1543
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1544
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1550
    return-void

    nop

    :array_20
    .array-data 4
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method private registerModemActivityInfo()V
    .registers 6

    .line 2052
    const/16 v0, 0x271c

    .line 2053
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2059
    return-void
.end method

.method private registerNotificationRemoteViews()V
    .registers 6

    .line 3916
    const/16 v0, 0x2752

    .line 3917
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3923
    return-void
.end method

.method private registerNumFacesEnrolled()V
    .registers 6

    .line 2800
    const/16 v0, 0x2740

    .line 2801
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2807
    return-void
.end method

.method private registerNumFingerprintsEnrolled()V
    .registers 6

    .line 2790
    const/16 v0, 0x272f

    .line 2791
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2797
    return-void
.end method

.method private registerOemManagedBytesTransfer()V
    .registers 6

    .line 1579
    const/16 v0, 0x2774

    .line 1580
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_22

    .line 1581
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1582
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1583
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1586
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 1583
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1589
    return-void

    nop

    :array_22
    .array-data 4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method private registerPendingIntentsPerPackagePuller()V
    .registers 6

    .line 4611
    const/16 v0, 0x27a7

    .line 4612
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4618
    return-void
.end method

.method private registerPinnerServiceStats()V
    .registers 6

    .line 4631
    const/16 v0, 0x27a6

    .line 4632
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4638
    return-void
.end method

.method private registerPowerProfile()V
    .registers 6

    .line 2967
    const/16 v0, 0x2731

    .line 2968
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2974
    return-void
.end method

.method private registerProcStats()V
    .registers 6

    .line 2854
    const/16 v0, 0x272d

    .line 2855
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2861
    return-void
.end method

.method private registerProcStatsPkgProc()V
    .registers 6

    .line 2864
    const/16 v0, 0x2732

    .line 2865
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2871
    return-void
.end method

.method private registerProcessCpuTime()V
    .registers 6

    .line 2986
    const/16 v0, 0x2733

    .line 2988
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 2989
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2990
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2991
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2997
    return-void
.end method

.method private registerProcessDmabufMemory()V
    .registers 6

    .line 2353
    const/16 v0, 0x2779

    .line 2354
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2360
    return-void
.end method

.method private registerProcessMemoryHighWaterMark()V
    .registers 6

    .line 2199
    const/16 v0, 0x273a

    .line 2200
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2206
    return-void
.end method

.method private registerProcessMemorySnapshot()V
    .registers 6

    .line 2244
    const/16 v0, 0x2750

    .line 2245
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2251
    return-void
.end method

.method private registerProcessMemoryState()V
    .registers 6

    .line 2168
    const/16 v0, 0x271d

    .line 2169
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    .line 2170
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2171
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2172
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2178
    return-void

    nop

    :array_20
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method private registerProcessSystemIonHeapSize()V
    .registers 6

    .line 2332
    const/16 v0, 0x274d

    .line 2333
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2339
    return-void
.end method

.method private registerRemainingBatteryCapacity()V
    .registers 6

    .line 3980
    const/16 v0, 0x2723

    .line 3981
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3987
    return-void
.end method

.method private registerRkpErrorStats()V
    .registers 6

    .line 4197
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x278c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4202
    return-void
.end method

.method private registerRkpPoolStats()V
    .registers 6

    .line 4141
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2778

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4146
    return-void
.end method

.method private registerRoleHolder()V
    .registers 6

    .line 3198
    const/16 v0, 0x2741

    .line 3199
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3205
    return-void
.end method

.method private registerRuntimeAppOpAccessMessage()V
    .registers 6

    .line 3621
    const/16 v0, 0x2755

    .line 3622
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3628
    return-void
.end method

.method private registerSettingsStats()V
    .registers 6

    .line 4058
    const/16 v0, 0x2760

    .line 4059
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4065
    return-void
.end method

.method private registerSystemElapsedRealtime()V
    .registers 6

    .line 2134
    const/16 v0, 0x271e

    .line 2135
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 2136
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2137
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setTimeoutMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 2138
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 2139
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2145
    return-void
.end method

.method private registerSystemIonHeapSize()V
    .registers 6

    .line 2297
    const/16 v0, 0x2748

    .line 2298
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2304
    return-void
.end method

.method private registerSystemMemory()V
    .registers 6

    .line 2387
    const/16 v0, 0x276c

    .line 2388
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2394
    return-void
.end method

.method private registerSystemUptime()V
    .registers 6

    .line 2153
    const/16 v0, 0x271f

    .line 2154
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2160
    return-void
.end method

.method private registerTemperature()V
    .registers 6

    .line 2436
    const/16 v0, 0x2725

    .line 2437
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2443
    return-void
.end method

.method private registerTimeZoneDataInfo()V
    .registers 6

    .line 3344
    const/16 v0, 0x2744

    .line 3345
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3351
    return-void
.end method

.method private registerTimeZoneDetectorState()V
    .registers 6

    .line 3367
    const/16 v0, 0x2776

    .line 3368
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3374
    return-void
.end method

.method private registerVmStat()V
    .registers 6

    .line 2415
    const/16 v0, 0x2785

    .line 2416
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2422
    return-void
.end method

.method private registerWifiActivityInfo()V
    .registers 6

    .line 2004
    const/16 v0, 0x271b

    .line 2005
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2011
    return-void
.end method

.method private registerWifiBytesTransfer()V
    .registers 6

    .line 1082
    const/16 v0, 0x2710

    .line 1083
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    .line 1084
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1085
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1086
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1092
    return-void

    nop

    :array_20
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private registerWifiBytesTransferBackground()V
    .registers 6

    .line 1514
    const/16 v0, 0x2711

    .line 1515
    .local v0, "tagId":I
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_20

    .line 1516
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1517
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1518
    .local v1, "metadata":Landroid/app/StatsManager$PullAtomMetadata;
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1524
    return-void

    nop

    :array_20
    .array-data 4
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method private static removeEmptyEntries(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 8
    .param p0, "stats"    # Landroid/net/NetworkStats;

    .line 1210
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1211
    .local v0, "ret":Landroid/net/NetworkStats;
    invoke-virtual {p0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStats$Entry;

    .line 1212
    .local v4, "e":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_40

    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_40

    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_40

    .line 1213
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_40

    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getOperations()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-eqz v5, :cond_44

    .line 1214
    :cond_40
    invoke-virtual {v0, v4}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 1216
    .end local v4    # "e":Landroid/net/NetworkStats$Entry;
    :cond_44
    goto :goto_c

    .line 1217
    :cond_45
    return-object v0
.end method

.method private sampleAppOps(Ljava/util/List;Ljava/util/List;II)I
    .registers 29
    .param p3, "atomTag"    # I
    .param p4, "samplingRate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;II)I"
        }
    .end annotation

    .line 3675
    .local p1, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    .local p2, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v14, p4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    .line 3676
    .local v15, "nOps":I
    const/4 v4, 0x0

    move v12, v4

    .local v12, "i":I
    :goto_10
    if-ge v12, v15, :cond_e5

    .line 3677
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 3678
    .local v13, "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    iget v4, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    if-lt v4, v14, :cond_23

    .line 3679
    move/from16 v22, v12

    move/from16 v23, v15

    goto/16 :goto_d9

    .line 3682
    :cond_23
    const/16 v4, 0x275b

    const/16 v10, 0x9

    if-ne v3, v4, :cond_85

    .line 3683
    iget v4, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    iget-object v5, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    iget-object v6, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    iget-object v7, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3684
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v7

    iget-object v8, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3685
    invoke-virtual {v8, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    move-result-wide v8

    iget-object v11, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3686
    invoke-virtual {v11, v10}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    move-result-wide v16

    move v3, v10

    move-wide/from16 v10, v16

    move/from16 v16, v12

    .end local v12    # "i":I
    .local v16, "i":I
    iget-object v12, v13, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3687
    invoke-virtual {v12, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    move-result-wide v17

    move-object v3, v13

    move/from16 v22, v16

    .end local v13    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .end local v16    # "i":I
    .local v3, "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .local v22, "i":I
    move-wide/from16 v12, v17

    iget-object v14, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3688
    const/16 v2, 0x9

    invoke-virtual {v14, v2}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    move-result-wide v16

    move/from16 v23, v15

    .end local v15    # "nOps":I
    .local v23, "nOps":I
    move-wide/from16 v14, v16

    iget-object v1, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3689
    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    move-result-wide v16

    iget-object v1, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3690
    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    move-result-wide v18

    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3691
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v20

    .line 3683
    move/from16 v1, p3

    move-object v2, v3

    .end local v3    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .local v2, "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    move/from16 v3, p3

    move/from16 v21, p4

    invoke-static/range {v3 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;IJJJJJJZI)Landroid/util/StatsEvent;

    move-result-object v3

    .local v3, "e":Landroid/util/StatsEvent;
    goto :goto_d4

    .line 3694
    .end local v2    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .end local v3    # "e":Landroid/util/StatsEvent;
    .end local v22    # "i":I
    .end local v23    # "nOps":I
    .restart local v12    # "i":I
    .restart local v13    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .restart local v15    # "nOps":I
    :cond_85
    move v1, v3

    move/from16 v22, v12

    move-object v2, v13

    move/from16 v23, v15

    .end local v12    # "i":I
    .end local v13    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .end local v15    # "nOps":I
    .restart local v2    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .restart local v22    # "i":I
    .restart local v23    # "nOps":I
    iget v4, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    iget-object v5, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3695
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v6

    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    const/16 v15, 0x9

    invoke-virtual {v3, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    move-result-wide v7

    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3696
    invoke-virtual {v3, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    move-result-wide v9

    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3697
    invoke-virtual {v3, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    move-result-wide v11

    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3698
    invoke-virtual {v3, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    move-result-wide v13

    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3699
    invoke-virtual {v3, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    move-result-wide v16

    move v3, v15

    move-wide/from16 v15, v16

    iget-object v1, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3700
    invoke-virtual {v1, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    move-result-wide v17

    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3701
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v19

    .line 3694
    move/from16 v3, p3

    invoke-static/range {v3 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IJJJJJJZ)Landroid/util/StatsEvent;

    move-result-object v3

    .line 3703
    .restart local v3    # "e":Landroid/util/StatsEvent;
    :goto_d4
    move-object/from16 v1, p1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3676
    .end local v2    # "entry":Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
    .end local v3    # "e":Landroid/util/StatsEvent;
    :goto_d9
    add-int/lit8 v12, v22, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v14, p4

    move/from16 v15, v23

    .end local v22    # "i":I
    .restart local v12    # "i":I
    goto/16 :goto_10

    .end local v23    # "nOps":I
    .restart local v15    # "nOps":I
    :cond_e5
    move/from16 v22, v12

    move/from16 v23, v15

    .line 3705
    .end local v12    # "i":I
    .end local v15    # "nOps":I
    .restart local v23    # "nOps":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x320

    if-le v2, v3, :cond_10d

    .line 3706
    move/from16 v2, p4

    mul-int/lit16 v3, v2, 0x1f4

    .line 3707
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v3, v4

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x1

    .line 3706
    invoke-static {v3, v4, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    .line 3709
    .local v3, "adjustedSamplingRate":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 3710
    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result v6

    return v6

    .line 3712
    .end local v3    # "adjustedSamplingRate":I
    :cond_10d
    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p4

    return v2
.end method

.method private sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;
    .registers 7
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/function/Function<",
            "Landroid/net/NetworkStats$Entry;",
            "Landroid/net/NetworkStats$Entry;",
            ">;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .line 1506
    .local p2, "slicer":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;>;"
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1507
    .local v0, "ret":Landroid/net/NetworkStats;
    invoke-virtual {p1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStats$Entry;

    .line 1508
    .local v2, "e":Landroid/net/NetworkStats$Entry;
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats$Entry;

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 1509
    .end local v2    # "e":Landroid/net/NetworkStats$Entry;
    goto :goto_c

    .line 1510
    :cond_23
    return-object v0
.end method

.method private sliceNetworkStatsByFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .line 1444
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .line 1431
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .line 1457
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .line 1470
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda19;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private toBytes(Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .line 4651
    .local p1, "audioEncodings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 4652
    .local v0, "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4653
    .local v2, "audioEncoding":I
    const-wide v3, 0x20e00000001L

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4656
    .end local v2    # "audioEncoding":I
    goto :goto_9

    .line 4657
    :cond_22
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private toBytes([I)[B
    .registers 8
    .param p1, "array"    # [I

    .line 4661
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 4662
    .local v0, "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_16

    aget v3, p1, v2

    .line 4663
    .local v3, "element":I
    const-wide v4, 0x20e00000001L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4662
    .end local v3    # "element":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 4667
    :cond_16
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private toBytes([Landroid/view/Display$Mode;)[B
    .registers 11
    .param p1, "displayModes"    # [Landroid/view/Display$Mode;

    .line 4671
    invoke-direct {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->createModeGroups([Landroid/view/Display$Mode;)Ljava/util/Map;

    move-result-object v0

    .line 4672
    .local v0, "modeGroupIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 4673
    .local v1, "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    array-length v2, p1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_61

    aget-object v4, p1, v3

    .line 4674
    .local v4, "element":Landroid/view/Display$Mode;
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v5}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 4675
    .local v5, "protoOutputStreamMode":Landroid/util/proto/ProtoOutputStream;
    const-wide v6, 0x10500000001L

    .line 4677
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v8

    .line 4675
    invoke-virtual {v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4678
    const-wide v6, 0x10500000002L

    .line 4680
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v8

    .line 4678
    invoke-virtual {v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4681
    const-wide v6, 0x10200000003L

    .line 4683
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v8

    .line 4681
    invoke-virtual {v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 4684
    const-wide v6, 0x10500000004L

    .line 4686
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4684
    invoke-virtual {v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4687
    const-wide v6, 0x20b00000001L

    .line 4690
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v8

    .line 4687
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 4673
    .end local v4    # "element":Landroid/view/Display$Mode;
    .end local v5    # "protoOutputStreamMode":Landroid/util/proto/ProtoOutputStream;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 4692
    :cond_61
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    return-object v2
.end method

.method static unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    .registers 7
    .param p0, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3881
    .local p1, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    .local p2, "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 3882
    .local v0, "stream":Ljava/io/InputStream;
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 3883
    .local v2, "len":[I
    invoke-static {v0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v3

    .line 3884
    .local v3, "stats":[B
    aget v1, v2, v1

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3885
    return-void
.end method


# virtual methods
.method initializePullersState()V
    .registers 8

    .line 771
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "stats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 772
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 773
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 774
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 775
    const-string/jumbo v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 776
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/telephony/SubscriptionManager;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 777
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 778
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 780
    new-instance v0, Lcom/android/internal/os/StoragedUidIoStatsReader;

    invoke-direct {v0}, Lcom/android/internal/os/StoragedUidIoStatsReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    .line 783
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "stats_pull"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    .line 784
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 787
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    .line 788
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    .line 789
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    .line 790
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    .line 793
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 794
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 797
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 798
    invoke-static {v0}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->getSettingsModifiedReader(Landroid/content/Context;)Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    .line 802
    const/4 v0, 0x0

    :try_start_a1
    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/health/HealthInfoCallback;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_a7} :catch_a8
    .catch Ljava/util/NoSuchElementException; {:try_start_a1 .. :try_end_a7} :catch_a8

    .line 805
    goto :goto_b0

    .line 803
    :catch_a8
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StatsPullAtomService"

    const-string v3, "failed to initialize healthHalWrapper"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 809
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, "op":I
    :goto_b7
    const/16 v3, 0x79

    if-ge v2, v3, :cond_dc

    .line 810
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v3

    .line 811
    .local v3, "perm":Ljava/lang/String;
    if-nez v3, :cond_c2

    .line 812
    goto :goto_d9

    .line 816
    :cond_c2
    :try_start_c2
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 817
    .local v4, "permInfo":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v4}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d6

    .line 818
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_d6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c2 .. :try_end_d6} :catch_d7

    .line 822
    :cond_d6
    goto :goto_d9

    .line 820
    .end local v4    # "permInfo":Landroid/content/pm/PermissionInfo;
    :catch_d7
    move-exception v4

    .line 821
    .local v4, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 809
    .end local v3    # "perm":Ljava/lang/String;
    .end local v4    # "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    .line 826
    .end local v2    # "op":I
    :cond_dc
    new-instance v1, Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    const-string v2, "/system/bin/surfaceflinger"

    invoke-direct {v1, v2}, Lcom/android/internal/os/SelectedProcessCpuThreadReader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    .line 829
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;

    .line 830
    return-void
.end method

.method synthetic lambda$getIKeystoreMetricsService$3$com-android-server-stats-pull-StatsPullAtomService()V
    .registers 3

    .line 1001
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    .line 1003
    monitor-exit v0

    .line 1004
    return-void

    .line 1003
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method synthetic lambda$getINotificationManagerService$5$com-android-server-stats-pull-StatsPullAtomService()V
    .registers 3

    .line 1046
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1047
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 1048
    monitor-exit v0

    .line 1049
    return-void

    .line 1048
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method synthetic lambda$getIProcessStatsService$6$com-android-server-stats-pull-StatsPullAtomService()V
    .registers 3

    .line 1068
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1069
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 1070
    monitor-exit v0

    .line 1071
    return-void

    .line 1070
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method synthetic lambda$getIStoragedService$4$com-android-server-stats-pull-StatsPullAtomService()V
    .registers 3

    .line 1024
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1025
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 1026
    monitor-exit v0

    .line 1027
    return-void

    .line 1026
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method synthetic lambda$getIThermalService$2$com-android-server-stats-pull-StatsPullAtomService()V
    .registers 3

    .line 979
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 980
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 981
    monitor-exit v0

    .line 982
    return-void

    .line 981
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method synthetic lambda$onBootPhase$0$com-android-server-stats-pull-StatsPullAtomService()V
    .registers 1

    .line 756
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initializeNativePullers()V

    .line 757
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initializePullersState()V

    .line 758
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPullers()V

    .line 759
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerEventListeners()V

    .line 760
    return-void
.end method

.method synthetic lambda$onBootPhase$1$com-android-server-stats-pull-StatsPullAtomService()V
    .registers 1

    .line 763
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initAndRegisterNetworkStatsPullers()V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 753
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 754
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_14

    .line 755
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    .line 761
    :cond_14
    const/16 v0, 0x258

    if-ne p1, v0, :cond_24

    .line 763
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 765
    :cond_24
    :goto_24
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 749
    return-void
.end method

.method parseKeystoreAtomWithOverflow([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 11
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4316
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_28

    aget-object v3, p1, v2

    .line 4317
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_12

    .line 4319
    const/4 v0, 0x1

    return v0

    .line 4321
    :cond_12
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    move-result-object v4

    .line 4322
    .local v4, "atom":Landroid/security/metrics/Keystore2AtomWithOverflow;
    const/16 v5, 0x2789

    iget v6, v4, Landroid/security/metrics/Keystore2AtomWithOverflow;->atom_id:I

    iget v7, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static {v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4316
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/Keystore2AtomWithOverflow;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4326
    :cond_28
    return v1
.end method

.method parseKeystoreCrashStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 10
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4377
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_27

    aget-object v3, p1, v2

    .line 4378
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_13

    .line 4379
    const/4 v0, 0x1

    return v0

    .line 4381
    :cond_13
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    move-result-object v4

    .line 4382
    .local v4, "atom":Landroid/security/metrics/CrashStats;
    const/16 v5, 0x278d

    iget v6, v4, Landroid/security/metrics/CrashStats;->count_of_crash_events:I

    invoke-static {v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4377
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/CrashStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4385
    :cond_27
    return v1
.end method

.method parseKeystoreKeyCreationWithAuthInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 13
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4284
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2c

    aget-object v3, p1, v2

    .line 4285
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_12

    .line 4286
    const/4 v0, 0x1

    return v0

    .line 4288
    :cond_12
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object v4

    .line 4289
    .local v4, "atom":Landroid/security/metrics/KeyCreationWithAuthInfo;
    const/16 v5, 0x2787

    iget v6, v4, Landroid/security/metrics/KeyCreationWithAuthInfo;->user_auth_type:I

    iget v7, v4, Landroid/security/metrics/KeyCreationWithAuthInfo;->log10_auth_key_timeout_seconds:I

    iget v8, v4, Landroid/security/metrics/KeyCreationWithAuthInfo;->security_level:I

    iget v9, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIII)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4284
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/KeyCreationWithAuthInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4293
    :cond_2c
    return v1
.end method

.method parseKeystoreKeyCreationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 16
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4269
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_32

    aget-object v3, p1, v2

    .line 4270
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_12

    .line 4272
    const/4 v0, 0x1

    return v0

    .line 4274
    :cond_12
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    move-result-object v4

    .line 4275
    .local v4, "atom":Landroid/security/metrics/KeyCreationWithGeneralInfo;
    const/16 v5, 0x2786

    iget v6, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->algorithm:I

    iget v7, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_size:I

    iget v8, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->ec_curve:I

    iget v9, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_origin:I

    iget v10, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->error_code:I

    iget-boolean v11, v4, Landroid/security/metrics/KeyCreationWithGeneralInfo;->attestation_requested:Z

    iget v12, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v5 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIZI)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4269
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/KeyCreationWithGeneralInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4280
    :cond_32
    return v1
.end method

.method parseKeystoreKeyCreationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 15
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4299
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_30

    aget-object v3, p1, v2

    .line 4300
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_12

    .line 4302
    const/4 v0, 0x1

    return v0

    .line 4304
    :cond_12
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 4305
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    move-result-object v4

    .line 4306
    .local v4, "atom":Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
    const/16 v5, 0x2788

    iget v6, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->algorithm:I

    iget v7, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->purpose_bitmap:I

    iget v8, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    iget v9, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->digest_bitmap:I

    iget v10, v4, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->block_mode_bitmap:I

    iget v11, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIII)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4299
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4312
    :cond_30
    return v1
.end method

.method parseKeystoreKeyOperationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 14
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4348
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2e

    aget-object v3, p1, v2

    .line 4349
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_12

    .line 4351
    const/4 v0, 0x1

    return v0

    .line 4353
    :cond_12
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    move-result-object v4

    .line 4354
    .local v4, "atom":Landroid/security/metrics/KeyOperationWithGeneralInfo;
    const/16 v5, 0x278b

    iget v6, v4, Landroid/security/metrics/KeyOperationWithGeneralInfo;->outcome:I

    iget v7, v4, Landroid/security/metrics/KeyOperationWithGeneralInfo;->error_code:I

    iget-boolean v8, v4, Landroid/security/metrics/KeyOperationWithGeneralInfo;->key_upgraded:Z

    iget v9, v4, Landroid/security/metrics/KeyOperationWithGeneralInfo;->security_level:I

    iget v10, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIZII)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4348
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/KeyOperationWithGeneralInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4358
    :cond_2e
    return v1
.end method

.method parseKeystoreKeyOperationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 14
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4331
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2e

    aget-object v3, p1, v2

    .line 4332
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_12

    .line 4334
    const/4 v0, 0x1

    return v0

    .line 4336
    :cond_12
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 4337
    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    move-result-object v4

    .line 4338
    .local v4, "atom":Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;
    const/16 v5, 0x278a

    iget v6, v4, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->purpose:I

    iget v7, v4, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    iget v8, v4, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->digest_bitmap:I

    iget v9, v4, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->block_mode_bitmap:I

    iget v10, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4331
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4343
    :cond_2e
    return v1
.end method

.method parseKeystoreStorageStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 12
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4243
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_29

    aget-object v3, p1, v2

    .line 4244
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    if-eqz v4, :cond_11

    .line 4245
    const/4 v0, 0x1

    return v0

    .line 4247
    :cond_11
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    move-result-object v4

    .line 4248
    .local v4, "atom":Landroid/security/metrics/StorageStats;
    const/16 v5, 0x2777

    iget v6, v4, Landroid/security/metrics/StorageStats;->storage_type:I

    iget v7, v4, Landroid/security/metrics/StorageStats;->size:I

    iget v8, v4, Landroid/security/metrics/StorageStats;->unused_size:I

    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4243
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/StorageStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4252
    :cond_29
    return v1
.end method

.method parseRkpErrorStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 12
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4363
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2b

    aget-object v3, p1, v2

    .line 4364
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_13

    .line 4365
    const/4 v0, 0x1

    return v0

    .line 4367
    :cond_13
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    move-result-object v4

    .line 4368
    .local v4, "atom":Landroid/security/metrics/RkpErrorStats;
    const/16 v5, 0x278c

    iget v6, v4, Landroid/security/metrics/RkpErrorStats;->rkpError:I

    iget v7, v3, Landroid/security/metrics/KeystoreAtom;->count:I

    iget v8, v4, Landroid/security/metrics/RkpErrorStats;->security_level:I

    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4363
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/RkpErrorStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4372
    :cond_2b
    return v1
.end method

.method parseRkpPoolStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 14
    .param p1, "atoms"    # [Landroid/security/metrics/KeystoreAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4256
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2d

    aget-object v3, p1, v2

    .line 4257
    .local v3, "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_11

    .line 4258
    return v5

    .line 4260
    :cond_11
    iget-object v4, v3, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v4}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpPoolStats()Landroid/security/metrics/RkpPoolStats;

    move-result-object v4

    .line 4261
    .local v4, "atom":Landroid/security/metrics/RkpPoolStats;
    const/16 v5, 0x2778

    iget v6, v4, Landroid/security/metrics/RkpPoolStats;->security_level:I

    iget v7, v4, Landroid/security/metrics/RkpPoolStats;->expiring:I

    iget v8, v4, Landroid/security/metrics/RkpPoolStats;->unassigned:I

    iget v9, v4, Landroid/security/metrics/RkpPoolStats;->attested:I

    iget v10, v4, Landroid/security/metrics/RkpPoolStats;->total:I

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4256
    .end local v3    # "atomWrapper":Landroid/security/metrics/KeystoreAtom;
    .end local v4    # "atom":Landroid/security/metrics/RkpPoolStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4265
    :cond_2d
    return v1
.end method

.method pullAccessibilityFloatingMenuStatsLocked(ILjava/util/List;)I
    .registers 21
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4484
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UserManager;

    .line 4485
    .local v2, "userManager":Landroid/os/UserManager;
    const/4 v3, 0x1

    if-nez v2, :cond_11

    .line 4486
    return v3

    .line 4488
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4490
    .local v4, "token":J
    :try_start_15
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4491
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 4492
    .local v6, "defaultSize":I
    const/4 v7, 0x0

    .line 4493
    .local v7, "defaultIconType":I
    const/4 v8, 0x1

    .line 4494
    .local v8, "defaultFadeEnabled":I
    const v9, 0x3f0ccccd    # 0.55f

    .line 4496
    .local v9, "defaultOpacity":F
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_29
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_89

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 4497
    .local v11, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    .line 4499
    .local v13, "userId":I
    iget-object v14, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14, v13}, Lcom/android/server/stats/pull/StatsPullAtomService;->isAccessibilityFloatingMenuUser(Landroid/content/Context;I)Z

    move-result v14

    if-eqz v14, :cond_7d

    .line 4500
    const-string v14, "accessibility_floating_menu_size"

    invoke-static {v0, v14, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 4502
    .local v14, "size":I
    const-string v15, "accessibility_floating_menu_icon_type"

    invoke-static {v0, v15, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 4505
    .local v15, "type":I
    const-string v12, "accessibility_floating_menu_fade_enabled"

    invoke-static {v0, v12, v3, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-ne v12, v3, :cond_5c

    move v12, v3

    goto :goto_5d

    :cond_5c
    const/4 v12, 0x0

    .line 4508
    .local v12, "fadeEnabled":Z
    :goto_5d
    const-string v3, "accessibility_floating_menu_opacity"

    const v1, 0x3f0ccccd    # 0.55f

    invoke-static {v0, v3, v1, v13}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_66} :catch_9b
    .catchall {:try_start_15 .. :try_end_66} :catchall_95

    .line 4512
    .local v1, "opacity":F
    nop

    .line 4513
    move/from16 v3, p1

    move-object/from16 v17, v0

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .local v17, "resolver":Landroid/content/ContentResolver;
    :try_start_6b
    invoke-static {v3, v14, v15, v12, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIZF)Landroid/util/StatsEvent;

    move-result-object v0
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_6f} :catch_7b
    .catchall {:try_start_6b .. :try_end_6f} :catchall_79

    .line 4512
    move/from16 v16, v1

    move-object/from16 v1, p2

    .end local v1    # "opacity":F
    .local v16, "opacity":F
    :try_start_73
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_76} :catch_77
    .catchall {:try_start_73 .. :try_end_76} :catchall_ae

    goto :goto_83

    .line 4517
    .end local v6    # "defaultSize":I
    .end local v7    # "defaultIconType":I
    .end local v8    # "defaultFadeEnabled":I
    .end local v9    # "defaultOpacity":F
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v12    # "fadeEnabled":Z
    .end local v13    # "userId":I
    .end local v14    # "size":I
    .end local v15    # "type":I
    .end local v16    # "opacity":F
    .end local v17    # "resolver":Landroid/content/ContentResolver;
    :catch_77
    move-exception v0

    goto :goto_a0

    .line 4521
    :catchall_79
    move-exception v0

    goto :goto_98

    .line 4517
    :catch_7b
    move-exception v0

    goto :goto_9e

    .line 4499
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "defaultSize":I
    .restart local v7    # "defaultIconType":I
    .restart local v8    # "defaultFadeEnabled":I
    .restart local v9    # "defaultOpacity":F
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v13    # "userId":I
    :cond_7d
    move/from16 v3, p1

    move-object/from16 v1, p2

    move-object/from16 v17, v0

    .line 4516
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v13    # "userId":I
    .restart local v17    # "resolver":Landroid/content/ContentResolver;
    :goto_83
    const/4 v3, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v17

    goto :goto_29

    .line 4496
    .end local v17    # "resolver":Landroid/content/ContentResolver;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_89
    move/from16 v3, p1

    move-object/from16 v1, p2

    move-object/from16 v17, v0

    .line 4521
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "defaultSize":I
    .end local v7    # "defaultIconType":I
    .end local v8    # "defaultFadeEnabled":I
    .end local v9    # "defaultOpacity":F
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4522
    nop

    .line 4523
    const/4 v0, 0x0

    return v0

    .line 4521
    :catchall_95
    move-exception v0

    move/from16 v3, p1

    :goto_98
    move-object/from16 v1, p2

    goto :goto_af

    .line 4517
    :catch_9b
    move-exception v0

    move/from16 v3, p1

    :goto_9e
    move-object/from16 v1, p2

    .line 4518
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_a0
    :try_start_a0
    const-string v6, "StatsPullAtomService"

    const-string/jumbo v7, "pulling accessibility floating menu stats failed at getUsers"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a8
    .catchall {:try_start_a0 .. :try_end_a8} :catchall_ae

    .line 4519
    nop

    .line 4521
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4519
    const/4 v6, 0x1

    return v6

    .line 4521
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_ae
    move-exception v0

    :goto_af
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4522
    throw v0
.end method

.method pullAccessibilityShortcutStatsLocked(ILjava/util/List;)I
    .registers 23
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4435
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UserManager;

    .line 4436
    .local v2, "userManager":Landroid/os/UserManager;
    const/4 v3, 0x1

    if-nez v2, :cond_11

    .line 4437
    return v3

    .line 4439
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4441
    .local v4, "token":J
    :try_start_15
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4442
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x2

    .line 4444
    .local v6, "hardware_shortcut_type":I
    const/4 v7, 0x3

    .line 4446
    .local v7, "triple_tap_shortcut":I
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_25
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_7d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 4447
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 4449
    .local v11, "userId":I
    iget-object v12, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v12, v11}, Lcom/android/server/stats/pull/StatsPullAtomService;->isAccessibilityShortcutUser(Landroid/content/Context;I)Z

    move-result v12

    if-eqz v12, :cond_79

    .line 4450
    const-string v12, "accessibility_button_mode"

    .line 4451
    invoke-static {v0, v12, v10, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 4450
    invoke-direct {v1, v12}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertToAccessibilityShortcutType(I)I

    move-result v14

    .line 4453
    .local v14, "software_shortcut_type":I
    const-string v12, "accessibility_button_targets"

    invoke-static {v0, v12, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 4455
    .local v12, "software_shortcut_list":Ljava/lang/String;
    invoke-direct {v1, v12}, Lcom/android/server/stats/pull/StatsPullAtomService;->countAccessibilityServices(Ljava/lang/String;)I

    move-result v15

    .line 4458
    .local v15, "software_shortcut_service_num":I
    const-string v13, "accessibility_shortcut_target_service"

    invoke-static {v0, v13, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 4460
    .local v13, "hardware_shortcut_list":Ljava/lang/String;
    invoke-direct {v1, v13}, Lcom/android/server/stats/pull/StatsPullAtomService;->countAccessibilityServices(Ljava/lang/String;)I

    move-result v17

    .line 4464
    .local v17, "hardware_shortcut_service_num":I
    const-string v3, "accessibility_display_magnification_enabled"

    invoke-static {v0, v3, v10, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    .line 4467
    .local v19, "triple_tap_service_num":I
    const/16 v16, 0x2

    const/16 v18, 0x3

    .line 4468
    move-object v3, v13

    .end local v13    # "hardware_shortcut_list":Ljava/lang/String;
    .local v3, "hardware_shortcut_list":Ljava/lang/String;
    move/from16 v13, p1

    invoke-static/range {v13 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIII)Landroid/util/StatsEvent;

    move-result-object v10
    :try_end_71
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_71} :catch_88
    .catchall {:try_start_15 .. :try_end_71} :catchall_84

    .line 4467
    move-object/from16 v13, p2

    :try_start_73
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_76} :catch_77
    .catchall {:try_start_73 .. :try_end_76} :catchall_99

    goto :goto_7b

    .line 4474
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "hardware_shortcut_list":Ljava/lang/String;
    .end local v6    # "hardware_shortcut_type":I
    .end local v7    # "triple_tap_shortcut":I
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v11    # "userId":I
    .end local v12    # "software_shortcut_list":Ljava/lang/String;
    .end local v14    # "software_shortcut_type":I
    .end local v15    # "software_shortcut_service_num":I
    .end local v17    # "hardware_shortcut_service_num":I
    .end local v19    # "triple_tap_service_num":I
    :catch_77
    move-exception v0

    goto :goto_8b

    .line 4449
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "hardware_shortcut_type":I
    .restart local v7    # "triple_tap_shortcut":I
    .restart local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v11    # "userId":I
    :cond_79
    move-object/from16 v13, p2

    .line 4473
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v11    # "userId":I
    :goto_7b
    const/4 v3, 0x1

    goto :goto_25

    .line 4446
    :cond_7d
    move-object/from16 v13, p2

    .line 4478
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "hardware_shortcut_type":I
    .end local v7    # "triple_tap_shortcut":I
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4479
    nop

    .line 4480
    return v10

    .line 4478
    :catchall_84
    move-exception v0

    move-object/from16 v13, p2

    goto :goto_9a

    .line 4474
    :catch_88
    move-exception v0

    move-object/from16 v13, p2

    .line 4475
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_8b
    :try_start_8b
    const-string v3, "StatsPullAtomService"

    const-string/jumbo v6, "pulling accessibility shortcuts stats failed at getUsers"

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_99

    .line 4476
    nop

    .line 4478
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4476
    const/4 v3, 0x1

    return v3

    .line 4478
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_99
    move-exception v0

    :goto_9a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4479
    throw v0
.end method

.method pullAppOpsLocked(ILjava/util/List;)I
    .registers 13
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3647
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v0, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3649
    .local v1, "token":J
    :try_start_6
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 3651
    .local v3, "appOps":Landroid/app/AppOpsManager;
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 3652
    .local v4, "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    new-instance v5, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v6, 0x9

    .line 3653
    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v5

    .line 3654
    .local v5, "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    invoke-direct {v7, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3655
    const-wide/16 v6, 0x7d0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 3658
    .local v6, "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    const/16 v7, 0x64

    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v8

    .line 3659
    .local v8, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    invoke-direct {p0, p2, v8, p1, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result v9

    .line 3660
    .local v9, "samplingRate":I
    if-eq v9, v7, :cond_53

    .line 3661
    const-string v7, "Atom 10060 downsampled - too many dimensions"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_6 .. :try_end_53} :catchall_59

    .line 3668
    .end local v3    # "appOps":Landroid/app/AppOpsManager;
    .end local v4    # "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v5    # "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .end local v6    # "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v8    # "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    .end local v9    # "samplingRate":I
    :cond_53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3669
    nop

    .line 3670
    const/4 v0, 0x0

    return v0

    .line 3663
    :catchall_59
    move-exception v3

    .line 3665
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_5a
    const-string v4, "Could not read appops"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_64

    .line 3666
    const/4 v0, 0x1

    .line 3668
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3666
    return v0

    .line 3668
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_64
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3669
    throw v0
.end method

.method pullAppSizeLocked(ILjava/util/List;)I
    .registers 27
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2699
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v1, "StatsPullAtomService"

    const/4 v2, 0x1

    :try_start_3
    const-string v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2700
    .local v0, "jsonStr":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2701
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "queryTime"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 2702
    .local v15, "cache_time":J
    const-string/jumbo v4, "packageNames"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2703
    .local v4, "pkg_names":Lorg/json/JSONArray;
    const-string v7, "appSizes"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v13, v7

    .line 2704
    .local v13, "app_sizes":Lorg/json/JSONArray;
    const-string v7, "appDataSizes"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v14, v7

    .line 2705
    .local v14, "app_data_sizes":Lorg/json/JSONArray;
    const-string v7, "cacheSizes"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v11, v7

    .line 2707
    .local v11, "app_cache_sizes":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v12, v7

    .line 2708
    .local v12, "length":I
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v7, v12, :cond_9e

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v7, v12, :cond_9e

    .line 2709
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-eq v7, v12, :cond_55

    move-object/from16 v8, p2

    move-object/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    goto :goto_a8

    .line 2713
    :cond_55
    const/4 v7, 0x0

    move v9, v7

    .local v9, "i":I
    :goto_57
    if-ge v9, v12, :cond_8f

    .line 2714
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2715
    invoke-virtual {v13, v9, v5, v6}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v17

    .line 2716
    invoke-virtual {v14, v9, v5, v6}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v19

    .line 2717
    invoke-virtual {v11, v9, v5, v6}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v21

    .line 2714
    move/from16 v7, p1

    move/from16 v23, v9

    .end local v9    # "i":I
    .local v23, "i":I
    move-wide/from16 v9, v17

    move-object/from16 v17, v11

    move/from16 v18, v12

    .end local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v12    # "length":I
    .local v17, "app_cache_sizes":Lorg/json/JSONArray;
    .local v18, "length":I
    move-wide/from16 v11, v19

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    .end local v13    # "app_sizes":Lorg/json/JSONArray;
    .end local v14    # "app_data_sizes":Lorg/json/JSONArray;
    .local v19, "app_sizes":Lorg/json/JSONArray;
    .local v20, "app_data_sizes":Lorg/json/JSONArray;
    move-wide/from16 v13, v21

    invoke-static/range {v7 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;JJJJ)Landroid/util/StatsEvent;

    move-result-object v7
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7f} :catch_b0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_7f} :catch_b0

    move-object/from16 v8, p2

    :try_start_81
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2713
    add-int/lit8 v9, v23, 0x1

    move-object/from16 v11, v17

    move/from16 v12, v18

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    .end local v23    # "i":I
    .restart local v9    # "i":I
    goto :goto_57

    .end local v17    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v18    # "length":I
    .end local v19    # "app_sizes":Lorg/json/JSONArray;
    .end local v20    # "app_data_sizes":Lorg/json/JSONArray;
    .restart local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .restart local v12    # "length":I
    .restart local v13    # "app_sizes":Lorg/json/JSONArray;
    .restart local v14    # "app_data_sizes":Lorg/json/JSONArray;
    :cond_8f
    move-object/from16 v8, p2

    move/from16 v23, v9

    move-object/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    .line 2722
    .end local v0    # "jsonStr":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "pkg_names":Lorg/json/JSONArray;
    .end local v9    # "i":I
    .end local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v12    # "length":I
    .end local v13    # "app_sizes":Lorg/json/JSONArray;
    .end local v14    # "app_data_sizes":Lorg/json/JSONArray;
    .end local v15    # "cache_time":J
    nop

    .line 2723
    const/4 v0, 0x0

    return v0

    .line 2708
    .restart local v0    # "jsonStr":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "pkg_names":Lorg/json/JSONArray;
    .restart local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .restart local v12    # "length":I
    .restart local v13    # "app_sizes":Lorg/json/JSONArray;
    .restart local v14    # "app_data_sizes":Lorg/json/JSONArray;
    .restart local v15    # "cache_time":J
    :cond_9e
    move-object/from16 v8, p2

    move-object/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    .line 2710
    .end local v11    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v12    # "length":I
    .end local v13    # "app_sizes":Lorg/json/JSONArray;
    .end local v14    # "app_data_sizes":Lorg/json/JSONArray;
    .restart local v17    # "app_cache_sizes":Lorg/json/JSONArray;
    .restart local v18    # "length":I
    .restart local v19    # "app_sizes":Lorg/json/JSONArray;
    .restart local v20    # "app_data_sizes":Lorg/json/JSONArray;
    :goto_a8
    const-string v5, "formatting error in diskstats cache file!"

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_ad} :catch_ae
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_ad} :catch_ae

    .line 2711
    return v2

    .line 2719
    .end local v0    # "jsonStr":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "pkg_names":Lorg/json/JSONArray;
    .end local v15    # "cache_time":J
    .end local v17    # "app_cache_sizes":Lorg/json/JSONArray;
    .end local v18    # "length":I
    .end local v19    # "app_sizes":Lorg/json/JSONArray;
    .end local v20    # "app_data_sizes":Lorg/json/JSONArray;
    :catch_ae
    move-exception v0

    goto :goto_b3

    :catch_b0
    move-exception v0

    move-object/from16 v8, p2

    .line 2720
    .local v0, "e":Ljava/lang/Exception;
    :goto_b3
    const-string v3, "Unable to read diskstats cache file within pullAppSize"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    return v2
.end method

.method pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I
    .registers 13
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3517
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_6

    .line 3518
    const/4 v0, 0x1

    return v0

    .line 3521
    :cond_6
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3522
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 3523
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 3524
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 3525
    .local v5, "storageUuid":Ljava/util/UUID;
    if-nez v5, :cond_26

    .line 3526
    goto :goto_15

    .line 3529
    :cond_26
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 3530
    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3529
    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v6

    .line 3531
    .local v6, "volumeInfo":Landroid/os/storage/VolumeInfo;
    if-nez v6, :cond_35

    .line 3532
    goto :goto_15

    .line 3535
    :cond_35
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v7

    .line 3536
    .local v7, "diskInfo":Landroid/os/storage/DiskInfo;
    if-nez v7, :cond_3c

    .line 3537
    goto :goto_15

    .line 3540
    :cond_3c
    const/4 v8, -0x1

    .line 3541
    .local v8, "externalStorageType":I
    invoke-virtual {v7}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v9

    if-eqz v9, :cond_45

    .line 3542
    const/4 v8, 0x1

    goto :goto_54

    .line 3543
    :cond_45
    invoke-virtual {v7}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 3544
    const/4 v8, 0x2

    goto :goto_54

    .line 3545
    :cond_4d
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    move-result v9

    if-eqz v9, :cond_54

    .line 3546
    const/4 v8, 0x3

    .line 3550
    :cond_54
    :goto_54
    const/4 v9, -0x1

    if-eq v8, v9, :cond_60

    .line 3551
    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3554
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "storageUuid":Ljava/util/UUID;
    .end local v6    # "volumeInfo":Landroid/os/storage/VolumeInfo;
    .end local v7    # "diskInfo":Landroid/os/storage/DiskInfo;
    .end local v8    # "externalStorageType":I
    :cond_60
    goto :goto_15

    .line 3555
    :cond_61
    return v1
.end method

.method pullAttributedAppOpsLocked(ILjava/util/List;)I
    .registers 13
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3726
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3728
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 3729
    .local v2, "appOps":Landroid/app/AppOpsManager;
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 3730
    .local v3, "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    new-instance v4, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v5, 0x9

    .line 3731
    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v4

    .line 3732
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v4

    .line 3734
    .local v4, "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    invoke-direct {v6, v3}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3735
    const-wide/16 v5, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$HistoricalOps;

    .line 3738
    .local v5, "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    iget v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    if-nez v6, :cond_59

    .line 3739
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$4;

    invoke-direct {v7, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$4;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const-wide/32 v8, 0xafc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3752
    const/16 v6, 0x64

    iput v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 3755
    :cond_59
    iget v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 3756
    invoke-direct {p0, v5, p1, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v6

    .line 3758
    .local v6, "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    iget v7, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-direct {p0, p2, v6, p1, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result v7

    .line 3760
    .local v7, "newSamplingRate":I
    iget v8, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I
    :try_end_6d
    .catchall {:try_start_4 .. :try_end_6d} :catchall_73

    .line 3766
    .end local v2    # "appOps":Landroid/app/AppOpsManager;
    .end local v3    # "ops":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v4    # "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .end local v5    # "histOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v6    # "opsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;>;"
    .end local v7    # "newSamplingRate":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3767
    nop

    .line 3768
    const/4 v2, 0x0

    return v2

    .line 3761
    :catchall_73
    move-exception v2

    .line 3763
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_74
    const-string v3, "StatsPullAtomService"

    const-string v4, "Could not read appops"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_80

    .line 3764
    const/4 v3, 0x1

    .line 3766
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3764
    return v3

    .line 3766
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_80
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3767
    throw v2
.end method

.method pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I
    .registers 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2544
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2545
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2546
    .local v0, "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    if-nez v0, :cond_13

    .line 2547
    const-string v1, "StatsPullAtomService"

    const-string v2, "failed to get binderStats"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    const/4 v1, 0x1

    return v1

    .line 2551
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedExceptionStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 2554
    .local v1, "exceptionStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2555
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 2556
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-static {p1, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;J)Landroid/util/StatsEvent;

    move-result-object v4

    .line 2555
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2557
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_1f

    .line 2558
    :cond_45
    const/4 v2, 0x0

    return v2
.end method

.method pullBinderCallsStatsLocked(ILjava/util/List;)I
    .registers 33
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2513
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2514
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2515
    .local v0, "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    if-nez v0, :cond_13

    .line 2516
    const-string v1, "StatsPullAtomService"

    const-string v2, "failed to get binderStats"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    const/4 v1, 0x1

    return v1

    .line 2520
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedCallStats()Ljava/util/ArrayList;

    move-result-object v1

    .line 2521
    .local v1, "callStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->reset()V

    .line 2522
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 2523
    .local v3, "callStat":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    iget v5, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    iget-object v6, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iget-wide v10, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    iget-wide v12, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    iget-wide v14, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    .end local v0    # "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    .end local v1    # "callStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .local v28, "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    .local v29, "callStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-wide v0, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    move-wide/from16 v16, v0

    iget-wide v0, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    move-wide/from16 v18, v0

    iget-wide v0, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    move-wide/from16 v20, v0

    iget-wide v0, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    move-wide/from16 v22, v0

    iget-wide v0, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    move-wide/from16 v24, v0

    iget-boolean v0, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    move/from16 v26, v0

    iget v0, v3, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    move/from16 v27, v0

    move/from16 v4, p1

    invoke-static/range {v4 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;JJJJJJJJJZI)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2529
    .end local v3    # "callStat":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    goto :goto_1e

    .line 2530
    .end local v28    # "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    .end local v29    # "callStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .restart local v0    # "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    .restart local v1    # "callStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :cond_68
    move-object/from16 v28, v0

    .end local v0    # "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    .restart local v28    # "binderStats":Lcom/android/server/BinderCallsStatsService$Internal;
    const/4 v0, 0x0

    return v0
.end method

.method pullBluetoothActivityInfoLocked(ILjava/util/List;)I
    .registers 17
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2122
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 2123
    .local v0, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    if-nez v0, :cond_8

    .line 2124
    const/4 v1, 0x1

    return v1

    .line 2126
    :cond_8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getTimestampMillis()J

    move-result-wide v3

    .line 2127
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getBluetoothStackState()I

    move-result v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v6

    .line 2128
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v10

    .line 2129
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v12

    .line 2126
    move v2, p1

    invoke-static/range {v2 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJIJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2130
    const/4 v1, 0x0

    return v1
.end method

.method pullBluetoothBytesTransferLocked(ILjava/util/List;)I
    .registers 12
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1667
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 1668
    .local v0, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    if-nez v0, :cond_8

    .line 1669
    const/4 v1, 0x1

    return v1

    .line 1671
    :cond_8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/UidTraffic;

    .line 1672
    .local v2, "traffic":Landroid/bluetooth/UidTraffic;
    nop

    .line 1673
    invoke-virtual {v2}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v4

    invoke-virtual {v2}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v7

    .line 1672
    move v3, p1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1674
    .end local v2    # "traffic":Landroid/bluetooth/UidTraffic;
    goto :goto_10

    .line 1675
    :cond_32
    const/4 v1, 0x0

    return v1
.end method

.method pullBuildInformationLocked(ILjava/util/List;)I
    .registers 13
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3191
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
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

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3194
    const/4 v0, 0x0

    return v0
.end method

.method pullCategorySizeLocked(ILjava/util/List;)I
    .registers 21
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p2

    .line 2738
    :try_start_2
    const-string v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2739
    .local v0, "jsonStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2740
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "queryTime"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 2743
    .local v10, "cacheTime":J
    const/4 v7, 0x1

    const-string v3, "appSize"

    .line 2745
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2743
    move/from16 v6, p1

    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2748
    const/4 v13, 0x2

    const-string v3, "appDataSize"

    .line 2750
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2748
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2753
    const/4 v13, 0x3

    const-string v3, "cacheSize"

    .line 2755
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2753
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2758
    const/4 v13, 0x4

    const-string/jumbo v3, "photosSize"

    .line 2760
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2758
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2762
    const/4 v13, 0x5

    const-string/jumbo v3, "videosSize"

    .line 2764
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2762
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2766
    const/4 v13, 0x6

    const-string v3, "audioSize"

    .line 2768
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2766
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2770
    const/4 v13, 0x7

    const-string v3, "downloadsSize"

    .line 2772
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2770
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2775
    const/16 v13, 0x8

    const-string/jumbo v3, "systemSize"

    .line 2777
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2775
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2779
    const/16 v13, 0x9

    const-string/jumbo v3, "otherSize"

    .line 2781
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2779
    move/from16 v12, p1

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_bc} :catch_bf
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_bc} :catch_bf

    .line 2785
    nop

    .line 2786
    .end local v0    # "jsonStr":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v10    # "cacheTime":J
    const/4 v0, 0x0

    return v0

    .line 2782
    :catch_bf
    move-exception v0

    .line 2783
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StatsPullAtomService"

    const-string v3, "Unable to read diskstats cache file within pullCategorySize"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    const/4 v2, 0x1

    return v2
.end method

.method pullCooldownDeviceLocked(ILjava/util/List;)I
    .registers 16
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2478
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object v0

    .line 2479
    .local v0, "thermalService":Landroid/os/IThermalService;
    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 2480
    return v1

    .line 2482
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2484
    .local v2, "callingToken":J
    :try_start_c
    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentCoolingDevices()[Landroid/os/CoolingDevice;

    move-result-object v4

    .line 2485
    .local v4, "devices":[Landroid/os/CoolingDevice;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_13
    if-ge v7, v5, :cond_30

    aget-object v8, v4, v7

    .line 2486
    .local v8, "device":Landroid/os/CoolingDevice;
    nop

    .line 2487
    invoke-virtual {v8}, Landroid/os/CoolingDevice;->getType()I

    move-result v9

    invoke-virtual {v8}, Landroid/os/CoolingDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Landroid/os/CoolingDevice;->getValue()J

    move-result-wide v11

    long-to-int v11, v11

    .line 2486
    invoke-static {p1, v9, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;I)Landroid/util/StatsEvent;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2c} :catch_37
    .catchall {:try_start_c .. :try_end_2c} :catchall_35

    .line 2485
    nop

    .end local v8    # "device":Landroid/os/CoolingDevice;
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 2494
    .end local v4    # "devices":[Landroid/os/CoolingDevice;
    :cond_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2495
    nop

    .line 2496
    return v6

    .line 2494
    :catchall_35
    move-exception v1

    goto :goto_44

    .line 2489
    :catch_37
    move-exception v4

    .line 2491
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_38
    const-string v5, "StatsPullAtomService"

    const-string v6, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_35

    .line 2492
    nop

    .line 2494
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2492
    return v1

    .line 2494
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_44
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2495
    throw v1
.end method

.method pullCpuActiveTimeLocked(ILjava/util/List;)I
    .registers 5
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1972
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1975
    const/4 v0, 0x0

    return v0
.end method

.method pullCpuClusterTimeLocked(ILjava/util/List;)I
    .registers 5
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1994
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;

    invoke-direct {v1, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 2000
    const/4 v0, 0x0

    return v0
.end method

.method pullCpuCyclesPerThreadGroupCluster(ILjava/util/List;)I
    .registers 11
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1910
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Landroid/os/BatteryStatsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsInternal;

    .line 1911
    invoke-virtual {v0}, Landroid/os/BatteryStatsInternal;->getSystemServiceCpuThreadTimes()Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    move-result-object v0

    .line 1912
    .local v0, "times":Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 1913
    return v1

    .line 1916
    :cond_10
    const/4 v2, 0x2

    iget-object v3, v0, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    .line 1919
    iget-object v2, v0, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    .line 1923
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    invoke-virtual {v1}, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->readAbsolute()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    move-result-object v1

    .line 1924
    .local v1, "surfaceFlingerTimes":Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;
    if-eqz v1, :cond_40

    iget-object v2, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    if-eqz v2, :cond_40

    .line 1925
    iget-object v2, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    array-length v2, v2

    new-array v2, v2, [J

    .line 1927
    .local v2, "surfaceFlingerTimesUs":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2d
    array-length v4, v2

    if-ge v3, v4, :cond_3c

    .line 1928
    iget-object v4, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    aget-wide v4, v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 1927
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 1930
    .end local v3    # "i":I
    :cond_3c
    const/4 v3, 0x3

    invoke-static {p1, p2, v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    .line 1935
    .end local v2    # "surfaceFlingerTimesUs":[J
    :cond_40
    const/4 v2, 0x0

    return v2
.end method

.method pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)I
    .registers 27
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1771
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 1772
    .local v1, "powerProfile":Lcom/android/internal/os/PowerProfile;
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v8

    .line 1773
    .local v8, "freqsClusters":[I
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v9

    .line 1774
    .local v9, "clusters":I
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v10

    .line 1775
    .local v10, "freqs":[J
    array-length v2, v10

    new-array v11, v2, [D

    .line 1778
    .local v11, "freqsPowers":[D
    const/4 v2, 0x0

    .line 1779
    .local v2, "freqClusterIndex":I
    const/4 v3, -0x1

    .line 1780
    .local v3, "lastCluster":I
    const/4 v4, 0x0

    .local v4, "freqIndex":I
    :goto_1b
    array-length v5, v10

    if-ge v4, v5, :cond_30

    .line 1781
    aget v5, v8, v4

    .line 1782
    .local v5, "cluster":I
    if-eq v5, v3, :cond_23

    .line 1783
    const/4 v2, 0x0

    .line 1785
    :cond_23
    move v3, v5

    .line 1787
    nop

    .line 1788
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v6

    aput-wide v6, v11, v4

    .line 1780
    .end local v5    # "cluster":I
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1794
    .end local v2    # "freqClusterIndex":I
    .end local v3    # "lastCluster":I
    .end local v4    # "freqIndex":I
    :cond_30
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v12, v2

    .line 1795
    .local v12, "aggregated":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[D>;"
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v14, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda12;

    move-object v2, v14

    move-object v3, v12

    move v4, v9

    move-object v5, v8

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda12;-><init>(Landroid/util/SparseArray;I[I[J[D)V

    invoke-virtual {v13, v14}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1824
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1825
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4b
    if-ge v3, v2, :cond_a7

    .line 1826
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1827
    .local v4, "uid":I
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 1828
    .local v5, "values":[D
    const/4 v6, 0x0

    .local v6, "cluster":I
    :goto_58
    if-ge v6, v9, :cond_9a

    .line 1829
    mul-int/lit8 v7, v6, 0x3

    aget-wide v13, v5, v7

    const-wide v15, 0x412e848000000000L    # 1000000.0

    div-double/2addr v13, v15

    double-to-long v14, v13

    mul-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v22, v1

    .end local v1    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .local v22, "powerProfile":Lcom/android/internal/os/PowerProfile;
    aget-wide v0, v5, v7

    double-to-long v0, v0

    mul-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x2

    aget-wide v16, v5, v7

    const-wide v18, 0x408f400000000000L    # 1000.0

    move-object/from16 v23, v8

    .end local v8    # "freqsClusters":[I
    .local v23, "freqsClusters":[I
    div-double v7, v16, v18

    double-to-long v7, v7

    move/from16 v13, p1

    move-wide/from16 v16, v14

    move v14, v4

    move v15, v6

    move-wide/from16 v18, v0

    move-wide/from16 v20, v7

    invoke-static/range {v13 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1828
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v8, v23

    goto :goto_58

    .end local v22    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .end local v23    # "freqsClusters":[I
    .restart local v1    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .restart local v8    # "freqsClusters":[I
    :cond_9a
    move-object/from16 v22, v1

    move-object/from16 v23, v8

    move-object/from16 v1, p2

    .line 1825
    .end local v1    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .end local v4    # "uid":I
    .end local v5    # "values":[D
    .end local v6    # "cluster":I
    .end local v8    # "freqsClusters":[I
    .restart local v22    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .restart local v23    # "freqsClusters":[I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    goto :goto_4b

    .line 1836
    .end local v3    # "i":I
    .end local v22    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .end local v23    # "freqsClusters":[I
    .restart local v1    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .restart local v8    # "freqsClusters":[I
    :cond_a7
    const/4 v0, 0x0

    return v0
.end method

.method pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I
    .registers 12
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1716
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v0

    .line 1717
    .local v0, "freqsClusters":[I
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v1

    .line 1718
    .local v1, "freqs":[J
    invoke-static {}, Lcom/android/internal/os/KernelCpuTotalBpfMapReader;->read()[J

    move-result-object v2

    .line 1719
    .local v2, "timesMs":[J
    if-nez v2, :cond_10

    .line 1720
    const/4 v3, 0x1

    return v3

    .line 1722
    :cond_10
    const/4 v3, 0x0

    .local v3, "freqIndex":I
    :goto_11
    array-length v4, v2

    if-ge v3, v4, :cond_25

    .line 1723
    aget v4, v0, v3

    .line 1724
    .local v4, "cluster":I
    aget-wide v5, v1, v3

    long-to-int v5, v5

    .line 1725
    .local v5, "freq":I
    aget-wide v6, v2, v3

    .line 1726
    .local v6, "timeMs":J
    invoke-static {p1, v4, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1722
    .end local v4    # "cluster":I
    .end local v5    # "freq":I
    .end local v6    # "timeMs":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1728
    .end local v3    # "freqIndex":I
    :cond_25
    const/4 v3, 0x0

    return v3
.end method

.method pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I
    .registers 40
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3027
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    const-string v2, "StatsPullAtomService"

    const/4 v3, 0x1

    if-nez v1, :cond_f

    .line 3028
    const-string v1, "mKernelCpuThreadReader is null"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    return v3

    .line 3031
    :cond_f
    nop

    .line 3032
    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getProcessCpuUsageDiffed()Ljava/util/ArrayList;

    move-result-object v1

    .line 3033
    .local v1, "processCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;>;"
    if-nez v1, :cond_1d

    .line 3034
    const-string/jumbo v4, "processCpuUsages is null"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    return v3

    .line 3037
    :cond_1d
    iget-object v4, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    invoke-virtual {v4}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getCpuFrequenciesKhz()[I

    move-result-object v4

    .line 3038
    .local v4, "cpuFrequencies":[I
    array-length v5, v4

    const/16 v6, 0x8

    if-le v5, v6, :cond_40

    .line 3039
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected maximum 8 frequencies, but got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3041
    .local v5, "message":Ljava/lang/String;
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    return v3

    .line 3044
    .end local v5    # "message":Ljava/lang/String;
    :cond_40
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    if-ge v5, v7, :cond_f3

    .line 3045
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    .line 3046
    .local v7, "processCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    iget-object v9, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 3048
    .local v9, "threadCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_51
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_ed

    .line 3049
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 3050
    .local v11, "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    iget-object v12, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v12, v12

    array-length v13, v4

    if-eq v12, v13, :cond_88

    .line 3051
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected number of usage times, expected "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " but got "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3054
    .local v6, "message":Ljava/lang/String;
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    return v3

    .line 3058
    .end local v6    # "message":Ljava/lang/String;
    :cond_88
    new-array v12, v6, [I

    .line 3059
    .local v12, "frequencies":[I
    new-array v13, v6, [I

    .line 3060
    .local v13, "usageTimesMillis":[I
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_8d
    if-ge v14, v6, :cond_a4

    .line 3061
    array-length v15, v4

    if-ge v14, v15, :cond_9d

    .line 3062
    aget v15, v4, v14

    aput v15, v12, v14

    .line 3063
    iget-object v15, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    aget v15, v15, v14

    aput v15, v13, v14

    goto :goto_a1

    .line 3068
    :cond_9d
    aput v8, v12, v14

    .line 3069
    aput v8, v13, v14

    .line 3060
    :goto_a1
    add-int/lit8 v14, v14, 0x1

    goto :goto_8d

    .line 3072
    .end local v14    # "k":I
    :cond_a4
    iget v14, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->uid:I

    move/from16 v16, v14

    iget v14, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    move/from16 v17, v14

    iget v14, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    move/from16 v18, v14

    iget-object v14, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    move-object/from16 v19, v14

    iget-object v14, v11, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    move-object/from16 v20, v14

    aget v21, v12, v8

    aget v22, v13, v8

    aget v23, v12, v3

    aget v24, v13, v3

    const/4 v14, 0x2

    aget v25, v12, v14

    aget v26, v13, v14

    const/4 v14, 0x3

    aget v27, v12, v14

    aget v28, v13, v14

    const/4 v14, 0x4

    aget v29, v12, v14

    aget v30, v13, v14

    const/4 v14, 0x5

    aget v31, v12, v14

    aget v32, v13, v14

    const/4 v14, 0x6

    aget v33, v12, v14

    aget v34, v13, v14

    const/4 v14, 0x7

    aget v35, v12, v14

    aget v36, v13, v14

    move/from16 v15, p1

    invoke-static/range {v15 .. v36}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v14

    move-object/from16 v15, p2

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3048
    .end local v11    # "threadCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    .end local v12    # "frequencies":[I
    .end local v13    # "usageTimesMillis":[I
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_51

    :cond_ed
    move-object/from16 v15, p2

    .line 3044
    .end local v7    # "processCpuUsage":Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    .end local v9    # "threadCpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;>;"
    .end local v10    # "j":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_41

    :cond_f3
    move-object/from16 v15, p2

    .line 3081
    .end local v5    # "i":I
    return v8
.end method

.method pullCpuTimePerUidFreqLocked(ILjava/util/List;)I
    .registers 13
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1856
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1857
    .local v0, "aggregated":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[J>;"
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1880
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1881
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_3b

    .line 1882
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1883
    .local v3, "uid":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 1884
    .local v4, "aggCpuFreqTimeMs":[J
    const/4 v5, 0x0

    .local v5, "freqIndex":I
    :goto_21
    array-length v6, v4

    if-ge v5, v6, :cond_38

    .line 1885
    aget-wide v6, v4, v5

    const-wide/16 v8, 0xa

    cmp-long v6, v6, v8

    if-ltz v6, :cond_35

    .line 1886
    aget-wide v6, v4, v5

    invoke-static {p1, v3, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1884
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 1881
    .end local v3    # "uid":I
    .end local v4    # "aggCpuFreqTimeMs":[J
    .end local v5    # "freqIndex":I
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1891
    .end local v2    # "i":I
    :cond_3b
    const/4 v2, 0x0

    return v2
.end method

.method pullCpuTimePerUidLocked(ILjava/util/List;)I
    .registers 5
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1745
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;

    invoke-direct {v1, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1750
    const/4 v0, 0x0

    return v0
.end method

.method pullDangerousPermissionStateLocked(ILjava/util/List;)I
    .registers 33
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3258
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    move/from16 v14, p1

    const-string v15, "android.permission."

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3259
    .local v16, "token":J
    const-string/jumbo v0, "permissions"

    const-string v2, "dangerous_permission_state_sample_rate"

    const v3, 0x3c75c28f    # 0.015f

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v18

    .line 3261
    .local v18, "samplingRate":F
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v13, v0

    .line 3263
    .local v13, "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v19, 0x1

    :try_start_1e
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v12, v0

    .line 3265
    .local v12, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    .line 3267
    .local v11, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    move v10, v0

    .line 3268
    .local v10, "numUsers":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "userNum":I
    :goto_3b
    if-ge v9, v10, :cond_220

    .line 3269
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    move-object v6, v0

    .line 3271
    .local v6, "user":Landroid/os/UserHandle;
    const/16 v0, 0x1000

    .line 3272
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 3271
    invoke-virtual {v12, v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    .line 3274
    .local v5, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    .line 3275
    .local v4, "numPkgs":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "pkgNum":I
    :goto_5a
    if-ge v3, v4, :cond_208

    .line 3276
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v2, v0

    .line 3278
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_7b

    .line 3279
    move-object/from16 v8, p2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move v5, v9

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v20, v13

    const/16 v25, 0x0

    goto/16 :goto_1f3

    .line 3282
    :cond_7b
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 3284
    move-object/from16 v8, p2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move v5, v9

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v20, v13

    const/16 v25, 0x0

    goto/16 :goto_1f3

    .line 3286
    :cond_9d
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a8
    .catchall {:try_start_1e .. :try_end_a8} :catchall_22f

    .line 3288
    const/16 v0, 0x2753

    if-ne v14, v0, :cond_d3

    .line 3289
    :try_start_ac
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0
    :try_end_b4
    .catchall {:try_start_ac .. :try_end_b4} :catchall_cc

    cmpl-float v0, v0, v18

    if-lez v0, :cond_d3

    .line 3290
    move-object/from16 v8, p2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move v5, v9

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v20, v13

    const/16 v25, 0x0

    goto/16 :goto_1f3

    .line 3334
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkgNum":I
    .end local v4    # "numPkgs":I
    .end local v5    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6    # "user":Landroid/os/UserHandle;
    .end local v9    # "userNum":I
    .end local v10    # "numUsers":I
    .end local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    :catchall_cc
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v20, v13

    goto/16 :goto_234

    .line 3293
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pkgNum":I
    .restart local v4    # "numPkgs":I
    .restart local v5    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v6    # "user":Landroid/os/UserHandle;
    .restart local v9    # "userNum":I
    .restart local v10    # "numUsers":I
    .restart local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    :cond_d3
    :try_start_d3
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v0, v0

    move v7, v0

    .line 3294
    .local v7, "numPerms":I
    const/4 v0, 0x0

    move v8, v0

    .local v8, "permNum":I
    :goto_d9
    if-ge v8, v7, :cond_1dc

    .line 3295
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v0, v0, v8
    :try_end_df
    .catchall {:try_start_d3 .. :try_end_df} :catchall_22f

    move-object/from16 v21, v0

    .line 3298
    .local v21, "permName":Ljava/lang/String;
    const/16 v22, 0x0

    .line 3300
    .local v22, "permissionFlags":I
    move/from16 v20, v9

    move-object/from16 v1, v21

    const/4 v9, 0x0

    .end local v9    # "userNum":I
    .end local v21    # "permName":Ljava/lang/String;
    .local v1, "permName":Ljava/lang/String;
    .local v20, "userNum":I
    :try_start_e8
    invoke-virtual {v12, v1, v9}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0
    :try_end_ec
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e8 .. :try_end_ec} :catch_1a8
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_22f

    .line 3301
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    :try_start_ec
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3302
    invoke-virtual {v12, v1, v9, v6}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v9
    :try_end_f2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ec .. :try_end_f2} :catch_192
    .catchall {:try_start_ec .. :try_end_f2} :catchall_22f

    move/from16 v23, v7

    .end local v7    # "numPerms":I
    .local v23, "numPerms":I
    move v7, v9

    .line 3305
    .end local v22    # "permissionFlags":I
    .local v7, "permissionFlags":I
    nop

    .line 3307
    :try_start_f6
    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_fa
    .catchall {:try_start_f6 .. :try_end_fa} :catchall_22f

    if-eqz v9, :cond_105

    .line 3308
    :try_start_fc
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    .line 3312
    :cond_105
    const/16 v9, 0x2742

    if-ne v14, v9, :cond_14b

    .line 3313
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v22, ""

    move/from16 v24, v3

    .end local v3    # "pkgNum":I
    .local v24, "pkgNum":I
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v8

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_11c

    move/from16 v25, v19

    goto :goto_11e

    :cond_11c
    const/16 v25, 0x0

    .line 3318
    :goto_11e
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    .line 3319
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v26

    or-int v26, v3, v26

    .line 3313
    move-object v3, v2

    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    move/from16 v2, p1

    move-object v14, v3

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .local v14, "pkg":Landroid/content/pm/PackageInfo;
    move-object v3, v1

    move/from16 v27, v4

    .end local v4    # "numPkgs":I
    .local v27, "numPkgs":I
    move v4, v9

    move-object/from16 v28, v5

    .end local v5    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v28, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v5, v22

    move-object/from16 v29, v6

    .end local v6    # "user":Landroid/os/UserHandle;
    .local v29, "user":Landroid/os/UserHandle;
    move/from16 v6, v25

    move/from16 v21, v8

    const/16 v25, 0x0

    .end local v8    # "permNum":I
    .local v21, "permNum":I
    move/from16 v8, v26

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;ILjava/lang/String;ZII)Landroid/util/StatsEvent;

    move-result-object v2
    :try_end_142
    .catchall {:try_start_fc .. :try_end_142} :catchall_cc

    move-object v4, v2

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move/from16 v5, v20

    move-object/from16 v20, v13

    .local v2, "e":Landroid/util/StatsEvent;
    goto :goto_184

    .line 3322
    .end local v14    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v21    # "permNum":I
    .end local v24    # "pkgNum":I
    .end local v27    # "numPkgs":I
    .end local v28    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v29    # "user":Landroid/os/UserHandle;
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "pkgNum":I
    .restart local v4    # "numPkgs":I
    .restart local v5    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v6    # "user":Landroid/os/UserHandle;
    .restart local v8    # "permNum":I
    :cond_14b
    move-object v14, v2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v21, v8

    const/16 v25, 0x0

    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkgNum":I
    .end local v4    # "numPkgs":I
    .end local v5    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6    # "user":Landroid/os/UserHandle;
    .end local v8    # "permNum":I
    .restart local v14    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21    # "permNum":I
    .restart local v24    # "pkgNum":I
    .restart local v27    # "numPkgs":I
    .restart local v28    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v29    # "user":Landroid/os/UserHandle;
    :try_start_158
    iget-object v2, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v21

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_167

    move/from16 v3, v19

    goto :goto_169

    :cond_167
    move/from16 v3, v25

    .line 3327
    :goto_169
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v4

    .line 3328
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v5
    :try_end_171
    .catchall {:try_start_158 .. :try_end_171} :catchall_22f

    or-int/2addr v4, v5

    .line 3322
    move/from16 v8, p1

    move/from16 v5, v20

    .end local v20    # "userNum":I
    .local v5, "userNum":I
    move-object v9, v1

    move v6, v10

    .end local v10    # "numUsers":I
    .local v6, "numUsers":I
    move v10, v2

    move-object v2, v11

    .end local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move v11, v3

    move-object v3, v12

    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .local v3, "pm":Landroid/content/pm/PackageManager;
    move v12, v7

    move-object/from16 v20, v13

    .end local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v20, "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move v13, v4

    :try_start_180
    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;IZII)Landroid/util/StatsEvent;

    move-result-object v4
    :try_end_184
    .catchall {:try_start_180 .. :try_end_184} :catchall_18d

    .line 3330
    .local v4, "e":Landroid/util/StatsEvent;
    :goto_184
    move-object/from16 v8, p2

    :try_start_186
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_189
    .catchall {:try_start_186 .. :try_end_189} :catchall_18a

    goto :goto_1c2

    .line 3334
    .end local v0    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v1    # "permName":Ljava/lang/String;
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "e":Landroid/util/StatsEvent;
    .end local v5    # "userNum":I
    .end local v6    # "numUsers":I
    .end local v7    # "permissionFlags":I
    .end local v14    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v21    # "permNum":I
    .end local v23    # "numPerms":I
    .end local v24    # "pkgNum":I
    .end local v27    # "numPkgs":I
    .end local v28    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v29    # "user":Landroid/os/UserHandle;
    :catchall_18a
    move-exception v0

    goto/16 :goto_234

    :catchall_18d
    move-exception v0

    move-object/from16 v8, p2

    goto/16 :goto_234

    .line 3303
    .restart local v1    # "permName":Ljava/lang/String;
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "pkgNum":I
    .local v4, "numPkgs":I
    .local v5, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v6, "user":Landroid/os/UserHandle;
    .local v7, "numPerms":I
    .restart local v8    # "permNum":I
    .restart local v10    # "numUsers":I
    .restart local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v20, "userNum":I
    .restart local v22    # "permissionFlags":I
    :catch_192
    move-exception v0

    move-object v14, v2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v23, v7

    move/from16 v21, v8

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move/from16 v5, v20

    const/16 v25, 0x0

    goto :goto_1bd

    :catch_1a8
    move-exception v0

    move-object v14, v2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v23, v7

    move/from16 v21, v8

    move/from16 v25, v9

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move/from16 v5, v20

    :goto_1bd
    move-object/from16 v8, p2

    move-object/from16 v20, v13

    .line 3304
    .end local v4    # "numPkgs":I
    .end local v7    # "numPerms":I
    .end local v8    # "permNum":I
    .end local v10    # "numUsers":I
    .end local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v0, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v3, "pm":Landroid/content/pm/PackageManager;
    .local v5, "userNum":I
    .local v6, "numUsers":I
    .restart local v14    # "pkg":Landroid/content/pm/PackageInfo;
    .local v20, "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v21    # "permNum":I
    .restart local v23    # "numPerms":I
    .restart local v24    # "pkgNum":I
    .restart local v27    # "numPkgs":I
    .restart local v28    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v29    # "user":Landroid/os/UserHandle;
    nop

    .line 3294
    .end local v0    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "permName":Ljava/lang/String;
    .end local v22    # "permissionFlags":I
    :goto_1c2
    add-int/lit8 v0, v21, 0x1

    move-object/from16 v1, p0

    move v8, v0

    move-object v11, v2

    move-object v12, v3

    move v9, v5

    move v10, v6

    move-object v2, v14

    move-object/from16 v13, v20

    move/from16 v7, v23

    move/from16 v3, v24

    move/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move/from16 v14, p1

    .end local v21    # "permNum":I
    .local v0, "permNum":I
    goto/16 :goto_d9

    .end local v0    # "permNum":I
    .end local v14    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v23    # "numPerms":I
    .end local v24    # "pkgNum":I
    .end local v27    # "numPkgs":I
    .end local v28    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v29    # "user":Landroid/os/UserHandle;
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "pkgNum":I
    .restart local v4    # "numPkgs":I
    .local v5, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v6, "user":Landroid/os/UserHandle;
    .restart local v7    # "numPerms":I
    .restart local v8    # "permNum":I
    .restart local v9    # "userNum":I
    .restart local v10    # "numUsers":I
    .restart local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1dc
    move-object v14, v2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v23, v7

    move/from16 v21, v8

    move v5, v9

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v20, v13

    const/16 v25, 0x0

    move-object/from16 v8, p2

    .line 3275
    .end local v4    # "numPkgs":I
    .end local v7    # "numPerms":I
    .end local v8    # "permNum":I
    .end local v9    # "userNum":I
    .end local v10    # "numUsers":I
    .end local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v3, "pm":Landroid/content/pm/PackageManager;
    .local v5, "userNum":I
    .local v6, "numUsers":I
    .restart local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v24    # "pkgNum":I
    .restart local v27    # "numPkgs":I
    .restart local v28    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v29    # "user":Landroid/os/UserHandle;
    :goto_1f3
    add-int/lit8 v0, v24, 0x1

    move-object/from16 v1, p0

    move/from16 v14, p1

    move-object v11, v2

    move-object v12, v3

    move v9, v5

    move v10, v6

    move-object/from16 v13, v20

    move/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move v3, v0

    .end local v24    # "pkgNum":I
    .local v0, "pkgNum":I
    goto/16 :goto_5a

    .end local v0    # "pkgNum":I
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v27    # "numPkgs":I
    .end local v28    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v29    # "user":Landroid/os/UserHandle;
    .local v3, "pkgNum":I
    .restart local v4    # "numPkgs":I
    .local v5, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v6, "user":Landroid/os/UserHandle;
    .restart local v9    # "userNum":I
    .restart local v10    # "numUsers":I
    .restart local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_208
    move-object/from16 v8, p2

    move/from16 v24, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move v5, v9

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v20, v13

    .line 3268
    .end local v4    # "numPkgs":I
    .end local v9    # "userNum":I
    .end local v10    # "numUsers":I
    .end local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v3, "pm":Landroid/content/pm/PackageManager;
    .local v5, "userNum":I
    .local v6, "numUsers":I
    .restart local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    add-int/lit8 v9, v5, 0x1

    move-object/from16 v1, p0

    move/from16 v14, p1

    .end local v5    # "userNum":I
    .restart local v9    # "userNum":I
    goto/16 :goto_3b

    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "numUsers":I
    .end local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v10    # "numUsers":I
    .restart local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_220
    move-object/from16 v8, p2

    move v5, v9

    move v6, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v20, v13

    const/16 v25, 0x0

    .line 3338
    .end local v9    # "userNum":I
    .end local v10    # "numUsers":I
    .end local v11    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3339
    nop

    .line 3340
    return v25

    .line 3334
    .end local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_22f
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v20, v13

    .line 3335
    .end local v13    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v20    # "reportedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_234
    :try_start_234
    const-string v1, "StatsPullAtomService"

    const-string v2, "Could not read permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23b
    .catchall {:try_start_234 .. :try_end_23b} :catchall_240

    .line 3336
    nop

    .line 3338
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3336
    return v19

    .line 3338
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_240
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3339
    throw v0
.end method

.method pullDebugElapsedClockLocked(ILjava/util/List;)I
    .registers 24
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3125
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 3126
    .local v14, "elapsedMillis":J
    iget-wide v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_12

    .line 3127
    move-wide v9, v4

    goto :goto_15

    :cond_12
    sub-long v2, v14, v2

    move-wide v9, v2

    .line 3129
    .local v9, "clockDiffMillis":J
    :goto_15
    iget-wide v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    const/4 v11, 0x1

    move/from16 v2, p1

    move-wide v5, v14

    move-wide v7, v14

    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJI)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3134
    iget-wide v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    const-wide/16 v2, 0x2

    rem-long v2, v12, v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_40

    .line 3135
    const/16 v20, 0x2

    move/from16 v11, p1

    move-wide v2, v14

    .end local v14    # "elapsedMillis":J
    .local v2, "elapsedMillis":J
    move-wide/from16 v16, v2

    move-wide/from16 v18, v9

    invoke-static/range {v11 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJI)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 3134
    .end local v2    # "elapsedMillis":J
    .restart local v14    # "elapsedMillis":J
    :cond_40
    move-wide v2, v14

    .line 3141
    .end local v14    # "elapsedMillis":J
    .restart local v2    # "elapsedMillis":J
    :goto_41
    iget-wide v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 3142
    iput-wide v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    .line 3143
    const/4 v4, 0x0

    return v4
.end method

.method pullDebugFailingElapsedClockLocked(ILjava/util/List;)I
    .registers 14
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3160
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 3162
    .local v9, "elapsedMillis":J
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v4, 0x5

    rem-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1f

    .line 3163
    iput-wide v9, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 3164
    const-string v0, "StatsPullAtomService"

    const-string v1, "Failing debug elapsed clock"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    const/4 v0, 0x1

    return v0

    .line 3168
    :cond_1f
    nop

    .line 3172
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_28

    .line 3173
    move-wide v7, v4

    goto :goto_2b

    .line 3174
    :cond_28
    sub-long v0, v9, v0

    move-wide v7, v0

    .line 3168
    :goto_2b
    move v0, p1

    move-wide v1, v2

    move-wide v3, v9

    move-wide v5, v9

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3176
    iput-wide v9, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 3177
    const/4 v0, 0x0

    return v0
.end method

.method pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I
    .registers 7
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3099
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsManager;

    .line 3101
    .local v0, "bsm":Landroid/os/BatteryStatsManager;
    :try_start_a
    invoke-virtual {v0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    move-result-object v1

    .line 3102
    .local v1, "stats":Landroid/os/BatteryUsageStats;
    nop

    .line 3103
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v2

    .line 3102
    invoke-static {p1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_20

    .line 3104
    const/4 v2, 0x0

    return v2

    .line 3105
    .end local v1    # "stats":Landroid/os/BatteryUsageStats;
    :catch_20
    move-exception v1

    .line 3106
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StatsPullAtomService"

    const-string v3, "Could not obtain battery usage stats"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3107
    const/4 v2, 0x1

    return v2
.end method

.method pullDirectoryUsageLocked(ILjava/util/List;)I
    .registers 14
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2664
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2665
    .local v0, "statFsData":Landroid/os/StatFs;
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2666
    .local v1, "statFsSystem":Landroid/os/StatFs;
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2667
    .local v2, "statFsCache":Landroid/os/StatFs;
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getMetadataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2669
    .local v3, "metadataFsSystem":Landroid/os/StatFs;
    nop

    .line 2670
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    .line 2671
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v8

    .line 2669
    const/4 v5, 0x1

    move v4, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2673
    nop

    .line 2675
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v9

    .line 2673
    const/4 v6, 0x2

    move v5, p1

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2677
    nop

    .line 2679
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v7

    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v9

    .line 2677
    const/4 v6, 0x3

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2681
    nop

    .line 2683
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v7

    invoke-virtual {v3}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v9

    .line 2681
    const/4 v6, 0x4

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2684
    const/4 v4, 0x0

    return v4
.end method

.method pullDiskIOLocked(ILjava/util/List;)I
    .registers 5
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2956
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/StoragedUidIoStatsReader;->readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V

    .line 2963
    const/4 v0, 0x0

    return v0
.end method

.method pullDiskStatsLocked(ILjava/util/List;)I
    .registers 17
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2605
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 2606
    .local v1, "junk":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_e

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2608
    .end local v0    # "i":I
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system/statsdperftest.tmp"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    .line 2609
    .local v2, "tmp":Ljava/io/File;
    const/4 v3, 0x0

    .line 2610
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 2612
    .local v4, "error":Ljava/io/IOException;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2614
    .local v5, "before":J
    :try_start_21
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 2615
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2a} :catch_3c
    .catchall {:try_start_21 .. :try_end_2a} :catchall_30

    .line 2620
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 2623
    :cond_2d
    :goto_2d
    goto :goto_44

    .line 2621
    :catch_2e
    move-exception v0

    .line 2624
    goto :goto_44

    .line 2619
    :catchall_30
    move-exception v0

    move-object v7, v0

    .line 2620
    if-eqz v3, :cond_3a

    :try_start_34
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3a

    .line 2621
    :catch_38
    move-exception v0

    goto :goto_3b

    .line 2623
    :cond_3a
    :goto_3a
    nop

    .line 2624
    :goto_3b
    throw v7

    .line 2616
    :catch_3c
    move-exception v0

    .line 2617
    .local v0, "e":Ljava/io/IOException;
    move-object v4, v0

    .line 2620
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_2d

    :try_start_40
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_2e

    goto :goto_2d

    .line 2626
    :goto_44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 2627
    .local v7, "latency":J
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2629
    :cond_52
    const-string v9, "StatsPullAtomService"

    if-eqz v4, :cond_5d

    .line 2630
    const-string v0, "Error performing diskstats latency test"

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    const-wide/16 v7, -0x1

    .line 2634
    :cond_5d
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v10

    .line 2637
    .local v10, "fileBased":Z
    const/4 v11, -0x1

    .line 2638
    .local v11, "writeSpeed":I
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIStoragedService()Landroid/os/IStoraged;

    move-result-object v12

    .line 2639
    .local v12, "storaged":Landroid/os/IStoraged;
    if-nez v12, :cond_6a

    .line 2640
    const/4 v0, 0x1

    return v0

    .line 2643
    :cond_6a
    :try_start_6a
    invoke-interface {v12}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result v0
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6e} :catch_70

    move v11, v0

    .line 2646
    goto :goto_79

    .line 2644
    :catch_70
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 2645
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v13, "storaged not found"

    invoke-static {v9, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_79
    move v9, p1

    invoke-static {p1, v7, v8, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJZI)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v13, p2

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2650
    const/4 v0, 0x0

    return v0
.end method

.method pullExternalStorageInfoLocked(ILjava/util/List;)I
    .registers 13
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3472
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 3473
    return v1

    .line 3476
    :cond_6
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 3477
    .local v0, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 3478
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v4

    invoke-static {v4}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v4

    .line 3479
    .local v4, "envState":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    .line 3480
    .local v5, "diskInfo":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_5b

    const-string/jumbo v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 3482
    const/4 v6, 0x3

    .line 3483
    .local v6, "volumeType":I
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    if-nez v7, :cond_3a

    .line 3484
    const/4 v6, 0x1

    goto :goto_41

    .line 3485
    :cond_3a
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    if-ne v7, v1, :cond_41

    .line 3486
    const/4 v6, 0x2

    .line 3491
    :cond_41
    :goto_41
    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v7

    if-eqz v7, :cond_49

    .line 3492
    const/4 v7, 0x1

    .local v7, "externalStorageType":I
    goto :goto_52

    .line 3493
    .end local v7    # "externalStorageType":I
    :cond_49
    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 3494
    const/4 v7, 0x2

    .restart local v7    # "externalStorageType":I
    goto :goto_52

    .line 3496
    .end local v7    # "externalStorageType":I
    :cond_51
    const/4 v7, 0x3

    .line 3499
    .restart local v7    # "externalStorageType":I
    :goto_52
    iget-wide v8, v5, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {p1, v7, v6, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3502
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "envState":Ljava/lang/String;
    .end local v5    # "diskInfo":Landroid/os/storage/DiskInfo;
    .end local v6    # "volumeType":I
    .end local v7    # "externalStorageType":I
    :cond_5b
    goto :goto_e

    .line 3503
    :cond_5c
    const/4 v1, 0x0

    return v1
.end method

.method pullFaceSettingsLocked(ILjava/util/List;)I
    .registers 26
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3569
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3571
    .local v2, "callingToken":J
    :try_start_6
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_bf

    .line 3572
    .local v0, "manager":Landroid/os/UserManager;
    const/4 v4, 0x1

    if-nez v0, :cond_18

    .line 3573
    nop

    .line 3605
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3573
    return v4

    .line 3575
    :cond_18
    :try_start_18
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 3576
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 3577
    .local v6, "numUsers":I
    const/4 v7, 0x0

    .local v7, "userNum":I
    :goto_21
    const/4 v8, 0x0

    if-ge v7, v6, :cond_b7

    .line 3578
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 3580
    .local v9, "userId":I
    iget-object v10, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3581
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "face_unlock_keyguard_enabled"

    .line 3580
    invoke-static {v10, v11, v4, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 3583
    .local v10, "unlockKeyguardEnabled":I
    iget-object v11, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3584
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "face_unlock_dismisses_keyguard"

    .line 3583
    invoke-static {v11, v12, v4, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 3586
    .local v11, "unlockDismissesKeyguard":I
    iget-object v12, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3587
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "face_unlock_attention_required"

    .line 3586
    invoke-static {v12, v13, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 3589
    .local v12, "unlockAttentionRequired":I
    iget-object v13, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3590
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "face_unlock_app_enabled"

    .line 3589
    invoke-static {v13, v14, v4, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 3592
    .local v13, "unlockAppEnabled":I
    iget-object v14, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3593
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "face_unlock_always_require_confirmation"

    .line 3592
    invoke-static {v14, v15, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 3595
    .local v14, "unlockAlwaysRequireConfirmation":I
    iget-object v15, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3596
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v8, "face_unlock_diversity_required"

    .line 3595
    invoke-static {v15, v8, v4, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 3599
    .local v8, "unlockDiversityRequired":I
    if-eqz v10, :cond_7f

    move/from16 v17, v4

    goto :goto_81

    :cond_7f
    const/16 v17, 0x0

    :goto_81
    if-eqz v11, :cond_86

    move/from16 v18, v4

    goto :goto_88

    :cond_86
    const/16 v18, 0x0

    :goto_88
    if-eqz v12, :cond_8d

    move/from16 v19, v4

    goto :goto_8f

    :cond_8d
    const/16 v19, 0x0

    :goto_8f
    if-eqz v13, :cond_94

    move/from16 v20, v4

    goto :goto_96

    :cond_94
    const/16 v20, 0x0

    :goto_96
    if-eqz v14, :cond_9b

    move/from16 v21, v4

    goto :goto_9d

    :cond_9b
    const/16 v21, 0x0

    :goto_9d
    if-eqz v8, :cond_a2

    move/from16 v22, v4

    goto :goto_a4

    :cond_a2
    const/16 v22, 0x0

    :goto_a4
    move/from16 v16, p1

    invoke-static/range {v16 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZZZZZ)Landroid/util/StatsEvent;

    move-result-object v15
    :try_end_aa
    .catchall {:try_start_18 .. :try_end_aa} :catchall_bf

    move-object/from16 v4, p2

    :try_start_ac
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_b5

    .line 3577
    nop

    .end local v8    # "unlockDiversityRequired":I
    .end local v9    # "userId":I
    .end local v10    # "unlockKeyguardEnabled":I
    .end local v11    # "unlockDismissesKeyguard":I
    .end local v12    # "unlockAttentionRequired":I
    .end local v13    # "unlockAppEnabled":I
    .end local v14    # "unlockAlwaysRequireConfirmation":I
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    goto/16 :goto_21

    .line 3605
    .end local v0    # "manager":Landroid/os/UserManager;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "numUsers":I
    .end local v7    # "userNum":I
    :catchall_b5
    move-exception v0

    goto :goto_c2

    .line 3577
    .restart local v0    # "manager":Landroid/os/UserManager;
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "numUsers":I
    .restart local v7    # "userNum":I
    :cond_b7
    move-object/from16 v4, p2

    .line 3605
    .end local v0    # "manager":Landroid/os/UserManager;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "numUsers":I
    .end local v7    # "userNum":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3606
    nop

    .line 3607
    const/4 v0, 0x0

    return v0

    .line 3605
    :catchall_bf
    move-exception v0

    move-object/from16 v4, p2

    :goto_c2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3606
    throw v0
.end method

.method pullHealthHalLocked(ILjava/util/List;)I
    .registers 6
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4020
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 4021
    return v1

    .line 4025
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Lcom/android/server/health/HealthServiceWrapper;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_a} :catch_2a

    .line 4028
    .local v0, "healthInfo":Landroid/hardware/health/HealthInfo;
    nop

    .line 4029
    if-nez v0, :cond_e

    .line 4030
    return v1

    .line 4034
    :cond_e
    sparse-switch p1, :sswitch_data_2c

    .line 4051
    return v1

    .line 4048
    :sswitch_12
    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 4049
    .local v1, "pulledValue":I
    goto :goto_21

    .line 4036
    .end local v1    # "pulledValue":I
    :sswitch_15
    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 4037
    .restart local v1    # "pulledValue":I
    goto :goto_21

    .line 4045
    .end local v1    # "pulledValue":I
    :sswitch_18
    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 4046
    .restart local v1    # "pulledValue":I
    goto :goto_21

    .line 4042
    .end local v1    # "pulledValue":I
    :sswitch_1b
    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 4043
    .restart local v1    # "pulledValue":I
    goto :goto_21

    .line 4039
    .end local v1    # "pulledValue":I
    :sswitch_1e
    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 4040
    .restart local v1    # "pulledValue":I
    nop

    .line 4053
    :goto_21
    invoke-static {p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4054
    const/4 v2, 0x0

    return v2

    .line 4026
    .end local v0    # "healthInfo":Landroid/hardware/health/HealthInfo;
    .end local v1    # "pulledValue":I
    :catch_2a
    move-exception v0

    .line 4027
    .local v0, "e":Ljava/lang/Exception;
    return v1

    :sswitch_data_2c
    .sparse-switch
        0x2723 -> :sswitch_1e
        0x2724 -> :sswitch_1b
        0x272e -> :sswitch_18
        0x273b -> :sswitch_15
        0x273d -> :sswitch_12
    .end sparse-switch
.end method

.method pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I
    .registers 15
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4105
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4106
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.software.incremental_delivery"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 4108
    return v2

    .line 4110
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4112
    .local v3, "token":J
    :try_start_14
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    .line 4113
    .local v1, "userIds":[I
    array-length v5, v1

    move v6, v2

    :goto_22
    if-ge v6, v5, :cond_55

    aget v7, v1, v6

    .line 4114
    .local v7, "userId":I
    invoke-virtual {v0, v2, v7}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v8

    .line 4115
    .local v8, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_52

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 4116
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4117
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v11

    .line 4116
    invoke-static {v11}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_51

    .line 4118
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4119
    invoke-static {p1, v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v11

    .line 4118
    invoke-interface {p2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_51} :catch_5c
    .catchall {:try_start_14 .. :try_end_51} :catchall_5a

    .line 4121
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    :cond_51
    goto :goto_2e

    .line 4113
    .end local v7    # "userId":I
    .end local v8    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 4127
    .end local v1    # "userIds":[I
    :cond_55
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4128
    nop

    .line 4129
    return v2

    .line 4127
    :catchall_5a
    move-exception v1

    goto :goto_6a

    .line 4123
    :catch_5c
    move-exception v1

    .line 4124
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5d
    const-string v2, "StatsPullAtomService"

    const-string v5, "failed to pullInstalledIncrementalPackagesLocked"

    invoke-static {v2, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_5a

    .line 4125
    nop

    .line 4127
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4125
    const/4 v2, 0x1

    return v2

    .line 4127
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4128
    throw v1
.end method

.method pullIonHeapSizeLocked(ILjava/util/List;)I
    .registers 5
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2326
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    move-result-wide v0

    long-to-int v0, v0

    .line 2327
    .local v0, "ionHeapSizeInKilobytes":I
    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2328
    const/4 v1, 0x0

    return v1
.end method

.method pullKernelWakelockLocked(ILjava/util/List;)I
    .registers 14
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1689
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 1690
    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v0

    .line 1691
    .local v0, "wakelockStats":Lcom/android/internal/os/KernelWakelockStats;
    invoke-virtual {v0}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1692
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1693
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 1694
    .local v10, "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget v6, v10, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iget v7, v10, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    iget-wide v8, v10, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    move v4, p1

    move-object v5, v3

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;IIJ)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1696
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v10    # "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    goto :goto_10

    .line 1697
    :cond_39
    const/4 v1, 0x0

    return v1
.end method

.method pullKeystoreAtoms(ILjava/util/List;)I
    .registers 11
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4389
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;

    move-result-object v0

    .line 4390
    .local v0, "keystoreMetricsService":Landroid/security/metrics/IKeystoreMetrics;
    const/4 v1, 0x1

    const-string v2, "StatsPullAtomService"

    if-nez v0, :cond_f

    .line 4391
    const-string v3, "Keystore service is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    return v1

    .line 4394
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4396
    .local v3, "callingToken":J
    :try_start_13
    invoke-interface {v0, p1}, Landroid/security/metrics/IKeystoreMetrics;->pullMetrics(I)[Landroid/security/metrics/KeystoreAtom;

    move-result-object v5

    .line 4397
    .local v5, "atoms":[Landroid/security/metrics/KeystoreAtom;
    sparse-switch p1, :sswitch_data_a4

    .line 4419
    goto :goto_6b

    .line 4417
    :sswitch_1b
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreCrashStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1f} :catch_94
    .catch Landroid/os/ServiceSpecificException; {:try_start_13 .. :try_end_1f} :catch_88
    .catchall {:try_start_13 .. :try_end_1f} :catchall_86

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4417
    return v1

    .line 4415
    :sswitch_23
    :try_start_23
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseRkpErrorStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_27} :catch_94
    .catch Landroid/os/ServiceSpecificException; {:try_start_23 .. :try_end_27} :catch_88
    .catchall {:try_start_23 .. :try_end_27} :catchall_86

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4415
    return v1

    .line 4413
    :sswitch_2b
    :try_start_2b
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyOperationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2f} :catch_94
    .catch Landroid/os/ServiceSpecificException; {:try_start_2b .. :try_end_2f} :catch_88
    .catchall {:try_start_2b .. :try_end_2f} :catchall_86

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4413
    return v1

    .line 4411
    :sswitch_33
    :try_start_33
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyOperationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_37} :catch_94
    .catch Landroid/os/ServiceSpecificException; {:try_start_33 .. :try_end_37} :catch_88
    .catchall {:try_start_33 .. :try_end_37} :catchall_86

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4411
    return v1

    .line 4409
    :sswitch_3b
    :try_start_3b
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreAtomWithOverflow([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3f} :catch_94
    .catch Landroid/os/ServiceSpecificException; {:try_start_3b .. :try_end_3f} :catch_88
    .catchall {:try_start_3b .. :try_end_3f} :catchall_86

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4409
    return v1

    .line 4407
    :sswitch_43
    :try_start_43
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_47} :catch_94
    .catch Landroid/os/ServiceSpecificException; {:try_start_43 .. :try_end_47} :catch_88
    .catchall {:try_start_43 .. :try_end_47} :catchall_86

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4407
    return v1

    .line 4405
    :sswitch_4b
    :try_start_4b
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithAuthInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_4f} :catch_94
    .catch Landroid/os/ServiceSpecificException; {:try_start_4b .. :try_end_4f} :catch_88
    .catchall {:try_start_4b .. :try_end_4f} :catchall_86

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4405
    return v1

    .line 4403
    :sswitch_53
    :try_start_53
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_57} :catch_94
    .catch Landroid/os/ServiceSpecificException; {:try_start_53 .. :try_end_57} :catch_88
    .catchall {:try_start_53 .. :try_end_57} :catchall_86

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4403
    return v1

    .line 4401
    :sswitch_5b
    :try_start_5b
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseRkpPoolStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5f} :catch_94
    .catch Landroid/os/ServiceSpecificException; {:try_start_5b .. :try_end_5f} :catch_88
    .catchall {:try_start_5b .. :try_end_5f} :catchall_86

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4401
    return v1

    .line 4399
    :sswitch_63
    :try_start_63
    invoke-virtual {p0, v5, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreStorageStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result v1
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_67} :catch_94
    .catch Landroid/os/ServiceSpecificException; {:try_start_63 .. :try_end_67} :catch_88
    .catchall {:try_start_63 .. :try_end_67} :catchall_86

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4399
    return v1

    .line 4419
    :goto_6b
    :try_start_6b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported keystore atom: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_81} :catch_94
    .catch Landroid/os/ServiceSpecificException; {:try_start_6b .. :try_end_81} :catch_88
    .catchall {:try_start_6b .. :try_end_81} :catchall_86

    .line 4420
    nop

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4420
    return v1

    .line 4430
    .end local v5    # "atoms":[Landroid/security/metrics/KeystoreAtom;
    :catchall_86
    move-exception v1

    goto :goto_9f

    .line 4426
    :catch_88
    move-exception v5

    .line 4427
    .local v5, "e":Landroid/os/ServiceSpecificException;
    :try_start_89
    const-string/jumbo v6, "pulling keystore metrics failed"

    invoke-static {v2, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_86

    .line 4428
    nop

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4428
    return v1

    .line 4422
    .end local v5    # "e":Landroid/os/ServiceSpecificException;
    :catch_94
    move-exception v5

    .line 4424
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_95
    const-string v6, "Disconnected from keystore service. Cannot pull."

    invoke-static {v2, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_86

    .line 4425
    nop

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4425
    return v1

    .line 4430
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_9f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4431
    throw v1

    nop

    :sswitch_data_a4
    .sparse-switch
        0x2777 -> :sswitch_63
        0x2778 -> :sswitch_5b
        0x2786 -> :sswitch_53
        0x2787 -> :sswitch_4b
        0x2788 -> :sswitch_43
        0x2789 -> :sswitch_3b
        0x278a -> :sswitch_33
        0x278b -> :sswitch_2b
        0x278c -> :sswitch_23
        0x278d -> :sswitch_1b
    .end sparse-switch
.end method

.method pullLooperStatsLocked(ILjava/util/List;)I
    .registers 35
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2575
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Lcom/android/internal/os/LooperStats;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LooperStats;

    .line 2576
    .local v0, "looperStats":Lcom/android/internal/os/LooperStats;
    if-nez v0, :cond_c

    .line 2577
    const/4 v1, 0x1

    return v1

    .line 2580
    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    move-result-object v1

    .line 2581
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 2582
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/LooperStats$ExportedEntry;

    .line 2583
    .local v3, "entry":Lcom/android/internal/os/LooperStats$ExportedEntry;
    iget v5, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    iget-object v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    iget-wide v9, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    iget-wide v11, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    iget-wide v13, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    move-object/from16 v30, v0

    move-object/from16 v31, v1

    .end local v0    # "looperStats":Lcom/android/internal/os/LooperStats;
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    .local v30, "looperStats":Lcom/android/internal/os/LooperStats;
    .local v31, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    move-wide v15, v0

    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    move-wide/from16 v17, v0

    iget-boolean v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    move/from16 v19, v0

    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    move-wide/from16 v20, v0

    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    move-wide/from16 v22, v0

    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    move-wide/from16 v24, v0

    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    move-wide/from16 v26, v0

    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    move-wide/from16 v28, v0

    move/from16 v4, p1

    invoke-static/range {v4 .. v29}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJZJJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2589
    .end local v3    # "entry":Lcom/android/internal/os/LooperStats$ExportedEntry;
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    goto :goto_17

    .line 2590
    .end local v30    # "looperStats":Lcom/android/internal/os/LooperStats;
    .end local v31    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    .restart local v0    # "looperStats":Lcom/android/internal/os/LooperStats;
    .restart local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/LooperStats$ExportedEntry;>;"
    :cond_64
    move-object/from16 v30, v0

    .end local v0    # "looperStats":Lcom/android/internal/os/LooperStats;
    .restart local v30    # "looperStats":Lcom/android/internal/os/LooperStats;
    const/4 v0, 0x0

    return v0
.end method

.method pullMediaCapabilitiesStats(ILjava/util/List;)I
    .registers 40
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4527
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    const-string v2, "StatsPullAtomService"

    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.software.leanback"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_14

    .line 4528
    return v3

    .line 4530
    :cond_14
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/media/AudioManager;

    .line 4531
    .local v4, "audioManager":Landroid/media/AudioManager;
    if-nez v4, :cond_22

    .line 4532
    return v3

    .line 4536
    :cond_22
    invoke-virtual {v4}, Landroid/media/AudioManager;->getSurroundFormats()Ljava/util/Map;

    move-result-object v5

    .line 4537
    .local v5, "surroundEncodingsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v6

    .line 4538
    .local v6, "surroundEncodings":[B
    invoke-virtual {v4}, Landroid/media/AudioManager;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v22

    .line 4539
    .local v22, "sinkSurroundEncodings":[B
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 4540
    .local v15, "disabledSurroundEncodingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 4541
    .local v14, "enabledSurroundEncodingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 4542
    .local v7, "surroundEncoding":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_77

    .line 4543
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 4545
    :cond_77
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4547
    .end local v7    # "surroundEncoding":I
    :goto_7e
    goto :goto_4f

    .line 4548
    :cond_7f
    invoke-direct {v1, v15}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v23

    .line 4549
    .local v23, "disabledSurroundEncodings":[B
    invoke-direct {v1, v14}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v24

    .line 4550
    .local v24, "enabledSurroundEncodings":[B
    invoke-virtual {v4}, Landroid/media/AudioManager;->getEncodedSurroundMode()I

    move-result v25

    .line 4552
    .local v25, "surroundOutputMode":I
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/hardware/display/DisplayManager;

    .line 4553
    .local v13, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v12, 0x0

    invoke-virtual {v13, v12}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v26

    .line 4555
    .local v26, "display":Landroid/view/Display;
    invoke-virtual/range {v26 .. v26}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v27

    .line 4556
    .local v27, "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    new-array v0, v12, [B

    .line 4557
    .local v0, "sinkHdrFormats":[B
    if-eqz v27, :cond_ae

    .line 4558
    invoke-virtual/range {v27 .. v27}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    move-result-object v0

    move-object/from16 v28, v0

    goto :goto_b0

    .line 4557
    :cond_ae
    move-object/from16 v28, v0

    .line 4560
    .end local v0    # "sinkHdrFormats":[B
    .local v28, "sinkHdrFormats":[B
    :goto_b0
    invoke-virtual/range {v26 .. v26}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([Landroid/view/Display$Mode;)[B

    move-result-object v29

    .line 4561
    .local v29, "sinkDisplayModes":[B
    const/4 v7, -0x1

    .line 4562
    .local v7, "hdcpLevel":I
    invoke-static {}, Landroid/media/MediaDrm;->getSupportedCryptoSchemes()Ljava/util/List;

    move-result-object v11

    .line 4564
    .local v11, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    :try_start_bd
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d3

    .line 4565
    new-instance v0, Landroid/media/MediaDrm;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/UUID;

    invoke-direct {v0, v8}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 4566
    .local v0, "mediaDrm":Landroid/media/MediaDrm;
    invoke-virtual {v0}, Landroid/media/MediaDrm;->getConnectedHdcpLevel()I

    move-result v8
    :try_end_d2
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_bd .. :try_end_d2} :catch_d6

    move v7, v8

    .line 4571
    .end local v0    # "mediaDrm":Landroid/media/MediaDrm;
    :cond_d3
    move/from16 v30, v7

    goto :goto_e0

    .line 4568
    :catch_d6
    move-exception v0

    .line 4569
    .local v0, "exception":Landroid/media/UnsupportedSchemeException;
    const-string/jumbo v8, "pulling hdcp level failed."

    invoke-static {v2, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4570
    const/4 v7, -0x1

    move/from16 v30, v7

    .line 4574
    .end local v0    # "exception":Landroid/media/UnsupportedSchemeException;
    .end local v7    # "hdcpLevel":I
    .local v30, "hdcpLevel":I
    :goto_e0
    nop

    .line 4575
    invoke-virtual {v13}, Landroid/hardware/display/DisplayManager;->getMatchContentFrameRateUserPreference()I

    move-result v31

    .line 4576
    .local v31, "matchContentFrameRateUserPreference":I
    invoke-virtual {v13}, Landroid/hardware/display/DisplayManager;->getUserDisabledHdrTypes()[I

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    move-result-object v32

    .line 4577
    .local v32, "userDisabledHdrTypes":[B
    nop

    .line 4578
    invoke-virtual {v13}, Landroid/hardware/display/DisplayManager;->getGlobalUserPreferredDisplayMode()Landroid/view/Display$Mode;

    move-result-object v33

    .line 4579
    .local v33, "userPreferredDisplayMode":Landroid/view/Display$Mode;
    const/4 v0, -0x1

    if-eqz v33, :cond_fc

    .line 4580
    invoke-virtual/range {v33 .. v33}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    move/from16 v18, v7

    goto :goto_fe

    :cond_fc
    move/from16 v18, v0

    .line 4581
    .local v18, "userPreferredWidth":I
    :goto_fe
    if-eqz v33, :cond_105

    .line 4582
    invoke-virtual/range {v33 .. v33}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    goto :goto_106

    :cond_105
    nop

    :goto_106
    move/from16 v19, v0

    .line 4583
    .local v19, "userPreferredHeight":I
    if-eqz v33, :cond_10f

    .line 4584
    invoke-virtual/range {v33 .. v33}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    goto :goto_110

    :cond_10f
    const/4 v0, 0x0

    :goto_110
    move/from16 v20, v0

    .line 4585
    .local v20, "userPreferredRefreshRate":F
    const/4 v7, 0x0

    .line 4587
    .local v7, "hasUserDisabledAllm":Z
    :try_start_113
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4588
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "minimal_post_processing_allowed"

    .line 4587
    invoke-static {v0, v8, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_120
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_113 .. :try_end_120} :catch_126

    if-nez v0, :cond_123

    goto :goto_124

    :cond_123
    move v3, v12

    :goto_124
    move v0, v3

    .line 4596
    .end local v7    # "hasUserDisabledAllm":Z
    .local v0, "hasUserDisabledAllm":Z
    goto :goto_12f

    .line 4591
    .end local v0    # "hasUserDisabledAllm":Z
    .restart local v7    # "hasUserDisabledAllm":Z
    :catch_126
    move-exception v0

    .line 4592
    .local v0, "exception":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "unable to find setting for MINIMAL_POST_PROCESSING_ALLOWED."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4595
    const/4 v2, 0x0

    move v0, v2

    .line 4598
    .end local v7    # "hasUserDisabledAllm":Z
    .local v0, "hasUserDisabledAllm":Z
    :goto_12f
    nop

    .line 4599
    move/from16 v7, p1

    move-object v8, v6

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object v2, v11

    .end local v11    # "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    .local v2, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    move-object/from16 v11, v24

    move v3, v12

    move/from16 v12, v25

    move-object/from16 v34, v13

    .end local v13    # "displayManager":Landroid/hardware/display/DisplayManager;
    .local v34, "displayManager":Landroid/hardware/display/DisplayManager;
    move-object/from16 v13, v28

    move-object/from16 v35, v14

    .end local v14    # "enabledSurroundEncodingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v35, "enabledSurroundEncodingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v14, v29

    move-object/from16 v36, v15

    .end local v15    # "disabledSurroundEncodingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v36, "disabledSurroundEncodingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v15, v30

    move/from16 v16, v31

    move-object/from16 v17, v32

    move/from16 v21, v0

    invoke-static/range {v7 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B[B[B[BI[B[BII[BIIFZ)Landroid/util/StatsEvent;

    move-result-object v7

    .line 4598
    move-object/from16 v8, p2

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4607
    return v3
.end method

.method pullModemActivityInfoLocked(ILjava/util/List;)I
    .registers 33
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2062
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    const-string v2, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2064
    .local v3, "token":J
    :try_start_8
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v5, v0

    .line 2065
    .local v5, "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v6, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>()V

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$3;

    invoke-direct {v7, v1, v5}, Lcom/android/server/stats/pull/StatsPullAtomService$3;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v6, v7}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_af

    .line 2082
    const-wide/16 v6, 0x7d0

    const/4 v8, 0x1

    :try_start_20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_20 .. :try_end_28} :catch_8e
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_28} :catch_8e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_20 .. :try_end_28} :catch_6c
    .catchall {:try_start_20 .. :try_end_28} :catchall_af

    .line 2090
    .local v0, "modemInfo":Landroid/telephony/ModemActivityInfo;
    nop

    .line 2092
    if-nez v0, :cond_30

    .line 2093
    nop

    .line 2106
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2093
    return v8

    .line 2095
    :cond_30
    nop

    .line 2096
    :try_start_31
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v10

    .line 2097
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v14

    .line 2098
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v16

    .line 2099
    invoke-virtual {v0, v8}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v18

    const/4 v6, 0x2

    .line 2100
    invoke-virtual {v0, v6}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v20

    const/4 v6, 0x3

    .line 2101
    invoke-virtual {v0, v6}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v22

    const/4 v6, 0x4

    .line 2102
    invoke-virtual {v0, v6}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v24

    .line 2103
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    move-result-wide v26

    const-wide/16 v28, -0x1

    .line 2095
    move/from16 v9, p1

    invoke-static/range {v9 .. v29}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v6
    :try_end_61
    .catchall {:try_start_31 .. :try_end_61} :catchall_af

    move-object/from16 v7, p2

    :try_start_63
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_ad

    .line 2106
    nop

    .end local v0    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .end local v5    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2107
    nop

    .line 2108
    return v2

    .line 2087
    .restart local v5    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    :catch_6c
    move-exception v0

    move-object/from16 v7, p2

    .line 2088
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_6f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception reading modem stats: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_6f .. :try_end_89} :catchall_ad

    .line 2089
    nop

    .line 2106
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2089
    return v8

    .line 2084
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_8e
    move-exception v0

    move-object/from16 v7, p2

    .line 2085
    .local v0, "e":Ljava/lang/Exception;
    :try_start_91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "timeout or interrupt reading modem stats: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_91 .. :try_end_a8} :catchall_ad

    .line 2086
    nop

    .line 2106
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2086
    return v8

    .line 2106
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "modemFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    :catchall_ad
    move-exception v0

    goto :goto_b2

    :catchall_af
    move-exception v0

    move-object/from16 v7, p2

    :goto_b2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2107
    throw v0
.end method

.method pullNotificationRemoteViewsLocked(ILjava/util/List;)I
    .registers 20
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3926
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v1, "Getting notistats failed: "

    const-string v2, "StatsPullAtomService"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getINotificationManagerService()Landroid/app/INotificationManager;

    move-result-object v9

    .line 3927
    .local v9, "notificationManagerService":Landroid/app/INotificationManager;
    const/4 v10, 0x1

    if-nez v9, :cond_c

    .line 3928
    return v10

    .line 3930
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3933
    .local v11, "callingToken":J
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v13, v3, v5

    .line 3934
    .local v13, "wallClockNanos":J
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 3935
    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    sub-long v15, v13, v3

    .line 3937
    .local v15, "lastNotificationStatsNs":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3938
    .local v0, "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, v9

    move-wide v4, v15

    move-object v8, v0

    invoke-interface/range {v3 .. v8}, Landroid/app/INotificationManager;->pullStats(JIZLjava/util/List;)J

    .line 3940
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_35} :catch_6f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_35} :catch_62
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_35} :catch_55
    .catchall {:try_start_10 .. :try_end_35} :catchall_4f

    if-eq v3, v10, :cond_3c

    .line 3941
    nop

    .line 3954
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3941
    return v10

    .line 3943
    :cond_3c
    move/from16 v3, p1

    move-object/from16 v4, p2

    :try_start_40
    invoke-static {v3, v4, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_4b
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_43} :catch_49
    .catchall {:try_start_40 .. :try_end_43} :catchall_7c

    .line 3954
    .end local v0    # "statsFiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v13    # "wallClockNanos":J
    .end local v15    # "lastNotificationStatsNs":J
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3955
    nop

    .line 3956
    const/4 v0, 0x0

    return v0

    .line 3950
    :catch_49
    move-exception v0

    goto :goto_5a

    .line 3947
    :catch_4b
    move-exception v0

    goto :goto_67

    .line 3944
    :catch_4d
    move-exception v0

    goto :goto_74

    .line 3954
    :catchall_4f
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    goto :goto_7d

    .line 3950
    :catch_55
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    .line 3951
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_5a
    :try_start_5a
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_7c

    .line 3952
    nop

    .line 3954
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3952
    return v10

    .line 3947
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_62
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    .line 3948
    .local v0, "e":Landroid/os/RemoteException;
    :goto_67
    :try_start_67
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_7c

    .line 3949
    nop

    .line 3954
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3949
    return v10

    .line 3944
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_6f
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    .line 3945
    .local v0, "e":Ljava/io/IOException;
    :goto_74
    :try_start_74
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_7c

    .line 3946
    nop

    .line 3954
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3946
    return v10

    .line 3954
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_7c
    move-exception v0

    :goto_7d
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3955
    throw v0
.end method

.method pullPowerProfileLocked(ILjava/util/List;)I
    .registers 6
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2977
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 2978
    .local v0, "powerProfile":Lcom/android/internal/os/PowerProfile;
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 2979
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 2980
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2981
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2982
    const/4 v2, 0x0

    return v2
.end method

.method pullProcessCpuTimeLocked(ILjava/util/List;)I
    .registers 13
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3000
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 3001
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 3002
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 3004
    :cond_f
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 3005
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 3006
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    .line 3007
    .local v2, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-object v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v6, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    iget-wide v8, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    move v3, p1

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3005
    .end local v2    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 3010
    .end local v0    # "i":I
    :cond_36
    return v1
.end method

.method pullProcessDmabufMemory(ILjava/util/List;)I
    .registers 18
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2364
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getDmabufAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;

    move-result-object v0

    .line 2366
    .local v0, "procBufs":[Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;
    if-nez v0, :cond_8

    .line 2367
    const/4 v1, 0x1

    return v1

    .line 2369
    :cond_8
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_2d

    aget-object v4, v0, v3

    .line 2370
    .local v4, "procBuf":Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;
    iget v6, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->uid:I

    iget-object v7, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    iget v8, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->oomScore:I

    iget v9, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    iget v10, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedBuffersCount:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerSizeKb:I

    iget v14, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerCount:I

    move/from16 v5, p1

    invoke-static/range {v5 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIII)Landroid/util/StatsEvent;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2369
    .end local v4    # "procBuf":Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2383
    :cond_2d
    move-object/from16 v6, p2

    return v2
.end method

.method pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I
    .registers 16
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2209
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2210
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2211
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    .line 2212
    .local v0, "managedProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x400

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProcessMemoryState;

    .line 2213
    .local v2, "managedProcess":Landroid/app/ProcessMemoryState;
    iget v5, v2, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v5}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v5

    .line 2214
    .local v5, "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    if-nez v5, :cond_27

    .line 2215
    goto :goto_10

    .line 2217
    :cond_27
    iget v7, v2, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v8, v2, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v6, v5, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    int-to-long v9, v6

    mul-long/2addr v9, v3

    iget v11, v5, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    move v6, p1

    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JI)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2222
    .end local v2    # "managedProcess":Landroid/app/ProcessMemoryState;
    .end local v5    # "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    goto :goto_10

    .line 2224
    :cond_3a
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    move-result-object v1

    .line 2225
    .local v1, "processCmdlines":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;

    invoke-direct {v2, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2226
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2227
    .local v2, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4b
    if-ge v5, v2, :cond_72

    .line 2228
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v6

    .line 2229
    .local v6, "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    if-nez v6, :cond_58

    .line 2230
    goto :goto_6f

    .line 2232
    :cond_58
    iget v8, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 2233
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    iget v7, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    int-to-long v10, v7

    mul-long/2addr v10, v3

    iget v12, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    .line 2232
    move v7, p1

    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JI)Landroid/util/StatsEvent;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2227
    .end local v6    # "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    :goto_6f
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 2239
    .end local v5    # "i":I
    :cond_72
    const-string/jumbo v3, "sys.rss_hwm_reset.on"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    const/4 v3, 0x0

    return v3
.end method

.method pullProcessMemorySnapshot(ILjava/util/List;)I
    .registers 25
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2254
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v0, p2

    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 2255
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 2256
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v1

    .line 2258
    .local v1, "managedProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getGpuAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;

    move-result-object v2

    .line 2259
    .local v2, "gpuAllocations":[Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;
    new-instance v3, Landroid/util/SparseIntArray;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 2260
    .local v3, "gpuMemPerPid":Landroid/util/SparseIntArray;
    array-length v4, v2

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v4, :cond_28

    aget-object v7, v2, v6

    .line 2261
    .local v7, "processGpuMem":Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;
    iget v8, v7, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->pid:I

    iget v9, v7, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->gpuMemoryKb:I

    invoke-virtual {v3, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2260
    .end local v7    # "processGpuMem":Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 2263
    :cond_28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_69

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProcessMemoryState;

    .line 2264
    .local v6, "managedProcess":Landroid/app/ProcessMemoryState;
    iget v7, v6, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v7}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v7

    .line 2265
    .local v7, "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    if-nez v7, :cond_41

    .line 2266
    goto :goto_2c

    .line 2268
    :cond_41
    iget v9, v6, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v10, v6, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v11, v6, Landroid/app/ProcessMemoryState;->pid:I

    iget v12, v6, Landroid/app/ProcessMemoryState;->oomScore:I

    iget v13, v7, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    iget v14, v7, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v15, v7, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    iget v8, v7, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v5, v7, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int v16, v8, v5

    iget v5, v6, Landroid/app/ProcessMemoryState;->pid:I

    .line 2272
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v17

    iget-boolean v5, v6, Landroid/app/ProcessMemoryState;->hasForegroundServices:Z

    .line 2268
    move/from16 v8, p1

    move/from16 v18, v5

    invoke-static/range {v8 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIIIZ)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2273
    .end local v6    # "managedProcess":Landroid/app/ProcessMemoryState;
    .end local v7    # "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    goto :goto_2c

    .line 2277
    :cond_69
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    move-result-object v4

    .line 2278
    .local v4, "processCmdlines":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda8;

    invoke-direct {v5, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda8;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v1, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2279
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 2280
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7a
    if-ge v6, v5, :cond_bf

    .line 2281
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 2282
    .local v15, "pid":I
    invoke-static {v15}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v14

    .line 2283
    .local v14, "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    if-nez v14, :cond_87

    .line 2284
    goto :goto_bc

    .line 2286
    :cond_87
    iget v8, v14, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 2287
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    iget v12, v14, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    iget v13, v14, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v10, v14, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    iget v7, v14, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v11, v14, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int v17, v7, v11

    .line 2291
    invoke-virtual {v3, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v18

    const/16 v19, 0x0

    .line 2286
    move/from16 v7, p1

    move/from16 v20, v10

    move v10, v15

    const/16 v11, -0x3e9

    move-object/from16 v21, v14

    .end local v14    # "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    .local v21, "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    move/from16 v14, v20

    move/from16 v20, v15

    .end local v15    # "pid":I
    .local v20, "pid":I
    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    invoke-static/range {v7 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIIIZ)Landroid/util/StatsEvent;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2280
    .end local v20    # "pid":I
    .end local v21    # "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    :goto_bc
    add-int/lit8 v6, v6, 0x1

    goto :goto_7a

    .line 2293
    .end local v6    # "i":I
    :cond_bf
    const/4 v6, 0x0

    return v6
.end method

.method pullProcessMemoryStateLocked(ILjava/util/List;)I
    .registers 28
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2181
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2182
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2183
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    .line 2184
    .local v0, "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProcessMemoryState;

    .line 2185
    .local v2, "processMemoryState":Landroid/app/ProcessMemoryState;
    iget v3, v2, Landroid/app/ProcessMemoryState;->uid:I

    iget v4, v2, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v3, v4}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v3

    .line 2187
    .local v3, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    if-nez v3, :cond_27

    .line 2188
    goto :goto_10

    .line 2190
    :cond_27
    iget v5, v2, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v6, v2, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v7, v2, Landroid/app/ProcessMemoryState;->oomScore:I

    iget-wide v8, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v10, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v12, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v14, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    .end local v0    # "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    .local v23, "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    iget-wide v0, v3, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    const-wide/16 v20, -0x1

    const/16 v22, -0x1

    move/from16 v4, p1

    invoke-static/range {v4 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IJJJJJJJI)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2194
    .end local v2    # "processMemoryState":Landroid/app/ProcessMemoryState;
    .end local v3    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    goto :goto_10

    .line 2195
    .end local v23    # "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    .restart local v0    # "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    :cond_53
    move-object/from16 v23, v0

    .end local v0    # "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    .restart local v23    # "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    const/4 v0, 0x0

    return v0
.end method

.method pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I
    .registers 15
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2342
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Lcom/android/server/stats/pull/IonMemoryUtil;->readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;

    move-result-object v0

    .line 2343
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    .line 2344
    .local v2, "allocations":Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;
    iget v3, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    invoke-static {v3}, Landroid/os/Process;->getUidForPid(I)I

    move-result v5

    iget v3, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    .line 2345
    invoke-static {v3}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v3, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    const-wide/16 v7, 0x400

    div-long/2addr v3, v7

    long-to-int v3, v3

    iget v9, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    iget-wide v10, v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    div-long/2addr v10, v7

    long-to-int v10, v10

    .line 2344
    move v4, p1

    move v7, v3

    move v8, v9

    move v9, v10

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;III)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2348
    .end local v2    # "allocations":Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;
    goto :goto_8

    .line 2349
    :cond_38
    const/4 v1, 0x0

    return v1
.end method

.method pullRoleHolderLocked(ILjava/util/List;)I
    .registers 22
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3209
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3211
    .local v2, "callingToken":J
    :try_start_6
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v4, v0

    .line 3212
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-class v0, Lcom/android/role/RoleManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/role/RoleManagerLocal;

    move-object v5, v0

    .line 3215
    .local v5, "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    .line 3217
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v7, v0

    .line 3218
    .local v7, "numUsers":I
    const/4 v0, 0x0

    move v8, v0

    .local v8, "userNum":I
    :goto_2c
    const/4 v0, 0x0

    if-ge v8, v7, :cond_e3

    .line 3219
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 3221
    .local v9, "userId":I
    invoke-interface {v5, v9}, Lcom/android/role/RoleManagerLocal;->getRolesAndHolders(I)Ljava/util/Map;

    move-result-object v10

    .line 3223
    .local v10, "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_49
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 3224
    .local v12, "roleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3225
    .local v13, "roleName":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Set;

    .line 3227
    .local v14, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_65
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;
    :try_end_71
    .catchall {:try_start_6 .. :try_end_71} :catchall_ef

    move-object/from16 v17, v16

    .line 3230
    .local v17, "packageName":Ljava/lang/String;
    move-object/from16 v1, v17

    .end local v17    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    :try_start_75
    invoke-virtual {v4, v1, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v16
    :try_end_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_75 .. :try_end_79} :catch_99
    .catchall {:try_start_75 .. :try_end_79} :catchall_ef

    move-object/from16 v17, v16

    .line 3234
    .local v17, "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 3236
    move-object/from16 v0, v17

    move-object/from16 v17, v4

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    .local v17, "pm":Landroid/content/pm/PackageManager;
    :try_start_80
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v18, v5

    move/from16 v5, p1

    .end local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .local v18, "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    invoke-static {v5, v4, v1, v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v4
    :try_end_8c
    .catchall {:try_start_80 .. :try_end_8c} :catchall_ef

    move-object/from16 v5, p2

    :try_start_8e
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3238
    move-object/from16 v1, p0

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    const/4 v0, 0x0

    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_65

    .line 3231
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    :catch_99
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v5, p2

    move-object v4, v0

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    move-object v0, v4

    .line 3232
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "StatsPullAtomService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Role holder "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " not found"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_8e .. :try_end_c0} :catchall_c6

    .line 3233
    nop

    .line 3242
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3233
    const/4 v4, 0x1

    return v4

    .line 3242
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "numUsers":I
    .end local v8    # "userNum":I
    .end local v9    # "userId":I
    .end local v10    # "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v12    # "roleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v13    # "roleName":Ljava/lang/String;
    .end local v14    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    :catchall_c6
    move-exception v0

    goto :goto_f2

    .line 3227
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "numUsers":I
    .restart local v8    # "userNum":I
    .restart local v9    # "userId":I
    .restart local v10    # "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v12    # "roleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v13    # "roleName":Ljava/lang/String;
    .restart local v14    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c8
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v5, p2

    .line 3239
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .end local v12    # "roleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v13    # "roleName":Ljava/lang/String;
    .end local v14    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    move-object/from16 v1, p0

    move-object/from16 v5, v18

    const/4 v0, 0x0

    goto/16 :goto_49

    .line 3223
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    :cond_d5
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v5, p2

    .line 3218
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .end local v9    # "userId":I
    .end local v10    # "roles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v18

    goto/16 :goto_2c

    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    :cond_e3
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v5, p2

    .line 3242
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "roleManagerLocal":Lcom/android/role/RoleManagerLocal;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "numUsers":I
    .end local v8    # "userNum":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3243
    nop

    .line 3244
    const/4 v0, 0x0

    return v0

    .line 3242
    :catchall_ef
    move-exception v0

    move-object/from16 v5, p2

    :goto_f2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3243
    throw v0
.end method

.method pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I
    .registers 19
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3854
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v1, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3856
    .local v2, "token":J
    move-object/from16 v4, p0

    :try_start_8
    iget-object v0, v4, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3858
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {v0}, Landroid/app/AppOpsManager;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object v5

    .line 3859
    .local v5, "message":Landroid/app/RuntimeAppOpAccessMessage;
    const/4 v6, 0x0

    if-nez v5, :cond_23

    .line 3860
    const-string v7, "No runtime appop access message collected"

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_5e

    .line 3861
    nop

    .line 3874
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3861
    return v6

    .line 3864
    :cond_23
    :try_start_23
    invoke-virtual {v5}, Landroid/app/RuntimeAppOpAccessMessage;->getUid()I

    move-result v9

    .line 3865
    invoke-virtual {v5}, Landroid/app/RuntimeAppOpAccessMessage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    .line 3866
    invoke-virtual {v5}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_36

    const-string v7, ""

    goto :goto_3a

    :cond_36
    invoke-virtual {v5}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    :goto_3a
    move-object v12, v7

    .line 3867
    invoke-virtual {v5}, Landroid/app/RuntimeAppOpAccessMessage;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Landroid/app/RuntimeAppOpAccessMessage;->getSamplingStrategy()I

    move-result v14

    .line 3868
    invoke-virtual {v5}, Landroid/app/RuntimeAppOpAccessMessage;->getOp()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v15

    .line 3864
    move/from16 v8, p1

    invoke-static/range {v8 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v7
    :try_end_51
    .catchall {:try_start_23 .. :try_end_51} :catchall_5e

    move-object/from16 v8, p2

    :try_start_53
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5c

    .line 3874
    nop

    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v5    # "message":Landroid/app/RuntimeAppOpAccessMessage;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3875
    nop

    .line 3876
    return v6

    .line 3869
    :catchall_5c
    move-exception v0

    goto :goto_61

    :catchall_5e
    move-exception v0

    move-object/from16 v8, p2

    .line 3871
    .local v0, "t":Ljava/lang/Throwable;
    :goto_61
    :try_start_61
    const-string v5, "Could not read runtime appop access message"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_6b

    .line 3872
    const/4 v1, 0x1

    .line 3874
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3872
    return v1

    .line 3874
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_6b
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3875
    throw v0
.end method

.method pullSettingsStatsLocked(ILjava/util/List;)I
    .registers 12
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4068
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 4069
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 4070
    return v1

    .line 4073
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4075
    .local v2, "token":J
    :try_start_12
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 4076
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 4078
    .local v7, "userId":I
    if-nez v7, :cond_3a

    .line 4079
    iget-object v8, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logGlobalSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4082
    :cond_3a
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v7}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSystemSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4083
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v7}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSecureSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4c} :catch_55
    .catchall {:try_start_12 .. :try_end_4c} :catchall_53

    .line 4084
    nop

    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userId":I
    goto :goto_1a

    .line 4089
    :cond_4e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4090
    nop

    .line 4091
    return v6

    .line 4089
    :catchall_53
    move-exception v1

    goto :goto_62

    .line 4085
    :catch_55
    move-exception v4

    .line 4086
    .local v4, "e":Ljava/lang/Exception;
    :try_start_56
    const-string v5, "StatsPullAtomService"

    const-string v6, "failed to pullSettingsStats"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_53

    .line 4087
    nop

    .line 4089
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4087
    return v1

    .line 4089
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_62
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4090
    throw v1
.end method

.method pullSystemElapsedRealtimeLocked(ILjava/util/List;)I
    .registers 5
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2148
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2149
    const/4 v0, 0x0

    return v0
.end method

.method pullSystemIonHeapSizeLocked(ILjava/util/List;)I
    .registers 6
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2307
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Lcom/android/server/stats/pull/IonMemoryUtil;->readSystemIonHeapSizeFromDebugfs()J

    move-result-wide v0

    .line 2308
    .local v0, "systemIonHeapSizeInBytes":J
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2309
    const/4 v2, 0x0

    return v2
.end method

.method pullSystemMemory(ILjava/util/List;)I
    .registers 15
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2397
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Lcom/android/server/stats/pull/SystemMemoryUtil;->getMetrics()Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;

    move-result-object v0

    .line 2398
    .local v0, "metrics":Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;
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

    .line 2399
    move v1, p1

    invoke-static/range {v1 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v1

    .line 2398
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2411
    const/4 v1, 0x0

    return v1
.end method

.method pullSystemServerPinnerStats(ILjava/util/List;)I
    .registers 10
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4641
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-class v0, Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService;

    .line 4642
    .local v0, "pinnerService":Lcom/android/server/PinnerService;
    invoke-virtual {v0}, Lcom/android/server/PinnerService;->dumpDataForStatsd()Ljava/util/List;

    move-result-object v1

    .line 4643
    .local v1, "pinnedFileStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PinnerService$PinnedFileStats;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PinnerService$PinnedFileStats;

    .line 4644
    .local v3, "pfstats":Lcom/android/server/PinnerService$PinnedFileStats;
    iget v4, v3, Lcom/android/server/PinnerService$PinnedFileStats;->uid:I

    iget-object v5, v3, Lcom/android/server/PinnerService$PinnedFileStats;->filename:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/PinnerService$PinnedFileStats;->sizeKb:I

    invoke-static {p1, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;I)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4646
    .end local v3    # "pfstats":Lcom/android/server/PinnerService$PinnedFileStats;
    goto :goto_10

    .line 4647
    :cond_2a
    const/4 v2, 0x0

    return v2
.end method

.method pullSystemUptimeLocked(ILjava/util/List;)I
    .registers 5
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2163
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2164
    const/4 v0, 0x0

    return v0
.end method

.method pullTemperatureLocked(ILjava/util/List;)I
    .registers 16
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2446
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object v0

    .line 2447
    .local v0, "thermalService":Landroid/os/IThermalService;
    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 2448
    return v1

    .line 2450
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2452
    .local v2, "callingToken":J
    :try_start_c
    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentTemperatures()[Landroid/os/Temperature;

    move-result-object v4

    .line 2453
    .local v4, "temperatures":[Landroid/os/Temperature;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_13
    if-ge v7, v5, :cond_36

    aget-object v8, v4, v7

    .line 2454
    .local v8, "temp":Landroid/os/Temperature;
    invoke-virtual {v8}, Landroid/os/Temperature;->getType()I

    move-result v9

    .line 2455
    invoke-virtual {v8}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Landroid/os/Temperature;->getValue()F

    move-result v11

    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/os/Temperature;->getStatus()I

    move-result v12

    .line 2454
    invoke-static {p1, v9, v10, v11, v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_32} :catch_3d
    .catchall {:try_start_c .. :try_end_32} :catchall_3b

    .line 2453
    nop

    .end local v8    # "temp":Landroid/os/Temperature;
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 2462
    .end local v4    # "temperatures":[Landroid/os/Temperature;
    :cond_36
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2463
    nop

    .line 2464
    return v6

    .line 2462
    :catchall_3b
    move-exception v1

    goto :goto_4a

    .line 2457
    :catch_3d
    move-exception v4

    .line 2459
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3e
    const-string v5, "StatsPullAtomService"

    const-string v6, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_3b

    .line 2460
    nop

    .line 2462
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2460
    return v1

    .line 2462
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_4a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2463
    throw v1
.end method

.method pullTimeZoneDataInfoLocked(ILjava/util/List;)I
    .registers 7
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3354
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-string v0, "Unknown"

    .line 3356
    .local v0, "tzDbVersion":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_6} :catch_11

    move-object v0, v1

    .line 3360
    nop

    .line 3362
    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3363
    const/4 v1, 0x0

    return v1

    .line 3357
    :catch_11
    move-exception v1

    .line 3358
    .local v1, "e":Ljava/util/MissingResourceException;
    const-string v2, "StatsPullAtomService"

    const-string v3, "Getting tzdb version failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3359
    const/4 v2, 0x1

    return v2
.end method

.method pullTimeZoneDetectorStateLocked(ILjava/util/List;)I
    .registers 22
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3377
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3379
    .local v1, "token":J
    :try_start_4
    const-class v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 3380
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 3381
    .local v0, "timeZoneDetectorInternal":Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;
    nop

    .line 3382
    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object v3

    .line 3383
    .local v3, "metricsState":Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    nop

    .line 3384
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isTelephonyDetectionSupported()Z

    move-result v5

    .line 3385
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isGeoDetectionSupported()Z

    move-result v6

    .line 3386
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getUserLocationEnabledSetting()Z

    move-result v7

    .line 3387
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getAutoDetectionEnabledSetting()Z

    move-result v8

    .line 3388
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getGeoDetectionEnabledSetting()Z

    move-result v9

    .line 3389
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDetectionMode()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertToMetricsDetectionMode(I)I

    move-result v10

    .line 3390
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDeviceTimeZoneIdOrdinal()I

    move-result v11

    .line 3392
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestManualSuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v4

    .line 3391
    invoke-static {v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v12

    .line 3394
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestTelephonySuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v4

    .line 3393
    invoke-static {v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v13

    .line 3396
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestGeolocationSuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v4

    .line 3395
    invoke-static {v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v14

    .line 3397
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isTelephonyTimeZoneFallbackSupported()Z

    move-result v15

    .line 3398
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDeviceTimeZoneId()Ljava/lang/String;

    move-result-object v16

    .line 3399
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isEnhancedMetricsCollectionEnabled()Z

    move-result v17

    .line 3400
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getGeoDetectionRunInBackgroundEnabled()Z

    move-result v18

    .line 3383
    move/from16 v4, p1

    invoke-static/range {v4 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZZZZII[B[B[BZLjava/lang/String;ZZ)Landroid/util/StatsEvent;

    move-result-object v4
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_60} :catch_72
    .catchall {:try_start_4 .. :try_end_60} :catchall_6e

    move-object/from16 v5, p2

    :try_start_62
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_65} :catch_6c
    .catchall {:try_start_62 .. :try_end_65} :catchall_81

    .line 3406
    nop

    .end local v0    # "timeZoneDetectorInternal":Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;
    .end local v3    # "metricsState":Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3407
    nop

    .line 3408
    const/4 v0, 0x0

    return v0

    .line 3402
    :catch_6c
    move-exception v0

    goto :goto_75

    .line 3406
    :catchall_6e
    move-exception v0

    move-object/from16 v5, p2

    goto :goto_82

    .line 3402
    :catch_72
    move-exception v0

    move-object/from16 v5, p2

    .line 3403
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_75
    :try_start_75
    const-string v3, "StatsPullAtomService"

    const-string v4, "Getting time zone detection state failed: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_81

    .line 3404
    const/4 v3, 0x1

    .line 3406
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3404
    return v3

    .line 3406
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_81
    move-exception v0

    :goto_82
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3407
    throw v0
.end method

.method pullVmStat(ILjava/util/List;)I
    .registers 5
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2425
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readVmStat()Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;

    move-result-object v0

    .line 2426
    .local v0, "vmStat":Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;
    if-eqz v0, :cond_f

    .line 2427
    iget v1, v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;->oomKillCount:I

    .line 2428
    invoke-static {p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v1

    .line 2427
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2432
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method pullWifiActivityInfoLocked(ILjava/util/List;)I
    .registers 21
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2014
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2016
    .local v2, "token":J
    const/4 v4, 0x1

    :try_start_7
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v5, "wifi"

    invoke-direct {v0, v5}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 2017
    .local v0, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    iget-object v5, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$2;

    invoke-direct {v6, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$2;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;

    invoke-direct {v7, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 2032
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/connectivity/WifiActivityEnergyInfo;
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_24} :catch_5c
    .catchall {:try_start_7 .. :try_end_24} :catchall_58

    .line 2033
    .local v5, "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    if-nez v5, :cond_2b

    .line 2034
    nop

    .line 2046
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2034
    return v4

    .line 2036
    :cond_2b
    nop

    .line 2037
    :try_start_2c
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v7

    .line 2038
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v9

    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v10

    .line 2039
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v12

    .line 2040
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v14

    .line 2041
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v16

    .line 2037
    move/from16 v6, p1

    invoke-static/range {v6 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJIJJJJ)Landroid/util/StatsEvent;

    move-result-object v6
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_4a} :catch_5c
    .catchall {:try_start_2c .. :try_end_4a} :catchall_58

    .line 2036
    move-object/from16 v7, p2

    :try_start_4c
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4f} :catch_56
    .catchall {:try_start_4c .. :try_end_4f} :catchall_6b

    .line 2046
    nop

    .end local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v5    # "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2047
    nop

    .line 2048
    const/4 v0, 0x0

    return v0

    .line 2042
    :catch_56
    move-exception v0

    goto :goto_5f

    .line 2046
    :catchall_58
    move-exception v0

    move-object/from16 v7, p2

    goto :goto_6c

    .line 2042
    :catch_5c
    move-exception v0

    move-object/from16 v7, p2

    .line 2043
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_5f
    :try_start_5f
    const-string v5, "StatsPullAtomService"

    const-string v6, "failed to getWifiActivityEnergyInfoAsync"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_6b

    .line 2044
    nop

    .line 2046
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2044
    return v4

    .line 2046
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_6b
    move-exception v0

    :goto_6c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2047
    throw v0
.end method

.method registerEventListeners()V
    .registers 7

    .line 833
    const-string v0, "StatsPullAtomService"

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 834
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 836
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 837
    .local v2, "request":Landroid/net/NetworkRequest;
    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback-IA;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 841
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object v3

    .line 842
    .local v3, "thermalService":Landroid/os/IThermalService;
    if-eqz v3, :cond_39

    .line 844
    :try_start_24
    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;

    invoke-direct {v5, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener-IA;)V

    invoke-interface {v3, v5}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 845
    const-string/jumbo v4, "register thermal listener successfully"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_32} :catch_33

    .line 848
    goto :goto_39

    .line 846
    :catch_33
    move-exception v4

    .line 847
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "failed to register thermal listener"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    return-void
.end method

.method registerPullers()V
    .registers 3

    .line 854
    const-string v0, "StatsPullAtomService"

    const-string v1, "Registering pullers with statsd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl-IA;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 857
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBluetoothBytesTransfer()V

    .line 858
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKernelWakelock()V

    .line 859
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerClusterFreq()V

    .line 860
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerUid()V

    .line 861
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuCyclesPerUidCluster()V

    .line 862
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerUidFreq()V

    .line 863
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuCyclesPerThreadGroupCluster()V

    .line 864
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuActiveTime()V

    .line 865
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuClusterTime()V

    .line 866
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiActivityInfo()V

    .line 867
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerModemActivityInfo()V

    .line 868
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBluetoothActivityInfo()V

    .line 869
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemElapsedRealtime()V

    .line 870
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemUptime()V

    .line 871
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemoryState()V

    .line 872
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemoryHighWaterMark()V

    .line 873
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemorySnapshot()V

    .line 874
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemIonHeapSize()V

    .line 875
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerIonHeapSize()V

    .line 876
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessSystemIonHeapSize()V

    .line 877
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemMemory()V

    .line 878
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessDmabufMemory()V

    .line 879
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerVmStat()V

    .line 880
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTemperature()V

    .line 881
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCoolingDevice()V

    .line 882
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBinderCallsStats()V

    .line 883
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBinderCallsStatsExceptions()V

    .line 884
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerLooperStats()V

    .line 885
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDiskStats()V

    .line 886
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDirectoryUsage()V

    .line 887
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppSize()V

    .line 888
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCategorySize()V

    .line 889
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNumFingerprintsEnrolled()V

    .line 890
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNumFacesEnrolled()V

    .line 891
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcStats()V

    .line 892
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcStatsPkgProc()V

    .line 893
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDiskIO()V

    .line 894
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPowerProfile()V

    .line 895
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessCpuTime()V

    .line 896
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerThreadFreq()V

    .line 897
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDeviceCalculatedPowerUse()V

    .line 898
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDebugElapsedClock()V

    .line 899
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDebugFailingElapsedClock()V

    .line 900
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBuildInformation()V

    .line 901
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRoleHolder()V

    .line 902
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTimeZoneDataInfo()V

    .line 903
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTimeZoneDetectorState()V

    .line 904
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerExternalStorageInfo()V

    .line 905
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppsOnExternalStorageInfo()V

    .line 906
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFaceSettings()V

    .line 907
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppOps()V

    .line 908
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAttributedAppOps()V

    .line 909
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRuntimeAppOpAccessMessage()V

    .line 910
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNotificationRemoteViews()V

    .line 911
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDangerousPermissionState()V

    .line 912
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDangerousPermissionStateSampled()V

    .line 913
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryLevel()V

    .line 914
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRemainingBatteryCapacity()V

    .line 915
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFullBatteryCapacity()V

    .line 916
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryVoltage()V

    .line 917
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryCycleCount()V

    .line 918
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSettingsStats()V

    .line 919
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerInstalledIncrementalPackages()V

    .line 920
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreStorageStats()V

    .line 921
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRkpPoolStats()V

    .line 922
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithGeneralInfo()V

    .line 923
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithAuthInfo()V

    .line 924
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithPurposeModesInfo()V

    .line 925
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreAtomWithOverflow()V

    .line 926
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyOperationWithPurposeAndModesInfo()V

    .line 927
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyOperationWithGeneralInfo()V

    .line 928
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRkpErrorStats()V

    .line 929
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreCrashStats()V

    .line 930
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAccessibilityShortcutStats()V

    .line 931
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAccessibilityFloatingMenuStats()V

    .line 932
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMediaCapabilitiesStats()V

    .line 933
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPendingIntentsPerPackagePuller()V

    .line 934
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPinnerServiceStats()V

    .line 935
    return-void
.end method
