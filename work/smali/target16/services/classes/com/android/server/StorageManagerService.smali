.class public Lcom/android/server/StorageManagerService;
.super Landroid/os/storage/IStorageManager$Stub;
.source "StorageManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# static fields
.field public static final KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

.field public static final LOCAL_LOGV:Z

.field public static final OBB_FILE_PATH:Ljava/util/regex/Pattern;

.field public static sMediaStoreAuthorityProcessName:Ljava/lang/String;

.field public static sSelf:Lcom/android/server/StorageManagerService;

.field public static volatile sSmartIdleMaintPeriod:I


# instance fields
.field public mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

.field public final mAppFuseLock:Ljava/lang/Object;

.field public volatile mBootCompleted:Z

.field public final mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

.field public final mCeStoragePreparedUsers:Ljava/util/Set;

.field public mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

.field public volatile mChargingRequired:Z

.field public final mCloudMediaProviders:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public volatile mCurrentUserId:I

.field public volatile mDaemonConnected:Z

.field public volatile mDirtyReclaimRate:F

.field public mDiskScanLatches:Landroid/util/ArrayMap;

.field public mDisks:Landroid/util/ArrayMap;

.field public volatile mDownloadsAuthorityAppId:I

.field public volatile mExternalStorageAuthorityAppId:I

.field public final mFuseMountedUser:Ljava/util/Set;

.field public final mHandler:Landroid/os/Handler;

.field public mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public mIPackageManager:Landroid/content/pm/IPackageManager;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public volatile mInternalStorageSize:J

.field public mLastMaintenance:J

.field public final mLastMaintenanceFile:Ljava/io/File;

.field public volatile mLifetimePercentThreshold:I

.field public final mListener:Landroid/os/IVoldListener;

.field public final mLock:Ljava/lang/Object;

.field public volatile mLowBatteryLevel:F

.field public volatile mMaxWriteRecords:I

.field public volatile mMediaStoreAuthorityAppId:I

.field public volatile mMinGCSleepTime:I

.field public volatile mMinSegmentsThreshold:I

.field public mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

.field public mMoveTargetUuid:Ljava/lang/String;

.field public volatile mNeedGC:Z

.field public mNextAppFuseName:I

.field public final mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

.field public final mObbMounts:Ljava/util/Map;

.field public final mObbPathToStateMap:Ljava/util/Map;

.field public final mPackageMonitorsForUser:Landroid/util/SparseArray;

.field public volatile mPassedLifetimeThresh:Z

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPrimaryStorageUuid:Ljava/lang/String;

.field public mRecords:Landroid/util/ArrayMap;

.field public volatile mRemountCurrentUserVolumesOnUnlock:Z

.field public volatile mSecureKeyguardShowing:Z

.field public volatile mSegmentReclaimWeight:F

.field public final mSettingsFile:Landroid/util/AtomicFile;

.field public final mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

.field public final mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

.field public volatile mStorageWriteRecords:[I

.field public volatile mStoraged:Landroid/os/IStoraged;

.field public mSystemUnlockedUsers:[I

.field public volatile mTargetDirtyRatio:I

.field public final mUidsWithLegacyExternalStorage:Ljava/util/Set;

.field public mUserReceiver:Landroid/content/BroadcastReceiver;

.field public final mUserSharesMediaWith:Landroid/util/SparseIntArray;

.field public volatile mVold:Landroid/os/IVold;

.field public final mVoldAppDataIsolationEnabled:Z

.field public final mVolumes:Lcom/android/server/utils/WatchedArrayMap;

.field public final mWriteRecordFile:Landroid/util/AtomicFile;


# direct methods
.method public static synthetic $r8$lambda$3W1bgg_uBq6o73zqwNdqgsQVYZE(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->lambda$resetIfBootedAndConnected$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$9KNVwzbDcE0oi0TNlgOBSvnVbsE(Lcom/android/server/StorageManagerService;ILcom/android/server/storage/WatchedVolumeInfo;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService;->lambda$onVolumeStateChangedLocked$1(ILcom/android/server/storage/WatchedVolumeInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JXjmxYc7cquI_I9b1hBqP4R6_WI(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->lambda$connectVold$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$hRq6f5rkXMm4O3FcKHexo6kLXiw(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->lambda$connectStoraged$2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$Callbacks;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCeStoragePreparedUsers(Lcom/android/server/StorageManagerService;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCeStoragePreparedUsers:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCeUnlockedUsers(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/StorageManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisks(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFuseMountedUser(Lcom/android/server/StorageManagerService;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIAppOpsService(Lcom/android/server/StorageManagerService;)Lcom/android/internal/app/IAppOpsService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIPackageManager(Lcom/android/server/StorageManagerService;)Landroid/content/pm/IPackageManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstaller(Lcom/android/server/StorageManagerService;)Lcom/android/server/pm/Installer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastMaintenance(Lcom/android/server/StorageManagerService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastMaintenanceFile(Lcom/android/server/StorageManagerService;)Ljava/io/File;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaStoreAuthorityAppId(Lcom/android/server/StorageManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmObbActionHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmObbMounts(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmObbPathToStateMap(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPmInternal(Lcom/android/server/StorageManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStorageSessionController(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidsWithLegacyExternalStorage(Lcom/android/server/StorageManagerService;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Lcom/android/server/utils/WatchedArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastMaintenance(Lcom/android/server/StorageManagerService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRemountCurrentUserVolumesOnUnlock(Lcom/android/server/StorageManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStoraged(Lcom/android/server/StorageManagerService;Landroid/os/IStoraged;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVold(Lcom/android/server/StorageManagerService;Landroid/os/IVold;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbootCompleted(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->bootCompleted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcompleteUnlockUser(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->completeUnlockUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconnectStoraged(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mconnectVold(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchOnFinished(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchOnStatus(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mextendWatchdogTimeout(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindRecordForPath(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mforgetPartition(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetMountModeInternal(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService;->getMountModeInternal(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleBootCompleted(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->handleBootCompleted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleDaemonConnected(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->handleDaemonConnected()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSystemReady(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->handleSystemReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misAppIoBlocked(Lcom/android/server/StorageManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isAppIoBlocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misMountDisallowed(Lcom/android/server/StorageManagerService;Lcom/android/server/storage/WatchedVolumeInfo;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Lcom/android/server/storage/WatchedVolumeInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misUidOwnerOfPackageOrSystem(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeRemountVolumes(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->maybeRemountVolumes(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmount(Lcom/android/server/StorageManagerService;Lcom/android/server/storage/WatchedVolumeInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->mount(Lcom/android/server/storage/WatchedVolumeInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyCloudMediaProviderChangedAsync(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerInternal$CloudProviderChangeListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->notifyCloudMediaProviderChangedAsync(Lcom/android/server/StorageManagerInternal$CloudProviderChangeListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monCloudMediaProviderChangedAsync(Lcom/android/server/StorageManagerService;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService;->onCloudMediaProviderChangedAsync(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDiskScannedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monMoveStatusLocked(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onUserStopped(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopping(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onUserStopping(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserUnlocking(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onUserUnlocking(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monVolumeCreatedLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/storage/WatchedVolumeInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onVolumeCreatedLocked(Lcom/android/server/storage/WatchedVolumeInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monVolumeStateChangedAsync(Lcom/android/server/StorageManagerService;Lcom/android/server/storage/WatchedVolumeInfo;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->onVolumeStateChangedAsync(Lcom/android/server/storage/WatchedVolumeInfo;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monVolumeStateChangedLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/storage/WatchedVolumeInfo;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService;->onVolumeStateChangedLocked(Lcom/android/server/storage/WatchedVolumeInfo;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprepareUserStorageForMoveInternal(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->prepareUserStorageForMoveInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprepareUserStorageInternal(Lcom/android/server/StorageManagerService;Ljava/lang/String;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefreshZramSettings(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremountVolumesForRunningUsersOnMove(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->remountVolumesForRunningUsersOnMove()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetIfBootedAndConnected(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscrubPath(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mservicesReady(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->servicesReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msnapshotAndMonitorLegacyStorageAppOp(Lcom/android/server/StorageManagerService;Landroid/os/UserHandle;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->snapshotAndMonitorLegacyStorageAppOp(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstart(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->start()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msystemReady(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->systemReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munmount(Lcom/android/server/StorageManagerService;Lcom/android/server/storage/ImmutableVolumeInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->unmount(Lcom/android/server/storage/ImmutableVolumeInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLegacyStorageApps(Lcom/android/server/StorageManagerService;Ljava/lang/String;IZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->updateLegacyStorageApps(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwarnOnNotMounted(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteSettingsLocked(Lcom/android/server/StorageManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetLOCAL_LOGV()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 233
    const-string v0, "(?i)(^/storage/[^/]+/(?:([0-9]+)/)?Android/obb/)([^/]+)/([^/]+\\.obb)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->OBB_FILE_PATH:Ljava/util/regex/Pattern;

    .line 316
    const-string v0, "StorageManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    const/16 v0, 0x3c

    .line 345
    sput v0, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 511
    const-string v0, "(?i)(^/storage/[^/]+/(?:([0-9]+)/)?Android/(?:data|media|obb|sandbox)/)([^/]+)(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 1992
    invoke-direct {p0}, Landroid/os/storage/IStorageManager$Stub;-><init>()V

    .line 236
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    .line 239
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCeStoragePreparedUsers:Ljava/util/Set;

    const-wide/16 v0, 0x0

    .line 242
    iput-wide v0, p0, Lcom/android/server/StorageManagerService;->mInternalStorageSize:J

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mNeedGC:Z

    const/4 v1, 0x4

    .line 399
    invoke-static {v1}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 449
    new-instance v1, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    invoke-direct {v1}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    .line 456
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 460
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 463
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    .line 467
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 473
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 481
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    const/4 v2, -0x1

    .line 484
    iput v2, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 486
    iput v2, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    .line 488
    iput v2, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    const/4 v2, 0x0

    .line 490
    iput v2, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 492
    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    .line 497
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    .line 499
    iput v2, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    const/4 v3, 0x0

    .line 502
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 505
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Landroid/util/SparseIntArray;

    .line 584
    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 585
    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 586
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 611
    new-instance v0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-direct {v0, p0, v3}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 619
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    .line 622
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Landroid/util/SparseArray;

    .line 877
    new-instance v0, Lcom/android/server/StorageManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$1;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1454
    new-instance v0, Lcom/android/server/StorageManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$3;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    .line 1993
    sput-object p0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 1994
    const-string/jumbo v0, "persist.sys.vold_app_data_isolation_enabled"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mVoldAppDataIsolationEnabled:Z

    .line 1996
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1997
    new-instance v0, Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/StorageManagerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 1999
    new-instance v0, Lcom/android/server/StorageManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$4;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 2006
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StorageManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2008
    new-instance v1, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    .line 2011
    new-instance v0, Lcom/android/server/StorageManagerService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/StorageManagerService$ObbActionHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    .line 2013
    new-instance v0, Lcom/android/server/storage/StorageSessionController;

    invoke-direct {v0, p1}, Lcom/android/server/storage/StorageSessionController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 2015
    new-instance v0, Lcom/android/server/pm/Installer;

    invoke-direct {v0, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 2016
    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->onStart()V

    .line 2019
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    .line 2020
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2021
    new-instance p1, Ljava/io/File;

    const-string/jumbo v1, "last-fstrim"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    .line 2022
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13e

    .line 2026
    :try_start_118
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_120} :catch_121

    goto :goto_144

    .line 2028
    :catch_121
    const-string p1, "StorageManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create fstrim record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_144

    .line 2031
    :cond_13e
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 2034
    :goto_144
    new-instance p1, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    .line 2035
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "storage.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v1, "storage-settings"

    invoke-direct {p1, v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 2036
    new-instance p1, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    .line 2037
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "storage-write-records"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    .line 2039
    const-string/jumbo p1, "storage_native_boot"

    const-string/jumbo v0, "smart_idle_maint_period"

    const/16 v1, 0x3c

    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 2041
    sget p1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    const/16 v0, 0xa

    if-ge p1, v0, :cond_184

    .line 2042
    sput v0, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    goto :goto_18c

    .line 2043
    :cond_184
    sget p1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    const/16 v0, 0x5a0

    if-le p1, v0, :cond_18c

    .line 2044
    sput v0, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    :cond_18c
    :goto_18c
    const/16 p1, 0x10e0

    .line 2047
    sget v0, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    .line 2048
    iget p1, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    .line 2050
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2051
    :try_start_19c
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->readSettingsLocked()V

    .line 2052
    monitor-exit p1
    :try_end_1a0
    .catchall {:try_start_19c .. :try_end_1a0} :catchall_1d1

    .line 2054
    const-class p1, Lcom/android/server/StorageManagerInternal;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2056
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 2057
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2058
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2059
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2061
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2062
    :try_start_1c2
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 2063
    monitor-exit v0
    :try_end_1c6
    .catchall {:try_start_1c2 .. :try_end_1c6} :catchall_1ce

    .line 2067
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    return-void

    :catchall_1ce
    move-exception p0

    .line 2063
    :try_start_1cf
    monitor-exit v0
    :try_end_1d0
    .catchall {:try_start_1cf .. :try_end_1d0} :catchall_1ce

    throw p0

    :catchall_1d1
    move-exception p0

    .line 2052
    :try_start_1d2
    monitor-exit p1
    :try_end_1d3
    .catchall {:try_start_1d2 .. :try_end_1d3} :catchall_1d1

    throw p0
.end method

.method private bootCompleted()V
    .registers 2

    const/4 v0, 0x1

    .line 2234
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 2235
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static readVolumeRecord(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/storage/VolumeRecord;
    .registers 9

    .line 2320
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2321
    const-string v2, "fsUuid"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2322
    new-instance v3, Landroid/os/storage/VolumeRecord;

    invoke-direct {v3, v0, v2}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 2323
    const-string/jumbo v0, "partGuid"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 2324
    const-string/jumbo v0, "nickname"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 2325
    const-string/jumbo v0, "userFlags"

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 2326
    const-string v0, "createdMillis"

    const-wide/16 v4, 0x0

    invoke-interface {p0, v1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 2327
    const-string/jumbo v0, "lastSeenMillis"

    invoke-interface {p0, v1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 2328
    const-string/jumbo v0, "lastTrimMillis"

    invoke-interface {p0, v1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 2329
    const-string/jumbo v0, "lastBenchMillis"

    invoke-interface {p0, v1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v3, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    return-object v3
.end method

.method private start()V
    .registers 1

    .line 2072
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    .line 2073
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    return-void
.end method

.method private systemReady()V
    .registers 2

    .line 2227
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2228
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 2230
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static writeVolumeRecord(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .registers 7

    const/4 v0, 0x0

    .line 2335
    const-string/jumbo v1, "volume"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2336
    const-string/jumbo v2, "type"

    iget v3, p1, Landroid/os/storage/VolumeRecord;->type:I

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2337
    const-string v2, "fsUuid"

    iget-object v3, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2338
    const-string/jumbo v2, "partGuid"

    iget-object v3, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2339
    const-string/jumbo v2, "nickname"

    iget-object v3, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2340
    const-string/jumbo v2, "userFlags"

    iget v3, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2341
    const-string v2, "createdMillis"

    iget-wide v3, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2342
    const-string/jumbo v2, "lastSeenMillis"

    iget-wide v3, p1, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2343
    const-string/jumbo v2, "lastTrimMillis"

    iget-wide v3, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2344
    const-string/jumbo v2, "lastBenchMillis"

    iget-wide v3, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2345
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public abortChanges(Ljava/lang/String;Z)V
    .registers 5

    .line 3322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 3326
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1, p2}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    return-void

    .line 3323
    :cond_e
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "no permission to commit checkpoint changes"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abortIdleMaint(Ljava/lang/Runnable;)V
    .registers 4

    .line 2767
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2770
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StorageManagerService$12;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 2783
    const-string p1, "StorageManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public abortIdleMaintenance()V
    .registers 2

    const/4 v0, 0x0

    .line 2789
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final addInternalVolumeLocked()V
    .registers 5

    .line 1095
    new-instance v0, Landroid/os/storage/VolumeInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "private"

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 1097
    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 1098
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1099
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/storage/WatchedVolumeInfo;->fromVolumeInfo(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/WatchedVolumeInfo;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 7

    .line 4226
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4227
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_19

    .line 4230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4231
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 4233
    :cond_19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StorageManagerService$ObbState;

    .line 4234
    iget-object v3, v3, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_1d

    .line 4235
    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempt to add ObbState twice. This indicates an error in the StorageManagerService logic."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4241
    :cond_3c
    :goto_3c
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4243
    :try_start_3f
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->link()V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_4a

    .line 4258
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_4a
    move-exception v2

    .line 4249
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4250
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 4251
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4255
    :cond_59
    throw v2
.end method

.method public final adjustAllocateFlags(IILjava/lang/String;)I
    .registers 8

    and-int/lit8 v0, p1, 0x1

    .line 4117
    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_d

    .line 4118
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ALLOCATE_AGGRESSIVE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    and-int/lit8 p1, p1, -0x7

    .line 4129
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 4130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/16 v0, 0x1a

    .line 4132
    :try_start_1f
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_43

    .line 4133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UID "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is actively using camera; letting them defy reserved cached data"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_41

    or-int/lit8 p1, p1, 0x4

    goto :goto_43

    :catchall_41
    move-exception p0

    goto :goto_47

    .line 4138
    :cond_43
    :goto_43
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4139
    throw p0
.end method

.method public allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
    .registers 10

    .line 4190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p4, v0, p5}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result p4

    or-int/lit8 v0, p4, 0x8

    .line 4192
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_47

    or-int/lit8 v2, p4, 0x10

    .line 4197
    invoke-virtual {p0, p1, v2, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    cmp-long p5, p2, v0

    if-gtz p5, :cond_1e

    goto :goto_47

    .line 4200
    :cond_1e
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p1, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to allocate "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " because only "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " allocatable"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 4205
    :cond_47
    :goto_47
    iget-object p5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/storage/StorageManager;

    .line 4206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4210
    :try_start_55
    invoke-virtual {p5, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    .line 4212
    invoke-virtual {p5, v2}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    :goto_61
    add-long/2addr p2, v2

    goto :goto_6c

    :catchall_63
    move-exception p0

    goto :goto_7b

    :catch_65
    move-exception p0

    goto :goto_75

    .line 4214
    :cond_67
    invoke-virtual {p5, v2}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v2

    goto :goto_61

    .line 4217
    :goto_6c
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/pm/PackageManagerInternal;->freeStorage(Ljava/lang/String;JI)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_71} :catch_65
    .catchall {:try_start_55 .. :try_end_71} :catchall_63

    .line 4221
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 4219
    :goto_75
    :try_start_75
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_7b
    .catchall {:try_start_75 .. :try_end_7b} :catchall_63

    .line 4221
    :goto_7b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4222
    throw p0
.end method

.method public benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .registers 5

    .line 2502
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->benchmark_enforcePermission()V

    .line 2505
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$9;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$9;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 2535
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final checkChargeStatus()Z
    .registers 7

    .line 2887
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2888
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 2890
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mChargingRequired:Z

    const/4 v2, 0x0

    const-string v3, "StorageManagerService"

    const/4 v4, -0x1

    if-eqz v1, :cond_29

    .line 2891
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_29

    const/4 v5, 0x5

    if-eq v1, v5, :cond_29

    .line 2894
    const-string p0, "Battery is not being charged"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2899
    :cond_29
    const-string/jumbo v1, "level"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2900
    const-string/jumbo v5, "scale"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 2903
    iget v0, p0, Lcom/android/server/StorageManagerService;->mLowBatteryLevel:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_62

    .line 2904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery level is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", which is lower than threshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/StorageManagerService;->mLowBatteryLevel:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_62
    const/4 p0, 0x1

    return p0
.end method

.method public commitChanges()V
    .registers 3

    .line 3298
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_14

    .line 3301
    const-string/jumbo v0, "vold#commitChanges might be slow"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 3302
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0}, Landroid/os/IVold;->commitChanges()V

    return-void

    .line 3299
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "no permission to commit checkpoint changes"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final completeUnlockUser(I)V
    .registers 9

    const/4 v0, 0x0

    .line 1244
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->onKeyguardStateChanged(Z)V

    .line 1248
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1249
    :try_start_7
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v3, v2

    move v4, v0

    :goto_b
    if-ge v4, v3, :cond_2e

    aget v5, v2, v4

    if-ne v5, p1, :cond_2b

    .line 1252
    const-string p0, "StorageManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeUnlockUser called for already unlocked user:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    monitor-exit v1

    return-void

    :catchall_29
    move-exception p0

    goto :goto_7c

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_2e
    move v2, v0

    .line 1256
    :goto_2f
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_6f

    .line 1257
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/storage/WatchedVolumeInfo;

    .line 1258
    invoke-virtual {v3, p1}, Lcom/android/server/storage/WatchedVolumeInfo;->isVisibleForUser(I)Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-virtual {v3}, Lcom/android/server/storage/WatchedVolumeInfo;->isMountedReadable()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 1259
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v0}, Lcom/android/server/storage/WatchedVolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 1260
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1262
    invoke-virtual {v3}, Lcom/android/server/storage/WatchedVolumeInfo;->getState()I

    move-result v3

    invoke-static {v3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v3

    .line 1263
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v3, v3}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyStorageStateChanged(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 1266
    :cond_6f
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1267
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_7 .. :try_end_78} :catchall_29

    .line 1272
    invoke-static {}, Landroid/os/storage/StorageManager;->invalidateVolumeListCache()V

    return-void

    .line 1267
    :goto_7c
    :try_start_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_29

    throw p0
.end method

.method public final configureTranscoding()V
    .registers 4

    .line 1027
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->isHevcDecoderSupported()Z

    move-result v0

    .line 1029
    const-string/jumbo v1, "persist.sys.fuse.transcode_user_control"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1030
    const-string/jumbo v1, "persist.sys.fuse.transcode_enabled"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_20

    .line 1033
    :cond_16
    const-string/jumbo v1, "storage_native_boot"

    const-string/jumbo v2, "transcode_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1036
    :goto_20
    const-string/jumbo v1, "sys.fuse.transcode_enabled"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3d

    .line 1039
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    new-instance v1, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService-IA;)V

    .line 1040
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->registerAnrController(Landroid/app/AnrController;)V

    :cond_3d
    return-void
.end method

.method public final connectStoraged()V
    .registers 5

    .line 2077
    const-string/jumbo v0, "storaged"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2080
    :try_start_9
    new-instance v1, Lcom/android/server/StorageManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$5;-><init>(Lcom/android/server/StorageManagerService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    const/4 v0, 0x0

    :cond_14
    :goto_14
    if-eqz v0, :cond_1d

    .line 2094
    invoke-static {v0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    goto :goto_25

    .line 2096
    :cond_1d
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "storaged not found; trying again"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :goto_25
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    if-nez v0, :cond_38

    .line 2100
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3b

    .line 2104
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->onDaemonConnected()V

    :goto_3b
    return-void
.end method

.method public final connectVold()V
    .registers 5

    .line 2109
    const-string/jumbo v0, "vold"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 2112
    :try_start_a
    new-instance v2, Lcom/android/server/StorageManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$6;-><init>(Lcom/android/server/StorageManagerService;)V

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-object v0, v1

    .line 2125
    :cond_15
    :goto_15
    const-string v2, "StorageManagerService"

    if-eqz v0, :cond_31

    .line 2126
    invoke-static {v0}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 2128
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    invoke-interface {v0, v3}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_37

    :catch_27
    move-exception v0

    .line 2130
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 2131
    const-string/jumbo v1, "vold listener rejected; trying again"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 2134
    :cond_31
    const-string/jumbo v0, "vold not found; trying again"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    :goto_37
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    if-nez v0, :cond_4a

    .line 2138
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_50

    .line 2142
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->restoreCeUnlockedUsers()V

    .line 2143
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->onDaemonConnected()V

    :goto_50
    return-void
.end method

.method public disableAppDataIsolation(Ljava/lang/String;II)V
    .registers 8

    .line 3457
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_14

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_b

    goto :goto_14

    .line 3459
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "no permission to enable app visibility"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3461
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 3462
    invoke-virtual {v0, p1, p3}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 3463
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    .line 3465
    array-length v1, v0

    if-eqz v1, :cond_26

    goto :goto_2c

    :cond_26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3467
    :goto_2c
    :try_start_2c
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p3, p2, v0}, Landroid/os/IVold;->unmountAppStorageDirs(II[Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p0

    .line 3469
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4

    if-eqz p1, :cond_5

    .line 4514
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onFinished(ILandroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public final dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4

    if-eqz p1, :cond_5

    .line 4504
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onStatus(ILandroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 4719
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string p3, "StorageManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 4721
    :cond_b
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    const/16 v0, 0xa0

    invoke-direct {p1, p2, p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 4722
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 4723
    :try_start_17
    const-string p3, "Disks:"

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4724
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 p3, 0x0

    move v0, p3

    .line 4725
    :goto_21
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 4726
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 4727
    invoke-virtual {v1, p1}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :catchall_37
    move-exception p0

    goto/16 :goto_1eb

    .line 4729
    :cond_3a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4731
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4732
    const-string v0, "Volumes:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4733
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v0, p3

    .line 4734
    :goto_49
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_6d

    .line 4735
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/storage/WatchedVolumeInfo;

    .line 4736
    const-string/jumbo v2, "private"

    invoke-virtual {v1}, Lcom/android/server/storage/WatchedVolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    goto :goto_6a

    .line 4737
    :cond_67
    invoke-virtual {v1, p1}, Lcom/android/server/storage/WatchedVolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    :goto_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 4739
    :cond_6d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4741
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4742
    const-string v0, "Records:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4743
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4744
    :goto_7b
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p3, v0, :cond_91

    .line 4745
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 4746
    invoke-virtual {v0, p1}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_7b

    .line 4748
    :cond_91
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4750
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4751
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Primary storage UUID: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4753
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4754
    invoke-static {}, Landroid/os/storage/StorageManager;->getPrimaryStoragePathAndSize()Landroid/util/Pair;

    move-result-object p3

    if-nez p3, :cond_bc

    .line 4756
    const-string p3, "Internal storage total size: N/A"

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f0

    .line 4758
    :cond_bc
    const-string v0, "Internal storage ("

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4759
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4760
    const-string v0, ") total size: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4761
    iget-object v0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 4762
    const-string v0, " ("

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4763
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p3, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p3, v2, v3}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 4764
    const-string p3, " MiB)"

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4767
    :goto_f0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4768
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CE unlocked users: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4769
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "System unlocked users: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4770
    monitor-exit p2
    :try_end_124
    .catchall {:try_start_17 .. :try_end_124} :catchall_37

    .line 4772
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter p3

    .line 4773
    :try_start_127
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4774
    const-string/jumbo p2, "mObbMounts:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4775
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4776
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 4777
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 4778
    :goto_13d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_184

    .line 4779
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4781
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4782
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4783
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_180

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 4784
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_16e

    :catchall_17e
    move-exception p0

    goto :goto_1e9

    .line 4786
    :cond_180
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_13d

    .line 4788
    :cond_184
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4790
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4791
    const-string/jumbo p2, "mObbPathToStateMap:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4792
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4793
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 4794
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 4795
    :goto_19d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1bf

    .line 4796
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4797
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4798
    const-string v1, " -> "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4799
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_19d

    .line 4801
    :cond_1bf
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4802
    monitor-exit p3
    :try_end_1c3
    .catchall {:try_start_127 .. :try_end_1c3} :catchall_17e

    .line 4804
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter p2

    .line 4805
    :try_start_1c6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4806
    const-string p3, "Media cloud providers: "

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4807
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4808
    monitor-exit p2
    :try_end_1d4
    .catchall {:try_start_1c6 .. :try_end_1d4} :catchall_1e6

    .line 4810
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4811
    const-string p2, "Last maintenance: "

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4812
    iget-wide p2, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    invoke-static {p2, p3}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_1e6
    move-exception p0

    .line 4808
    :try_start_1e7
    monitor-exit p2
    :try_end_1e8
    .catchall {:try_start_1e7 .. :try_end_1e8} :catchall_1e6

    throw p0

    .line 4802
    :goto_1e9
    :try_start_1e9
    monitor-exit p3
    :try_end_1ea
    .catchall {:try_start_1e9 .. :try_end_1ea} :catchall_17e

    throw p0

    .line 4770
    :goto_1eb
    :try_start_1eb
    monitor-exit p2
    :try_end_1ec
    .catchall {:try_start_1eb .. :try_end_1ec} :catchall_37

    throw p0
.end method

.method public final enforceAdminUser()V
    .registers 4

    .line 1973
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 1974
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1976
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1978
    :try_start_13
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_29

    .line 1980
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_21

    return-void

    .line 1983
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only admin users can adopt sd cards"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_29
    move-exception p0

    .line 1980
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1981
    throw p0
.end method

.method public final enforceExternalStorageService()V
    .registers 2

    .line 3634
    const-string v0, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3635
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3636
    iget p0, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    if-ne v0, p0, :cond_12

    return-void

    .line 3637
    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only the ExternalStorageService is permitted"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforcePermission(Ljava/lang/String;)V
    .registers 2

    .line 1945
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final extendWatchdogTimeout(Ljava/lang/String;)V
    .registers 3

    .line 1276
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    const/16 v0, 0x7530

    .line 1277
    invoke-virtual {p0, v0, p1}, Lcom/android/server/Watchdog;->pauseWatchingMonitorsFor(ILjava/lang/String;)V

    .line 1278
    invoke-virtual {p0, v0, p1}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThreadFor(ILjava/lang/String;)V

    return-void
.end method

.method public final findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .registers 5

    .line 569
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    if-nez v1, :cond_1b

    .line 572
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 573
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 575
    :cond_1b
    :goto_1b
    monitor-exit v0

    return-object v1

    .line 576
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public final findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 6

    .line 526
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 527
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 528
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/storage/WatchedVolumeInfo;

    .line 529
    invoke-virtual {v2}, Lcom/android/server/storage/WatchedVolumeInfo;->getFsPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-virtual {v2}, Lcom/android/server/storage/WatchedVolumeInfo;->getFsPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 530
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Lcom/android/server/storage/WatchedVolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/VolumeRecord;

    monitor-exit v0

    return-object p0

    :catchall_32
    move-exception p0

    goto :goto_3a

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 533
    :cond_37
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_32

    throw p0
.end method

.method public final findStorageForUuidAsUser(Ljava/lang/String;I)Landroid/os/storage/VolumeInfo;
    .registers 6

    .line 552
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 553
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 554
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "emulated;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    return-object p0

    .line 555
    :cond_28
    const-string/jumbo v0, "primary_physical"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 556
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object p0

    return-object p0

    .line 558
    :cond_36
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-nez v0, :cond_54

    .line 560
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findStorageForUuidAsUser cannot find volumeUuid:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 563
    :cond_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "private"

    const-string v2, "emulated"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 564
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    return-object p0
.end method

.method public findVolumeByIdOrThrow(Ljava/lang/String;)Lcom/android/server/storage/WatchedVolumeInfo;
    .registers 4

    .line 516
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_3
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/WatchedVolumeInfo;

    if-eqz p0, :cond_11

    .line 519
    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_29

    .line 521
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_f

    .line 522
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No volume found for ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 521
    :goto_29
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_f

    throw p0
.end method

.method public fixupAppDir(Ljava/lang/String;)V
    .registers 7

    .line 3427
    sget-object v0, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3428
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "StorageManagerService"

    if-eqz v1, :cond_9c

    const/4 v1, 0x2

    .line 3429
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 3430
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asked to fixup an app dir without a userId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3434
    :cond_2a
    :try_start_2a
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x3

    .line 3435
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 3436
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_41} :catch_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_41} :catch_58

    .line 3438
    :try_start_41
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v1}, Landroid/os/IVold;->fixupAppDir(Ljava/lang/String;I)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_57} :catch_5c
    .catch Landroid/os/ServiceSpecificException; {:try_start_41 .. :try_end_57} :catch_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_57} :catch_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_57} :catch_58

    goto :goto_9b

    :catch_58
    move-exception p0

    goto :goto_72

    :catch_5a
    move-exception p0

    goto :goto_87

    :catch_5c
    move-exception p0

    .line 3440
    :try_start_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fixup app dir for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_71} :catch_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d .. :try_end_71} :catch_58

    goto :goto_9b

    .line 3445
    :goto_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find package to fixup app dir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9b

    .line 3443
    :goto_87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid userId in path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9b
    return-void

    .line 3448
    :cond_9c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Path "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid application-specific directory"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forgetAllVolumes()V
    .registers 7

    .line 2651
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->forgetAllVolumes_enforcePermission()V

    .line 2653
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2654
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 2655
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2656
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 2657
    iget-object v4, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 2658
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_35

    :catchall_33
    move-exception p0

    goto :goto_62

    .line 2660
    :cond_35
    :goto_35
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v3, v2}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeForgotten(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2662
    :cond_3d
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2664
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 2665
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2668
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2669
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 2670
    monitor-exit v0

    return-void

    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_7 .. :try_end_63} :catchall_33

    throw p0
.end method

.method public final forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2675
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1, p2}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 2677
    const-string p1, "StorageManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .registers 6

    .line 2625
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->forgetVolume_enforcePermission()V

    .line 2627
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2629
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2630
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    if-eqz v1, :cond_29

    .line 2631
    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 2632
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_4c

    .line 2634
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v1, p1}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeForgotten(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 2638
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 2639
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2640
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2643
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2644
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_9 .. :try_end_4d} :catchall_27

    throw p0
.end method

.method public format(Ljava/lang/String;)V
    .registers 5

    .line 2481
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->format_enforcePermission()V

    .line 2483
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Lcom/android/server/storage/WatchedVolumeInfo;

    move-result-object p1

    .line 2484
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    .line 2486
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "auto"

    invoke-interface {v1, p1, v2}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 2491
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->forgetVolume(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_20

    :cond_1f
    return-void

    :catch_20
    move-exception p0

    .line 2494
    const-string p1, "StorageManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public fstrim(ILandroid/os/IVoldTaskListener;)V
    .registers 5

    .line 2685
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->fstrim_enforcePermission()V

    .line 2692
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_18

    .line 2725
    :cond_10
    const-string p0, "StorageManagerService"

    const-string p1, "Skipping fstrim - block based checkpoint in progress"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2693
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$10;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$10;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p0

    .line 2728
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J
    .registers 16

    .line 4146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p2, v0, p3}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result p2

    .line 4148
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/StorageManager;

    .line 4149
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/StorageStatsManager;

    .line 4150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4156
    :try_start_20
    invoke-virtual {p3, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    and-int/lit8 v3, p2, 0x10

    const-wide/16 v4, 0x0

    if-nez v3, :cond_3b

    .line 4164
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    .line 4165
    invoke-virtual {p3, v2}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v8

    .line 4166
    invoke-virtual {p3, v2}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v10

    goto :goto_3e

    :catchall_37
    move-exception p0

    goto :goto_75

    :catch_39
    move-exception p0

    goto :goto_6f

    :cond_3b
    move-wide v6, v4

    move-wide v8, v6

    move-wide v10, v8

    :goto_3e
    and-int/lit8 v3, p2, 0x8

    if-nez v3, :cond_56

    .line 4170
    invoke-virtual {p0, p1}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 4171
    invoke-virtual {p0, p1}, Landroid/app/usage/StorageStatsManager;->getCacheBytes(Ljava/lang/String;)J

    move-result-wide p0

    .line 4172
    invoke-virtual {p3, v2, p2}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v2

    sub-long/2addr p0, v2

    .line 4173
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    goto :goto_57

    :cond_56
    move-wide p0, v4

    :goto_57
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_65

    add-long/2addr v6, p0

    sub-long/2addr v6, v10

    .line 4177
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_61} :catch_39
    .catchall {:try_start_20 .. :try_end_61} :catchall_37

    .line 4184
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :cond_65
    add-long/2addr v6, p0

    sub-long/2addr v6, v8

    .line 4179
    :try_start_67
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6b} :catch_39
    .catchall {:try_start_67 .. :try_end_6b} :catchall_37

    .line 4184
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    .line 4182
    :goto_6f
    :try_start_6f
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_37

    .line 4184
    :goto_75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4185
    throw p0
.end method

.method public final getAverageWriteAmount()I
    .registers 2

    .line 2863
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    iget p0, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    div-int/2addr v0, p0

    return v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;I)J
    .registers 6

    .line 4087
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 4088
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4090
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4092
    :try_start_13
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/StorageStatsManager;

    .line 4093
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide p0
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_25

    .line 4095
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_25
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4096
    throw p0
.end method

.method public getCacheSizeBytes(Ljava/lang/String;I)J
    .registers 6

    .line 4101
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 4102
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4104
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4106
    :try_start_13
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/StorageStatsManager;

    .line 4107
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/lang/String;I)Landroid/app/usage/StorageStats;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide p0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_25} :catch_2b
    .catchall {:try_start_13 .. :try_end_25} :catchall_29

    .line 4111
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_29
    move-exception p0

    goto :goto_32

    :catch_2b
    move-exception p0

    .line 4109
    :try_start_2c
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_29

    .line 4111
    :goto_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4112
    throw p0
.end method

.method public getCloudMediaProvider()Ljava/lang/String;
    .registers 8

    .line 3586
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3587
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3589
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3590
    :try_start_b
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3591
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_30

    const/4 v6, 0x0

    if-nez v0, :cond_18

    return-object v6

    :cond_18
    move-object v1, v0

    .line 3595
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 3597
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 3598
    invoke-virtual {p0, v0, v5, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    return-object v1

    :cond_2f
    :goto_2f
    return-object v6

    :catchall_30
    move-exception v0

    move-object p0, v0

    .line 3591
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_30

    throw p0
.end method

.method public final getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .registers 2

    .line 2243
    const-string/jumbo p0, "ro.vold.primary_physical"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 2244
    const-string/jumbo p0, "primary_physical"

    return-object p0

    .line 2246
    :cond_e
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object p0
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .registers 5

    .line 4054
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4055
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/DiskInfo;

    const/4 v2, 0x0

    .line 4056
    :goto_c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 4057
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 4059
    :cond_23
    monitor-exit v0

    return-object v1

    .line 4060
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_21

    throw p0
.end method

.method public getExternalStorageMountMode(ILjava/lang/String;)I
    .registers 3

    .line 4523
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->getExternalStorageMountMode_enforcePermission()V

    .line 4525
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getInternalStorageBlockDeviceSize()J
    .registers 5

    .line 3606
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mInternalStorageSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 3607
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->getStorageSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/StorageManagerService;->mInternalStorageSize:J

    .line 3610
    :cond_10
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mInternalStorageSize:J

    return-wide v0
.end method

.method public getInternalStorageRemainingLifetime()I
    .registers 5

    .line 3615
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "android.permission.ALLOCATE_AGGRESSIVE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 3621
    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v2

    .line 3622
    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v3

    .line 3616
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 3623
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0}, Landroid/os/IVold;->getStorageRemainingLifetime()I

    move-result p0

    return p0
.end method

.method public getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 10

    .line 3483
    const-string v0, "Unknown uid "

    invoke-static {}, Landroid/os/Binder;->getCallingUidOrThrow()I

    move-result v1

    .line 3486
    :try_start_6
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a4

    .line 3493
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v3, v1, v2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_a2

    const-string v3, "Only File Manager Apps permitted"

    if-eqz v2, :cond_9c

    .line 3503
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 3504
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-wide/16 v5, 0x0

    .line 3503
    invoke-interface {v0, p1, v5, v6, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 3509
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v2, :cond_45

    .line 3510
    const-string p0, "StorageManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t have a manageSpaceActivity"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_43} :catch_96

    const/4 p0, 0x0

    return-object p0

    .line 3519
    :cond_45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3521
    :try_start_49
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 3522
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 3521
    invoke-virtual {p0, p1, v4, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 3523
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3524
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 3526
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3528
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    const/4 v0, 0x2

    .line 3529
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 3534
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const/high16 v0, 0x54000000

    .line 3532
    invoke-static {p0, p2, v1, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_7b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_7b} :catch_81
    .catchall {:try_start_49 .. :try_end_7b} :catchall_7f

    .line 3540
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_7f
    move-exception p0

    goto :goto_8a

    .line 3537
    :catch_81
    :try_start_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8a
    .catchall {:try_start_81 .. :try_end_8a} :catchall_7f

    .line 3540
    :goto_8a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3541
    throw p0

    .line 3506
    :cond_8e
    :try_start_8e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid packageName"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_96} :catch_96

    .line 3514
    :catch_96
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3495
    :cond_9c
    :try_start_9c
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_a2
    move-exception p0

    goto :goto_b9

    .line 3488
    :cond_a4
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_b9} :catch_a2

    .line 3498
    :goto_b9
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getMountModeInternal(ILjava/lang/String;)I
    .registers 11

    const/4 v0, 0x0

    .line 4531
    :try_start_1
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-nez v1, :cond_a3

    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_a3

    .line 4535
    :cond_f
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 4536
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v0

    :cond_1c
    if-nez p2, :cond_20

    .line 4541
    aget-object p2, v1, v0

    .line 4544
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_24} :catch_a3

    .line 4546
    :try_start_24
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v4
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_9e

    if-eqz v4, :cond_34

    .line 4550
    :try_start_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_34
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4553
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->isExternalStorageService(I)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 p0, 0x3

    return p0

    .line 4560
    :cond_41
    iget v2, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/4 v4, 0x4

    if-eq v2, v3, :cond_9d

    iget v2, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    .line 4561
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v2, v3, :cond_53

    goto :goto_9d

    .line 4568
    :cond_53
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v3, "android.permission.ACCESS_MTP"

    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_72

    .line 4571
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 4572
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const-wide/16 v5, 0x0

    .line 4571
    invoke-interface {v2, p2, v5, v6, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_72

    .line 4573
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result p2

    if-eqz p2, :cond_72

    return v4

    .line 4581
    :cond_72
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    invoke-interface {p2, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_7f

    move p2, v2

    goto :goto_80

    :cond_7f
    move p2, v0

    .line 4588
    :goto_80
    array-length v3, v1

    move v4, v0

    :goto_82
    if-ge v4, v3, :cond_95

    aget-object v5, v1, v4

    .line 4589
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v7, 0x42

    invoke-interface {v6, v7, p1, v5}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_92

    move v0, v2

    goto :goto_95

    :cond_92
    add-int/lit8 v4, v4, 0x1

    goto :goto_82

    :cond_95
    :goto_95
    if-nez p2, :cond_9b

    if-eqz v0, :cond_9a

    goto :goto_9b

    :cond_9a
    return v2

    :cond_9b
    :goto_9b
    const/4 p0, 0x2

    return p0

    :cond_9d
    :goto_9d
    return v4

    :catchall_9e
    move-exception p0

    .line 4550
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4551
    throw p0
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_a3} :catch_a3

    :catch_a3
    :cond_a3
    :goto_a3
    return v0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 3167
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3169
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 3172
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 3173
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 3174
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_3e

    if-nez v1, :cond_2f

    .line 3176
    const-string p0, "StorageManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find OBB mounted at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3180
    :cond_2f
    iget-object p1, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Lcom/android/server/storage/WatchedVolumeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/storage/WatchedVolumeInfo;->getPath()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_3e
    move-exception p0

    .line 3174
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .registers 2

    .line 3048
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3049
    :try_start_3
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3050
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;
    .registers 8

    .line 2173
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 p0, 0x0

    .line 2176
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v5, 0x3e8

    const-wide/32 v2, 0xc0000

    move-object v1, p1

    .line 2173
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .registers 37

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 3832
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3833
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 3835
    invoke-virtual {v0, v2, v4}, Lcom/android/server/StorageManagerService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2e8

    if-eq v5, v1, :cond_21

    .line 3840
    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    const-string v7, "Need INTERACT_ACROSS_USERS to get volumes for another user"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    and-int/lit16 v5, v3, 0x100

    const/4 v7, 0x0

    if-eqz v5, :cond_28

    const/4 v5, 0x1

    goto :goto_29

    :cond_28
    move v5, v7

    :goto_29
    and-int/lit16 v8, v3, 0x200

    if-eqz v8, :cond_2f

    const/4 v8, 0x1

    goto :goto_30

    :cond_2f
    move v8, v7

    :goto_30
    and-int/lit16 v9, v3, 0x400

    if-eqz v9, :cond_36

    const/4 v9, 0x1

    goto :goto_37

    :cond_36
    move v9, v7

    :goto_37
    and-int/lit16 v10, v3, 0x800

    if-eqz v10, :cond_3d

    const/4 v10, 0x1

    goto :goto_3e

    :cond_3d
    move v10, v7

    :goto_3e
    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_44

    const/4 v3, 0x1

    goto :goto_45

    :cond_44
    move v3, v7

    .line 3856
    :goto_45
    iget v11, v0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    invoke-static {v4, v11}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v11

    if-eqz v3, :cond_9a

    .line 3864
    :try_start_4d
    iget-object v12, v0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v12, v4}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6c

    if-nez v11, :cond_9a

    .line 3875
    iget-object v13, v0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    aget-object v12, v12, v7

    .line 3876
    invoke-virtual {v13, v4, v12}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_62

    goto :goto_9a

    .line 3878
    :cond_62
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only File Manager Apps permitted"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6a
    move-exception v0

    goto :goto_83

    .line 3866
    :cond_6c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_83} :catch_6a

    .line 3881
    :goto_83
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3893
    :cond_9a
    :goto_9a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3895
    :try_start_9e
    const-class v14, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v14}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/UserManagerInternal;

    .line 3896
    invoke-virtual {v14, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v14

    .line 3897
    iget v15, v14, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v6, -0x2710

    if-eq v15, v6, :cond_b1

    goto :goto_b2

    :cond_b1
    move v15, v1

    .line 3899
    :goto_b2
    invoke-virtual {v0, v15}, Lcom/android/server/StorageManagerService;->isSystemUnlocked(I)Z

    move-result v6

    .line 3900
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v14

    .line 3901
    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-virtual {v15, v4, v2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v2

    .line 3903
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/StorageManagerService;->isCeStorageUnlocked(I)Z

    move-result v4
    :try_end_c4
    .catchall {:try_start_9e .. :try_end_c4} :catchall_2e3

    .line 3905
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3910
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3911
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 3912
    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Landroid/util/SparseIntArray;

    const/4 v7, -0x1

    invoke-virtual {v15, v1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 3913
    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    move/from16 p2, v2

    move/from16 p3, v3

    const/4 v2, 0x0

    const/16 v16, 0x0

    .line 3914
    :goto_e2
    :try_start_e2
    iget-object v3, v0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_216

    .line 3915
    iget-object v3, v0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v17, v4

    .line 3916
    iget-object v4, v0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/storage/WatchedVolumeInfo;

    move/from16 v18, v2

    .line 3917
    invoke-virtual {v4}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result v2

    move/from16 v19, v5

    const/4 v5, 0x2

    if-eqz v2, :cond_120

    if-eq v2, v5, :cond_10d

    const/4 v5, 0x5

    if-eq v2, v5, :cond_120

    goto :goto_15a

    .line 3922
    :cond_10d
    invoke-virtual {v4}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v2

    if-ne v2, v1, :cond_114

    goto :goto_120

    :cond_114
    if-eqz p3, :cond_15a

    .line 3925
    invoke-virtual {v4}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v2

    if-ne v2, v7, :cond_15a

    goto :goto_120

    :catchall_11d
    move-exception v0

    goto/16 :goto_2e1

    :cond_120
    :goto_120
    if-eqz v19, :cond_131

    .line 3938
    invoke-virtual {v4, v1}, Lcom/android/server/storage/WatchedVolumeInfo;->isVisibleForWrite(I)Z

    move-result v2

    if-nez v2, :cond_15e

    if-eqz p3, :cond_15a

    .line 3939
    invoke-virtual {v4, v7}, Lcom/android/server/storage/WatchedVolumeInfo;->isVisibleForWrite(I)Z

    move-result v2

    if-eqz v2, :cond_15a

    goto :goto_15e

    .line 3946
    :cond_131
    invoke-virtual {v4, v1}, Lcom/android/server/storage/WatchedVolumeInfo;->isVisibleForUser(I)Z

    move-result v2

    if-nez v2, :cond_15e

    .line 3947
    invoke-virtual {v4}, Lcom/android/server/storage/WatchedVolumeInfo;->isVisible()Z

    move-result v2

    if-nez v2, :cond_145

    if-eqz v9, :cond_145

    invoke-virtual {v4}, Lcom/android/server/storage/WatchedVolumeInfo;->getPath()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_15e

    .line 3948
    :cond_145
    invoke-virtual {v4}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_151

    .line 3949
    invoke-virtual {v4, v7}, Lcom/android/server/storage/WatchedVolumeInfo;->isVisibleForUser(I)Z

    move-result v2

    if-nez v2, :cond_15e

    :cond_151
    if-eqz p3, :cond_15a

    .line 3950
    invoke-virtual {v4, v7}, Lcom/android/server/storage/WatchedVolumeInfo;->isVisibleForUser(I)Z

    move-result v2

    if-eqz v2, :cond_15a

    goto :goto_15e

    :cond_15a
    :goto_15a
    move/from16 v21, v6

    goto/16 :goto_20c

    :cond_15e
    :goto_15e
    if-eqz v11, :cond_164

    move/from16 v21, v6

    goto/16 :goto_1d6

    :cond_164
    if-nez v6, :cond_185

    .line 3962
    const-string v2, "StorageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v6

    const-string v6, "Reporting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " unmounted due to system locked"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_183
    const/4 v2, 0x1

    goto :goto_1d7

    :cond_185
    move/from16 v21, v6

    .line 3963
    invoke-virtual {v4}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1b5

    if-nez v17, :cond_1b5

    .line 3965
    const-string v2, "StorageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reporting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unmounted due to "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " locked"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_183

    :cond_1b5
    if-nez p2, :cond_1d6

    if-nez v8, :cond_1d6

    .line 3967
    const-string v2, "StorageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reporting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unmounted due to missing permissions"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_183

    :cond_1d6
    :goto_1d6
    const/4 v2, 0x0

    .line 3972
    :goto_1d7
    invoke-virtual {v4}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v3

    if-eq v1, v3, :cond_1e8

    invoke-virtual {v4}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v3

    if-ltz v3, :cond_1e8

    .line 3973
    invoke-virtual {v4}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v3

    goto :goto_1e9

    :cond_1e8
    move v3, v1

    .line 3975
    :goto_1e9
    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3, v2}, Lcom/android/server/storage/WatchedVolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 3977
    invoke-virtual {v4}, Lcom/android/server/storage/WatchedVolumeInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_202

    invoke-virtual {v4}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v3

    if-ne v3, v1, :cond_202

    const/4 v3, 0x0

    .line 3978
    invoke-virtual {v12, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v16, 0x1

    goto :goto_205

    .line 3981
    :cond_202
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3983
    :goto_205
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_20c
    add-int/lit8 v2, v18, 0x1

    move/from16 v4, v17

    move/from16 v5, v19

    move/from16 v6, v21

    goto/16 :goto_e2

    :cond_216
    if-eqz v10, :cond_259

    .line 3987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    const/4 v4, 0x0

    .line 3988
    :goto_221
    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_259

    .line 3989
    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeRecord;

    .line 3992
    iget-object v6, v5, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v13, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23a

    goto :goto_256

    .line 3995
    :cond_23a
    iget-wide v6, v5, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_256

    cmp-long v6, v6, v2

    if-ltz v6, :cond_256

    .line 3996
    iget-object v6, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/os/storage/VolumeRecord;->buildStorageVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 3997
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3998
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_256
    :goto_256
    add-int/lit8 v4, v4, 0x1

    goto :goto_221

    .line 4002
    :cond_259
    monitor-exit v15
    :try_end_25a
    .catchall {:try_start_e2 .. :try_end_25a} :catchall_11d

    const v2, 0x104000e

    if-eqz v14, :cond_291

    .line 4008
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsMediaDirectory()Ljava/io/File;

    move-result-object v19

    .line 4015
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 4017
    iget-object v4, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 4019
    new-instance v17, Landroid/os/storage/StorageVolume;

    const-string v18, "demo"

    const-string v31, "demo"

    const-string/jumbo v32, "mounted_ro"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v30, 0x0

    move-object/from16 v20, v19

    move-object/from16 v29, v3

    invoke-direct/range {v17 .. v32}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v17

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_291
    if-nez v16, :cond_2d4

    .line 4025
    const-string v3, "StorageManagerService"

    const-string v4, "No primary storage defined yet; hacking together a stub"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    const-string/jumbo v3, "ro.vold.primary_physical"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 4031
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    .line 4032
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    xor-int/lit8 v23, v22, 0x1

    .line 4039
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 4044
    new-instance v16, Landroid/os/storage/StorageVolume;

    const-string/jumbo v17, "stub_primary"

    const-wide/16 v26, 0x0

    const-string/jumbo v31, "removed"

    const/16 v21, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v19, v18

    move-object/from16 v28, v0

    invoke-direct/range {v16 .. v31}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    const/4 v3, 0x0

    invoke-virtual {v12, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4049
    :cond_2d4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/StorageVolume;

    return-object v0

    .line 4002
    :goto_2e1
    :try_start_2e1
    monitor-exit v15
    :try_end_2e2
    .catchall {:try_start_2e1 .. :try_end_2e2} :catchall_11d

    throw v0

    :catchall_2e3
    move-exception v0

    .line 3905
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3906
    throw v0

    .line 3836
    :cond_2e8
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "callingPackage does not match UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .registers 5

    .line 4076
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4077
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/VolumeRecord;

    const/4 v1, 0x0

    .line 4078
    :goto_c
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 4079
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 4081
    :cond_23
    monitor-exit p1

    return-object v0

    .line 4082
    :goto_25
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_21

    throw p0
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .registers 5

    .line 4065
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4066
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/VolumeInfo;

    const/4 v1, 0x0

    .line 4067
    :goto_c
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 4068
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/storage/WatchedVolumeInfo;

    invoke-virtual {v2}, Lcom/android/server/storage/WatchedVolumeInfo;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :catchall_25
    move-exception p0

    goto :goto_29

    .line 4070
    :cond_27
    monitor-exit p1

    return-object v0

    .line 4071
    :goto_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_25

    throw p0
.end method

.method public final handleBootCompleted()V
    .registers 1

    .line 2239
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    return-void
.end method

.method public final handleDaemonConnected()V
    .registers 1

    .line 1451
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    return-void
.end method

.method public final handleSystemReady()V
    .registers 5

    .line 944
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->prepareSmartIdleMaint()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 945
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    invoke-static {v0, v1}, Lcom/android/server/SmartStorageMaintIdler;->scheduleSmartIdlePass(Landroid/content/Context;I)V

    .line 949
    :cond_d
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 955
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zram_enabled"

    .line 956
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/StorageManagerService$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$2;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Handler;)V

    const/4 v3, 0x0

    .line 955
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 964
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    .line 967
    const-string/jumbo v0, "persist.sys.zram_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 968
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 969
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11102e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 971
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 975
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->configureTranscoding()V

    return-void
.end method

.method public final isAppIoBlocked(I)Z
    .registers 2

    .line 3565
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->isAppIoBlocked(I)Z

    move-result p0

    return p0
.end method

.method public isAppIoBlocked(Ljava/lang/String;III)Z
    .registers 5

    .line 3561
    invoke-virtual {p0, p2}, Lcom/android/server/StorageManagerService;->isAppIoBlocked(I)Z

    move-result p0

    return p0
.end method

.method public final isBroadcastWorthy(Lcom/android/server/storage/WatchedVolumeInfo;)Z
    .registers 6

    .line 1696
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p0, :cond_11

    if-eq p0, v3, :cond_11

    if-eq p0, v2, :cond_11

    if-eq p0, v1, :cond_11

    return v0

    .line 1706
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getState()I

    move-result p0

    if-eqz p0, :cond_26

    const/16 p1, 0x8

    if-eq p0, p1, :cond_26

    if-eq p0, v2, :cond_26

    const/4 p1, 0x3

    if-eq p0, p1, :cond_26

    if-eq p0, v1, :cond_26

    const/4 p1, 0x6

    if-eq p0, p1, :cond_26

    return v0

    :cond_26
    return v3
.end method

.method public isCeStorageUnlocked(I)Z
    .registers 3

    .line 3359
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3360
    :try_start_3
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->contains(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 3361
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isHevcDecoderSupported()Z
    .registers 9

    .line 1008
    new-instance p0, Landroid/media/MediaCodecList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 1009
    invoke-virtual {p0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object p0

    .line 1010
    array-length v1, p0

    move v2, v0

    :goto_c
    if-ge v2, v1, :cond_32

    aget-object v3, p0, v2

    .line 1011
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_2f

    .line 1014
    :cond_17
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    .line 1015
    array-length v4, v3

    move v5, v0

    :goto_1d
    if-ge v5, v4, :cond_2f

    aget-object v6, v3, v5

    .line 1016
    const-string/jumbo v7, "video/hevc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_32
    return v0
.end method

.method public final isMountDisallowed(Lcom/android/server/storage/WatchedVolumeInfo;)Z
    .registers 7

    .line 1952
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 1953
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 1956
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1957
    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    goto :goto_2c

    :cond_2b
    move v1, v2

    .line 1962
    :goto_2c
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_43

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result v3

    if-eq v3, v4, :cond_43

    .line 1963
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result p1

    const/4 v3, 0x5

    if-ne p1, v3, :cond_41

    goto :goto_43

    :cond_41
    move p0, v2

    goto :goto_4a

    .line 1964
    :cond_43
    :goto_43
    const-string/jumbo p1, "no_physical_media"

    .line 1965
    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    :goto_4a
    if-nez v1, :cond_50

    if-eqz p0, :cond_4f

    goto :goto_50

    :cond_4f
    return v2

    :cond_50
    :goto_50
    return v4
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 3

    .line 3185
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3186
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 3187
    :try_start_9
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 3188
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public isPassedLifetimeThresh()Z
    .registers 1

    .line 2839
    iget-boolean p0, p0, Lcom/android/server/StorageManagerService;->mPassedLifetimeThresh:Z

    return p0
.end method

.method public final isSystemUnlocked(I)Z
    .registers 3

    .line 3365
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3366
    :try_start_3
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 3367
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 4

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 3162
    :cond_6
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$connectStoraged$2()V
    .registers 1

    .line 2101
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    return-void
.end method

.method public final synthetic lambda$connectVold$3()V
    .registers 1

    .line 2139
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    return-void
.end method

.method public final synthetic lambda$onVolumeStateChangedLocked$1(ILcom/android/server/storage/WatchedVolumeInfo;)V
    .registers 6

    if-nez p1, :cond_d

    .line 1735
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_d

    .line 1737
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->migrateLegacyObbData()V

    .line 1742
    :cond_d
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1743
    :try_start_10
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1744
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_4d

    const/4 v0, 0x0

    :goto_1b
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3e

    .line 1752
    :try_start_1e
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 1753
    invoke-virtual {p2}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->getProcessesWithPendingBindMounts(I)Ljava/util/Map;

    move-result-object p2
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_2e} :catch_2f

    goto :goto_3f

    .line 1756
    :catch_2f
    const-string v1, "StorageManagerService"

    const-string v2, "Some processes are starting, retry"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x64

    .line 1758
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_3e
    const/4 p2, 0x0

    :goto_3f
    if-eqz p2, :cond_45

    .line 1762
    invoke-virtual {p0, p2, p1}, Lcom/android/server/StorageManagerService;->remountAppStorageDirs(Ljava/util/Map;I)V

    goto :goto_4c

    .line 1764
    :cond_45
    const-string p0, "StorageManagerService"

    const-string p1, "Not able to getStorageNotOptimizedProcesses() after 5 retries"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    return-void

    :catchall_4d
    move-exception p0

    .line 1744
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public final synthetic lambda$resetIfBootedAndConnected$0()V
    .registers 2

    .line 1111
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public lastMaintenance()J
    .registers 3

    .line 1442
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method public final loadStorageWriteRecords()V
    .registers 5

    const/4 v0, 0x0

    .line 2846
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 2847
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2849
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 2850
    sget v3, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    if-ne v2, v3, :cond_21

    .line 2851
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1c} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1f
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception p0

    goto :goto_30

    :catch_1f
    move-exception p0

    goto :goto_25

    .line 2858
    :cond_21
    :goto_21
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .line 2856
    :goto_25
    :try_start_25
    const-string v1, "StorageManagerService"

    const-string v2, "Failed reading write records"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_1d

    .line 2858
    :catch_2c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_34

    :goto_30
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2859
    throw p0

    :goto_34
    return-void
.end method

.method public lockCeStorage(I)V
    .registers 4

    .line 3332
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->lockCeStorage_enforcePermission()V

    if-nez p1, :cond_14

    .line 3336
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_14

    .line 3337
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Headless system user data cannot be locked.."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3340
    :cond_14
    :goto_14
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isCeStorageUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 3341
    const-string p0, "StorageManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'s CE storage is already locked"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3346
    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->lockCeStorage(I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_48

    .line 3352
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3353
    :try_start_3e
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->remove(I)V

    .line 3354
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_45

    throw p0

    :catch_48
    move-exception p0

    .line 3348
    const-string p1, "StorageManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final maybeLogMediaMount(Lcom/android/server/storage/WatchedVolumeInfo;I)V
    .registers 4

    .line 1892
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_49

    .line 1896
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 1897
    iget v0, p0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_14

    goto :goto_49

    .line 1902
    :cond_14
    iget-object p0, p0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    :cond_1d
    const-string p0, ""

    :goto_1f
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3b

    const/4 v0, 0x3

    if-ne p2, v0, :cond_26

    goto :goto_3b

    :cond_26
    if-eqz p2, :cond_2c

    const/16 v0, 0x8

    if-ne p2, v0, :cond_49

    .line 1909
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getFsPath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x3345e

    invoke-static {p1, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void

    .line 1906
    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getFsPath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x3345d

    invoke-static {p1, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_49
    :goto_49
    return-void
.end method

.method public final maybeRemountVolumes(I)V
    .registers 10

    .line 1315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    .line 1318
    :goto_f
    :try_start_f
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_4e

    .line 1319
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/storage/WatchedVolumeInfo;

    .line 1320
    invoke-virtual {v5}, Lcom/android/server/storage/WatchedVolumeInfo;->isPrimary()Z

    move-result v6

    if-nez v6, :cond_4b

    invoke-virtual {v5}, Lcom/android/server/storage/WatchedVolumeInfo;->isMountedWritable()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-virtual {v5}, Lcom/android/server/storage/WatchedVolumeInfo;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1321
    invoke-virtual {v5}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v6

    iget v7, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-eq v6, v7, :cond_4b

    .line 1325
    invoke-virtual {v5}, Lcom/android/server/storage/WatchedVolumeInfo;->getClonedImmutableVolumeInfo()Lcom/android/server/storage/ImmutableVolumeInfo;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1326
    iget v6, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Lcom/android/server/storage/WatchedVolumeInfo;->setMountUserId(I)V

    .line 1327
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :catchall_49
    move-exception p0

    goto :goto_98

    :cond_4b
    :goto_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1330
    :cond_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_f .. :try_end_4f} :catchall_49

    .line 1332
    :goto_4f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_97

    .line 1333
    const-string v2, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remounting volume for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". Volume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1333
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1336
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_97
    return-void

    .line 1330
    :goto_98
    :try_start_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_49

    throw p0
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 3760
    const-string v0, ": "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3761
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sys.user."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".ce_available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3765
    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->isCeStorageUnlocked(I)Z

    move-result v4

    const-string v5, "Failed to prepare "

    if-eqz v4, :cond_176

    if-nez v2, :cond_48

    const/4 v4, 0x0

    .line 3771
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_48

    .line 3772
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3776
    :cond_48
    :goto_48
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 3778
    invoke-virtual {v3, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3781
    :try_start_55
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    const/4 v6, 0x0

    .line 3782
    invoke-virtual {v3, v4, p1, v6, v2}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v3

    if-eqz v3, :cond_85

    .line 3784
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v3

    if-nez v3, :cond_6b

    goto :goto_85

    .line 3785
    :cond_6b
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " should not have "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_85
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_85} :catch_85

    .line 3793
    :catch_85
    :cond_85
    :goto_85
    :try_start_85
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p2
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8e} :catch_158

    .line 3798
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 3799
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a9

    .line 3800
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3804
    :cond_a9
    sget-object v4, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 3805
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    const-string v7, "Invalid mkdirs path: "

    if-eqz v6, :cond_13e

    const/4 v6, 0x3

    .line 3807
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_121

    const/4 p1, 0x2

    .line 3813
    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d7

    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e2

    .line 3814
    :cond_d7
    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_ff

    iget p1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-ne v2, p1, :cond_e2

    goto :goto_ff

    .line 3815
    :cond_e2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not match calling user id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3819
    :cond_ff
    :goto_ff
    :try_start_ff
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, v3, v1}, Landroid/os/IVold;->setupAppDir(Ljava/lang/String;I)V
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_ff .. :try_end_104} :catch_105

    return-void

    :catch_105
    move-exception p0

    .line 3821
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3808
    :cond_121
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not contain calling package "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3826
    :cond_13e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not a known app path."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_158
    move-exception p0

    .line 3795
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3766
    :cond_176
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public monitor()V
    .registers 2

    .line 4819
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0}, Landroid/os/IVold;->monitor()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 4821
    const-string v0, "StorageManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final mount(Lcom/android/server/storage/WatchedVolumeInfo;)V
    .registers 10

    .line 2406
    const-string v0, "StorageManagerService"

    const-wide/32 v1, 0x80000

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS.mount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mounting volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    const-string v3, "#mount might be slow"

    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 2410
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountFlags()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v6

    new-instance v7, Lcom/android/server/StorageManagerService$8;

    invoke-direct {v7, p0, p1}, Lcom/android/server/StorageManagerService$8;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/storage/WatchedVolumeInfo;)V

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/os/IVold;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 2442
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mounted volume "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_60} :catch_66
    .catchall {:try_start_5 .. :try_end_60} :catchall_64

    .line 2446
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_64
    move-exception p0

    goto :goto_6e

    :catch_66
    move-exception p0

    .line 2444
    :try_start_67
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_64

    .line 2446
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_6e
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2447
    throw p0
.end method

.method public mount(Ljava/lang/String;)V
    .registers 4

    .line 2376
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->mount_enforcePermission()V

    .line 2378
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Lcom/android/server/storage/WatchedVolumeInfo;

    move-result-object v0

    .line 2379
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->updateVolumeMountIdIfRequired(Lcom/android/server/storage/WatchedVolumeInfo;)V

    .line 2380
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Lcom/android/server/storage/WatchedVolumeInfo;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 2383
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->mount(Lcom/android/server/storage/WatchedVolumeInfo;)V

    return-void

    .line 2381
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mounting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " restricted by policy"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V
    .registers 15

    .line 3194
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3195
    const-string v0, "canonicalPath cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3196
    const-string/jumbo v0, "token cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3197
    const-string/jumbo v0, "obbInfo cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3199
    invoke-virtual {p0, p5, p1}, Lcom/android/server/StorageManagerService;->validateObbInfo(Landroid/content/res/ObbInfo;Ljava/lang/String;)V

    .line 3201
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3202
    new-instance v1, Lcom/android/server/StorageManagerService$ObbState;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    .line 3204
    new-instance p0, Lcom/android/server/StorageManagerService$MountObbAction;

    invoke-direct {p0, v2, v1, v5, p5}, Lcom/android/server/StorageManagerService$MountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;ILandroid/content/res/ObbInfo;)V

    .line 3205
    iget-object p1, v2, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;
    .registers 8

    .line 3704
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptorBridge"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3708
    :goto_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3710
    :try_start_f
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v2, :cond_2a

    .line 3711
    new-instance v2, Lcom/android/server/storage/AppFuseBridge;

    invoke-direct {v2}, Lcom/android/server/storage/AppFuseBridge;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 3712
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    const-string v4, "AppFuseBridge"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_28

    const/4 v2, 0x1

    goto :goto_2b

    :catchall_28
    move-exception p0

    goto :goto_5b

    :cond_2a
    const/4 v2, 0x0

    .line 3716
    :goto_2b
    :try_start_2b
    iget v3, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I
    :try_end_31
    .catch Lcom/android/server/AppFuseMountException; {:try_start_2b .. :try_end_31} :catch_43
    .catchall {:try_start_2b .. :try_end_31} :catchall_28

    .line 3718
    :try_start_31
    new-instance v4, Lcom/android/internal/os/AppFuseMount;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    new-instance v6, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    invoke-direct {v6, p0, v0, v3}, Lcom/android/server/StorageManagerService$AppFuseMountScope;-><init>(Lcom/android/server/StorageManagerService;II)V

    .line 3719
    invoke-virtual {v5, v6}, Lcom/android/server/storage/AppFuseBridge;->addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/android/internal/os/AppFuseMount;-><init>(ILandroid/os/ParcelFileDescriptor;)V
    :try_end_41
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_31 .. :try_end_41} :catch_45
    .catch Lcom/android/server/AppFuseMountException; {:try_start_31 .. :try_end_41} :catch_43
    .catchall {:try_start_31 .. :try_end_41} :catchall_28

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_28

    return-object v4

    :catch_43
    move-exception p0

    goto :goto_56

    :catch_45
    move-exception v3

    const/4 v4, 0x0

    if-eqz v2, :cond_52

    .line 3723
    :try_start_49
    const-string p0, "StorageManagerService"

    const-string v0, ""

    invoke-static {p0, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catch Lcom/android/server/AppFuseMountException; {:try_start_49 .. :try_end_50} :catch_43
    .catchall {:try_start_49 .. :try_end_50} :catchall_28

    .line 3724
    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_28

    return-object v4

    .line 3727
    :cond_52
    :try_start_52
    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    :try_end_54
    .catch Lcom/android/server/AppFuseMountException; {:try_start_52 .. :try_end_54} :catch_43
    .catchall {:try_start_52 .. :try_end_54} :catchall_28

    .line 3732
    :try_start_54
    monitor-exit v1

    goto :goto_c

    .line 3730
    :goto_56
    invoke-virtual {p0}, Lcom/android/server/AppFuseMountException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 3732
    :goto_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_28

    throw p0
.end method

.method public needsCheckpoint()Z
    .registers 1

    .line 3311
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->needsCheckpoint_enforcePermission()V

    .line 3313
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result p0

    return p0
.end method

.method public notifyAppIoBlocked(Ljava/lang/String;III)V
    .registers 5

    .line 3546
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceExternalStorageService()V

    .line 3548
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageSessionController;->notifyAppIoBlocked(Ljava/lang/String;III)V

    return-void
.end method

.method public notifyAppIoResumed(Ljava/lang/String;III)V
    .registers 5

    .line 3553
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceExternalStorageService()V

    .line 3555
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageSessionController;->notifyAppIoResumed(Ljava/lang/String;III)V

    return-void
.end method

.method public final notifyCloudMediaProviderChangedAsync(Lcom/android/server/StorageManagerInternal$CloudProviderChangeListener;)V
    .registers 6

    .line 1874
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1875
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_23

    .line 1876
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1877
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1878
    invoke-interface {p1, v2, v3}, Lcom/android/server/StorageManagerInternal$CloudProviderChangeListener;->onCloudProviderChanged(ILjava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 1880
    :cond_23
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_21

    throw p0
.end method

.method public onAwakeStateChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public final onCloudMediaProviderChangedAsync(ILjava/lang/String;)V
    .registers 4

    .line 1886
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-static {p0}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->-$$Nest$fgetmCloudProviderChangeListeners(Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerInternal$CloudProviderChangeListener;

    .line 1887
    invoke-interface {v0, p1, p2}, Lcom/android/server/StorageManagerInternal$CloudProviderChangeListener;->onCloudProviderChanged(ILjava/lang/String;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public onDaemonConnected()V
    .registers 2

    const/4 v0, 0x1

    .line 1446
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 1447
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 1594
    :goto_2
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 1595
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/storage/WatchedVolumeInfo;

    .line 1596
    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/storage/WatchedVolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    add-int/lit8 v1, v1, 0x1

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1601
    :cond_23
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.os.storage.action.DISK_SCANNED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x5000000

    .line 1602
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1604
    const-string v2, "android.os.storage.extra.DISK_ID"

    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1605
    const-string v2, "android.os.storage.extra.VOLUME_COUNT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1606
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1608
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_54

    .line 1610
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1613
    :cond_54
    iput v1, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 1614
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {p0, p1, v1}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyDiskScanned(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 3

    if-eqz p1, :cond_16

    .line 1418
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    .line 1419
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    invoke-virtual {p1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 1420
    :goto_17
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    if-eq v0, p1, :cond_2e

    .line 1421
    iput-boolean p1, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 1422
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean p0, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v0, 0x11

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1423
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2e
    return-void
.end method

.method public final onMoveStatusLocked(I)V
    .registers 7

    .line 1915
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    const-string v1, "StorageManagerService"

    if-nez v0, :cond_c

    .line 1916
    const-string p0, "Odd, status but no move requested"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    .line 1922
    :try_start_f
    invoke-interface {v0, v2, p1, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_12

    :catch_12
    const/16 v0, 0x52

    .line 1928
    const-string v2, "Move to "

    if-ne p1, v0, :cond_43

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " copy phase finshed; persisting"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1932
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1933
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1936
    :cond_43
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finished with status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1939
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 1940
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    :cond_6a
    return-void
.end method

.method public final onUserStopped(I)V
    .registers 5

    .line 1282
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserStopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const-string v0, "#onUserStopped might be slow"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 1286
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStopped(I)V

    .line 1287
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStopped(I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v0

    .line 1289
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1292
    :goto_2d
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1293
    :try_start_30
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1294
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final onUserStopping(I)V
    .registers 4

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserStopping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :try_start_17
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v0, p1}, Lcom/android/server/storage/StorageSessionController;->onUserStopping(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 1302
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1304
    :goto_21
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/content/PackageMonitor;

    if-eqz p0, :cond_2e

    .line 1306
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_2e
    return-void
.end method

.method public final onUserUnlocking(I)V
    .registers 7

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserUnlocking "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS.onUserUnlocking: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_73

    .line 1212
    :try_start_31
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "system"

    .line 1213
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 1212
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 1214
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    if-eqz v2, :cond_73

    .line 1215
    invoke-virtual {v2}, Landroid/os/UserManager;->isMediaSharedWithParent()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 1216
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1217
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1218
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_5e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_5e} :catch_5f

    goto :goto_73

    .line 1221
    :catch_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create user context for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_73
    :goto_73
    :try_start_73
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v2, p1}, Lcom/android/server/storage/StorageSessionController;->onUnlockUser(I)V

    .line 1229
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v2, p1}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1230
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v2, p1}, Landroid/os/IStoraged;->onUserStarted(I)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_82} :catch_83

    goto :goto_87

    :catch_83
    move-exception v2

    .line 1232
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1235
    :goto_87
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1236
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1237
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    if-eqz v1, :cond_9f

    iget v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_9f

    .line 1238
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->maybeRemountVolumes(I)V

    .line 1239
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    :cond_9f
    return-void
.end method

.method public final onVolumeCreatedLocked(Lcom/android/server/storage/WatchedVolumeInfo;)V
    .registers 11

    .line 1619
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1620
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1622
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v1

    const-string v2, " because user "

    const-string v3, "Ignoring volume "

    const/4 v4, 0x0

    const-string v5, "StorageManagerService"

    if-ltz v1, :cond_49

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v0

    if-nez v0, :cond_49

    .line 1623
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is no longer running."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1623
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1628
    :cond_49
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result v0

    const-string v1, "Found primary storage at "

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x5

    if-ne v0, v6, :cond_108

    .line 1629
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1630
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 1629
    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 1634
    const-class v4, Landroid/os/UserManager;

    .line 1633
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1634
    invoke-virtual {v0}, Landroid/os/UserManager;->isMediaSharedWithParent()Z

    move-result v4

    :cond_70
    if-nez v4, :cond_a8

    .line 1639
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 1640
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/storage/StorageSessionController;->supportsExternalStorage(I)Z

    move-result v0

    if-nez v0, :cond_a8

    .line 1641
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not support external storage."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1641
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1647
    :cond_a8
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1648
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1650
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    const-string/jumbo v2, "private"

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 1651
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_db

    .line 1652
    :cond_cf
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 1653
    :cond_db
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountFlags()I

    move-result v0

    or-int/2addr v0, v7

    invoke-virtual {p1, v0}, Lcom/android/server/storage/WatchedVolumeInfo;->setMountFlags(I)V

    .line 1655
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/storage/WatchedVolumeInfo;->setMountFlags(I)V

    .line 1656
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_107
    return-void

    .line 1659
    :cond_108
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_17c

    .line 1661
    const-string/jumbo v0, "primary_physical"

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 1662
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v0

    if-eqz v0, :cond_146

    .line 1663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountFlags()I

    move-result v0

    or-int/2addr v0, v7

    invoke-virtual {p1, v0}, Lcom/android/server/storage/WatchedVolumeInfo;->setMountFlags(I)V

    .line 1665
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/storage/WatchedVolumeInfo;->setMountFlags(I)V

    .line 1670
    :cond_146
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 1671
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/storage/WatchedVolumeInfo;->setMountFlags(I)V

    goto :goto_16d

    .line 1672
    :cond_15a
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 1673
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/storage/WatchedVolumeInfo;->setMountFlags(I)V

    .line 1676
    :cond_16d
    :goto_16d
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    invoke-virtual {p1, v0}, Lcom/android/server/storage/WatchedVolumeInfo;->setMountUserId(I)V

    .line 1677
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1679
    :cond_17c
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result v0

    if-ne v0, v7, :cond_18c

    .line 1680
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1682
    :cond_18c
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result v0

    if-ne v0, v8, :cond_1bd

    .line 1683
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isStubVisible()Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 1684
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/storage/WatchedVolumeInfo;->setMountFlags(I)V

    goto :goto_1ae

    .line 1686
    :cond_1a6
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountFlags()I

    move-result v0

    or-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lcom/android/server/storage/WatchedVolumeInfo;->setMountFlags(I)V

    .line 1688
    :goto_1ae
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    invoke-virtual {p1, v0}, Lcom/android/server/storage/WatchedVolumeInfo;->setMountUserId(I)V

    .line 1689
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1691
    :cond_1bd
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping automatic mounting of "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onVolumeStateChangedAsync(Lcom/android/server/storage/WatchedVolumeInfo;II)V
    .registers 14

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1a

    .line 1778
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->prepareUserStorageIfNeeded(Lcom/android/server/storage/WatchedVolumeInfo;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_1a

    .line 1782
    :catch_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12

    goto/16 :goto_134

    :catch_12
    move-exception p0

    .line 1784
    const-string p1, "StorageManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_134

    .line 1790
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1793
    :try_start_1d
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 1794
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    if-nez v2, :cond_6b

    .line 1796
    new-instance v2, Landroid/os/storage/VolumeRecord;

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 1797
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getPartGuid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1799
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_63

    .line 1800
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    goto :goto_63

    :catchall_60
    move-exception p0

    goto/16 :goto_137

    .line 1802
    :cond_63
    :goto_63
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_79

    .line 1805
    :cond_6b
    iget-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 1806
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getPartGuid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1810
    :cond_79
    :goto_79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 1811
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1813
    :cond_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_1d .. :try_end_83} :catchall_60

    .line 1819
    :try_start_83
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getImmutableVolumeInfo()Lcom/android/server/storage/ImmutableVolumeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/storage/StorageSessionController;->notifyVolumeStateChanged(Lcom/android/server/storage/ImmutableVolumeInfo;)V
    :try_end_8c
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_83 .. :try_end_8c} :catch_8d

    goto :goto_95

    :catch_8d
    move-exception v1

    .line 1821
    const-string v2, "StorageManagerService"

    const-string v3, "Failed to notify volume state changed to the Storage Service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1823
    :goto_95
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1824
    :try_start_98
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeStateChanged(Lcom/android/server/StorageManagerService$Callbacks;Lcom/android/server/storage/WatchedVolumeInfo;II)V

    .line 1828
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_d7

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isBroadcastWorthy(Lcom/android/server/storage/WatchedVolumeInfo;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 1829
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1830
    const-string v3, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1831
    const-string v3, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1832
    const-string v3, "android.os.storage.extra.FS_UUID"

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x5000000

    .line 1833
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1835
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d7

    :catchall_d5
    move-exception p0

    goto :goto_135

    .line 1838
    :cond_d7
    :goto_d7
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object p2

    .line 1839
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v1

    .line 1841
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_110

    .line 1845
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_ea
    if-ge v6, v4, :cond_110

    aget v7, v3, v6

    .line 1846
    invoke-virtual {p1, v7}, Lcom/android/server/storage/WatchedVolumeInfo;->isVisibleForUser(I)Z

    move-result v8

    if-eqz v8, :cond_10d

    .line 1847
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8, v7, v5}, Lcom/android/server/storage/WatchedVolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 1849
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x6

    invoke-virtual {v8, v9, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1851
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, p2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyStorageStateChanged(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10d
    add-int/lit8 v6, v6, 0x1

    goto :goto_ea

    .line 1857
    :cond_110
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result p2

    const/4 v1, 0x5

    if-eqz p2, :cond_11d

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result p2

    if-ne p2, v1, :cond_130

    .line 1858
    :cond_11d
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getState()I

    move-result p2

    if-ne p2, v1, :cond_130

    .line 1865
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    .line 1866
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getFsPath()Ljava/lang/String;

    move-result-object v1

    .line 1865
    invoke-virtual {p2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1868
    :cond_130
    invoke-virtual {p0, p1, p3}, Lcom/android/server/StorageManagerService;->maybeLogMediaMount(Lcom/android/server/storage/WatchedVolumeInfo;I)V

    .line 1869
    monitor-exit v2

    :goto_134
    return-void

    :goto_135
    monitor-exit v2
    :try_end_136
    .catchall {:try_start_98 .. :try_end_136} :catchall_d5

    throw p0

    .line 1813
    :goto_137
    :try_start_137
    monitor-exit v1
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_60

    throw p0
.end method

.method public final onVolumeStateChangedLocked(Lcom/android/server/storage/WatchedVolumeInfo;I)V
    .registers 5

    .line 1723
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    if-eq p2, v1, :cond_17

    .line 1725
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 1726
    :cond_17
    iget-boolean p2, p0, Lcom/android/server/StorageManagerService;->mVoldAppDataIsolationEnabled:Z

    if-eqz p2, :cond_2c

    .line 1727
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result p2

    .line 1729
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/StorageManagerService;ILcom/android/server/storage/WatchedVolumeInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1767
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2c
    return-void
.end method

.method public openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 3739
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptor"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x30000000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    .line 3745
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_c .. :try_end_f} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_26

    .line 3746
    :try_start_f
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez p0, :cond_1e

    .line 3747
    const-string p0, "StorageManagerService"

    const-string p1, "FuseBridge has not been created"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    monitor-exit v1

    return-object v0

    :catchall_1c
    move-exception p0

    goto :goto_24

    .line 3750
    :cond_1e
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/storage/AppFuseBridge;->openFile(III)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 3751
    :goto_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_1c

    :try_start_25
    throw p0
    :try_end_26
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_25 .. :try_end_26} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_26} :catch_26

    :catch_26
    move-exception p0

    .line 3753
    const-string p1, "StorageManagerService"

    const-string p2, "The mount point has already been invalid"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .registers 6

    .line 2576
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->partitionMixed_enforcePermission()V

    .line 2578
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 2580
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2582
    const-string v1, "#partition might be slow"

    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 2584
    :try_start_f
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2, p2}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2585
    const-string/jumbo p1, "partitionMixed"

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    .line 2587
    const-string p1, "StorageManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .registers 6

    .line 2558
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->partitionPrivate_enforcePermission()V

    .line 2560
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 2562
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2564
    const-string v1, "#partition might be slow"

    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 2566
    :try_start_f
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2567
    const-string/jumbo p1, "partitionPrivate"

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    .line 2569
    const-string p1, "StorageManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .registers 6

    .line 2542
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->partitionPublic_enforcePermission()V

    .line 2544
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2546
    const-string v1, "#partition might be slow"

    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 2548
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2549
    const-string/jumbo p1, "partitionPublic"

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p0

    .line 2551
    const-string p1, "StorageManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final prepareSmartIdleMaint()Z
    .registers 7

    .line 2797
    const-string/jumbo v0, "storage_native_boot"

    const-string/jumbo v1, "smart_idle_maint_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    const-string/jumbo v1, "ro.boot.zufs_provisioned"

    .line 2801
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_19

    move v1, v3

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    if-eqz v1, :cond_84

    .line 2803
    const-string/jumbo v4, "lifetime_threshold"

    const/16 v5, 0x46

    invoke-static {v0, v4, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/StorageManagerService;->mLifetimePercentThreshold:I

    .line 2806
    const-string/jumbo v4, "min_segments_threshold"

    const/16 v5, 0x200

    invoke-static {v0, v4, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/StorageManagerService;->mMinSegmentsThreshold:I

    .line 2808
    const-string v4, "dirty_reclaim_rate"

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v0, v4, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/android/server/StorageManagerService;->mDirtyReclaimRate:F

    .line 2810
    const-string/jumbo v4, "segment_reclaim_weight"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v4, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/android/server/StorageManagerService;->mSegmentReclaimWeight:F

    .line 2813
    const-string/jumbo v4, "low_battery_level"

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v0, v4, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/android/server/StorageManagerService;->mLowBatteryLevel:F

    .line 2815
    const-string v4, "charging_required"

    invoke-static {v0, v4, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/StorageManagerService;->mChargingRequired:Z

    .line 2817
    const-string/jumbo v3, "min_gc_sleeptime"

    const/16 v4, 0x2710

    invoke-static {v0, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/StorageManagerService;->mMinGCSleepTime:I

    .line 2819
    const-string/jumbo v3, "target_dirty_ratio"

    const/16 v4, 0x50

    invoke-static {v0, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/StorageManagerService;->mTargetDirtyRatio:I

    .line 2824
    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->mNeedGC:Z

    .line 2826
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->loadStorageWriteRecords()V

    .line 2828
    :try_start_75
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->refreshLatestWrite()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7a} :catch_7b

    goto :goto_81

    :catch_7b
    move-exception v0

    .line 2830
    const-string v2, "StorageManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2832
    :goto_81
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->refreshLifetimeConstraint()Z

    :cond_84
    return v1
.end method

.method public final prepareUserStorageForMoveInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7

    .line 1403
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1404
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(Ljava/lang/String;II)V

    .line 1405
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(Ljava/lang/String;II)V

    goto :goto_4

    :cond_1c
    return-void
.end method

.method public final prepareUserStorageIfNeeded(Lcom/android/server/storage/WatchedVolumeInfo;)V
    .registers 8

    .line 3371
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_4b

    .line 3375
    :cond_8
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3376
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    .line 3377
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 3379
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3381
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v4, 0x3

    goto :goto_41

    .line 3383
    :cond_38
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v4

    if-eqz v4, :cond_22

    move v4, v1

    .line 3389
    :goto_41
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(Ljava/lang/String;II)V

    goto :goto_22

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final prepareUserStorageInternal(Ljava/lang/String;II)V
    .registers 5

    .line 3396
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;II)V

    if-eqz p1, :cond_26

    .line 3400
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/StorageManager;

    .line 3401
    invoke-virtual {p3, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p3

    if-eqz p3, :cond_26

    if-nez p2, :cond_26

    .line 3402
    iget p3, p3, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_26

    .line 3403
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Installer;->tryMountDataMirror(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception p0

    goto :goto_27

    :cond_26
    return-void

    :goto_27
    const/4 p1, -0x1

    .line 3407
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, ""

    const-string v0, "224585613"

    filled-new-array {v0, p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const p3, 0x534e4554

    invoke-static {p3, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3408
    const-string p1, "StorageManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3415
    const-class p3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/UserManagerInternal;

    .line 3416
    invoke-virtual {p3, p2}, Lcom/android/server/pm/UserManagerInternal;->shouldIgnorePrepareStorageErrors(I)Z

    move-result p3

    if-eqz p3, :cond_67

    .line 3417
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ignoring error preparing storage for existing user "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; device may be insecure!"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3421
    :cond_67
    throw p0
.end method

.method public final readSettingsLocked()V
    .registers 10

    .line 2252
    const-string v0, "Failed reading metadata"

    const-string v1, "StorageManagerService"

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 2253
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2257
    :try_start_10
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_16} :catch_7e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_16} :catch_77
    .catchall {:try_start_10 .. :try_end_16} :catchall_75

    .line 2258
    :try_start_16
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v4

    .line 2261
    :cond_1a
    :goto_1a
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_71

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1a

    .line 2263
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2264
    const-string/jumbo v8, "volumes"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 2265
    const-string/jumbo v5, "version"

    invoke-interface {v4, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 2266
    const-string/jumbo v6, "ro.vold.primary_physical"

    const/4 v8, 0x0

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const/4 v8, 0x3

    if-ge v5, v8, :cond_47

    if-lt v5, v7, :cond_1a

    if-nez v6, :cond_1a

    .line 2271
    :cond_47
    const-string/jumbo v5, "primaryStorageUuid"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    goto :goto_1a

    :catchall_51
    move-exception p0

    move-object v2, v3

    goto :goto_86

    :catch_54
    move-exception p0

    move-object v2, v3

    goto :goto_7b

    :catch_57
    move-exception p0

    move-object v2, v3

    goto :goto_82

    :catch_5a
    move-object v2, v3

    goto :goto_7e

    .line 2274
    :cond_5c
    const-string/jumbo v6, "volume"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2275
    invoke-static {v4}, Lcom/android/server/StorageManagerService;->readVolumeRecord(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/storage/VolumeRecord;

    move-result-object v5

    .line 2276
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v7, v5, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_70} :catch_5a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_70} :catch_57
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_70} :catch_54
    .catchall {:try_start_16 .. :try_end_70} :catchall_51

    goto :goto_1a

    .line 2287
    :cond_71
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_75
    move-exception p0

    goto :goto_86

    :catch_77
    move-exception p0

    goto :goto_7b

    :catch_79
    move-exception p0

    goto :goto_82

    .line 2285
    :goto_7b
    :try_start_7b
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_75

    .line 2287
    :catch_7e
    :goto_7e
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_8a

    .line 2283
    :goto_82
    :try_start_82
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_75

    goto :goto_7e

    .line 2287
    :goto_86
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2288
    throw p0

    :goto_8a
    return-void
.end method

.method public final refreshLifetimeConstraint()Z
    .registers 7

    .line 2912
    const-string v0, "StorageManagerService"

    const/4 v1, 0x0

    .line 2915
    :try_start_3
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v2}, Landroid/os/IVold;->getStorageLifeTime()I

    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_52

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 2922
    const-string p0, "Failed to get storage lifetime"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2924
    :cond_12
    iget v3, p0, Lcom/android/server/StorageManagerService;->mLifetimePercentThreshold:I

    const/4 v4, 0x1

    if-le v2, v3, :cond_3d

    .line 2925
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ended smart idle maintenance, because of lifetime("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), lifetime threshold("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/StorageManagerService;->mLifetimePercentThreshold:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    iput-boolean v4, p0, Lcom/android/server/StorageManagerService;->mPassedLifetimeThresh:Z

    return v1

    .line 2930
    :cond_3d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storage lifetime: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_52
    move-exception p0

    .line 2917
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final refreshZramSettings()V
    .registers 6

    .line 984
    const-string/jumbo v0, "persist.sys.zram_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 985
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_49

    .line 991
    :cond_10
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 989
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zram_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "1"

    if-eqz v2, :cond_24

    move-object v2, v3

    goto :goto_26

    .line 992
    :cond_24
    const-string v2, "0"

    .line 993
    :goto_26
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 997
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1000
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11102e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1002
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public registerListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 2

    .line 2354
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->register(Landroid/os/storage/IStorageEventListener;)V

    return-void
.end method

.method public final remountAppStorageDirs(Ljava/util/Map;I)V
    .registers 9

    .line 2387
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2388
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2389
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remounting storage for pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2392
    invoke-virtual {v2, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 2393
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 2395
    array-length v4, v2

    if-eqz v4, :cond_4c

    goto :goto_52

    :cond_4c
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    .line 2397
    :goto_52
    :try_start_52
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, v3, v1, v2}, Landroid/os/IVold;->remountAppStorageDirs(II[Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_57} :catch_58

    goto :goto_8

    :catch_58
    move-exception p0

    .line 2399
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_5e
    return-void
.end method

.method public final remountVolumesForRunningUsersOnMove()V
    .registers 9

    .line 1368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1370
    :try_start_8
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_d
    if-ge v5, v3, :cond_22

    aget v6, v2, v5

    .line 1371
    iget v7, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-ne v6, v7, :cond_16

    goto :goto_1d

    .line 1372
    :cond_16
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :catchall_20
    move-exception p0

    goto :goto_7a

    .line 1374
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_20

    .line 1375
    const-string v1, "#onUserStopped might be slow"

    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v4

    :goto_2d
    if-ge v2, v1, :cond_51

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Integer;

    .line 1378
    :try_start_37
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/os/IVold;->onUserStopped(I)V

    .line 1379
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v5, v3}, Landroid/os/IStoraged;->onUserStopped(I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_49} :catch_4a

    goto :goto_2d

    :catch_4a
    move-exception v3

    .line 1381
    const-string v5, "StorageManagerService"

    invoke-static {v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 1384
    :cond_51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_55
    if-ge v4, v1, :cond_79

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Ljava/lang/Integer;

    .line 1386
    :try_start_5f
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v5}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1387
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Landroid/os/IStoraged;->onUserStarted(I)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_71} :catch_72

    goto :goto_55

    :catch_72
    move-exception v2

    .line 1389
    const-string v3, "StorageManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    :cond_79
    return-void

    .line 1374
    :goto_7a
    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_20

    throw p0
.end method

.method public final removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 5

    .line 4262
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4263
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_22

    .line 4265
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4266
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->unlink()V

    .line 4268
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 4269
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4273
    :cond_22
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final resetIfBootedAndConnected()V
    .registers 9

    .line 1103
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thinking about reset, mBootCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDaemonConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_d0

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_d0

    .line 1106
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1107
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1109
    const-string v2, "#onReset might be slow"

    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 1110
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v4, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/storage/StorageSessionController;->onReset(Landroid/os/IVold;Ljava/lang/Runnable;)V

    .line 1115
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1117
    :try_start_4c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 1120
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1121
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->clear()V

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 1124
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_cd

    .line 1132
    :try_start_61
    const-string v2, "StorageManagerService"

    const-string v4, "Resetting vold..."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v2}, Landroid/os/IVold;->reset()V

    .line 1134
    const-string v2, "StorageManagerService"

    const-string v4, "Reset vold"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1138
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v5

    if-eqz v5, :cond_96

    .line 1139
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-interface {v5, v6, v7, v4}, Landroid/os/IVold;->onUserAdded(III)V

    goto :goto_78

    .line 1141
    :cond_96
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v4, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v7, -0x1

    invoke-interface {v5, v6, v4, v7}, Landroid/os/IVold;->onUserAdded(III)V

    goto :goto_78

    .line 1144
    :cond_a1
    array-length v2, v3

    const/4 v4, 0x0

    :goto_a3
    if-ge v4, v2, :cond_b4

    aget v5, v3, v4

    .line 1145
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v6, v5}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1146
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v6, v5}, Landroid/os/IStoraged;->onUserStarted(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a3

    .line 1148
    :cond_b4
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/StorageManagerService;->restoreSystemUnlockedUsers(Landroid/os/UserManager;Ljava/util/List;[I)V

    .line 1149
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-interface {v0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V

    .line 1150
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {v0, p0}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->onReset(Landroid/os/IVold;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_c5} :catch_c6

    return-void

    :catch_c6
    move-exception p0

    .line 1152
    const-string v0, "StorageManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_cd
    move-exception p0

    .line 1124
    :try_start_ce
    monitor-exit v2
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw p0

    :cond_d0
    return-void
.end method

.method public final restoreCeUnlockedUsers()V
    .registers 5

    .line 1187
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->getUnlockedUsers()[I

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_39

    .line 1192
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_38

    .line 1193
    const-string v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CE storage for users "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is already unlocked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1200
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->appendAll([I)V

    .line 1201
    monitor-exit v1

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_35

    throw p0

    :cond_38
    return-void

    :catch_39
    move-exception p0

    .line 1189
    const-string v0, "StorageManagerService"

    const-string v1, "Failed to get unlocked users from vold"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final restoreSystemUnlockedUsers(Landroid/os/UserManager;Ljava/util/List;[I)V
    .registers 8

    .line 1159
    invoke-static {p3}, Ljava/util/Arrays;->sort([I)V

    .line 1160
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 1161
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1162
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1163
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_a

    .line 1166
    :cond_1f
    invoke-static {p3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_26

    goto :goto_a

    .line 1169
    :cond_26
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_a

    .line 1173
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNLOCK_USER lost from vold reset, will retry, user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1, v0}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1175
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v1, v0}, Landroid/os/IStoraged;->onUserStarted(I)V

    .line 1176
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1177
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    :cond_5a
    return-void
.end method

.method public runIdleMaint(Ljava/lang/Runnable;)V
    .registers 6

    .line 2733
    const-string v0, "StorageManagerService"

    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2740
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1c

    .line 2754
    :cond_14
    const-string p0, "Skipping idle maintenance - block based checkpoint in progress"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1a
    move-exception p0

    goto :goto_29

    .line 2741
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mNeedGC:Z

    new-instance v3, Lcom/android/server/StorageManagerService$11;

    invoke-direct {v3, p0, p1}, Lcom/android/server/StorageManagerService$11;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2, v3}, Landroid/os/IVold;->runIdleMaint(ZLandroid/os/IVoldTaskListener;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_1a

    return-void

    .line 2757
    :goto_29
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public runIdleMaintenance()V
    .registers 2

    const/4 v0, 0x0

    .line 2763
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runIdleMaintenance(Ljava/lang/Runnable;)V
    .registers 3

    .line 1428
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public runMaintenance()V
    .registers 2

    .line 1435
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->runMaintenance_enforcePermission()V

    const/4 v0, 0x0

    .line 1437
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized runSmartIdleMaint(Ljava/lang/Runnable;)V
    .registers 13

    monitor-enter p0

    .line 2935
    :try_start_1
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    .line 2939
    :try_start_6
    iget v0, p0, Lcom/android/server/StorageManagerService;->mTargetDirtyRatio:I

    .line 2940
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1}, Landroid/os/IVold;->getWriteAmount()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2a

    .line 2942
    const-string v0, "StorageManagerService"

    const-string v1, "Failed to get storage write record"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_27
    .catchall {:try_start_6 .. :try_end_18} :catchall_24

    if-eqz p1, :cond_22

    .line 2976
    :try_start_1a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v0

    move-object p1, v0

    goto/16 :goto_df

    .line 2943
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    goto/16 :goto_d9

    :catch_27
    move-exception v0

    goto/16 :goto_cf

    .line 2946
    :cond_2a
    :try_start_2a
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->updateStorageWriteRecords(I)V

    .line 2950
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_43

    .line 2970
    :cond_3a
    const-string v0, "StorageManagerService"

    const-string v1, "Skipping smart idle maintenance - block based checkpoint in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c9

    .line 2951
    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->refreshLifetimeConstraint()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->checkChargeStatus()Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_57

    .line 2955
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->getAverageWriteAmount()I

    move-result v2

    :goto_54
    move v10, v0

    move v4, v2

    goto :goto_62

    .line 2952
    :cond_57
    :goto_57
    const-string v0, "StorageManagerService"

    const-string v2, "Turn off gc_urgent based on checking lifetime and charge status"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/16 v0, 0x64

    goto :goto_54

    .line 2958
    :goto_62
    const-string v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set smart idle maintenance: latest write amount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", average write amount: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", min segment threshold: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/StorageManagerService;->mMinSegmentsThreshold:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dirty reclaim rate: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/StorageManagerService;->mDirtyReclaimRate:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", segment reclaim weight: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/StorageManagerService;->mSegmentReclaimWeight:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", period(min): "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", min gc sleep time(ms): "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/StorageManagerService;->mMinGCSleepTime:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", target dirty ratio: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v5, p0, Lcom/android/server/StorageManagerService;->mMinSegmentsThreshold:I

    iget v6, p0, Lcom/android/server/StorageManagerService;->mDirtyReclaimRate:F

    iget v7, p0, Lcom/android/server/StorageManagerService;->mSegmentReclaimWeight:F

    sget v8, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    iget v9, p0, Lcom/android/server/StorageManagerService;->mMinGCSleepTime:I

    invoke-interface/range {v3 .. v10}, Landroid/os/IVold;->setGCUrgentPace(IIFFIII)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_c9} :catch_27
    .catchall {:try_start_2a .. :try_end_c9} :catchall_24

    :goto_c9
    if-eqz p1, :cond_d7

    .line 2976
    :goto_cb
    :try_start_cb
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_1e

    goto :goto_d7

    .line 2973
    :goto_cf
    :try_start_cf
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d4
    .catchall {:try_start_cf .. :try_end_d4} :catchall_24

    if-eqz p1, :cond_d7

    goto :goto_cb

    .line 2979
    :cond_d7
    :goto_d7
    monitor-exit p0

    return-void

    :goto_d9
    if-eqz p1, :cond_de

    .line 2976
    :try_start_db
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2978
    :cond_de
    throw v0

    :goto_df
    monitor-exit p0
    :try_end_e0
    .catchall {:try_start_db .. :try_end_e0} :catchall_1e

    throw p1
.end method

.method public final scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 538
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 539
    const-string p0, "internal"

    return-object p0

    .line 541
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 542
    iget-wide v0, p0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_20

    goto :goto_44

    .line 545
    :cond_20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ext:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    div-long/2addr v0, v2

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "w"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 543
    :cond_44
    :goto_44
    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method public final servicesReady()V
    .registers 3

    .line 2148
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2150
    const-string/jumbo v0, "package"

    .line 2151
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2150
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 2152
    const-string v0, "appops"

    .line 2153
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2152
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 2155
    const-string/jumbo v0, "media"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 2157
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 2158
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    .line 2161
    :cond_3c
    const-string v0, "downloads"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 2163
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    .line 2166
    :cond_4e
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 2168
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    :cond_60
    return-void
.end method

.method public setCloudMediaProvider(Ljava/lang/String;)V
    .registers 6

    .line 3570
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceExternalStorageService()V

    .line 3572
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3573
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3574
    :try_start_e
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3575
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 3576
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3577
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3578
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 3580
    :cond_30
    :goto_30
    monitor-exit v1

    return-void

    :goto_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_2e

    throw p0
.end method

.method public setDebugFlags(II)V
    .registers 11

    .line 2985
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->setDebugFlags_enforcePermission()V

    and-int/lit8 v0, p2, 0x3

    .line 2987
    const-string v1, ""

    const-string v2, "force_off"

    const-string v3, "force_on"

    const/16 v4, 0xa

    if-eqz v0, :cond_38

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_15

    move-object v0, v3

    goto :goto_1c

    :cond_15
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1b

    move-object v0, v2

    goto :goto_1c

    :cond_1b
    move-object v0, v1

    .line 2998
    :goto_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3000
    :try_start_20
    const-string/jumbo v7, "persist.sys.adoptable"

    invoke-static {v7, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_33

    .line 3005
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38

    :catchall_33
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3006
    throw p0

    :cond_38
    :goto_38
    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_63

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_42

    move-object v1, v3

    goto :goto_47

    :cond_42
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_47

    move-object v1, v2

    .line 3020
    :cond_47
    :goto_47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3022
    :try_start_4b
    const-string/jumbo v0, "persist.sys.sdcardfs"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_5e

    .line 3027
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_63

    :catchall_5e
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3028
    throw p0

    :cond_63
    :goto_63
    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_8e

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_6d

    const/4 p1, 0x1

    goto :goto_6e

    :cond_6d
    const/4 p1, 0x0

    .line 3034
    :goto_6e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3036
    :try_start_72
    const-string/jumbo p2, "persist.sys.virtual_disk"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_85
    .catchall {:try_start_72 .. :try_end_85} :catchall_89

    .line 3041
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_89
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3042
    throw p0

    :cond_8e
    return-void
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 7

    .line 3057
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->setPrimaryStorageUuid_enforcePermission()V

    .line 3063
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3064
    :try_start_6
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_117

    .line 3068
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v1, :cond_10f

    .line 3071
    iput-object p2, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 3072
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 3075
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p2

    .line 3076
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 3077
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v3

    if-eqz v3, :cond_28

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->isCeStorageUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 3078
    const-string p1, "StorageManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failing move due to locked user "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0xa

    .line 3079
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 3080
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    goto/16 :goto_12e

    .line 3086
    :cond_64
    const-string/jumbo v1, "primary_physical"

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f1

    const-string/jumbo v1, "primary_physical"

    .line 3087
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    goto :goto_f1

    .line 3095
    :cond_79
    iget v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 3096
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/StorageManagerService;->findStorageForUuidAsUser(Ljava/lang/String;I)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 3097
    invoke-virtual {p0, p1, v1}, Lcom/android/server/StorageManagerService;->findStorageForUuidAsUser(Ljava/lang/String;I)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    const/4 v3, -0x6

    if-nez v2, :cond_a5

    .line 3100
    const-string p1, "StorageManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failing move due to missing from volume "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 3102
    monitor-exit v0

    return-void

    :cond_a5
    if-nez v1, :cond_c2

    .line 3104
    const-string p2, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failing move due to missing to volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 3106
    monitor-exit v0

    return-void

    .line 3109
    :cond_c2
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_6 .. :try_end_c3} :catchall_61

    .line 3115
    :try_start_c3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/StorageManagerService;->prepareUserStorageForMoveInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c8} :catch_de

    .line 3125
    :try_start_c8
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object p2, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget-object v0, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    new-instance v1, Lcom/android/server/StorageManagerService$13;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$13;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-interface {p1, p2, v0, v1}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d6} :catch_d7

    return-void

    :catch_d7
    move-exception p0

    .line 3139
    const-string p1, "StorageManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_de
    move-exception p1

    .line 3117
    const-string p2, "StorageManagerService"

    const-string v0, "Failing move due to failure on prepare user data"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3118
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3119
    :try_start_e9
    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 3120
    monitor-exit p1

    return-void

    :catchall_ee
    move-exception p0

    monitor-exit p1
    :try_end_f0
    .catchall {:try_start_e9 .. :try_end_f0} :catchall_ee

    throw p0

    .line 3088
    :cond_f1
    :goto_f1
    :try_start_f1
    const-string p1, "StorageManagerService"

    const-string p2, "Skipping move to/from primary physical"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x52

    .line 3089
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    const/16 p1, -0x64

    .line 3090
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 3091
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 3092
    monitor-exit v0

    return-void

    .line 3069
    :cond_10f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Move already in progress"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3065
    :cond_117
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Primary storage already at "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3109
    :goto_12e
    monitor-exit v0
    :try_end_12f
    .catchall {:try_start_f1 .. :try_end_12f} :catchall_61

    throw p0
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2595
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->setVolumeNickname_enforcePermission()V

    .line 2597
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2598
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2599
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeRecord;

    .line 2600
    iput-object p2, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 2601
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {p2, p1}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeRecordChanged(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 2602
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2603
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .registers 7

    .line 2610
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->setVolumeUserFlags_enforcePermission()V

    .line 2612
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2613
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2614
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeRecord;

    .line 2615
    iget v1, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    not-int v2, p3

    and-int/2addr v1, v2

    and-int/2addr p2, p3

    or-int/2addr p2, v1

    iput p2, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 2616
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {p2, p1}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeRecordChanged(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 2617
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2618
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public shutdown(Landroid/os/storage/IStorageShutdownObserver;)V
    .registers 4

    .line 2366
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->shutdown_enforcePermission()V

    .line 2368
    const-string v0, "StorageManagerService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final snapshotAndMonitorLegacyStorageAppOp(Landroid/os/UserHandle;)V
    .registers 10

    .line 2194
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2199
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v2, 0x4c2000

    .line 2201
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 2199
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "StorageManagerService"

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 2203
    :try_start_23
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x57

    invoke-interface {v4, v7, v5, v6}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_33

    const/4 v4, 0x1

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    .line 2205
    :goto_34
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/server/StorageManagerService;->updateLegacyStorageApps(Ljava/lang/String;IZ)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3b} :catch_3c

    goto :goto_15

    :catch_3c
    move-exception v4

    .line 2207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to check legacy op for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 2211
    :cond_54
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6e

    .line 2212
    new-instance v1, Lcom/android/server/StorageManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$7;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 2219
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 2220
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_82

    .line 2222
    :cond_6e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "PackageMonitor is already registered for: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    return-void
.end method

.method public startCheckpoint(I)V
    .registers 4

    .line 3283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_18

    if-eqz v0, :cond_18

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_f

    goto :goto_18

    .line 3286
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "no permission to start filesystem checkpoint"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3289
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1}, Landroid/os/IVold;->startCheckpoint(I)V

    return-void
.end method

.method public final supportsBlockCheckpoint()Z
    .registers 2

    .line 1395
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1396
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    move-result p0

    return p0
.end method

.method public supportsCheckpoint()Z
    .registers 1

    .line 3270
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0}, Landroid/os/IVold;->supportsCheckpoint()Z

    move-result p0

    return p0
.end method

.method public final unmount(Lcom/android/server/storage/ImmutableVolumeInfo;)V
    .registers 5

    .line 2463
    const-string v0, "StorageManagerService"

    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/storage/ImmutableVolumeInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 2464
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Lcom/android/server/storage/ImmutableVolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Installer;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_12
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_12} :catch_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception p0

    goto :goto_2f

    :catch_15
    move-exception v1

    .line 2467
    :try_start_16
    const-string v2, "Failed unmount mirror data"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2469
    :cond_1b
    :goto_1b
    const-string v1, "#unmount might be slow"

    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 2470
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {p1}, Lcom/android/server/storage/ImmutableVolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 2471
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->onVolumeUnmount(Lcom/android/server/storage/ImmutableVolumeInfo;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2e} :catch_13

    goto :goto_32

    .line 2473
    :goto_2f
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    return-void
.end method

.method public unmount(Ljava/lang/String;)V
    .registers 2

    .line 2454
    invoke-super {p0}, Landroid/os/storage/IStorageManager$Stub;->unmount_enforcePermission()V

    .line 2456
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Lcom/android/server/storage/WatchedVolumeInfo;

    move-result-object p1

    .line 2457
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getClonedImmutableVolumeInfo()Lcom/android/server/storage/ImmutableVolumeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->unmount(Lcom/android/server/storage/ImmutableVolumeInfo;)V

    return-void
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 15

    .line 3241
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3244
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 3245
    :try_start_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerService$ObbState;

    .line 3246
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_4d

    if-eqz v0, :cond_35

    .line 3250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3251
    new-instance v2, Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, v0, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    .line 3253
    new-instance p0, Lcom/android/server/StorageManagerService$UnmountObbAction;

    invoke-direct {p0, v3, v2, p2}, Lcom/android/server/StorageManagerService$UnmountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V

    .line 3254
    iget-object p1, v3, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_35
    move-object v4, p1

    .line 3259
    const-string p0, "StorageManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown OBB mount at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_4d
    move-exception v0

    move-object p0, v0

    .line 3246
    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4d

    throw p0
.end method

.method public unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 2

    .line 2359
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->unregister(Landroid/os/storage/IStorageEventListener;)V

    return-void
.end method

.method public final updateLegacyStorageApps(Ljava/lang/String;IZ)V
    .registers 7

    .line 2180
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_2c

    .line 2182
    :try_start_5
    const-string p3, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has legacy storage"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :catchall_2a
    move-exception p0

    goto :goto_52

    .line 2187
    :cond_2c
    const-string p3, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have legacy storage"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2190
    :goto_50
    monitor-exit v0

    return-void

    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_2a

    throw p0
.end method

.method public final updateStorageWriteRecords(I)V
    .registers 7

    .line 2869
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    iget v2, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2871
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    aput p1, v0, v4

    const/4 p1, 0x0

    .line 2873
    :try_start_11
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p1

    .line 2874
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2876
    sget v1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2877
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2878
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    if-eqz p1, :cond_33

    .line 2881
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_33
    return-void
.end method

.method public final updateVolumeMountIdIfRequired(Lcom/android/server/storage/WatchedVolumeInfo;)V
    .registers 5

    .line 1348
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1349
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->isPrimary()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getMountUserId()I

    move-result v1

    iget v2, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-eq v1, v2, :cond_1f

    .line 1350
    iget p0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Lcom/android/server/storage/WatchedVolumeInfo;->setMountUserId(I)V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 1352
    :cond_1f
    :goto_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method public final validateObbInfo(Landroid/content/res/ObbInfo;Ljava/lang/String;)V
    .registers 8

    .line 3214
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_95

    .line 3219
    sget-object v0, Lcom/android/server/StorageManagerService;->OBB_FILE_PATH:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3221
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 3222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x2

    .line 3223
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 3224
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 3225
    const-string v3, "Path "

    if-eqz v2, :cond_31

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_38

    :cond_31
    if-nez v2, :cond_55

    iget p0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-ne v1, p0, :cond_38

    goto :goto_55

    .line 3227
    :cond_38
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "does not correspond to calling userId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    :goto_55
    if-eqz p1, :cond_7d

    .line 3230
    iget-object p0, p1, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    goto :goto_7d

    .line 3231
    :cond_60
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not contain package name "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7d
    :goto_7d
    return-void

    .line 3235
    :cond_7e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid path to Obb file : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_95
    move-exception p0

    .line 3216
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to resolve path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .registers 12

    .line 924
    const-string p0, "Thread "

    const-string v0, "StorageManagerService"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 927
    :cond_8
    :goto_8
    :try_start_8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    invoke-virtual {p1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_13

    return-void

    .line 930
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " still waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_3a} :catch_3b

    goto :goto_4f

    .line 934
    :catch_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupt while waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_8

    .line 936
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v5, v1, p3

    cmp-long v3, v3, v5

    if-gtz v3, :cond_60

    goto :goto_8

    .line 937
    :cond_60
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " gave up waiting for "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " after "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final warnOnNotMounted()V
    .registers 5

    .line 3144
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3145
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 3146
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/storage/WatchedVolumeInfo;

    .line 3147
    invoke-virtual {v2}, Lcom/android/server/storage/WatchedVolumeInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2}, Lcom/android/server/storage/WatchedVolumeInfo;->isMountedWritable()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3149
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    goto :goto_30

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3152
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_22

    .line 3154
    const-string p0, "StorageManagerService"

    const-string v0, "No primary storage mounted!"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3152
    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_22

    throw p0
.end method

.method public final writeSettingsLocked()V
    .registers 8

    .line 2293
    const-string/jumbo v0, "volumes"

    const/4 v1, 0x0

    .line 2295
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_4a

    .line 2297
    :try_start_a
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    .line 2298
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2299
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2300
    const-string/jumbo v4, "version"

    const/4 v5, 0x3

    invoke-interface {v3, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2301
    const-string/jumbo v4, "primaryStorageUuid"

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2302
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v4, :cond_3e

    .line 2304
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeRecord;

    .line 2305
    invoke-static {v3, v6}, Lcom/android/server/StorageManagerService;->writeVolumeRecord(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/storage/VolumeRecord;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :catch_3c
    move-object v1, v2

    goto :goto_4a

    .line 2307
    :cond_3e
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2308
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 2310
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_49} :catch_3c

    return-void

    :catch_4a
    :goto_4a
    if-eqz v1, :cond_51

    .line 2313
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_51
    return-void
.end method
