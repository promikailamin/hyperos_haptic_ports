.class Lcom/android/server/StorageManagerService;
.super Landroid/os/storage/IStorageManager$Stub;
.source "StorageManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;,
        Lcom/android/server/StorageManagerService$Callbacks;,
        Lcom/android/server/StorageManagerService$UnmountObbAction;,
        Lcom/android/server/StorageManagerService$MountObbAction;,
        Lcom/android/server/StorageManagerService$ObbAction;,
        Lcom/android/server/StorageManagerService$ObbException;,
        Lcom/android/server/StorageManagerService$ObbActionHandler;,
        Lcom/android/server/StorageManagerService$AppFuseMountScope;,
        Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;,
        Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;,
        Lcom/android/server/StorageManagerService$ObbState;,
        Lcom/android/server/StorageManagerService$WatchedLockedUsers;,
        Lcom/android/server/StorageManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ALL_STORAGE_PERMISSIONS:[Ljava/lang/String;

.field private static final ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.vold_app_data_isolation_enabled"

.field private static final ANR_DELAY_MILLIS_DEVICE_CONFIG_KEY:Ljava/lang/String; = "anr_delay_millis"

.field private static final ANR_DELAY_NOTIFY_EXTERNAL_STORAGE_SERVICE_DEVICE_CONFIG_KEY:Ljava/lang/String; = "anr_delay_notify_external_storage_service"

.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_FS_UUID:Ljava/lang/String; = "fsUuid"

.field private static final ATTR_LAST_BENCH_MILLIS:Ljava/lang/String; = "lastBenchMillis"

.field private static final ATTR_LAST_SEEN_MILLIS:Ljava/lang/String; = "lastSeenMillis"

.field private static final ATTR_LAST_TRIM_MILLIS:Ljava/lang/String; = "lastTrimMillis"

.field private static final ATTR_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final ATTR_PART_GUID:Ljava/lang/String; = "partGuid"

.field private static final ATTR_PRIMARY_STORAGE_UUID:Ljava/lang/String; = "primaryStorageUuid"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_USER_FLAGS:Ljava/lang/String; = "userFlags"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DEBUG_EVENTS:Z = false

.field private static final DEBUG_OBB:Z = false

.field private static final DEFAULT_CHARGING_REQUIRED:Z = true

.field private static final DEFAULT_DIRTY_RECLAIM_RATE:F = 0.5f

.field private static final DEFAULT_LIFETIME_PERCENT_THRESHOLD:I = 0x46

.field private static final DEFAULT_LOW_BATTERY_LEVEL:F = 20.0f

.field private static final DEFAULT_MIN_SEGMENTS_THRESHOLD:I = 0x200

.field private static final DEFAULT_SEGMENT_RECLAIM_WEIGHT:F = 1.0f

.field private static final DEFAULT_SMART_IDLE_MAINT_ENABLED:Z = false

.field private static final DEFAULT_SMART_IDLE_MAINT_PERIOD:I = 0x3c

.field private static final DEFRAG_TIME:I = 0x493e0

.field private static final EMULATE_FBE_SUPPORTED:Z = true

.field public static final FAILED_MOUNT_RESET_TIMEOUT_SECONDS:I = 0xa

.field private static final H_ABORT_IDLE_MAINT:I = 0xc

.field private static final H_BOOT_COMPLETED:I = 0xd

.field private static final H_CLOUD_MEDIA_PROVIDER_CHANGED:I = 0x10

.field private static final H_COMPLETE_UNLOCK_USER:I = 0xe

.field private static final H_DAEMON_CONNECTED:I = 0x2

.field private static final H_FSTRIM:I = 0x4

.field private static final H_INTERNAL_BROADCAST:I = 0x7

.field private static final H_PARTITION_FORGET:I = 0x9

.field private static final H_RESET:I = 0xa

.field private static final H_RUN_IDLE_MAINT:I = 0xb

.field private static final H_SECURE_KEYGUARD_STATE_CHANGED:I = 0x11

.field private static final H_SHUTDOWN:I = 0x3

.field private static final H_SYSTEM_READY:I = 0x1

.field private static final H_VOLUME_BROADCAST:I = 0x6

.field private static final H_VOLUME_MOUNT:I = 0x5

.field private static final H_VOLUME_STATE_CHANGED:I = 0xf

.field private static final H_VOLUME_UNMOUNT:I = 0x8

.field public static final KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

.field private static final LAST_FSTRIM_FILE:Ljava/lang/String; = "last-fstrim"

.field private static final LOCAL_LOGV:Z

.field private static final MAX_PERIOD_WRITE_RECORD:I = 0x10e0

.field private static final MAX_SMART_IDLE_MAINT_PERIOD:I = 0x5a0

.field private static final MFZ_PAGE_COUNT:Ljava/lang/String; = "MFZ_PAGE_COUNT"

.field private static final MIN_SMART_IDLE_MAINT_PERIOD:I = 0xa

.field private static final MOVE_STATUS_COPY_FINISHED:I = 0x52

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x2

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final STAT_NO_PAGE_NEED_FLUSH:I = 0x0

.field private static final STAT_RUN_EXTM_FLUSH_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "StorageManagerService"

.field private static final TAG_STORAGE_BENCHMARK:Ljava/lang/String; = "storage_benchmark"

.field private static final TAG_STORAGE_TRIM:Ljava/lang/String; = "storage_trim"

.field private static final TAG_VOLUME:Ljava/lang/String; = "volume"

.field private static final TAG_VOLUMES:Ljava/lang/String; = "volumes"

.field private static final VERSION_ADD_PRIMARY:I = 0x2

.field private static final VERSION_FIX_PRIMARY:I = 0x3

.field private static final VERSION_INIT:I = 0x1

.field private static final WATCHDOG_ENABLE:Z = true

.field private static final ZRAM_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.zram_enabled"

.field public static sMediaStoreAuthorityProcessName:Ljava/lang/String;

.field static sSelf:Lcom/android/server/StorageManagerService;

.field static volatile sSmartIdleMaintPeriod:I


# instance fields
.field private mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

.field private final mAppFuseLock:Ljava/lang/Object;

.field private volatile mBootCompleted:Z

.field private final mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

.field private final mCeStoragePreparedUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mChargingRequired:Z

.field private final mCloudMediaProviders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentUserId:I

.field private volatile mDaemonConnected:Z

.field private mDelayMountedPubVolumes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDirtyReclaimRate:F

.field private mDiskScanLatches:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private mDisks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDownloadsAuthorityAppId:I

.field private volatile mExternalStorageAuthorityAppId:I

.field private final mFuseMountedUser:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private mLastMaintenance:J

.field private final mLastMaintenanceFile:Ljava/io/File;

.field private volatile mLifetimePercentThreshold:I

.field private final mListener:Landroid/os/IVoldListener;

.field private mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private volatile mLowBatteryLevel:F

.field private volatile mMaxWriteRecords:I

.field private volatile mMediaStoreAuthorityAppId:I

.field private volatile mMinSegmentsThreshold:I

.field private mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

.field private mMoveTargetUuid:Ljava/lang/String;

.field private volatile mNeedGC:Z

.field private mNextAppFuseName:I

.field private final mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Lcom/android/server/StorageManagerService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/StorageManagerService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageMonitorsForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/content/PackageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagesLock:Ljava/lang/Object;

.field private volatile mPassedLifetimeThresh:Z

.field private mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field private mPrimaryStorageUuid:Ljava/lang/String;

.field private mRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRemountCurrentUserVolumesOnUnlock:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field private mScreenOnReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mSecureKeyguardShowing:Z

.field private volatile mSegmentReclaimWeight:F

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

.field private final mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

.field private volatile mStorageWriteRecords:[I

.field private volatile mStoraged:Landroid/os/IStoraged;

.field private mSystemUnlockedUsers:[I

.field private final mUidsWithLegacyExternalStorage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mUserSharesMediaWith:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mVold:Landroid/os/IVold;

.field private final mVoldAppDataIsolationEnabled:Z

.field private final mVolumes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteRecordFile:Landroid/util/AtomicFile;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$Callbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCeStoragePreparedUsers(Lcom/android/server/StorageManagerService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCeStoragePreparedUsers:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/StorageManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisks(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFuseMountedUser(Lcom/android/server/StorageManagerService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAppOpsService(Lcom/android/server/StorageManagerService;)Lcom/android/internal/app/IAppOpsService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIPackageManager(Lcom/android/server/StorageManagerService;)Landroid/content/pm/IPackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstaller(Lcom/android/server/StorageManagerService;)Lcom/android/server/pm/Installer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastMaintenance(Lcom/android/server/StorageManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastMaintenanceFile(Lcom/android/server/StorageManagerService;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaStoreAuthorityAppId(Lcom/android/server/StorageManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmObbActionHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmObbMounts(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmObbPathToStateMap(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPmInternal(Lcom/android/server/StorageManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageSessionController(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUidsWithLegacyExternalStorage(Lcom/android/server/StorageManagerService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVold(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolumes(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastMaintenance(Lcom/android/server/StorageManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRemountCurrentUserVolumesOnUnlock(Lcom/android/server/StorageManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStoraged(Lcom/android/server/StorageManagerService;Landroid/os/IStoraged;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVold(Lcom/android/server/StorageManagerService;Landroid/os/IVold;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbootCompleted(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->bootCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcompleteUnlockUser(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->completeUnlockUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconnectStoraged(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconnectVold(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchOnFinished(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchOnStatus(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindRecordForPath(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mforgetPartition(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMountModeInternal(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->getMountModeInternal(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleBootCompleted(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleBootCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDaemonConnected(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleDaemonConnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSystemReady(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleSystemReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAppIoBlocked(Lcom/android/server/StorageManagerService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isAppIoBlocked(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misMountDisallowed(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misUidOwnerOfPackageOrSystem(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaybeRemountVolumes(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->maybeRemountVolumes(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmount(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCloudMediaProviderChangedAsync(Lcom/android/server/StorageManagerService;Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->notifyCloudMediaProviderChangedAsync(Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCleanupUser(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onCleanupUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCloudMediaProviderChangedAsync(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onCloudMediaProviderChangedAsync(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDiskScannedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMoveStatusLocked(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStopUser(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onStopUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUnlockUser(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onUnlockUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monVolumeCreatedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monVolumeStateChangedAsync(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->onVolumeStateChangedAsync(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monVolumeStateChangedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshZramSettings(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetIfBootedAndConnected(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrubPath(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mservicesReady(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->servicesReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msnapshotAndMonitorLegacyStorageAppOp(Lcom/android/server/StorageManagerService;Landroid/os/UserHandle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->snapshotAndMonitorLegacyStorageAppOp(Landroid/os/UserHandle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstart(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->start()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msystemReady(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->systemReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munmount(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLegacyStorageApps(Lcom/android/server/StorageManagerService;Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->updateLegacyStorageApps(Ljava/lang/String;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwarnOnNotMounted(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteSettingsLocked(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOCAL_LOGV()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 212
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 320
    const-string v0, "StorageManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    .line 346
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->ALL_STORAGE_PERMISSIONS:[Ljava/lang/String;

    .line 357
    const/16 v0, 0x3c

    sput v0, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 527
    const-string v0, "(?i)(^/storage/[^/]+/(?:([0-9]+)/)?Android/(?:data|media|obb|sandbox)/)([^/]+)(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 2134
    invoke-direct {p0}, Landroid/os/storage/IStorageManager$Stub;-><init>()V

    .line 232
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    .line 235
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCeStoragePreparedUsers:Ljava/util/Set;

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mNeedGC:Z

    .line 408
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 420
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 464
    new-instance v1, Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    .line 467
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 471
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 474
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 478
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 484
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 492
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 496
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mDelayMountedPubVolumes:Ljava/util/ArrayList;

    .line 500
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 502
    iput v1, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    .line 504
    iput v1, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    .line 506
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 508
    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    .line 513
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    .line 515
    iput v1, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    .line 518
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 521
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Ljava/util/HashMap;

    .line 637
    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 638
    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 639
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 659
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 662
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 665
    new-instance v0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-direct {v0, p0, v2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$StorageManagerInternalImpl-IA;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 673
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    .line 676
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Ljava/util/Map;

    .line 918
    new-instance v0, Lcom/android/server/StorageManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$1;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 950
    new-instance v0, Lcom/android/server/StorageManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$2;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    .line 1586
    new-instance v0, Lcom/android/server/StorageManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$6;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    .line 2135
    sput-object p0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 2136
    const-string/jumbo v0, "persist.sys.vold_app_data_isolation_enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mVoldAppDataIsolationEnabled:Z

    .line 2138
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 2139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 2140
    new-instance v0, Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 2141
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2143
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StorageManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2144
    .local v0, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2145
    new-instance v1, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    .line 2148
    new-instance v1, Lcom/android/server/StorageManagerService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/server/StorageManagerService$ObbActionHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    .line 2150
    new-instance v1, Lcom/android/server/storage/StorageSessionController;

    invoke-direct {v1, p1}, Lcom/android/server/storage/StorageSessionController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 2152
    new-instance v1, Lcom/android/server/pm/Installer;

    invoke-direct {v1, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 2153
    invoke-virtual {v1}, Lcom/android/server/pm/Installer;->onStart()V

    .line 2156
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 2157
    .local v1, "dataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "system"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2158
    .local v3, "systemDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "last-fstrim"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    .line 2159
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_157

    .line 2163
    :try_start_12e
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_136} :catch_137

    goto :goto_156

    .line 2164
    :catch_137
    move-exception v4

    .line 2165
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create fstrim record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    .end local v4    # "e":Ljava/io/IOException;
    :goto_156
    goto :goto_15d

    .line 2168
    :cond_157
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 2171
    :goto_15d
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    .line 2172
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "storage.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "storage-settings"

    invoke-direct {v4, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 2173
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    .line 2174
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "storage-write-records"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    .line 2176
    const-string/jumbo v4, "storage_native_boot"

    const-string/jumbo v5, "smart_idle_maint_period"

    const/16 v6, 0x3c

    invoke-static {v4, v5, v6}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 2178
    sget v4, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_19d

    .line 2179
    sput v5, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    goto :goto_1a5

    .line 2180
    :cond_19d
    sget v4, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    const/16 v5, 0x5a0

    if-le v4, v5, :cond_1a5

    .line 2181
    sput v5, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 2184
    :cond_1a5
    :goto_1a5
    const/16 v4, 0x10e0

    sget v5, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    .line 2185
    iget v4, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    .line 2187
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2188
    :try_start_1b5
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->readSettingsLocked()V

    .line 2189
    monitor-exit v4
    :try_end_1b9
    .catchall {:try_start_1b5 .. :try_end_1b9} :catchall_200

    .line 2191
    const-class v4, Landroid/os/storage/StorageManagerInternal;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-static {v4, v5}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2193
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v4

    .line 2194
    .local v5, "userFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2195
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2196
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v5, v2, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2199
    sget-boolean v2, Landroid/os/Build;->IS_MIUI:Z

    if-eqz v2, :cond_1ee

    .line 2200
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2201
    .local v2, "screenOnFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2202
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2206
    .end local v2    # "screenOnFilter":Landroid/content/IntentFilter;
    :cond_1ee
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2207
    :try_start_1f1
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 2208
    monitor-exit v2
    :try_end_1f5
    .catchall {:try_start_1f1 .. :try_end_1f5} :catchall_1fd

    .line 2212
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 2214
    return-void

    .line 2208
    :catchall_1fd
    move-exception v4

    :try_start_1fe
    monitor-exit v2
    :try_end_1ff
    .catchall {:try_start_1fe .. :try_end_1ff} :catchall_1fd

    throw v4

    .line 2189
    .end local v5    # "userFilter":Landroid/content/IntentFilter;
    :catchall_200
    move-exception v2

    :try_start_201
    monitor-exit v4
    :try_end_202
    .catchall {:try_start_201 .. :try_end_202} :catchall_200

    throw v2
.end method

.method private addInternalVolumeLocked()V
    .registers 5

    .line 1157
    new-instance v0, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v1, "private"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1159
    .local v0, "internal":Landroid/os/storage/VolumeInfo;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 1160
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1161
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 8
    .param p1, "obbState"    # Lcom/android/server/StorageManagerService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4451
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4452
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4454
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    if-nez v1, :cond_1a

    .line 4455
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 4456
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 4458
    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StorageManagerService$ObbState;

    .line 4459
    .local v3, "o":Lcom/android/server/StorageManagerService$ObbState;
    iget-object v4, v3, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 4463
    .end local v3    # "o":Lcom/android/server/StorageManagerService$ObbState;
    goto :goto_1e

    .line 4460
    .restart local v3    # "o":Lcom/android/server/StorageManagerService$ObbState;
    :cond_35
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Attempt to add ObbState twice. This indicates an error in the StorageManagerService logic."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4466
    .end local v3    # "o":Lcom/android/server/StorageManagerService$ObbState;
    :cond_3d
    :goto_3d
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4468
    :try_start_40
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->link()V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_4c

    .line 4481
    nop

    .line 4483
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4484
    return-void

    .line 4469
    :catch_4c
    move-exception v2

    .line 4474
    .local v2, "e":Landroid/os/RemoteException;
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4475
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 4476
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4480
    :cond_5b
    throw v2
.end method

.method private adjustAllocateFlags(IILjava/lang/String;)I
    .registers 10
    .param p1, "flags"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 4342
    and-int/lit8 v0, p1, 0x1

    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_d

    .line 4343
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ALLOCATE_AGGRESSIVE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4348
    :cond_d
    and-int/lit8 p1, p1, -0x3

    .line 4349
    and-int/lit8 p1, p1, -0x5

    .line 4354
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 4355
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4357
    .local v2, "token":J
    const/16 v4, 0x1a

    :try_start_21
    invoke-virtual {v0, v4, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 4358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is actively using camera; letting them defy reserved cached data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_21 .. :try_end_43} :catchall_4a

    .line 4360
    or-int/lit8 p1, p1, 0x4

    .line 4363
    :cond_45
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4364
    nop

    .line 4366
    return p1

    .line 4363
    :catchall_4a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4364
    throw v1
.end method

.method private bootCompleted()V
    .registers 3

    .line 2394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 2395
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2396
    return-void
.end method

.method private checkChargeStatus()Z
    .registers 10

    .line 3056
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3057
    .local v0, "ifilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 3059
    .local v1, "batteryStatus":Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mChargingRequired:Z

    const/4 v3, 0x0

    const-string v4, "StorageManagerService"

    const/4 v5, -0x1

    if-eqz v2, :cond_29

    .line 3060
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3061
    .local v2, "status":I
    const/4 v6, 0x2

    if-eq v2, v6, :cond_29

    const/4 v6, 0x5

    if-eq v2, v6, :cond_29

    .line 3063
    const-string v5, "Battery is not being charged"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    return v3

    .line 3068
    .end local v2    # "status":I
    :cond_29
    const-string/jumbo v2, "level"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3069
    .local v2, "level":I
    const-string/jumbo v6, "scale"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3070
    .local v5, "scale":I
    int-to-float v6, v2

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 3072
    .local v6, "chargePercent":F
    iget v7, p0, Lcom/android/server/StorageManagerService;->mLowBatteryLevel:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_66

    .line 3073
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Battery level is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", which is lower than threshold: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/StorageManagerService;->mLowBatteryLevel:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    return v3

    .line 3077
    :cond_66
    const/4 v3, 0x1

    return v3
.end method

.method private completeUnlockUser(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 1326
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->onKeyguardStateChanged(Z)V

    .line 1330
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1331
    :try_start_7
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v3, v2

    move v4, v0

    :goto_b
    if-ge v4, v3, :cond_2e

    aget v5, v2, v4

    .line 1332
    .local v5, "unlockedUser":I
    if-ne v5, p1, :cond_2b

    .line 1334
    const-string v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeUnlockUser called for already unlocked user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    monitor-exit v1

    return-void

    .line 1331
    .end local v5    # "unlockedUser":I
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1338
    :cond_2e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_6f

    .line 1339
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 1340
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 1341
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v0}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 1342
    .local v4, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1344
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    invoke-static {v5}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v5

    .line 1345
    .local v5, "envState":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5, v5}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyStorageStateChanged(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v5    # "envState":Ljava/lang/String;
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 1348
    .end local v2    # "i":I
    :cond_6f
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1351
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDelayMountedPubVolumes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 1352
    .local v2, "pubVolume":Landroid/os/storage/VolumeInfo;
    const-string v3, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user have started, start mounting delay public volume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1354
    .end local v2    # "pubVolume":Landroid/os/storage/VolumeInfo;
    goto :goto_7d

    .line 1355
    :cond_ad
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDelayMountedPubVolumes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1357
    monitor-exit v1

    .line 1358
    return-void

    .line 1357
    :catchall_b4
    move-exception v0

    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_7 .. :try_end_b6} :catchall_b4

    throw v0
.end method

.method private configureTranscoding()V
    .registers 6

    .line 1053
    const/4 v0, 0x0

    .line 1054
    .local v0, "transcodeEnabled":Z
    const/4 v1, 0x1

    .line 1056
    .local v1, "defaultValue":Z
    const-string/jumbo v2, "persist.sys.fuse.transcode_user_control"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1057
    const-string/jumbo v2, "persist.sys.fuse.transcode_enabled"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1e

    .line 1060
    :cond_14
    const-string/jumbo v2, "storage_native_boot"

    const-string/jumbo v3, "transcode_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1063
    :goto_1e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sys.fuse.transcode_enabled"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    if-eqz v0, :cond_3b

    .line 1066
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    new-instance v3, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController-IA;)V

    .line 1067
    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->registerAnrController(Landroid/app/AnrController;)V

    .line 1069
    :cond_3b
    return-void
.end method

.method private connectStoraged()V
    .registers 6

    .line 2224
    const-string/jumbo v0, "storaged"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2225
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_15

    .line 2227
    :try_start_9
    new-instance v1, Lcom/android/server/StorageManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$7;-><init>(Lcom/android/server/StorageManagerService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    .line 2237
    goto :goto_15

    .line 2235
    :catch_13
    move-exception v1

    .line 2236
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 2240
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    if-eqz v0, :cond_1e

    .line 2241
    invoke-static {v0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    goto :goto_26

    .line 2243
    :cond_1e
    const-string v1, "StorageManagerService"

    const-string/jumbo v2, "storaged not found; trying again"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :goto_26
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    if-nez v1, :cond_39

    .line 2247
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3c

    .line 2251
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->onDaemonConnected()V

    .line 2253
    :goto_3c
    return-void
.end method

.method private connectVold()V
    .registers 6

    .line 2256
    const-string/jumbo v0, "vold"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2257
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_15

    .line 2259
    :try_start_9
    new-instance v1, Lcom/android/server/StorageManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$8;-><init>(Lcom/android/server/StorageManagerService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    .line 2269
    goto :goto_15

    .line 2267
    :catch_13
    move-exception v1

    .line 2268
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 2272
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_32

    .line 2273
    invoke-static {v0}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 2275
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    invoke-interface {v2, v3}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_31

    .line 2276
    :catch_27
    move-exception v2

    .line 2277
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 2278
    const-string/jumbo v3, "vold listener rejected; trying again"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2279
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_31
    goto :goto_38

    .line 2281
    :cond_32
    const-string/jumbo v2, "vold not found; trying again"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    :goto_38
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    if-nez v1, :cond_4b

    .line 2285
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_51

    .line 2289
    :cond_4b
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->restoreLocalUnlockedUsers()V

    .line 2290
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->onDaemonConnected()V

    .line 2292
    :goto_51
    return-void
.end method

.method private dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "listener"    # Landroid/os/IVoldTaskListener;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/PersistableBundle;

    .line 4737
    if-eqz p1, :cond_7

    .line 4739
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onFinished(ILandroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 4741
    goto :goto_7

    .line 4740
    :catch_6
    move-exception v0

    .line 4743
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "listener"    # Landroid/os/IVoldTaskListener;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/PersistableBundle;

    .line 4727
    if-eqz p1, :cond_7

    .line 4729
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onStatus(ILandroid/os/PersistableBundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 4731
    goto :goto_7

    .line 4730
    :catch_6
    move-exception v0

    .line 4733
    :cond_7
    :goto_7
    return-void
.end method

.method private encodeBytes([B)Ljava/lang/String;
    .registers 3
    .param p1, "bytes"    # [B

    .line 3491
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3492
    const-string v0, "!"

    return-object v0

    .line 3494
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enforceAdminUser()V
    .registers 8

    .line 2115
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2116
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2118
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2120
    .local v2, "token":J
    :try_start_13
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_2a

    .line 2122
    .local v4, "isAdmin":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2123
    nop

    .line 2124
    if-eqz v4, :cond_22

    .line 2127
    return-void

    .line 2125
    :cond_22
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Only admin users can adopt sd cards"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2122
    .end local v4    # "isAdmin":Z
    :catchall_2a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2123
    throw v4
.end method

.method private enforceExternalStorageService()V
    .registers 4

    .line 3888
    const-string v0, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3889
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3890
    .local v0, "callingAppId":I
    iget v1, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    if-ne v0, v1, :cond_12

    .line 3893
    return-void

    .line 3891
    :cond_12
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the ExternalStorageService is permitted"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .registers 3
    .param p1, "perm"    # Ljava/lang/String;

    .line 2082
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    return-void
.end method

.method private findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .registers 6
    .param p1, "diskId"    # Ljava/lang/String;

    .line 621
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 623
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v1, :cond_19

    .line 624
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v1, v2

    .line 625
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    :cond_19
    monitor-exit v0

    return-object v1

    .line 628
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .line 554
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 556
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 557
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_2c

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 558
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    monitor-exit v0

    return-object v3

    .line 555
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 561
    .end local v1    # "i":I
    :cond_2f
    monitor-exit v0

    .line 562
    const/4 v0, 0x0

    return-object v0

    .line 561
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private findStorageForUuidAsUser(Ljava/lang/String;I)Landroid/os/storage/VolumeInfo;
    .registers 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 580
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 581
    .local v0, "storage":Landroid/os/storage/StorageManager;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emulated;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 583
    :cond_2a
    const-string/jumbo v1, "primary_physical"

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 584
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 586
    :cond_38
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 587
    .local v1, "info":Landroid/os/storage/VolumeInfo;
    if-nez v1, :cond_58

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findStorageForUuidAsUser cannot find volumeUuid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v2, 0x0

    return-object v2

    .line 591
    :cond_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "private"

    const-string v5, "emulated"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, "emulatedUuid":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    return-object v3
.end method

.method private findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 534
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_f

    .line 535
    monitor-exit v0

    return-object v1

    .line 537
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_29

    .line 538
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No volume found for ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 544
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 545
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_24

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 546
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 543
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 549
    .end local v1    # "i":I
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_41

    .line 550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No volume found for path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "partGuid"    # Ljava/lang/String;
    .param p2, "fsUuid"    # Ljava/lang/String;

    .line 2798
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 2801
    goto :goto_c

    .line 2799
    :catch_6
    move-exception v0

    .line 2800
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2802
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method private getAverageWriteAmount()I
    .registers 3

    .line 3032
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    iget v1, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    div-int/2addr v0, v1

    return v0
.end method

.method private getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .line 2404
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2405
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 2407
    :cond_e
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private static getLastAccessTime(Landroid/app/AppOpsManager;ILjava/lang/String;[I)J
    .registers 13
    .param p0, "manager"    # Landroid/app/AppOpsManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I

    .line 2375
    const-wide/16 v0, 0x0

    .line 2376
    .local v0, "maxTime":J
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v2

    .line 2377
    .local v2, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 2378
    .local v4, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 2379
    .local v6, "op":Landroid/app/AppOpsManager$OpEntry;
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v7

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2381
    .end local v6    # "op":Landroid/app/AppOpsManager$OpEntry;
    goto :goto_26

    .line 2382
    .end local v4    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_3d
    goto :goto_e

    .line 2383
    :cond_3e
    return-wide v0
.end method

.method private getMountModeInternal(ILjava/lang/String;)I
    .registers 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4754
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    if-nez v1, :cond_ad

    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_ad

    .line 4758
    :cond_f
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 4759
    .local v1, "packagesForUid":[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4761
    return v0

    .line 4763
    :cond_1c
    if-nez p2, :cond_21

    .line 4764
    aget-object v2, v1, v0

    move-object p2, v2

    .line 4767
    :cond_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_25} :catch_ae

    .line 4769
    .local v2, "token":J
    :try_start_25
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v4
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_a7

    if-eqz v4, :cond_36

    .line 4770
    nop

    .line 4773
    :try_start_32
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4770
    return v0

    .line 4773
    :cond_36
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4774
    nop

    .line 4776
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-virtual {v4, p1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->isExternalStorageService(I)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 4780
    const/4 v0, 0x3

    return v0

    .line 4783
    :cond_44
    iget v4, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/4 v6, 0x4

    if-eq v4, v5, :cond_a6

    iget v4, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    .line 4784
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-ne v4, v5, :cond_56

    goto :goto_a6

    .line 4791
    :cond_56
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v5, "android.permission.ACCESS_MTP"

    invoke-interface {v4, v5, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_63

    move v4, v5

    goto :goto_64

    :cond_63
    move v4, v0

    .line 4793
    .local v4, "hasMtp":Z
    :goto_64
    if-eqz v4, :cond_7b

    .line 4794
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v8, 0x0

    .line 4795
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 4794
    invoke-interface {v7, p2, v8, v9, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 4796
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_7b

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 4798
    return v6

    .line 4804
    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_7b
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v7, "android.permission.INSTALL_PACKAGES"

    invoke-interface {v6, v7, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_87

    move v6, v5

    goto :goto_88

    :cond_87
    move v6, v0

    .line 4806
    .local v6, "hasInstall":Z
    :goto_88
    const/4 v7, 0x0

    .line 4811
    .local v7, "hasInstallOp":Z
    array-length v8, v1

    move v9, v0

    :goto_8b
    if-ge v9, v8, :cond_9e

    aget-object v10, v1, v9

    .line 4812
    .local v10, "uidPackageName":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v12, 0x42

    invoke-interface {v11, v12, p1, v10}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_9b

    .line 4814
    const/4 v7, 0x1

    .line 4815
    goto :goto_9e

    .line 4811
    .end local v10    # "uidPackageName":Ljava/lang/String;
    :cond_9b
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    .line 4818
    :cond_9e
    :goto_9e
    if-nez v6, :cond_a4

    if-eqz v7, :cond_a3

    goto :goto_a4

    .line 4821
    :cond_a3
    return v5

    .line 4819
    :cond_a4
    :goto_a4
    const/4 v0, 0x2

    return v0

    .line 4788
    .end local v4    # "hasMtp":Z
    .end local v6    # "hasInstall":Z
    .end local v7    # "hasInstallOp":Z
    :cond_a6
    :goto_a6
    return v6

    .line 4773
    :catchall_a7
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4774
    nop

    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    throw v4
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_ad} :catch_ae

    .line 4755
    .end local v1    # "packagesForUid":[Ljava/lang/String;
    .end local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :cond_ad
    :goto_ad
    return v0

    .line 4822
    :catch_ae
    move-exception v1

    .line 4825
    return v0
.end method

.method private getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;
    .registers 8
    .param p1, "authority"    # Ljava/lang/String;

    .line 2320
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2323
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2320
    const-wide/32 v2, 0xc0000

    const/16 v5, 0x3e8

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method private handleBootCompleted()V
    .registers 1

    .line 2399
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfBootedAndConnected()V

    .line 2400
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 2401
    return-void
.end method

.method private handleDaemonConnected()V
    .registers 1

    .line 1582
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfBootedAndConnected()V

    .line 1583
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 1584
    return-void
.end method

.method private handleSystemReady()V
    .registers 6

    .line 988
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->prepareSmartIdleMaint()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 989
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    invoke-static {v0, v1}, Lcom/android/server/SmartStorageMaintIdler;->scheduleSmartIdlePass(Landroid/content/Context;I)V

    .line 993
    :cond_d
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 996
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 997
    const-string/jumbo v1, "zram_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/StorageManagerService$3;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/StorageManagerService$3;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Handler;)V

    .line 996
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1005
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    .line 1008
    const-string/jumbo v0, "persist.sys.zram_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, "zramPropValue":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1010
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111020d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1012
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 1016
    :cond_4f
    invoke-static {}, Lcom/android/server/ExtendMStub;->getInstance()Lcom/android/server/ExtendMStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/ExtendMStub;->start(Landroid/content/Context;)V

    .line 1017
    invoke-static {}, Lcom/android/server/storage/appdefrag/AppDefragServiceStub;->getInstance()Lcom/android/server/storage/appdefrag/AppDefragServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/storage/appdefrag/AppDefragServiceStub;->start(Landroid/content/Context;)V

    .line 1019
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->configureTranscoding()V

    .line 1020
    return-void
.end method

.method private initIfBootedAndConnected()V
    .registers 10

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thinking about init, mBootCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDaemonConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_8a

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_8a

    .line 1168
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1172
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    .line 1173
    .local v0, "initLocked":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting up emulation state, initlocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 1175
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1177
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_76

    .line 1178
    :try_start_6e
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v5, v6}, Landroid/os/IVold;->lockUserKey(I)V

    goto :goto_84

    .line 1180
    :cond_76
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_84} :catch_85

    .line 1184
    :goto_84
    goto :goto_89

    .line 1182
    :catch_85
    move-exception v5

    .line 1183
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1185
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_89
    goto :goto_60

    .line 1187
    .end local v0    # "initLocked":Z
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8a
    return-void
.end method

.method private isAppIoBlocked(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 3841
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v0, p1}, Lcom/android/server/storage/StorageSessionController;->isAppIoBlocked(I)Z

    move-result v0

    return v0
.end method

.method private isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .registers 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 1835
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_16

    .line 1842
    :pswitch_8
    return v1

    .line 1840
    :pswitch_9
    nop

    .line 1845
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 1854
    :pswitch_11
    return v1

    .line 1852
    :pswitch_12
    nop

    .line 1857
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .registers 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 2090
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/enterprise/RestrictionsHelper;->isMountDisallowed(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 2091
    return v1

    .line 2095
    :cond_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2097
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v2, 0x0

    .line 2098
    .local v2, "isUsbRestricted":Z
    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v3, :cond_2d

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2099
    nop

    .line 2100
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 2099
    const-string/jumbo v4, "no_usb_file_transfer"

    invoke-virtual {v0, v4, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    .line 2103
    :cond_2d
    const/4 v3, 0x0

    .line 2104
    .local v3, "isTypeRestricted":Z
    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v4, :cond_3b

    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eq v4, v1, :cond_3b

    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_47

    .line 2106
    :cond_3b
    nop

    .line 2108
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 2107
    const-string/jumbo v5, "no_physical_media"

    invoke-virtual {v0, v5, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    .line 2111
    :cond_47
    if-nez v2, :cond_4d

    if-eqz v3, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :cond_4d
    :goto_4d
    return v1
.end method

.method private isSystemUnlocked(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3621
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3622
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3623
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .line 3329
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_6

    .line 3330
    const/4 v0, 0x1

    return v0

    .line 3333
    :cond_6
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private killMediaProvider(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1125
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez p1, :cond_3

    return-void

    .line 1127
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1129
    .local v0, "token":J
    :try_start_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1131
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSystemOnly()Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_b

    .line 1133
    :cond_1e
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v6, "media"

    const-wide/32 v7, 0xc0000

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    const/16 v10, 0x3e8

    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 1137
    .local v4, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_49

    .line 1138
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_4f

    .line 1140
    .local v5, "am":Landroid/app/IActivityManager;
    :try_start_34
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1141
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v8, -0x1

    const-string/jumbo v9, "vold reset"

    .line 1140
    invoke-interface {v5, v6, v7, v8, v9}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_47} :catch_48
    .catchall {:try_start_34 .. :try_end_47} :catchall_4f

    .line 1144
    goto :goto_4a

    .line 1145
    :catch_48
    move-exception v6

    .line 1148
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "provider":Landroid/content/pm/ProviderInfo;
    .end local v5    # "am":Landroid/app/IActivityManager;
    :cond_49
    goto :goto_b

    .line 1150
    :cond_4a
    :goto_4a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1151
    nop

    .line 1152
    return-void

    .line 1150
    :catchall_4f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1151
    throw v2
.end method

.method private loadStorageWriteRecords()V
    .registers 5

    .line 3012
    const/4 v0, 0x0

    .line 3015
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 3016
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3018
    .local v1, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 3019
    .local v2, "periodValue":I
    sget v3, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    if-ne v2, v3, :cond_2f

    .line 3020
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_20
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    goto :goto_2f

    .line 3027
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .end local v2    # "periodValue":I
    :catchall_1e
    move-exception v1

    goto :goto_2a

    .line 3024
    :catch_20
    move-exception v1

    .line 3025
    .local v1, "e":Ljava/lang/Exception;
    :try_start_21
    const-string v2, "StorageManagerService"

    const-string v3, "Failed reading write records"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1e

    .line 3027
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_30

    :goto_2a
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3028
    throw v1

    .line 3022
    :catch_2e
    move-exception v1

    .line 3027
    :cond_2f
    :goto_2f
    nop

    :goto_30
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3028
    nop

    .line 3029
    return-void
.end method

.method private maybeLogMediaMount(Landroid/os/storage/VolumeInfo;I)V
    .registers 10
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "newState"    # I

    .line 2030
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2031
    return-void

    .line 2034
    :cond_7
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 2035
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v0, :cond_4e

    iget v1, v0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v1, v1, 0xc

    if-nez v1, :cond_14

    goto :goto_4e

    .line 2040
    :cond_14
    iget-object v1, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_1f
    const-string v1, ""

    .line 2042
    .local v1, "label":Ljava/lang/String;
    :goto_21
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p2, v4, :cond_3f

    const/4 v5, 0x3

    if-ne p2, v5, :cond_2a

    goto :goto_3f

    .line 2045
    :cond_2a
    if-eqz p2, :cond_30

    const/16 v5, 0x8

    if-ne p2, v5, :cond_4d

    .line 2047
    :cond_30
    const v5, 0x3345e

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-static {v5, v4}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_4d

    .line 2044
    :cond_3f
    :goto_3f
    const v5, 0x3345d

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-static {v5, v4}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2049
    :cond_4d
    :goto_4d
    return-void

    .line 2036
    .end local v1    # "label":Ljava/lang/String;
    :cond_4e
    :goto_4e
    return-void
.end method

.method private maybeRemountVolumes(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 1389
    const/4 v0, 0x0

    .line 1390
    .local v0, "reset":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    .local v1, "volumesToRemount":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1392
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_3e

    .line 1393
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 1394
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1395
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v5

    iget v6, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-eq v5, v6, :cond_3b

    .line 1398
    iget v5, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v5, v4, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1399
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1392
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1402
    .end local v3    # "i":I
    :cond_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_88

    .line 1404
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 1405
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    const-string v4, "StorageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remounting volume for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Volume: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1407
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1408
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    goto :goto_43

    .line 1409
    :cond_87
    return-void

    .line 1402
    :catchall_88
    move-exception v3

    :try_start_89
    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v3
.end method

.method private mount(Landroid/os/storage/VolumeInfo;)V
    .registers 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 2564
    const-string v0, "StorageManagerService"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mounting volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget v3, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget v4, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    new-instance v5, Lcom/android/server/StorageManagerService$10;

    invoke-direct {v5, p0, p1}, Lcom/android/server/StorageManagerService$10;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IVold;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 2593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mounted volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3e} :catch_3f

    .line 2596
    goto :goto_43

    .line 2594
    :catch_3f
    move-exception v1

    .line 2595
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2597
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_43
    return-void
.end method

.method private notifyCloudMediaProviderChangedAsync(Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    .line 2010
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2011
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_21

    .line 2012
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 2013
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2012
    invoke-interface {p1, v2, v3}, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;->onCloudProviderChanged(ILjava/lang/String;)V

    .line 2011
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2015
    .end local v1    # "i":I
    :cond_21
    monitor-exit v0

    .line 2016
    return-void

    .line 2015
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private onCleanupUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1361
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCleanupUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :try_start_19
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStopped(I)V

    .line 1365
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStopped(I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_24

    .line 1368
    goto :goto_2a

    .line 1366
    :catch_24
    move-exception v0

    .line 1367
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1370
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1371
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1372
    monitor-exit v0

    .line 1373
    return-void

    .line 1372
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_37

    throw v1
.end method

.method private onCloudMediaProviderChangedAsync(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 2020
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2021
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2022
    .local v1, "authority":Ljava/lang/String;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_27

    .line 2024
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-static {v0}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->-$$Nest$fgetmCloudProviderChangeListeners(Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;

    .line 2025
    .local v2, "listener":Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;
    invoke-interface {v2, p1, v1}, Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;->onCloudProviderChanged(ILjava/lang/String;)V

    .line 2026
    .end local v2    # "listener":Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;
    goto :goto_16

    .line 2027
    :cond_26
    return-void

    .line 2022
    .end local v1    # "authority":Ljava/lang/String;
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    .registers 7
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .line 1721
    const/4 v0, 0x0

    .line 1722
    .local v0, "volumeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 1723
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 1724
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1725
    add-int/lit8 v0, v0, 0x1

    .line 1722
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1729
    .end local v1    # "i":I
    :cond_23
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.os.storage.action.DISK_SCANNED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1730
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x5000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1732
    iget-object v2, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    const-string v3, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1733
    const-string v2, "android.os.storage.extra.VOLUME_COUNT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1734
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1736
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 1737
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_54

    .line 1738
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1741
    :cond_54
    iput v0, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 1742
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v3, p1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyDiskScanned(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    .line 1743
    return-void
.end method

.method private onMoveStatusLocked(I)V
    .registers 7
    .param p1, "status"    # I

    .line 2053
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    const-string v1, "StorageManagerService"

    if-nez v0, :cond_c

    .line 2054
    const-string v0, "Odd, status but no move requested"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    return-void

    .line 2060
    :cond_c
    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    :try_start_f
    invoke-interface {v0, v2, p1, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 2062
    goto :goto_14

    .line 2061
    :catch_13
    move-exception v0

    .line 2066
    :goto_14
    const/16 v0, 0x52

    const-string v2, "Move to "

    if-ne p1, v0, :cond_3d

    .line 2067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " copy phase finshed; persisting"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2070
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2073
    :cond_3d
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " finished with status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 2077
    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 2079
    :cond_68
    return-void
.end method

.method private onStopUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :try_start_19
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v0, p1}, Lcom/android/server/storage/StorageSessionController;->onUserStopping(I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 1381
    goto :goto_23

    .line 1379
    :catch_1f
    move-exception v0

    .line 1380
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1382
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/PackageMonitor;

    .line 1383
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    if-eqz v0, :cond_34

    .line 1384
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1386
    :cond_34
    return-void
.end method

.method private onUnlockUser(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnlockUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/4 v0, 0x0

    if-eqz p1, :cond_71

    .line 1294
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "system"

    .line 1295
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 1294
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 1296
    .local v2, "userContext":Landroid/content/Context;
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1297
    .local v3, "um":Landroid/os/UserManager;
    if-eqz v3, :cond_59

    invoke-virtual {v3}, Landroid/os/UserManager;->isMediaSharedWithParent()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1298
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1299
    .local v4, "parentUserId":I
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_59} :catch_5a

    .line 1304
    .end local v2    # "userContext":Landroid/content/Context;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "parentUserId":I
    :cond_59
    goto :goto_71

    .line 1302
    :catch_5a
    move-exception v2

    .line 1303
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create user context for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_71
    :goto_71
    :try_start_71
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v2, p1}, Lcom/android/server/storage/StorageSessionController;->onUnlockUser(I)V

    .line 1311
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v2, p1}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1312
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v2, p1}, Landroid/os/IStoraged;->onUserStarted(I)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_80} :catch_81

    .line 1315
    goto :goto_85

    .line 1313
    :catch_81
    move-exception v2

    .line 1314
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1317
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_85
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1318
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1319
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    if-eqz v1, :cond_9d

    iget v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_9d

    .line 1320
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->maybeRemountVolumes(I)V

    .line 1321
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    .line 1323
    :cond_9d
    return-void
.end method

.method private onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .registers 13
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 1747
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->isOnlyCoreApps()Z

    move-result v0

    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_25

    .line 1748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System booted in core-only mode; ignoring volume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    return-void

    .line 1751
    :cond_25
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1752
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1754
    .local v0, "amInternal":Landroid/app/ActivityManagerInternal;
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    const-string v3, " because user "

    const-string v4, "Ignoring volume "

    const/4 v5, 0x0

    if-ltz v2, :cond_6b

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-virtual {v0, v2, v5}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 1755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1756
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is no longer running."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1755
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    return-void

    .line 1760
    :cond_6b
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const-string v6, "Found primary storage at "

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x5

    if-ne v2, v7, :cond_120

    .line 1761
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget v7, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1762
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 1761
    invoke-virtual {v2, v7, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    .line 1765
    .local v2, "volumeUserContext":Landroid/content/Context;
    if-eqz v2, :cond_8f

    .line 1766
    const-class v5, Landroid/os/UserManager;

    .line 1765
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 1766
    invoke-virtual {v5}, Landroid/os/UserManager;->isMediaSharedWithParent()Z

    move-result v5

    goto :goto_90

    :cond_8f
    nop

    .line 1771
    .local v5, "isMediaSharedWithParent":Z
    :goto_90
    if-nez v5, :cond_c9

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    iget v10, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1772
    invoke-virtual {v7, v10}, Lcom/android/server/storage/StorageSessionController;->supportsExternalStorage(I)Z

    move-result v7

    if-nez v7, :cond_c9

    .line 1773
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1774
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not support external storage."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1773
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    return-void

    .line 1779
    :cond_c9
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 1780
    .local v3, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v3, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 1782
    .local v4, "privateVol":Landroid/os/storage/VolumeInfo;
    sget-object v7, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v7, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ec

    iget-object v7, v4, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 1783
    const-string/jumbo v10, "private"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f6

    :cond_ec
    iget-object v7, v4, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1784
    invoke-static {v7, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11e

    .line 1785
    :cond_f6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v8

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1787
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1788
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1791
    .end local v2    # "volumeUserContext":Landroid/content/Context;
    .end local v3    # "storage":Landroid/os/storage/StorageManager;
    .end local v4    # "privateVol":Landroid/os/storage/VolumeInfo;
    .end local v5    # "isMediaSharedWithParent":Z
    :cond_11e
    goto/16 :goto_1f8

    :cond_120
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_1ae

    .line 1793
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_156

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 1794
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v2

    if-eqz v2, :cond_156

    .line 1795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v2, v8

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1797
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1802
    :cond_156
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v2

    if-eqz v2, :cond_164

    .line 1803
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1806
    :cond_164
    iget v2, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1809
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v2

    if-eqz v2, :cond_18d

    .line 1810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mStartedUsers is empty, delay mount public volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDelayMountedPubVolumes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f8

    .line 1813
    :cond_18d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mStartedUsers exist, then mount public volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1f8

    .line 1818
    :cond_1ae
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v2, v8, :cond_1bc

    .line 1819
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1f8

    .line 1821
    :cond_1bc
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v2, v9, :cond_1e2

    .line 1822
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isStubVisible()Z

    move-result v1

    if-eqz v1, :cond_1cf

    .line 1823
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    goto :goto_1d4

    .line 1825
    :cond_1cf
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v7

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1827
    :goto_1d4
    iget v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1828
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1f8

    .line 1830
    :cond_1e2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping automatic mounting of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :goto_1f8
    return-void
.end method

.method private onVolumeStateChangedAsync(Landroid/os/storage/VolumeInfo;II)V
    .registers 16
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 1909
    const/4 v0, 0x2

    if-ne p3, v0, :cond_17

    .line 1914
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->prepareUserStorageIfNeeded(Landroid/os/storage/VolumeInfo;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 1923
    goto :goto_17

    .line 1915
    :catch_7
    move-exception v0

    .line 1918
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10

    .line 1921
    goto :goto_16

    .line 1919
    :catch_10
    move-exception v1

    .line 1920
    .local v1, "ee":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1922
    .end local v1    # "ee":Ljava/lang/Exception;
    :goto_16
    return-void

    .line 1926
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1929
    :try_start_1a
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 1930
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    .line 1931
    .local v2, "rec":Landroid/os/storage/VolumeRecord;
    if-nez v2, :cond_57

    .line 1932
    new-instance v3, Landroid/os/storage/VolumeRecord;

    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    move-object v2, v3

    .line 1933
    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1935
    iget v3, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4f

    .line 1936
    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1938
    :cond_4f
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 1941
    :cond_57
    iget-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1942
    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1946
    :cond_63
    :goto_63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 1947
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1949
    .end local v2    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_1a .. :try_end_6d} :catchall_10f

    .line 1955
    :try_start_6d
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v1, p1}, Lcom/android/server/storage/StorageSessionController;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;)V
    :try_end_72
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_6d .. :try_end_72} :catch_73

    .line 1958
    goto :goto_7b

    .line 1956
    :catch_73
    move-exception v1

    .line 1957
    .local v1, "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    const-string v2, "StorageManagerService"

    const-string v3, "Failed to notify volume state changed to the Storage Service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1959
    .end local v1    # "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    :goto_7b
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1960
    :try_start_7e
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeStateChanged(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    .line 1964
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_b6

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 1965
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1966
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.os.storage.extra.VOLUME_ID"

    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1967
    const-string v3, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1968
    const-string v3, "android.os.storage.extra.FS_UUID"

    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1969
    const/high16 v3, 0x5000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1971
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1974
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_b6
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v1

    .line 1975
    .local v1, "oldStateEnv":Ljava/lang/String;
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v3

    .line 1977
    .local v3, "newStateEnv":Ljava/lang/String;
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ef

    .line 1981
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_c9
    if-ge v7, v5, :cond_ef

    aget v8, v4, v7

    .line 1982
    .local v8, "userId":I
    invoke-virtual {p1, v8}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result v9

    if-eqz v9, :cond_ec

    .line 1983
    iget-object v9, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9, v8, v6}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v9

    .line 1985
    .local v9, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v10, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    invoke-virtual {v10, v11, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 1987
    iget-object v10, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1, v3}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyStorageStateChanged(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    .end local v8    # "userId":I
    .end local v9    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_ec
    add-int/lit8 v7, v7, 0x1

    goto :goto_c9

    .line 1993
    :cond_ef
    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v5, 0x5

    if-eqz v4, :cond_f8

    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v4, v5, :cond_107

    :cond_f8
    iget v4, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v4, v5, :cond_107

    .line 2001
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2004
    :cond_107
    invoke-direct {p0, p1, p3}, Lcom/android/server/StorageManagerService;->maybeLogMediaMount(Landroid/os/storage/VolumeInfo;I)V

    .line 2005
    .end local v1    # "oldStateEnv":Ljava/lang/String;
    .end local v3    # "newStateEnv":Ljava/lang/String;
    monitor-exit v2

    .line 2006
    return-void

    .line 2005
    :catchall_10c
    move-exception v0

    monitor-exit v2
    :try_end_10e
    .catchall {:try_start_7e .. :try_end_10e} :catchall_10c

    throw v0

    .line 1949
    :catchall_10f
    move-exception v0

    :try_start_110
    monitor-exit v1
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw v0
.end method

.method private onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    .registers 7
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 1861
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 1862
    if-eq p3, v1, :cond_15

    .line 1863
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 1864
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mVoldAppDataIsolationEnabled:Z

    if-eqz v0, :cond_2a

    .line 1865
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v0

    .line 1867
    .local v0, "userId":I
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/StorageManagerService;ILandroid/os/storage/VolumeInfo;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1903
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1906
    .end local v0    # "userId":I
    :cond_2a
    :goto_2a
    return-void
.end method

.method private prepareSmartIdleMaint()Z
    .registers 6

    .line 2971
    const-string/jumbo v0, "storage_native_boot"

    const-string/jumbo v1, "smart_idle_maint_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 2975
    .local v1, "smartIdleMaintEnabled":Z
    if-eqz v1, :cond_60

    .line 2976
    const/16 v3, 0x46

    const-string/jumbo v4, "lifetime_threshold"

    invoke-static {v0, v4, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/StorageManagerService;->mLifetimePercentThreshold:I

    .line 2979
    const/16 v3, 0x200

    const-string/jumbo v4, "min_segments_threshold"

    invoke-static {v0, v4, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/StorageManagerService;->mMinSegmentsThreshold:I

    .line 2981
    const/high16 v3, 0x3f000000    # 0.5f

    const-string v4, "dirty_reclaim_rate"

    invoke-static {v0, v4, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/StorageManagerService;->mDirtyReclaimRate:F

    .line 2983
    const/high16 v3, 0x3f800000    # 1.0f

    const-string/jumbo v4, "segment_reclaim_weight"

    invoke-static {v0, v4, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/StorageManagerService;->mSegmentReclaimWeight:F

    .line 2986
    const/high16 v3, 0x41a00000    # 20.0f

    const-string/jumbo v4, "low_battery_level"

    invoke-static {v0, v4, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/StorageManagerService;->mLowBatteryLevel:F

    .line 2988
    const/4 v3, 0x1

    const-string v4, "charging_required"

    invoke-static {v0, v4, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mChargingRequired:Z

    .line 2993
    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->mNeedGC:Z

    .line 2995
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->loadStorageWriteRecords()V

    .line 2997
    :try_start_51
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->refreshLatestWrite()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_56} :catch_57

    .line 3000
    goto :goto_5d

    .line 2998
    :catch_57
    move-exception v0

    .line 2999
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3001
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5d
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshLifetimeConstraint()Z

    .line 3003
    :cond_60
    return v1
.end method

.method private prepareUserStorageIfNeeded(Landroid/os/storage/VolumeInfo;)V
    .registers 10
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3627
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 3628
    return-void

    .line 3631
    :cond_6
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3632
    .local v0, "um":Landroid/os/UserManager;
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 3633
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 3635
    .local v1, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3637
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 3638
    const/4 v4, 0x3

    .local v4, "flags":I
    goto :goto_3f

    .line 3639
    .end local v4    # "flags":I
    :cond_36
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3640
    const/4 v4, 0x1

    .line 3645
    .restart local v4    # "flags":I
    :goto_3f
    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    iget v7, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-direct {p0, v5, v6, v7, v4}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(Ljava/lang/String;III)V

    .line 3646
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "flags":I
    goto :goto_20

    .line 3647
    :cond_49
    return-void
.end method

.method private prepareUserStorageInternal(Ljava/lang/String;III)V
    .registers 11
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "serialNumber"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3663
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;III)V

    .line 3666
    if-eqz p1, :cond_23

    .line 3667
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 3668
    .local v1, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 3669
    .local v2, "info":Landroid/os/storage/VolumeInfo;
    if-eqz v2, :cond_23

    if-nez p2, :cond_23

    iget v3, v2, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v3, v0, :cond_23

    .line 3670
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/Installer;->tryMountDataMirror(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_25

    .line 3689
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    .end local v2    # "info":Landroid/os/storage/VolumeInfo;
    :cond_23
    nop

    .line 3690
    return-void

    .line 3673
    :catch_25
    move-exception v1

    .line 3674
    .local v1, "e":Ljava/lang/Exception;
    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "224585613"

    aput-object v5, v3, v4

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, ""

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3675
    const-string v0, "StorageManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3682
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 3683
    .local v2, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v2, p2}, Lcom/android/server/pm/UserManagerInternal;->shouldIgnorePrepareStorageErrors(I)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 3684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ignoring error preparing storage for existing user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; device may be insecure!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    return-void

    .line 3688
    :cond_71
    throw v1
.end method

.method private readSettingsLocked()V
    .registers 13

    .line 2413
    const-string v0, "Failed reading metadata"

    const-string v1, "StorageManagerService"

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 2414
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2416
    const/4 v2, 0x0

    .line 2418
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_10
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 2419
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    .line 2422
    .local v3, "in":Landroid/util/TypedXmlPullParser;
    :cond_1b
    :goto_1b
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_70

    .line 2423
    const/4 v4, 0x2

    if-ne v5, v4, :cond_1b

    .line 2424
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2425
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v8, "volumes"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 2426
    const/4 v8, 0x0

    const-string/jumbo v9, "version"

    invoke-interface {v3, v8, v9, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 2427
    .local v8, "version":I
    const-string/jumbo v9, "ro.vold.primary_physical"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 2429
    .local v9, "primaryPhysical":Z
    const/4 v11, 0x3

    if-ge v8, v11, :cond_4c

    if-lt v8, v4, :cond_4b

    if-nez v9, :cond_4b

    goto :goto_4c

    :cond_4b
    move v6, v10

    :cond_4c
    :goto_4c
    move v4, v6

    .line 2431
    .local v4, "validAttr":Z
    if-eqz v4, :cond_6e

    .line 2432
    const-string/jumbo v6, "primaryStorageUuid"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    goto :goto_6e

    .line 2435
    .end local v4    # "validAttr":Z
    .end local v8    # "version":I
    .end local v9    # "primaryPhysical":Z
    :cond_59
    const-string/jumbo v4, "volume"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 2436
    invoke-static {v3}, Lcom/android/server/StorageManagerService;->readVolumeRecord(Landroid/util/TypedXmlPullParser;)Landroid/os/storage/VolumeRecord;

    move-result-object v4

    .line 2437
    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v8, v4, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v6, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_6d} :catch_83
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_6d} :catch_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_6d} :catch_73
    .catchall {:try_start_10 .. :try_end_6d} :catchall_71

    goto :goto_6f

    .line 2435
    .end local v4    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_6e
    :goto_6e
    nop

    .line 2439
    .end local v7    # "tag":Ljava/lang/String;
    :goto_6f
    goto :goto_1b

    .line 2422
    .end local v3    # "in":Landroid/util/TypedXmlPullParser;
    .end local v5    # "type":I
    :cond_70
    goto :goto_84

    .line 2448
    :catchall_71
    move-exception v0

    goto :goto_7f

    .line 2445
    :catch_73
    move-exception v3

    .line 2446
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_74
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2448
    nop

    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_85

    .line 2443
    :catch_79
    move-exception v3

    .line 2444
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_71

    .line 2448
    nop

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_85

    :goto_7f
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2449
    throw v0

    .line 2441
    :catch_83
    move-exception v0

    .line 2448
    :goto_84
    nop

    :goto_85
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2449
    nop

    .line 2450
    return-void
.end method

.method public static readVolumeRecord(Landroid/util/TypedXmlPullParser;)Landroid/os/storage/VolumeRecord;
    .registers 10
    .param p0, "in"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2481
    const/4 v0, 0x0

    const-string/jumbo v1, "type"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2482
    .local v1, "type":I
    const-string v2, "fsUuid"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2483
    .local v2, "fsUuid":Ljava/lang/String;
    new-instance v3, Landroid/os/storage/VolumeRecord;

    invoke-direct {v3, v1, v2}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 2484
    .local v3, "meta":Landroid/os/storage/VolumeRecord;
    const-string/jumbo v4, "partGuid"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 2485
    const-string/jumbo v4, "nickname"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 2486
    const-string/jumbo v4, "userFlags"

    invoke-interface {p0, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 2487
    const-string v4, "createdMillis"

    const-wide/16 v5, 0x0

    invoke-interface {p0, v0, v4, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v3, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 2488
    const-string/jumbo v4, "lastSeenMillis"

    invoke-interface {p0, v0, v4, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v3, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 2489
    const-string/jumbo v4, "lastTrimMillis"

    invoke-interface {p0, v0, v4, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v3, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 2490
    const-string/jumbo v4, "lastBenchMillis"

    invoke-interface {p0, v0, v4, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 2491
    return-object v3
.end method

.method private refreshLifetimeConstraint()Z
    .registers 7

    .line 3081
    const-string v0, "StorageManagerService"

    const/4 v1, 0x0

    .line 3084
    .local v1, "storageLifeTime":I
    const/4 v2, 0x0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v3}, Landroid/os/IVold;->getStorageLifeTime()I

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_5c

    move v1, v3

    .line 3088
    nop

    .line 3090
    const/4 v3, -0x1

    if-ne v1, v3, :cond_15

    .line 3091
    const-string v3, "Failed to get storage lifetime"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    return v2

    .line 3093
    :cond_15
    iget v3, p0, Lcom/android/server/StorageManagerService;->mLifetimePercentThreshold:I

    const/4 v4, 0x1

    if-le v1, v3, :cond_45

    .line 3094
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ended smart idle maintenance, because of lifetime("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "), lifetime threshold("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/StorageManagerService;->mLifetimePercentThreshold:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    iput-boolean v4, p0, Lcom/android/server/StorageManagerService;->mPassedLifetimeThresh:Z

    .line 3097
    return v2

    .line 3099
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storage lifetime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    return v4

    .line 3085
    :catch_5c
    move-exception v3

    .line 3086
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3087
    return v2
.end method

.method private refreshZramSettings()V
    .registers 6

    .line 1028
    const-string/jumbo v0, "persist.sys.zram_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1029
    .local v1, "propertyValue":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1030
    return-void

    .line 1035
    :cond_10
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1033
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const-string/jumbo v4, "zram_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "1"

    if-eqz v2, :cond_24

    .line 1036
    move-object v2, v3

    goto :goto_26

    :cond_24
    const-string v2, "0"

    .line 1037
    .local v2, "desiredPropertyValue":Ljava/lang/String;
    :goto_26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 1041
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1044
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111020d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1046
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 1049
    :cond_49
    return-void
.end method

.method private remountAppStorageDirs(Ljava/util/Map;I)V
    .registers 11
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 2544
    .local p1, "pidPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2545
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2546
    .local v2, "pid":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2547
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remounting storage for pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StorageManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2549
    invoke-virtual {v4, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 2550
    .local v4, "sharedPackages":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v3, v6, v7, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    .line 2552
    .local v5, "uid":I
    array-length v6, v4

    if-eqz v6, :cond_4f

    move-object v6, v4

    goto :goto_55

    :cond_4f
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    .line 2554
    .local v6, "packages":[Ljava/lang/String;
    :goto_55
    :try_start_55
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v7, v5, v2, v6}, Landroid/os/IVold;->remountAppStorageDirs(II[Ljava/lang/String;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5a} :catch_5c

    .line 2557
    nop

    .line 2558
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "pid":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "sharedPackages":[Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "packages":[Ljava/lang/String;
    goto :goto_8

    .line 2555
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v2    # "pid":I
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "sharedPackages":[Ljava/lang/String;
    .restart local v5    # "uid":I
    .restart local v6    # "packages":[Ljava/lang/String;
    :catch_5c
    move-exception v0

    .line 2556
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 2559
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "pid":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "sharedPackages":[Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "packages":[Ljava/lang/String;
    :cond_62
    return-void
.end method

.method private removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 6
    .param p1, "obbState"    # Lcom/android/server/StorageManagerService$ObbState;

    .line 4487
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4488
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4489
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    if-eqz v1, :cond_22

    .line 4490
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4491
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->unlink()V

    .line 4493
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4494
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4498
    :cond_22
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4499
    return-void
.end method

.method private resetIfBootedAndConnected()V
    .registers 9

    .line 1190
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thinking about reset, mBootCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDaemonConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_bc

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_bc

    .line 1193
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1194
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1196
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v4, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/storage/StorageSessionController;->onReset(Landroid/os/IVold;Ljava/lang/Runnable;)V

    .line 1201
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1203
    :try_start_4b
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 1206
    .local v3, "systemUnlockedUsers":[I
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1207
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1209
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 1210
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_b9

    .line 1218
    :try_start_60
    const-string v2, "StorageManagerService"

    const-string v4, "Resetting vold..."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v2}, Landroid/os/IVold;->reset()V

    .line 1220
    const-string v2, "StorageManagerService"

    const-string v4, "Reset vold"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1224
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v5, v6, v7}, Landroid/os/IVold;->onUserAdded(II)V

    .line 1225
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    goto :goto_77

    .line 1226
    :cond_8d
    array-length v2, v3

    const/4 v4, 0x0

    :goto_8f
    if-ge v4, v2, :cond_a0

    aget v5, v3, v4

    .line 1227
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v6, v5}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1228
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v6, v5}, Landroid/os/IStoraged;->onUserStarted(I)V

    .line 1226
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    .line 1230
    :cond_a0
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/StorageManagerService;->restoreSystemUnlockedUsers(Landroid/os/UserManager;Ljava/util/List;[I)V

    .line 1231
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v4, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-interface {v2, v4}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V

    .line 1232
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {v2, v4}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->onReset(Landroid/os/IVold;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_b1} :catch_b2

    .line 1235
    goto :goto_bc

    .line 1233
    :catch_b2
    move-exception v2

    .line 1234
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "StorageManagerService"

    invoke-static {v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bc

    .line 1210
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "systemUnlockedUsers":[I
    :catchall_b9
    move-exception v3

    :try_start_ba
    monitor-exit v2
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    throw v3

    .line 1237
    .end local v0    # "userManager":Landroid/os/UserManager;
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_bc
    :goto_bc
    return-void
.end method

.method private restoreLocalUnlockedUsers()V
    .registers 5

    .line 1270
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->getUnlockedUsers()[I

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_3d

    .line 1274
    .local v0, "userIds":[I
    nop

    .line 1275
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 1276
    const-string v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CE storage for users "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already unlocked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1283
    :try_start_32
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {v2, v0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->appendAll([I)V

    .line 1284
    monitor-exit v1

    goto :goto_3c

    :catchall_39
    move-exception v2

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_39

    throw v2

    .line 1286
    :cond_3c
    :goto_3c
    return-void

    .line 1271
    .end local v0    # "userIds":[I
    :catch_3d
    move-exception v0

    .line 1272
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    const-string v2, "Failed to get unlocked users from vold"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1273
    return-void
.end method

.method private restoreSystemUnlockedUsers(Landroid/os/UserManager;Ljava/util/List;[I)V
    .registers 11
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p3, "systemUnlockedUsers"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;[I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1241
    .local p2, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {p3}, Ljava/util/Arrays;->sort([I)V

    .line 1242
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 1243
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1244
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1245
    .local v2, "userId":I
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1246
    goto :goto_a

    .line 1248
    :cond_1f
    invoke-static {p3, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_26

    .line 1249
    goto :goto_a

    .line 1251
    :cond_26
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    .line 1252
    .local v3, "unlockingOrUnlocked":Z
    if-nez v3, :cond_2d

    .line 1253
    goto :goto_a

    .line 1255
    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNLOCK_USER lost from vold reset, will retry, user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StorageManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v4, v2}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1257
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v4, v2}, Landroid/os/IStoraged;->onUserStarted(I)V

    .line 1258
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1259
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1260
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "userId":I
    .end local v3    # "unlockingOrUnlocked":Z
    goto :goto_a

    .line 1261
    :cond_5c
    return-void
.end method

.method private scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .line 566
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 567
    const-string/jumbo v0, "internal"

    return-object v0

    .line 569
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 570
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_48

    iget-wide v1, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_21

    goto :goto_48

    .line 573
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 571
    :cond_48
    :goto_48
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method private servicesReady()V
    .registers 3

    .line 2295
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2297
    nop

    .line 2298
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2297
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 2299
    nop

    .line 2300
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2299
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 2302
    const-string/jumbo v0, "media"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2303
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_3e

    .line 2304
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 2305
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    sput-object v1, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    .line 2308
    :cond_3e
    const-string v1, "downloads"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2309
    if-eqz v0, :cond_50

    .line 2310
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    .line 2313
    :cond_50
    const-string v1, "com.android.externalstorage.documents"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2314
    if-eqz v0, :cond_62

    .line 2315
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    .line 2317
    :cond_62
    return-void
.end method

.method private shouldBenchmark()Z
    .registers 13

    .line 597
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "storage_benchmark_interval"

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 599
    .local v0, "benchInterval":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    .line 600
    return v3

    .line 601
    :cond_18
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    const/4 v4, 0x1

    if-nez v2, :cond_20

    .line 602
    return v4

    .line 605
    :cond_20
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 606
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    :try_start_24
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_56

    .line 607
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 608
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v8, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/VolumeRecord;

    .line 609
    .local v7, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v8

    if-eqz v8, :cond_53

    if-eqz v7, :cond_53

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v7, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    sub-long/2addr v8, v10

    .line 611
    .local v8, "benchAge":J
    cmp-long v10, v8, v0

    if-ltz v10, :cond_53

    .line 612
    monitor-exit v2

    return v4

    .line 606
    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v7    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v8    # "benchAge":J
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 616
    .end local v5    # "i":I
    :cond_56
    monitor-exit v2

    return v3

    .line 617
    :catchall_58
    move-exception v3

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_24 .. :try_end_5a} :catchall_58

    throw v3
.end method

.method private snapshotAndMonitorLegacyStorageAppOp(Landroid/os/UserHandle;)V
    .registers 11
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 2341
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2346
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2348
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 2346
    const-wide/32 v3, 0x4c2000

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "StorageManagerService"

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 2350
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_24
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v6, 0x57

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_33

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    .line 2352
    .local v3, "hasLegacy":Z
    :goto_34
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v5, v6, v3}, Lcom/android/server/StorageManagerService;->updateLegacyStorageApps(Ljava/lang/String;IZ)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_3b} :catch_3c

    .line 2355
    .end local v3    # "hasLegacy":Z
    goto :goto_55

    .line 2353
    :catch_3c
    move-exception v3

    .line 2354
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to check legacy op for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2356
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_55
    goto :goto_15

    .line 2358
    :cond_56
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_78

    .line 2359
    new-instance v1, Lcom/android/server/StorageManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$9;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 2366
    .local v1, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 2367
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2368
    .end local v1    # "monitor":Lcom/android/internal/content/PackageMonitor;
    goto :goto_8e

    .line 2369
    :cond_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageMonitor is already registered for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    :goto_8e
    return-void
.end method

.method private start()V
    .registers 4

    .line 2217
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    .line 2218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    .line 2220
    invoke-static {}, Lcom/android/server/MiuiCldStub;->getInstance()Lcom/android/server/MiuiCldStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Lcom/android/server/MiuiCldStub;->initCldListener(Landroid/os/IVold;Landroid/content/Context;)V

    .line 2221
    return-void
.end method

.method private supportsBlockCheckpoint()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1412
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    move-result v0

    return v0
.end method

.method private systemReady()V
    .registers 3

    .line 2387
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2388
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 2390
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2391
    return-void
.end method

.method private unmount(Landroid/os/storage/VolumeInfo;)V
    .registers 5
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 2610
    const-string v0, "StorageManagerService"

    :try_start_2
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 2611
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Installer;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_10
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_10} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    .line 2615
    :cond_10
    goto :goto_19

    .line 2618
    :catch_11
    move-exception v1

    goto :goto_26

    .line 2613
    :catch_13
    move-exception v1

    .line 2614
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    :try_start_14
    const-string v2, "Failed unmount mirror data"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2616
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_19
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 2617
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v1, p1}, Lcom/android/server/storage/StorageSessionController;->onVolumeUnmount(Landroid/os/storage/VolumeInfo;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_11

    .line 2620
    goto :goto_29

    .line 2619
    .local v1, "e":Ljava/lang/Exception;
    :goto_26
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2621
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_29
    return-void
.end method

.method private updateLegacyStorageApps(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "hasLegacy"    # Z

    .line 2327
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2328
    if-eqz p3, :cond_2d

    .line 2329
    :try_start_5
    const-string v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has legacy storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 2334
    :cond_2d
    const-string v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have legacy storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2337
    :goto_54
    monitor-exit v0

    .line 2338
    return-void

    .line 2337
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_56

    throw v1
.end method

.method private updateStorageWriteRecords(I)V
    .registers 8
    .param p1, "latestWrite"    # I

    .line 3036
    const/4 v0, 0x0

    .line 3038
    .local v0, "fos":Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    iget v3, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3040
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    aput p1, v1, v5

    .line 3042
    :try_start_11
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 3043
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3045
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    sget v2, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3046
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3047
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2c} :catch_2d

    .line 3052
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_35

    .line 3048
    :catch_2d
    move-exception v1

    .line 3049
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_35

    .line 3050
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3053
    .end local v1    # "e":Ljava/io/IOException;
    :cond_35
    :goto_35
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .registers 13
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"    # Ljava/lang/String;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 968
    const-string v0, "Thread "

    const-string v1, "StorageManagerService"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 971
    .local v2, "startMillis":J
    :goto_8
    const-wide/16 v4, 0x1388

    :try_start_a
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 972
    return-void

    .line 974
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " still waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_3f} :catch_40

    .line 979
    goto :goto_57

    .line 977
    :catch_40
    move-exception v4

    .line 978
    .local v4, "e":Ljava/lang/InterruptedException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interrupt while waiting for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_57
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_a2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v6, v2, p3

    cmp-long v4, v4, v6

    if-gtz v4, :cond_68

    goto :goto_a2

    .line 981
    :cond_68
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " gave up waiting for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " after "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 980
    :cond_a2
    :goto_a2
    goto/16 :goto_8
.end method

.method private warnOnNotMounted()V
    .registers 5

    .line 3315
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 3317
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 3318
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 3320
    monitor-exit v0

    return-void

    .line 3316
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3323
    .end local v1    # "i":I
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2e

    .line 3325
    const-string v0, "StorageManagerService"

    const-string v1, "No primary storage mounted!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    return-void

    .line 3323
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private writeSettingsLocked()V
    .registers 8

    .line 2454
    const-string/jumbo v0, "volumes"

    const/4 v1, 0x0

    .line 2456
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 2458
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 2459
    .local v2, "out":Landroid/util/TypedXmlSerializer;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2460
    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2461
    const-string/jumbo v3, "version"

    const/4 v5, 0x3

    invoke-interface {v2, v4, v3, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2462
    const-string/jumbo v3, "primaryStorageUuid"

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2463
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 2464
    .local v3, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_31
    if-ge v5, v3, :cond_41

    .line 2465
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeRecord;

    .line 2466
    .local v6, "rec":Landroid/os/storage/VolumeRecord;
    invoke-static {v2, v6}, Lcom/android/server/StorageManagerService;->writeVolumeRecord(Landroid/util/TypedXmlSerializer;Landroid/os/storage/VolumeRecord;)V

    .line 2464
    .end local v6    # "rec":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 2468
    .end local v5    # "i":I
    :cond_41
    invoke-interface {v2, v4, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2469
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 2471
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4c} :catch_4d

    .line 2476
    .end local v2    # "out":Landroid/util/TypedXmlSerializer;
    .end local v3    # "size":I
    goto :goto_55

    .line 2472
    :catch_4d
    move-exception v0

    .line 2473
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_55

    .line 2474
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2477
    .end local v0    # "e":Ljava/io/IOException;
    :cond_55
    :goto_55
    return-void
.end method

.method public static writeVolumeRecord(Landroid/util/TypedXmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .registers 7
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2496
    const/4 v0, 0x0

    const-string/jumbo v1, "volume"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2497
    iget v2, p1, Landroid/os/storage/VolumeRecord;->type:I

    const-string/jumbo v3, "type"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2498
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    const-string v3, "fsUuid"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2499
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const-string/jumbo v3, "partGuid"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2500
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    const-string/jumbo v3, "nickname"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2501
    iget v2, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    const-string/jumbo v3, "userFlags"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2502
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-string v4, "createdMillis"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2503
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    const-string/jumbo v4, "lastSeenMillis"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2504
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    const-string/jumbo v4, "lastTrimMillis"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2505
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    const-string/jumbo v4, "lastBenchMillis"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2506
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2507
    return-void
.end method


# virtual methods
.method public abortChanges(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3461
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 3465
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 3466
    return-void

    .line 3462
    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to commit checkpoint changes"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abortIdleMaint(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2934
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2937
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$15;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StorageManagerService$15;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 2951
    goto :goto_16

    .line 2949
    :catch_10
    move-exception v0

    .line 2950
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2952
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    return-void
.end method

.method abortIdleMaintDelayed(ILjava/lang/Runnable;)V
    .registers 7
    .param p1, "delayMillis"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 2957
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2958
    return-void
.end method

.method public abortIdleMaintenance()V
    .registers 2

    .line 2963
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 2964
    return-void
.end method

.method public addUserKeyAuth(II[B)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "secret"    # [B

    .line 3508
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3511
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IVold;->addUserKeyAuth(IILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    .line 3514
    goto :goto_15

    .line 3512
    :catch_f
    move-exception v0

    .line 3513
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3515
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15
    return-void
.end method

.method public allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
    .registers 15
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .param p4, "flags"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 4415
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p4, v0, p5}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result p4

    .line 4417
    or-int/lit8 v0, p4, 0x8

    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    .line 4419
    .local v0, "allocatableBytes":J
    cmp-long v2, p2, v0

    if-lez v2, :cond_4f

    .line 4422
    or-int/lit8 v2, p4, 0x10

    invoke-virtual {p0, p1, v2, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v2

    .line 4424
    .local v2, "cacheClearable":J
    add-long v4, v0, v2

    cmp-long v4, p2, v4

    if-gtz v4, :cond_1f

    goto :goto_4f

    .line 4425
    :cond_1f
    new-instance v4, Landroid/os/ParcelableException;

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to allocate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because only "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-long v7, v0, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " allocatable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 4430
    .end local v2    # "cacheClearable":J
    :cond_4f
    :goto_4f
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 4431
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4435
    .local v3, "token":J
    :try_start_5d
    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 4436
    .local v5, "path":Ljava/io/File;
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_6b

    .line 4437
    invoke-virtual {v2, v5}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr p2, v6

    goto :goto_70

    .line 4439
    :cond_6b
    invoke-virtual {v2, v5}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr p2, v6

    .line 4442
    :goto_70
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/content/pm/PackageManagerInternal;->freeStorage(Ljava/lang/String;JI)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_75} :catch_7c
    .catchall {:try_start_5d .. :try_end_75} :catchall_7a

    .line 4446
    .end local v5    # "path":Ljava/io/File;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4447
    nop

    .line 4448
    return-void

    .line 4446
    :catchall_7a
    move-exception v5

    goto :goto_83

    .line 4443
    :catch_7c
    move-exception v5

    .line 4444
    .local v5, "e":Ljava/io/IOException;
    :try_start_7d
    new-instance v6, Landroid/os/ParcelableException;

    invoke-direct {v6, v5}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "allocatableBytes":J
    .end local v2    # "storage":Landroid/os/storage/StorageManager;
    .end local v3    # "token":J
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "bytes":J
    .end local p4    # "flags":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    throw v6
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_7a

    .line 4446
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v0    # "allocatableBytes":J
    .restart local v2    # "storage":Landroid/os/storage/StorageManager;
    .restart local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "bytes":J
    .restart local p4    # "flags":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    :goto_83
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4447
    throw v5
.end method

.method public benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .registers 5
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;

    .line 2644
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2647
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$11;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$11;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    .line 2678
    nop

    .line 2679
    return-void

    .line 2676
    :catch_11
    move-exception v0

    .line 2677
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearUserKeyAuth(II[B)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "secret"    # [B

    .line 3526
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3529
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IVold;->clearUserKeyAuth(IILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    .line 3532
    goto :goto_15

    .line 3530
    :catch_f
    move-exception v0

    .line 3531
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3533
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15
    return-void
.end method

.method public commitChanges()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3439
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 3443
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->commitChanges()V

    .line 3444
    return-void

    .line 3440
    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to commit checkpoint changes"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createUserKey(IIZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "ephemeral"    # Z

    .line 3470
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3473
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IVold;->createUserKey(IIZ)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 3476
    goto :goto_11

    .line 3474
    :catch_b
    move-exception v0

    .line 3475
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3477
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public destroyUserKey(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3481
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3484
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->destroyUserKey(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 3487
    goto :goto_11

    .line 3485
    :catch_b
    move-exception v0

    .line 3486
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3488
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 3694
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3697
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IVold;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 3700
    goto :goto_11

    .line 3698
    :catch_b
    move-exception v0

    .line 3699
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3701
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public disableAppDataIsolation(Ljava/lang/String;II)V
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userId"    # I

    .line 3735
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3736
    .local v0, "callingUid":I
    if-eqz v0, :cond_14

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_b

    goto :goto_14

    .line 3737
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "no permission to enable app visibility"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3739
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 3740
    invoke-virtual {v1, p1, p3}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 3741
    .local v1, "sharedPackages":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p1, v3, v4, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    .line 3743
    .local v2, "uid":I
    array-length v3, v1

    if-eqz v3, :cond_27

    move-object v3, v1

    goto :goto_2d

    :cond_27
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 3745
    .local v3, "packages":[Ljava/lang/String;
    :goto_2d
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v4, v2, p2, v3}, Landroid/os/IVold;->unmountAppStorageDirs(II[Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_34

    .line 3748
    nop

    .line 3749
    return-void

    .line 3746
    :catch_34
    move-exception v4

    .line 3747
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4941
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "StorageManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 4943
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    const/16 v2, 0xa0

    invoke-direct {v0, p2, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 4944
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4945
    :try_start_17
    const-string v2, "Disks:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4946
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4947
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 4948
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    .line 4949
    .local v3, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v3, v0}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4947
    .end local v3    # "disk":Landroid/os/storage/DiskInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 4951
    .end local v2    # "i":I
    :cond_36
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4953
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4954
    const-string v2, "Volumes:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4955
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4956
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_45
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_67

    .line 4957
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 4958
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    const-string/jumbo v4, "private"

    iget-object v5, v3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    goto :goto_64

    .line 4959
    :cond_61
    invoke-virtual {v3, v0}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4956
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 4961
    .end local v2    # "i":I
    :cond_67
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4963
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4964
    const-string v2, "Records:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4965
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4966
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_76
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_8c

    .line 4967
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 4968
    .local v3, "note":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v3, v0}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4966
    .end local v3    # "note":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 4970
    .end local v2    # "i":I
    :cond_8c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4972
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary storage UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4975
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4976
    invoke-static {}, Landroid/os/storage/StorageManager;->getPrimaryStoragePathAndSize()Landroid/util/Pair;

    move-result-object v2

    .line 4977
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v2, :cond_b9

    .line 4978
    const-string v3, "Internal storage total size: N/A"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ea

    .line 4980
    :cond_b9
    const-string v3, "Internal storage ("

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4981
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4982
    const-string v3, ") total size: "

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4983
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 4984
    const-string v3, " ("

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4985
    sget-object v3, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 4986
    const-string v3, " MiB)"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4989
    :goto_ea
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local unlocked users: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4991
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System unlocked users: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4992
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-exit v1
    :try_end_122
    .catchall {:try_start_17 .. :try_end_122} :catchall_204

    .line 4994
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v2

    .line 4995
    :try_start_125
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4996
    const-string/jumbo v1, "mObbMounts:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4997
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4998
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 4999
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5000
    .local v1, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;>;"
    :goto_13b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_183

    .line 5001
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5002
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5003
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5004
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 5005
    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_16e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/StorageManagerService$ObbState;

    .line 5006
    .local v6, "obbState":Lcom/android/server/StorageManagerService$ObbState;
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 5007
    .end local v6    # "obbState":Lcom/android/server/StorageManagerService$ObbState;
    goto :goto_16e

    .line 5008
    :cond_17e
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5009
    nop

    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;"
    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    goto :goto_13b

    .line 5010
    :cond_183
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5012
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5013
    const-string/jumbo v3, "mObbPathToStateMap:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5014
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5015
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 5016
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5017
    .local v3, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;>;"
    :goto_19c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1be

    .line 5018
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5019
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5020
    const-string v5, " -> "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5021
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 5022
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;"
    goto :goto_19c

    .line 5023
    :cond_1be
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5024
    nop

    .end local v1    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;>;"
    .end local v3    # "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;>;"
    monitor-exit v2
    :try_end_1c3
    .catchall {:try_start_125 .. :try_end_1c3} :catchall_201

    .line 5026
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5027
    :try_start_1c6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5028
    const-string v2, "Media cloud providers: "

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5029
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 5030
    monitor-exit v1
    :try_end_1d4
    .catchall {:try_start_1c6 .. :try_end_1d4} :catchall_1fe

    .line 5033
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5034
    const-string v1, "ExtM:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5035
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5036
    invoke-static {}, Lcom/android/server/ExtendMStub;->getInstance()Lcom/android/server/ExtendMStub;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/ExtendMStub;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 5037
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5038
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5041
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5042
    const-string v1, "Last maintenance: "

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5043
    iget-wide v1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5044
    return-void

    .line 5030
    :catchall_1fe
    move-exception v2

    :try_start_1ff
    monitor-exit v1
    :try_end_200
    .catchall {:try_start_1ff .. :try_end_200} :catchall_1fe

    throw v2

    .line 5024
    :catchall_201
    move-exception v1

    :try_start_202
    monitor-exit v2
    :try_end_203
    .catchall {:try_start_202 .. :try_end_203} :catchall_201

    throw v1

    .line 4992
    :catchall_204
    move-exception v2

    :try_start_205
    monitor-exit v1
    :try_end_206
    .catchall {:try_start_205 .. :try_end_206} :catchall_204

    throw v2
.end method

.method public fixateNewestUserKeyAuth(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3541
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3544
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fixateNewestUserKeyAuth(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 3547
    goto :goto_11

    .line 3545
    :catch_b
    move-exception v0

    .line 3546
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3548
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public fixupAppDir(Ljava/lang/String;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .line 3705
    sget-object v0, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3706
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "StorageManagerService"

    if-eqz v1, :cond_a4

    .line 3707
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2c

    .line 3708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asked to fixup an app dir without a userId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    return-void

    .line 3712
    :cond_2c
    :try_start_2c
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3713
    .local v1, "userId":I
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 3714
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_43} :catch_8c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_43} :catch_74

    .line 3716
    .local v4, "uid":I
    :try_start_43
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Landroid/os/IVold;->fixupAppDir(Ljava/lang/String;I)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_5b} :catch_5c
    .catch Landroid/os/ServiceSpecificException; {:try_start_43 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_5b} :catch_8c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_43 .. :try_end_5b} :catch_74

    .line 3719
    goto :goto_a3

    .line 3717
    :catch_5c
    move-exception v5

    .line 3718
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to fixup app dir for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_73} :catch_8c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d .. :try_end_73} :catch_74

    goto :goto_a3

    .line 3722
    .end local v1    # "userId":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_74
    move-exception v1

    .line 3723
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find package to fixup app dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_a3

    .line 3720
    :catch_8c
    move-exception v1

    .line 3721
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid userId in path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3724
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_a3
    goto :goto_c0

    .line 3726
    :cond_a4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not a valid application-specific directory"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    :goto_c0
    return-void
.end method

.method public fixupAppDirRecursive(Ljava/lang/String;III)V
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "flag"    # I

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fixupAppDirRecursive - path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1439
    .local v0, "callingUid":I
    const/16 v2, 0x17d4

    if-eq v0, v2, :cond_3e

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_3e

    .line 1441
    const-string v2, "fixupAppDirRecursive - no permission to fixup"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    return-void

    .line 1444
    :cond_3e
    move v2, p2

    .line 1445
    .local v2, "tUid":I
    if-gez p2, :cond_8b

    .line 1446
    sget-object v3, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1447
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_74

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_74

    .line 1449
    :try_start_54
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1450
    .local v4, "userId":I
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1451
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6b} :catch_6d

    move v2, v6

    .line 1455
    .end local v4    # "userId":I
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_8b

    .line 1452
    :catch_6d
    move-exception v4

    .line 1453
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "fixupAppDirRecursive"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1454
    return-void

    .line 1457
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asked to fixup an app dir without a userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    return-void

    .line 1463
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    :cond_8b
    :goto_8b
    :try_start_8b
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2, p3, p4}, Landroid/os/IVold;->fixupAppDirRecursive(Ljava/lang/String;III)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_a3} :catch_a4

    .line 1466
    goto :goto_bb

    .line 1464
    :catch_a4
    move-exception v3

    .line 1465
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fixupAppDirRecursive - Fail to fixup:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1467
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_bb
    return-void
.end method

.method public forgetAllVolumes()V
    .registers 7

    .line 2774
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2776
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2777
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 2778
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2779
    .local v2, "fsUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 2780
    .local v3, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v4, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 2781
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2783
    :cond_34
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v4, v2}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeForgotten(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 2777
    .end local v2    # "fsUuid":Ljava/lang/String;
    .end local v3    # "rec":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2785
    .end local v1    # "i":I
    :cond_3c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2787
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 2788
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2791
    :cond_51
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2792
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2793
    monitor-exit v0

    .line 2794
    return-void

    .line 2793
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_9 .. :try_end_63} :catchall_61

    throw v1
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .registers 6
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 2750
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2752
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2754
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2755
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 2756
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v1, :cond_28

    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 2757
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2759
    :cond_28
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, p1}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeForgotten(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 2763
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2764
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2765
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2768
    :cond_46
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2769
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 2770
    return-void

    .line 2769
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_b .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .registers 7
    .param p1, "volId"    # Ljava/lang/String;

    .line 2625
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2627
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 2628
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v1, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 2630
    .local v1, "fsUuid":Ljava/lang/String;
    :try_start_b
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string v4, "auto"

    invoke-interface {v2, v3, v4}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2635
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->forgetVolume(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_1e

    .line 2639
    :cond_1d
    goto :goto_24

    .line 2637
    :catch_1e
    move-exception v2

    .line 2638
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "StorageManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2640
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_24
    return-void
.end method

.method public fstrim(ILandroid/os/IVoldTaskListener;)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;

    .line 2806
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2813
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1a

    .line 2846
    :cond_12
    const-string v0, "StorageManagerService"

    const-string v1, "Skipping fstrim - block based checkpoint in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 2814
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$12;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$12;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_24} :catch_26

    .line 2850
    :goto_24
    nop

    .line 2851
    return-void

    .line 2848
    :catch_26
    move-exception v0

    .line 2849
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J
    .registers 28
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 4371
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v1, v3, v0, v4}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result v3

    .line 4373
    .end local p2    # "flags":I
    .local v3, "flags":I
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 4374
    .local v5, "storage":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/usage/StorageStatsManager;

    .line 4375
    .local v6, "stats":Landroid/app/usage/StorageStatsManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 4381
    .local v7, "token":J
    :try_start_2a
    invoke-virtual {v5, v2}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 4383
    .local v0, "path":Ljava/io/File;
    const-wide/16 v9, 0x0

    .line 4384
    .local v9, "usable":J
    const-wide/16 v11, 0x0

    .line 4385
    .local v11, "lowReserved":J
    const-wide/16 v13, 0x0

    .line 4386
    .local v13, "fullReserved":J
    const-wide/16 v15, 0x0

    .line 4388
    .local v15, "cacheClearable":J
    and-int/lit8 v17, v3, 0x10

    if-nez v17, :cond_4c

    .line 4389
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v17

    move-wide/from16 v9, v17

    .line 4390
    invoke-virtual {v5, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v17

    move-wide/from16 v11, v17

    .line 4391
    invoke-virtual {v5, v0}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v17

    move-wide/from16 v13, v17

    .line 4394
    :cond_4c
    and-int/lit8 v17, v3, 0x8

    move-wide/from16 v18, v11

    .end local v11    # "lowReserved":J
    .local v18, "lowReserved":J
    const-wide/16 v11, 0x0

    if-nez v17, :cond_6f

    .line 4395
    invoke-virtual {v6, v2}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6c

    .line 4396
    invoke-virtual {v6, v2}, Landroid/app/usage/StorageStatsManager;->getCacheBytes(Ljava/lang/String;)J

    move-result-wide v20

    .line 4397
    .local v20, "cacheTotal":J
    invoke-virtual {v5, v0, v3}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v22

    .line 4398
    .local v22, "cacheReserved":J
    move-object/from16 p2, v0

    .end local v0    # "path":Ljava/io/File;
    .local p2, "path":Ljava/io/File;
    sub-long v0, v20, v22

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v15, v0

    goto :goto_71

    .line 4395
    .end local v20    # "cacheTotal":J
    .end local v22    # "cacheReserved":J
    .end local p2    # "path":Ljava/io/File;
    .restart local v0    # "path":Ljava/io/File;
    :cond_6c
    move-object/from16 p2, v0

    .end local v0    # "path":Ljava/io/File;
    .restart local p2    # "path":Ljava/io/File;
    goto :goto_71

    .line 4394
    .end local p2    # "path":Ljava/io/File;
    .restart local v0    # "path":Ljava/io/File;
    :cond_6f
    move-object/from16 p2, v0

    .line 4401
    .end local v0    # "path":Ljava/io/File;
    .restart local p2    # "path":Ljava/io/File;
    :goto_71
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_80

    .line 4402
    add-long v0, v9, v15

    sub-long/2addr v0, v13

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_7c} :catch_8e
    .catchall {:try_start_2a .. :try_end_7c} :catchall_8c

    .line 4409
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4402
    return-wide v0

    .line 4404
    :cond_80
    add-long v0, v9, v15

    sub-long v0, v0, v18

    :try_start_84
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_88} :catch_8e
    .catchall {:try_start_84 .. :try_end_88} :catchall_8c

    .line 4409
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4404
    return-wide v0

    .line 4409
    .end local v9    # "usable":J
    .end local v13    # "fullReserved":J
    .end local v15    # "cacheClearable":J
    .end local v18    # "lowReserved":J
    .end local p2    # "path":Ljava/io/File;
    :catchall_8c
    move-exception v0

    goto :goto_95

    .line 4406
    :catch_8e
    move-exception v0

    .line 4407
    .local v0, "e":Ljava/io/IOException;
    :try_start_8f
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "flags":I
    .end local v5    # "storage":Landroid/os/storage/StorageManager;
    .end local v6    # "stats":Landroid/app/usage/StorageStatsManager;
    .end local v7    # "token":J
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v1
    :try_end_95
    .catchall {:try_start_8f .. :try_end_95} :catchall_8c

    .line 4409
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "flags":I
    .restart local v5    # "storage":Landroid/os/storage/StorageManager;
    .restart local v6    # "stats":Landroid/app/usage/StorageStatsManager;
    .restart local v7    # "token":J
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :goto_95
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4410
    throw v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;I)J
    .registers 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 4312
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 4313
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4315
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4316
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 4318
    .local v2, "stats":Landroid/app/usage/StorageStatsManager;
    :try_start_1d
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v3
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_25

    .line 4320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4318
    return-wide v3

    .line 4320
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4321
    throw v3
.end method

.method public getCacheSizeBytes(Ljava/lang/String;I)J
    .registers 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 4326
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 4327
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4329
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4331
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 4332
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/lang/String;I)Landroid/app/usage/StorageStats;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_25} :catch_2b
    .catchall {:try_start_13 .. :try_end_25} :catchall_29

    .line 4336
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4331
    return-wide v2

    .line 4336
    :catchall_29
    move-exception v2

    goto :goto_32

    .line 4333
    :catch_2b
    move-exception v2

    .line 4334
    .local v2, "e":Ljava/io/IOException;
    :try_start_2c
    new-instance v3, Landroid/os/ParcelableException;

    invoke-direct {v3, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "uid":I
    throw v3
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_29

    .line 4336
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "uid":I
    :goto_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4337
    throw v2
.end method

.method public getCldFragLevel()I
    .registers 2

    .line 2867
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2868
    invoke-static {}, Lcom/android/server/MiuiCldStub;->getInstance()Lcom/android/server/MiuiCldStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/MiuiCldStub;->getCldFragLevel()I

    move-result v0

    return v0
.end method

.method public getCloudMediaProvider()Ljava/lang/String;
    .registers 11

    .line 3862
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3863
    .local v6, "callingUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 3865
    .local v7, "userId":I
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3866
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    .line 3867
    .local v8, "authority":Ljava/lang/String;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_33

    .line 3868
    const/4 v9, 0x0

    if-nez v8, :cond_19

    .line 3869
    return-object v9

    .line 3871
    :cond_19
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    move-object v1, v8

    move v4, v7

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 3873
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 3874
    invoke-virtual {v1, v2, v6, v7}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_32

    .line 3877
    :cond_31
    return-object v8

    .line 3875
    :cond_32
    :goto_32
    return-object v9

    .line 3867
    .end local v0    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v8    # "authority":Ljava/lang/String;
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .registers 5

    .line 4279
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4280
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/DiskInfo;

    .line 4281
    .local v1, "res":[Landroid/os/storage/DiskInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 4282
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    aput-object v3, v1, v2

    .line 4281
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4284
    .end local v2    # "i":I
    :cond_21
    monitor-exit v0

    return-object v1

    .line 4285
    .end local v1    # "res":[Landroid/os/storage/DiskInfo;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public getExtMGearInterface()[F
    .registers 2

    .line 2856
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2857
    invoke-static {}, Lcom/android/server/ExtendMStub;->getInstance()Lcom/android/server/ExtendMStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/ExtendMStub;->getExtMGear()[F

    move-result-object v0

    return-object v0
.end method

.method public getExternalStorageMountMode(ILjava/lang/String;)I
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4747
    const-string v0, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 4748
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 3761
    const-string v0, "Unknown uid "

    invoke-static {}, Landroid/os/Binder;->getCallingUidOrThrow()I

    move-result v1

    .line 3764
    .local v1, "originalUid":I
    :try_start_6
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 3765
    .local v2, "packagesFromUid":[Ljava/lang/String;
    if-eqz v2, :cond_a0

    .line 3771
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v3, v1, v5}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v3
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_b7

    const-string v5, "Only File Manager Apps permitted"

    if-eqz v3, :cond_9a

    .line 3777
    .end local v2    # "packagesFromUid":[Ljava/lang/String;
    nop

    .line 3781
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v2, 0x0

    .line 3782
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3781
    invoke-interface {v0, p1, v2, v3, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3783
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_8b

    .line 3787
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v2, :cond_48

    .line 3788
    const-string v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t have a manageSpaceActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_46} :catch_93

    .line 3789
    const/4 v2, 0x0

    return-object v2

    .line 3793
    :cond_48
    nop

    .line 3797
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3799
    .local v2, "token":J
    :try_start_4d
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 3800
    .local v4, "targetAppContext":Landroid/content/Context;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3801
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v5, p1, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3803
    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3805
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 3806
    .local v6, "options":Landroid/app/ActivityOptions;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/ActivityOptions;->setIgnorePendingIntentCreatorForegroundState(Z)V

    .line 3808
    const/high16 v7, 0x54000000

    .line 3810
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 3808
    invoke-static {v4, p2, v5, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v7
    :try_end_76
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4d .. :try_end_76} :catch_7d
    .catchall {:try_start_4d .. :try_end_76} :catchall_7b

    .line 3811
    .local v7, "activity":Landroid/app/PendingIntent;
    nop

    .line 3816
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3811
    return-object v7

    .line 3816
    .end local v4    # "targetAppContext":Landroid/content/Context;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "options":Landroid/app/ActivityOptions;
    .end local v7    # "activity":Landroid/app/PendingIntent;
    :catchall_7b
    move-exception v4

    goto :goto_87

    .line 3812
    :catch_7d
    move-exception v4

    .line 3813
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_7e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "packageName not found"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "originalUid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "requestCode":I
    throw v5
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_7b

    .line 3816
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "originalUid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "requestCode":I
    :goto_87
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3817
    throw v4

    .line 3784
    .end local v2    # "token":J
    :cond_8b
    :try_start_8b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid packageName"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "originalUid":I
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "requestCode":I
    throw v2
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_93} :catch_93

    .line 3791
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "originalUid":I
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "requestCode":I
    :catch_93
    move-exception v0

    .line 3792
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3773
    .end local v0    # "e":Landroid/os/RemoteException;
    .local v2, "packagesFromUid":[Ljava/lang/String;
    :cond_9a
    :try_start_9a
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "originalUid":I
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "requestCode":I
    throw v3

    .line 3766
    .restart local v1    # "originalUid":I
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "requestCode":I
    :cond_a0
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "originalUid":I
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "requestCode":I
    throw v3
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_b7} :catch_b7

    .line 3775
    .end local v2    # "packagesFromUid":[Ljava/lang/String;
    .restart local v1    # "originalUid":I
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "requestCode":I
    :catch_b7
    move-exception v2

    .line 3776
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "rawPath"    # Ljava/lang/String;

    .line 3338
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3340
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 3343
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 3344
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 3345
    .local v1, "state":Lcom/android/server/StorageManagerService$ObbState;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_40

    .line 3346
    if-nez v1, :cond_31

    .line 3347
    const-string v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find OBB mounted at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    const/4 v0, 0x0

    return-object v0

    .line 3351
    :cond_31
    iget-object v0, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3345
    .end local v1    # "state":Lcom/android/server/StorageManagerService$ObbState;
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public getPagesNeedFlush(I)I
    .registers 9
    .param p1, "flushLevel"    # I

    .line 1501
    const-string v0, "StorageManagerService"

    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1503
    :try_start_7
    const-class v1, Landroid/os/IVold;

    const-string v2, "getPagesNeedFlush"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1504
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1505
    .local v2, "pagecount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPagesNeedFlush flush: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_41} :catch_42

    .line 1506
    return v2

    .line 1507
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "pagecount":I
    :catch_42
    move-exception v1

    .line 1508
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1509
    const/4 v0, -0x1

    return v0
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .line 3234
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3235
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3236
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .registers 53
    .param p1, "userId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 4063
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 4064
    .local v5, "callingUid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 4066
    .local v6, "callingUserId":I
    invoke-direct {v1, v3, v5}, Lcom/android/server/StorageManagerService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_495

    .line 4069
    if-eq v6, v2, :cond_21

    .line 4071
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.INTERACT_ACROSS_USERS"

    const-string v8, "Need INTERACT_ACROSS_USERS to get volumes for another user"

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4076
    :cond_21
    and-int/lit16 v0, v4, 0x100

    const/4 v8, 0x0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    move v0, v8

    :goto_29
    move v9, v0

    .line 4077
    .local v9, "forWrite":Z
    and-int/lit16 v0, v4, 0x200

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    move v0, v8

    :goto_31
    move v10, v0

    .line 4078
    .local v10, "realState":Z
    and-int/lit16 v0, v4, 0x400

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    move v0, v8

    :goto_39
    move v11, v0

    .line 4079
    .local v11, "includeInvisible":Z
    and-int/lit16 v0, v4, 0x800

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    move v0, v8

    :goto_41
    move v12, v0

    .line 4080
    .local v12, "includeRecent":Z
    and-int/lit16 v0, v4, 0x1000

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :cond_48
    move v0, v8

    :goto_49
    move v13, v0

    .line 4084
    .local v13, "includeSharedProfile":Z
    if-eqz v13, :cond_9a

    .line 4088
    :try_start_4c
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v5}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 4089
    .local v0, "packagesFromUid":[Ljava/lang/String;
    if-eqz v0, :cond_67

    .line 4095
    iget-object v14, v1, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    aget-object v15, v0, v8

    invoke-virtual {v14, v5, v15}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5f

    .line 4101
    .end local v0    # "packagesFromUid":[Ljava/lang/String;
    goto :goto_9a

    .line 4097
    .restart local v0    # "packagesFromUid":[Ljava/lang/String;
    :cond_5f
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Only File Manager Apps permitted"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v5    # "callingUid":I
    .end local v6    # "callingUserId":I
    .end local v9    # "forWrite":Z
    .end local v10    # "realState":Z
    .end local v11    # "includeInvisible":Z
    .end local v12    # "includeRecent":Z
    .end local v13    # "includeSharedProfile":Z
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "userId":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "flags":I
    throw v7

    .line 4090
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingUserId":I
    .restart local v9    # "forWrite":Z
    .restart local v10    # "realState":Z
    .restart local v11    # "includeInvisible":Z
    .restart local v12    # "includeRecent":Z
    .restart local v13    # "includeSharedProfile":Z
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "flags":I
    :cond_67
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown uid "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v5    # "callingUid":I
    .end local v6    # "callingUserId":I
    .end local v9    # "forWrite":Z
    .end local v10    # "realState":Z
    .end local v11    # "includeInvisible":Z
    .end local v12    # "includeRecent":Z
    .end local v13    # "includeSharedProfile":Z
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "userId":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "flags":I
    throw v7
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_80} :catch_80

    .line 4099
    .end local v0    # "packagesFromUid":[Ljava/lang/String;
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingUserId":I
    .restart local v9    # "forWrite":Z
    .restart local v10    # "realState":Z
    .restart local v11    # "includeInvisible":Z
    .restart local v12    # "includeRecent":Z
    .restart local v13    # "includeSharedProfile":Z
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "flags":I
    :catch_80
    move-exception v0

    .line 4100
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown uid "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 4107
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_9a
    :goto_9a
    invoke-direct {v1, v8}, Lcom/android/server/StorageManagerService;->isSystemUnlocked(I)Z

    move-result v14

    .line 4113
    .local v14, "systemUserUnlocked":Z
    iget v0, v1, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    invoke-static {v5, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v15

    .line 4119
    .local v15, "callerIsMediaStore":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4121
    .local v16, "token":J
    :try_start_a8
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 4122
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    move/from16 v18, v0

    .line 4123
    .local v18, "userIsDemo":Z
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-virtual {v0, v5, v3}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v0

    move/from16 v19, v0

    .line 4125
    .local v19, "storagePermission":Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v0
    :try_end_c6
    .catchall {:try_start_a8 .. :try_end_c6} :catchall_488

    move/from16 v20, v0

    .line 4127
    .local v20, "userKeyUnlocked":Z
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4128
    nop

    .line 4130
    const/4 v0, 0x0

    .line 4132
    .local v0, "foundPrimary":Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v21

    .line 4133
    .local v22, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    new-instance v21, Landroid/util/ArraySet;

    invoke-direct/range {v21 .. v21}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v23, v21

    .line 4134
    .local v23, "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, v1, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v24, -0x1

    move/from16 v25, v0

    .end local v0    # "foundPrimary":Z
    .local v25, "foundPrimary":Z
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 4135
    .local v7, "userIdSharingMedia":I
    iget-object v8, v1, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f7
    :try_start_f7
    iget-object v3, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3
    :try_end_fd
    .catchall {:try_start_f7 .. :try_end_fd} :catchall_475

    if-ge v0, v3, :cond_34e

    .line 4137
    :try_start_ff
    iget-object v3, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4138
    .local v3, "volId":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 4139
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v24
    :try_end_113
    .catchall {:try_start_ff .. :try_end_113} :catchall_33d

    sparse-switch v24, :sswitch_data_49e

    move-object/from16 v26, v3

    move/from16 v24, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move-object/from16 v22, v4

    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v6    # "callingUserId":I
    .end local v7    # "userIdSharingMedia":I
    .end local v23    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v5, "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v22, "vol":Landroid/os/storage/VolumeInfo;
    .local v24, "callingUid":I
    .local v26, "volId":Ljava/lang/String;
    .local v28, "callingUserId":I
    .local v29, "userIdSharingMedia":I
    goto/16 :goto_32a

    .line 4144
    .end local v24    # "callingUid":I
    .end local v26    # "volId":Ljava/lang/String;
    .end local v28    # "callingUserId":I
    .end local v29    # "userIdSharingMedia":I
    .local v3, "volId":Ljava/lang/String;
    .restart local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .local v5, "callingUid":I
    .restart local v6    # "callingUserId":I
    .restart local v7    # "userIdSharingMedia":I
    .local v22, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v23    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :sswitch_126
    move/from16 v24, v5

    .end local v5    # "callingUid":I
    .restart local v24    # "callingUid":I
    :try_start_128
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v5

    if-ne v5, v2, :cond_12f

    .line 4145
    goto :goto_157

    .line 4147
    :cond_12f
    if-eqz v13, :cond_138

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v5

    if-ne v5, v7, :cond_138

    .line 4150
    goto :goto_157

    .line 4147
    :cond_138
    move-object/from16 v26, v3

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move-object/from16 v22, v4

    goto/16 :goto_32a

    .line 4227
    .end local v0    # "i":I
    .end local v3    # "volId":Ljava/lang/String;
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_146
    move-exception v0

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v21, v9

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move/from16 v22, v10

    goto/16 :goto_484

    .line 4142
    .end local v24    # "callingUid":I
    .restart local v0    # "i":I
    .restart local v3    # "volId":Ljava/lang/String;
    .restart local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v5    # "callingUid":I
    :sswitch_155
    move/from16 v24, v5

    .line 4157
    .end local v5    # "callingUid":I
    .restart local v24    # "callingUid":I
    :goto_157
    const/4 v5, 0x0

    .line 4158
    .local v5, "match":Z
    if-eqz v9, :cond_171

    .line 4159
    invoke-virtual {v4, v2}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v26

    if-nez v26, :cond_16c

    if-eqz v13, :cond_169

    .line 4160
    invoke-virtual {v4, v7}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v26
    :try_end_166
    .catchall {:try_start_128 .. :try_end_166} :catchall_146

    if-eqz v26, :cond_169

    goto :goto_16c

    :cond_169
    const/16 v26, 0x0

    goto :goto_16e

    :cond_16c
    :goto_16c
    const/16 v26, 0x1

    :goto_16e
    move/from16 v5, v26

    goto :goto_1a1

    .line 4165
    :cond_171
    :try_start_171
    invoke-virtual {v4, v2}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result v26
    :try_end_175
    .catchall {:try_start_171 .. :try_end_175} :catchall_31b

    if-nez v26, :cond_19d

    .line 4166
    :try_start_177
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v26

    if-nez v26, :cond_185

    if-eqz v11, :cond_185

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v26

    if-nez v26, :cond_19d

    .line 4167
    :cond_185
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v26

    if-nez v26, :cond_191

    .line 4168
    invoke-virtual {v4, v7}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result v26

    if-nez v26, :cond_19d

    :cond_191
    if-eqz v13, :cond_19a

    .line 4169
    invoke-virtual {v4, v7}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result v26
    :try_end_197
    .catchall {:try_start_177 .. :try_end_197} :catchall_146

    if-eqz v26, :cond_19a

    goto :goto_19d

    :cond_19a
    const/16 v26, 0x0

    goto :goto_19f

    :cond_19d
    :goto_19d
    const/16 v26, 0x1

    :goto_19f
    move/from16 v5, v26

    .line 4171
    :goto_1a1
    if-nez v5, :cond_1ad

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    goto/16 :goto_32b

    .line 4173
    :cond_1ad
    const/16 v26, 0x0

    .line 4174
    .local v26, "reportUnmounted":Z
    if-eqz v15, :cond_1b9

    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v7

    goto/16 :goto_29d

    .line 4179
    :cond_1b9
    if-nez v14, :cond_238

    .line 4180
    const/16 v26, 0x1

    .line 4182
    move/from16 v27, v5

    .end local v5    # "match":Z
    .local v27, "match":Z
    const/16 v5, 0x6e

    if-ne v2, v5, :cond_207

    if-eqz v20, :cond_207

    .line 4183
    :try_start_1c5
    const-string v5, "StorageManagerService"
    :try_end_1c7
    .catchall {:try_start_1c5 .. :try_end_1c7} :catchall_1f8

    move/from16 v28, v6

    .end local v6    # "callingUserId":I
    .restart local v28    # "callingUserId":I
    :try_start_1c9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1ce
    .catchall {:try_start_1c9 .. :try_end_1ce} :catchall_1eb

    move/from16 v29, v7

    .end local v7    # "userIdSharingMedia":I
    .restart local v29    # "userIdSharingMedia":I
    :try_start_1d0
    const-string v7, "Mounted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " due to maintenance  unlocked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    const/4 v5, 0x0

    move/from16 v26, v5

    .end local v26    # "reportUnmounted":Z
    .local v5, "reportUnmounted":Z
    goto :goto_20b

    .line 4227
    .end local v0    # "i":I
    .end local v3    # "volId":Ljava/lang/String;
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v5    # "reportUnmounted":Z
    .end local v27    # "match":Z
    .end local v29    # "userIdSharingMedia":I
    .restart local v7    # "userIdSharingMedia":I
    :catchall_1eb
    move-exception v0

    move/from16 v29, v7

    move/from16 v21, v9

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move/from16 v22, v10

    .end local v7    # "userIdSharingMedia":I
    .restart local v29    # "userIdSharingMedia":I
    goto/16 :goto_484

    .end local v28    # "callingUserId":I
    .end local v29    # "userIdSharingMedia":I
    .restart local v6    # "callingUserId":I
    .restart local v7    # "userIdSharingMedia":I
    :catchall_1f8
    move-exception v0

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v21, v9

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move/from16 v22, v10

    .end local v6    # "callingUserId":I
    .end local v7    # "userIdSharingMedia":I
    .restart local v28    # "callingUserId":I
    .restart local v29    # "userIdSharingMedia":I
    goto/16 :goto_484

    .line 4182
    .end local v28    # "callingUserId":I
    .end local v29    # "userIdSharingMedia":I
    .restart local v0    # "i":I
    .restart local v3    # "volId":Ljava/lang/String;
    .restart local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v6    # "callingUserId":I
    .restart local v7    # "userIdSharingMedia":I
    .restart local v26    # "reportUnmounted":Z
    .restart local v27    # "match":Z
    :cond_207
    move/from16 v28, v6

    move/from16 v29, v7

    .line 4187
    .end local v6    # "callingUserId":I
    .end local v7    # "userIdSharingMedia":I
    .restart local v28    # "callingUserId":I
    .restart local v29    # "userIdSharingMedia":I
    :goto_20b
    const-string v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reporting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unmounted due to system locked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_229
    .catchall {:try_start_1d0 .. :try_end_229} :catchall_22d

    move/from16 v5, v26

    goto/16 :goto_29f

    .line 4227
    .end local v0    # "i":I
    .end local v3    # "volId":Ljava/lang/String;
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v26    # "reportUnmounted":Z
    .end local v27    # "match":Z
    :catchall_22d
    move-exception v0

    move/from16 v21, v9

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move/from16 v22, v10

    goto/16 :goto_484

    .line 4188
    .end local v28    # "callingUserId":I
    .end local v29    # "userIdSharingMedia":I
    .restart local v0    # "i":I
    .restart local v3    # "volId":Ljava/lang/String;
    .restart local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .local v5, "match":Z
    .restart local v6    # "callingUserId":I
    .restart local v7    # "userIdSharingMedia":I
    .restart local v26    # "reportUnmounted":Z
    :cond_238
    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v7

    .end local v5    # "match":Z
    .end local v6    # "callingUserId":I
    .end local v7    # "userIdSharingMedia":I
    .restart local v27    # "match":Z
    .restart local v28    # "callingUserId":I
    .restart local v29    # "userIdSharingMedia":I
    :try_start_23e
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5
    :try_end_242
    .catchall {:try_start_23e .. :try_end_242} :catchall_310

    const/4 v6, 0x2

    if-ne v5, v6, :cond_275

    if-nez v20, :cond_275

    .line 4189
    const/16 v26, 0x1

    .line 4190
    :try_start_249
    const-string v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reporting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "unmounted due to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " locked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v5, v26

    goto :goto_29f

    .line 4191
    :cond_275
    if-nez v19, :cond_29d

    if-nez v10, :cond_29d

    .line 4192
    const-string v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reporting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "unmounted due to missing permissions"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_298
    .catchall {:try_start_249 .. :try_end_298} :catchall_22d

    .line 4193
    const/16 v26, 0x1

    move/from16 v5, v26

    goto :goto_29f

    .line 4196
    .end local v27    # "match":Z
    .end local v28    # "callingUserId":I
    .end local v29    # "userIdSharingMedia":I
    .restart local v5    # "match":Z
    .restart local v6    # "callingUserId":I
    .restart local v7    # "userIdSharingMedia":I
    :cond_29d
    :goto_29d
    move/from16 v5, v26

    .end local v6    # "callingUserId":I
    .end local v7    # "userIdSharingMedia":I
    .end local v26    # "reportUnmounted":Z
    .local v5, "reportUnmounted":Z
    .restart local v27    # "match":Z
    .restart local v28    # "callingUserId":I
    .restart local v29    # "userIdSharingMedia":I
    :goto_29f
    move/from16 v6, p1

    .line 4197
    .local v6, "volUserId":I
    :try_start_2a1
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v7
    :try_end_2a5
    .catchall {:try_start_2a1 .. :try_end_2a5} :catchall_310

    if-eq v6, v7, :cond_2b2

    :try_start_2a7
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v7

    if-ltz v7, :cond_2b2

    .line 4198
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v7
    :try_end_2b1
    .catchall {:try_start_2a7 .. :try_end_2b1} :catchall_22d

    move v6, v7

    .line 4200
    :cond_2b2
    :try_start_2b2
    iget-object v7, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7, v6, v5}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 4202
    .local v7, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v26
    :try_end_2bc
    .catchall {:try_start_2b2 .. :try_end_2bc} :catchall_310

    if-eqz v26, :cond_2eb

    move-object/from16 v26, v3

    .end local v3    # "volId":Ljava/lang/String;
    .local v26, "volId":Ljava/lang/String;
    :try_start_2c0
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v3
    :try_end_2c4
    .catchall {:try_start_2c0 .. :try_end_2c4} :catchall_2e0

    if-ne v3, v2, :cond_2db

    .line 4203
    move-object/from16 v3, v22

    move-object/from16 v22, v4

    const/4 v4, 0x0

    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v22, "vol":Landroid/os/storage/VolumeInfo;
    :try_start_2cb
    invoke-virtual {v3, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2ce
    .catchall {:try_start_2cb .. :try_end_2ce} :catchall_2d2

    .line 4204
    const/4 v4, 0x1

    move/from16 v25, v4

    .end local v25    # "foundPrimary":Z
    .local v4, "foundPrimary":Z
    goto :goto_2f4

    .line 4227
    .end local v0    # "i":I
    .end local v4    # "foundPrimary":Z
    .end local v5    # "reportUnmounted":Z
    .end local v6    # "volUserId":I
    .end local v7    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v22    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v26    # "volId":Ljava/lang/String;
    .end local v27    # "match":Z
    .restart local v25    # "foundPrimary":Z
    :catchall_2d2
    move-exception v0

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v5, v23

    goto/16 :goto_484

    .line 4202
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v0    # "i":I
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    .restart local v5    # "reportUnmounted":Z
    .restart local v6    # "volUserId":I
    .restart local v7    # "userVol":Landroid/os/storage/StorageVolume;
    .local v22, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v26    # "volId":Ljava/lang/String;
    .restart local v27    # "match":Z
    :cond_2db
    move-object/from16 v3, v22

    move-object/from16 v22, v4

    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v22, "vol":Landroid/os/storage/VolumeInfo;
    goto :goto_2f1

    .line 4227
    .end local v0    # "i":I
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v5    # "reportUnmounted":Z
    .end local v6    # "volUserId":I
    .end local v7    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v26    # "volId":Ljava/lang/String;
    .end local v27    # "match":Z
    .local v22, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    :catchall_2e0
    move-exception v0

    move-object/from16 v3, v22

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v5, v23

    .end local v22    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    goto/16 :goto_484

    .line 4202
    .restart local v0    # "i":I
    .local v3, "volId":Ljava/lang/String;
    .restart local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v5    # "reportUnmounted":Z
    .restart local v6    # "volUserId":I
    .restart local v7    # "userVol":Landroid/os/storage/StorageVolume;
    .restart local v22    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v27    # "match":Z
    :cond_2eb
    move-object/from16 v26, v3

    move-object/from16 v3, v22

    move-object/from16 v22, v4

    .line 4206
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v22, "vol":Landroid/os/storage/VolumeInfo;
    .restart local v26    # "volId":Ljava/lang/String;
    :goto_2f1
    :try_start_2f1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4208
    :goto_2f4
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v4
    :try_end_2f8
    .catchall {:try_start_2f1 .. :try_end_2f8} :catchall_307

    move/from16 v30, v5

    move-object/from16 v5, v23

    .end local v23    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v5, "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v30, "reportUnmounted":Z
    :try_start_2fc
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2ff
    .catchall {:try_start_2fc .. :try_end_2ff} :catchall_300

    goto :goto_32b

    .line 4227
    .end local v0    # "i":I
    .end local v6    # "volUserId":I
    .end local v7    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v22    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v26    # "volId":Ljava/lang/String;
    .end local v27    # "match":Z
    .end local v30    # "reportUnmounted":Z
    :catchall_300
    move-exception v0

    move/from16 v21, v9

    move/from16 v22, v10

    goto/16 :goto_484

    .end local v5    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_307
    move-exception v0

    move-object/from16 v5, v23

    move/from16 v21, v9

    move/from16 v22, v10

    .end local v23    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_484

    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v5    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v22, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v23    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_310
    move-exception v0

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move/from16 v21, v9

    move/from16 v22, v10

    .end local v22    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v23    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v5    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_484

    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v5    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v28    # "callingUserId":I
    .end local v29    # "userIdSharingMedia":I
    .local v6, "callingUserId":I
    .local v7, "userIdSharingMedia":I
    .restart local v22    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v23    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_31b
    move-exception v0

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move/from16 v21, v9

    move/from16 v22, v10

    .end local v6    # "callingUserId":I
    .end local v7    # "userIdSharingMedia":I
    .end local v22    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v23    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v5    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v28    # "callingUserId":I
    .restart local v29    # "userIdSharingMedia":I
    goto/16 :goto_484

    .line 4154
    .restart local v0    # "i":I
    .local v22, "vol":Landroid/os/storage/VolumeInfo;
    .restart local v26    # "volId":Ljava/lang/String;
    :goto_32a
    nop

    .line 4136
    .end local v22    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v26    # "volId":Ljava/lang/String;
    :goto_32b
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, p3

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move/from16 v5, v24

    move/from16 v6, v28

    move/from16 v7, v29

    move-object/from16 v3, p2

    goto/16 :goto_f7

    .line 4227
    .end local v0    # "i":I
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v24    # "callingUid":I
    .end local v28    # "callingUserId":I
    .end local v29    # "userIdSharingMedia":I
    .local v5, "callingUid":I
    .restart local v6    # "callingUserId":I
    .restart local v7    # "userIdSharingMedia":I
    .local v22, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v23    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_33d
    move-exception v0

    move/from16 v24, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move/from16 v21, v9

    move/from16 v22, v10

    .end local v6    # "callingUserId":I
    .end local v7    # "userIdSharingMedia":I
    .end local v22    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v23    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v5, "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24    # "callingUid":I
    .restart local v28    # "callingUserId":I
    .restart local v29    # "userIdSharingMedia":I
    goto/16 :goto_484

    .line 4136
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v24    # "callingUid":I
    .end local v28    # "callingUserId":I
    .end local v29    # "userIdSharingMedia":I
    .restart local v0    # "i":I
    .local v5, "callingUid":I
    .restart local v6    # "callingUserId":I
    .restart local v7    # "userIdSharingMedia":I
    .restart local v22    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v23    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_34e
    move/from16 v24, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    .line 4211
    .end local v0    # "i":I
    .end local v6    # "callingUserId":I
    .end local v7    # "userIdSharingMedia":I
    .end local v22    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v23    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v5, "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24    # "callingUid":I
    .restart local v28    # "callingUserId":I
    .restart local v29    # "userIdSharingMedia":I
    if-eqz v12, :cond_3b9

    .line 4212
    :try_start_35a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v21, 0x240c8400

    sub-long v6, v6, v21

    .line 4213
    .local v6, "lastWeek":J
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_364
    iget-object v4, v1, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_3ad

    .line 4214
    iget-object v4, v1, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeRecord;
    :try_end_374
    .catchall {:try_start_35a .. :try_end_374} :catchall_3b2

    .line 4217
    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    move/from16 v21, v9

    .end local v9    # "forWrite":Z
    .local v21, "forWrite":Z
    :try_start_376
    iget-object v9, v4, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_37c
    .catchall {:try_start_376 .. :try_end_37c} :catchall_3a8

    if-eqz v9, :cond_381

    move/from16 v22, v10

    goto :goto_3a1

    .line 4220
    :cond_381
    move/from16 v22, v10

    .end local v10    # "realState":Z
    .local v22, "realState":Z
    :try_start_383
    iget-wide v9, v4, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    const-wide/16 v26, 0x0

    cmp-long v9, v9, v26

    if-lez v9, :cond_3a1

    iget-wide v9, v4, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    cmp-long v9, v9, v6

    if-gez v9, :cond_3a1

    .line 4221
    iget-object v9, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/os/storage/VolumeRecord;->buildStorageVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v9

    .line 4222
    .local v9, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4223
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4213
    .end local v4    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v9    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_3a1
    :goto_3a1
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v21

    move/from16 v10, v22

    goto :goto_364

    .line 4227
    .end local v0    # "i":I
    .end local v6    # "lastWeek":J
    .end local v22    # "realState":Z
    .restart local v10    # "realState":Z
    :catchall_3a8
    move-exception v0

    move/from16 v22, v10

    .end local v10    # "realState":Z
    .restart local v22    # "realState":Z
    goto/16 :goto_484

    .line 4213
    .end local v21    # "forWrite":Z
    .end local v22    # "realState":Z
    .restart local v0    # "i":I
    .restart local v6    # "lastWeek":J
    .local v9, "forWrite":Z
    .restart local v10    # "realState":Z
    :cond_3ad
    move/from16 v21, v9

    move/from16 v22, v10

    .end local v9    # "forWrite":Z
    .end local v10    # "realState":Z
    .restart local v21    # "forWrite":Z
    .restart local v22    # "realState":Z
    goto :goto_3bd

    .line 4227
    .end local v0    # "i":I
    .end local v6    # "lastWeek":J
    .end local v21    # "forWrite":Z
    .end local v22    # "realState":Z
    .restart local v9    # "forWrite":Z
    .restart local v10    # "realState":Z
    :catchall_3b2
    move-exception v0

    move/from16 v21, v9

    move/from16 v22, v10

    .end local v9    # "forWrite":Z
    .end local v10    # "realState":Z
    .restart local v21    # "forWrite":Z
    .restart local v22    # "realState":Z
    goto/16 :goto_484

    .line 4211
    .end local v21    # "forWrite":Z
    .end local v22    # "realState":Z
    .restart local v9    # "forWrite":Z
    .restart local v10    # "realState":Z
    :cond_3b9
    move/from16 v21, v9

    move/from16 v22, v10

    .line 4227
    .end local v9    # "forWrite":Z
    .end local v10    # "realState":Z
    .restart local v21    # "forWrite":Z
    .restart local v22    # "realState":Z
    :goto_3bd
    monitor-exit v8
    :try_end_3be
    .catchall {:try_start_383 .. :try_end_3be} :catchall_486

    .line 4231
    if-eqz v18, :cond_40a

    .line 4232
    const-string v4, "demo"

    .line 4233
    .local v4, "id":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsMediaDirectory()Ljava/io/File;

    move-result-object v6

    .line 4234
    .local v6, "path":Ljava/io/File;
    const/4 v7, 0x0

    .line 4235
    .local v7, "primary":Z
    const/4 v8, 0x0

    .line 4236
    .local v8, "removable":Z
    const/4 v9, 0x1

    .line 4237
    .local v9, "emulated":Z
    const/4 v10, 0x0

    .line 4238
    .local v10, "externallyManaged":Z
    const/16 v23, 0x0

    .line 4239
    .local v23, "allowMassStorage":Z
    const-wide/16 v26, 0x0

    .line 4240
    .local v26, "maxFileSize":J
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v42, v0

    .line 4241
    .local v42, "user":Landroid/os/UserHandle;
    const-string/jumbo v0, "mounted_ro"

    .line 4242
    .local v0, "envState":Ljava/lang/String;
    move-object/from16 v47, v0

    .end local v0    # "envState":Ljava/lang/String;
    .local v47, "envState":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v48, v4

    const v4, 0x104000e

    .end local v4    # "id":Ljava/lang/String;
    .local v48, "id":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4244
    .local v0, "description":Ljava/lang/String;
    new-instance v4, Landroid/os/storage/StorageVolume;

    const-string v31, "demo"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v43, 0x0

    const-string v44, "demo"

    const-string/jumbo v45, "mounted_ro"

    move-object/from16 v30, v4

    move-object/from16 v32, v6

    move-object/from16 v33, v6

    move-object/from16 v34, v0

    invoke-direct/range {v30 .. v45}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4249
    .end local v0    # "description":Ljava/lang/String;
    .end local v6    # "path":Ljava/io/File;
    .end local v7    # "primary":Z
    .end local v8    # "removable":Z
    .end local v9    # "emulated":Z
    .end local v10    # "externallyManaged":Z
    .end local v23    # "allowMassStorage":Z
    .end local v26    # "maxFileSize":J
    .end local v42    # "user":Landroid/os/UserHandle;
    .end local v47    # "envState":Ljava/lang/String;
    .end local v48    # "id":Ljava/lang/String;
    :cond_40a
    if-nez v25, :cond_468

    .line 4250
    const-string v0, "StorageManagerService"

    const-string v4, "No primary storage defined yet; hacking together a stub"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4255
    .local v0, "primaryPhysical":Z
    const-string/jumbo v4, "stub_primary"

    .line 4256
    .restart local v4    # "id":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 4257
    .restart local v6    # "path":Ljava/io/File;
    iget-object v7, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const v8, 0x104000e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4258
    .local v7, "description":Ljava/lang/String;
    const/4 v8, 0x1

    .line 4259
    .local v8, "primary":Z
    move/from16 v36, v0

    .line 4260
    .local v36, "removable":Z
    xor-int/lit8 v37, v0, 0x1

    .line 4261
    .local v37, "emulated":Z
    const/4 v9, 0x0

    .line 4262
    .local v9, "externallyManaged":Z
    const/4 v10, 0x0

    .line 4263
    .local v10, "allowMassStorage":Z
    const-wide/16 v26, 0x0

    .line 4264
    .restart local v26    # "maxFileSize":J
    move/from16 v23, v0

    .end local v0    # "primaryPhysical":Z
    .local v23, "primaryPhysical":Z
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v42, v0

    .line 4265
    .local v42, "owner":Landroid/os/UserHandle;
    const/4 v0, 0x0

    .line 4266
    .local v0, "fsUuid":Ljava/lang/String;
    const/16 v46, 0x0

    .line 4267
    .local v46, "uuid":Ljava/util/UUID;
    const-string/jumbo v47, "removed"

    .line 4269
    .local v47, "state":Ljava/lang/String;
    new-instance v1, Landroid/os/storage/StorageVolume;

    const-string/jumbo v31, "stub_primary"

    const/16 v35, 0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const-string/jumbo v45, "removed"

    move-object/from16 v30, v1

    move-object/from16 v32, v6

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v43, v46

    move-object/from16 v44, v0

    invoke-direct/range {v30 .. v45}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v30, v0

    const/4 v0, 0x0

    .end local v0    # "fsUuid":Ljava/lang/String;
    .local v30, "fsUuid":Ljava/lang/String;
    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4274
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "path":Ljava/io/File;
    .end local v7    # "description":Ljava/lang/String;
    .end local v8    # "primary":Z
    .end local v9    # "externallyManaged":Z
    .end local v10    # "allowMassStorage":Z
    .end local v23    # "primaryPhysical":Z
    .end local v26    # "maxFileSize":J
    .end local v30    # "fsUuid":Ljava/lang/String;
    .end local v36    # "removable":Z
    .end local v37    # "emulated":Z
    .end local v42    # "owner":Landroid/os/UserHandle;
    .end local v46    # "uuid":Ljava/util/UUID;
    .end local v47    # "state":Ljava/lang/String;
    :cond_468
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/StorageVolume;

    return-object v0

    .line 4227
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v21    # "forWrite":Z
    .end local v24    # "callingUid":I
    .end local v28    # "callingUserId":I
    .end local v29    # "userIdSharingMedia":I
    .local v5, "callingUid":I
    .local v6, "callingUserId":I
    .local v7, "userIdSharingMedia":I
    .local v9, "forWrite":Z
    .local v10, "realState":Z
    .local v22, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v23, "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_475
    move-exception v0

    move/from16 v24, v5

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v21, v9

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move/from16 v22, v10

    .end local v6    # "callingUserId":I
    .end local v7    # "userIdSharingMedia":I
    .end local v9    # "forWrite":Z
    .end local v10    # "realState":Z
    .end local v23    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v5, "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "forWrite":Z
    .local v22, "realState":Z
    .restart local v24    # "callingUid":I
    .restart local v28    # "callingUserId":I
    .restart local v29    # "userIdSharingMedia":I
    :goto_484
    :try_start_484
    monitor-exit v8
    :try_end_485
    .catchall {:try_start_484 .. :try_end_485} :catchall_486

    throw v0

    :catchall_486
    move-exception v0

    goto :goto_484

    .line 4127
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v18    # "userIsDemo":Z
    .end local v19    # "storagePermission":Z
    .end local v20    # "userKeyUnlocked":Z
    .end local v21    # "forWrite":Z
    .end local v22    # "realState":Z
    .end local v24    # "callingUid":I
    .end local v25    # "foundPrimary":Z
    .end local v28    # "callingUserId":I
    .end local v29    # "userIdSharingMedia":I
    .local v5, "callingUid":I
    .restart local v6    # "callingUserId":I
    .restart local v9    # "forWrite":Z
    .restart local v10    # "realState":Z
    :catchall_488
    move-exception v0

    move/from16 v24, v5

    move/from16 v28, v6

    move/from16 v21, v9

    move/from16 v22, v10

    .end local v5    # "callingUid":I
    .end local v6    # "callingUserId":I
    .end local v9    # "forWrite":Z
    .end local v10    # "realState":Z
    .restart local v21    # "forWrite":Z
    .restart local v22    # "realState":Z
    .restart local v24    # "callingUid":I
    .restart local v28    # "callingUserId":I
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4128
    throw v0

    .line 4067
    .end local v11    # "includeInvisible":Z
    .end local v12    # "includeRecent":Z
    .end local v13    # "includeSharedProfile":Z
    .end local v14    # "systemUserUnlocked":Z
    .end local v15    # "callerIsMediaStore":Z
    .end local v16    # "token":J
    .end local v21    # "forWrite":Z
    .end local v22    # "realState":Z
    .end local v24    # "callingUid":I
    .end local v28    # "callingUserId":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingUserId":I
    :cond_495
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "callingPackage does not match UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_49e
    .sparse-switch
        0x0 -> :sswitch_155
        0x2 -> :sswitch_126
        0x5 -> :sswitch_155
    .end sparse-switch
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .registers 6
    .param p1, "flags"    # I

    .line 4301
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4302
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/VolumeRecord;

    .line 4303
    .local v1, "res":[Landroid/os/storage/VolumeRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 4304
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    aput-object v3, v1, v2

    .line 4303
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4306
    .end local v2    # "i":I
    :cond_21
    monitor-exit v0

    return-object v1

    .line 4307
    .end local v1    # "res":[Landroid/os/storage/VolumeRecord;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .registers 6
    .param p1, "flags"    # I

    .line 4290
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4291
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/VolumeInfo;

    .line 4292
    .local v1, "res":[Landroid/os/storage/VolumeInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 4293
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    aput-object v3, v1, v2

    .line 4292
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4295
    .end local v2    # "i":I
    :cond_21
    monitor-exit v0

    return-object v1

    .line 4296
    .end local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public isAppIoBlocked(Ljava/lang/String;III)Z
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I

    .line 3837
    invoke-direct {p0, p2}, Lcom/android/server/StorageManagerService;->isAppIoBlocked(I)Z

    move-result v0

    return v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "rawPath"    # Ljava/lang/String;

    .line 3356
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3357
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 3358
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3359
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public isPassedLifetimeThresh()Z
    .registers 2

    .line 3008
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mPassedLifetimeThresh:Z

    return v0
.end method

.method public isUserKeyUnlocked(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3615
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3616
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {v1, p1}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->contains(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3617
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method synthetic lambda$connectStoraged$2$com-android-server-StorageManagerService()V
    .registers 1

    .line 2248
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    .line 2249
    return-void
.end method

.method synthetic lambda$connectVold$3$com-android-server-StorageManagerService()V
    .registers 1

    .line 2286
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    .line 2287
    return-void
.end method

.method synthetic lambda$onVolumeStateChangedLocked$1$com-android-server-StorageManagerService(ILandroid/os/storage/VolumeInfo;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 1873
    if-nez p1, :cond_d

    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_d

    .line 1875
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->migrateLegacyObbData()V

    .line 1880
    :cond_d
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1882
    const/4 v0, 0x0

    .line 1886
    .local v0, "pidPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    const/4 v2, 0x5

    const-string v3, "StorageManagerService"

    if-ge v1, v2, :cond_3d

    .line 1888
    :try_start_1d
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 1889
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/ActivityManagerInternal;->getProcessesWithPendingBindMounts(I)Ljava/util/Map;

    move-result-object v2
    :try_end_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_2d} :catch_2f

    move-object v0, v2

    .line 1890
    goto :goto_3d

    .line 1891
    :catch_2f
    move-exception v2

    .line 1892
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v4, "Some processes are starting, retry"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1886
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1897
    .end local v1    # "i":I
    :cond_3d
    :goto_3d
    if-eqz v0, :cond_43

    .line 1898
    invoke-direct {p0, v0, p1}, Lcom/android/server/StorageManagerService;->remountAppStorageDirs(Ljava/util/Map;I)V

    goto :goto_48

    .line 1900
    :cond_43
    const-string v1, "Not able to getStorageNotOptimizedProcesses() after 5 retries"

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    :goto_48
    return-void
.end method

.method synthetic lambda$resetIfBootedAndConnected$0$com-android-server-StorageManagerService()V
    .registers 3

    .line 1197
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1198
    return-void
.end method

.method public lastMaintenance()J
    .registers 3

    .line 1573
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method public lockUserKey(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3589
    if-nez p1, :cond_11

    .line 3590
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 3591
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headless system user data cannot be locked.."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3594
    :cond_11
    :goto_11
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3596
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 3597
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s CE storage is already locked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    return-void

    .line 3602
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->lockUserKey(I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_40} :catch_4e

    .line 3606
    nop

    .line 3608
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3609
    :try_start_44
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {v1, p1}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->remove(I)V

    .line 3610
    monitor-exit v0

    .line 3611
    return-void

    .line 3610
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_4b

    throw v1

    .line 3603
    :catch_4e
    move-exception v0

    .line 3604
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3605
    return-void
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    .line 3992
    const-string v0, ": "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3993
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3994
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sys.user."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ce_available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3997
    .local v3, "propertyName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v4

    const-string v5, "Failed to prepare "

    if-eqz v4, :cond_198

    .line 4002
    if-nez v2, :cond_4d

    const/4 v4, 0x0

    .line 4003
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_36

    goto :goto_4d

    .line 4004
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4008
    :cond_4d
    :goto_4d
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v6, "appops"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 4010
    .local v4, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {v4, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4013
    :try_start_5a
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    .line 4014
    invoke-virtual {v6, v7, p1}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v6

    .line 4015
    .local v6, "noAppStorageProp":Landroid/content/pm/PackageManager$Property;
    if-eqz v6, :cond_8c

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v7

    if-nez v7, :cond_6f

    goto :goto_8c

    .line 4016
    :cond_6f
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " should not have "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "callingUid":I
    .end local v2    # "userId":I
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v4    # "appOps":Landroid/app/AppOpsManager;
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "callingPkg":Ljava/lang/String;
    .end local p2    # "appPath":Ljava/lang/String;
    throw v7
    :try_end_8c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_8c} :catch_8d

    .line 4020
    .end local v6    # "noAppStorageProp":Landroid/content/pm/PackageManager$Property;
    .restart local v1    # "callingUid":I
    .restart local v2    # "userId":I
    .restart local v3    # "propertyName":Ljava/lang/String;
    .restart local v4    # "appOps":Landroid/app/AppOpsManager;
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "callingPkg":Ljava/lang/String;
    .restart local p2    # "appPath":Ljava/lang/String;
    :cond_8c
    :goto_8c
    goto :goto_8e

    .line 4018
    :catch_8d
    move-exception v6

    .line 4022
    :goto_8e
    const/4 v6, 0x0

    .line 4024
    .local v6, "appFile":Ljava/io/File;
    :try_start_8f
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v7
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_98} :catch_176

    move-object v6, v7

    .line 4027
    nop

    .line 4029
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 4030
    const-string v7, "/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b7

    .line 4031
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4035
    :cond_b7
    sget-object v7, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 4036
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const-string v9, "Invalid mkdirs path: "

    if-eqz v8, :cond_159

    .line 4038
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_138

    .line 4044
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e5

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f0

    .line 4045
    :cond_e5
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_111

    iget v8, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-ne v2, v8, :cond_f0

    goto :goto_111

    .line 4046
    :cond_f0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " does not match calling user id "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4050
    :cond_111
    :goto_111
    :try_start_111
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v8, p2, v1}, Landroid/os/IVold;->setupAppDir(Ljava/lang/String;I)V
    :try_end_116
    .catch Landroid/os/RemoteException; {:try_start_111 .. :try_end_116} :catch_118

    .line 4053
    nop

    .line 4055
    return-void

    .line 4051
    :catch_118
    move-exception v8

    .line 4052
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4039
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_138
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " does not contain calling package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4057
    :cond_159
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " is not a known app path."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4025
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    :catch_176
    move-exception v5

    .line 4026
    .local v5, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to resolve "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3998
    .end local v4    # "appOps":Landroid/app/AppOpsManager;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "appFile":Ljava/io/File;
    :cond_198
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public monitor()V
    .registers 3

    .line 5050
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->monitor()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 5053
    goto :goto_c

    .line 5051
    :catch_6
    move-exception v0

    .line 5052
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5054
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .registers 6
    .param p1, "volId"    # Ljava/lang/String;

    .line 2533
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2535
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 2536
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2540
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V

    .line 2541
    return-void

    .line 2537
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mounting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " restricted by policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V
    .registers 16
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I
    .param p5, "obbInfo"    # Landroid/content/res/ObbInfo;

    .line 3365
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3366
    const-string v0, "canonicalPath cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3367
    const-string/jumbo v0, "token cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3368
    const-string/jumbo v0, "obbIfno cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3370
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3371
    .local v0, "callingUid":I
    new-instance v9, Lcom/android/server/StorageManagerService$ObbState;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v0

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    .line 3373
    .local v1, "obbState":Lcom/android/server/StorageManagerService$ObbState;
    new-instance v2, Lcom/android/server/StorageManagerService$MountObbAction;

    invoke-direct {v2, p0, v1, v0, p5}, Lcom/android/server/StorageManagerService$MountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;ILandroid/content/res/ObbInfo;)V

    .line 3374
    .local v2, "action":Lcom/android/server/StorageManagerService$ObbAction;
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3378
    return-void
.end method

.method public mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;
    .registers 9

    .line 3936
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptorBridge"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3940
    .local v0, "uid":I
    :goto_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3941
    const/4 v2, 0x0

    .line 3942
    .local v2, "newlyCreated":Z
    :try_start_10
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v3, :cond_28

    .line 3943
    new-instance v3, Lcom/android/server/storage/AppFuseBridge;

    invoke-direct {v3}, Lcom/android/server/storage/AppFuseBridge;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 3944
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    const-string v5, "AppFuseBridge"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_58

    .line 3945
    const/4 v2, 0x1

    .line 3948
    :cond_28
    :try_start_28
    iget v3, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I
    :try_end_2e
    .catch Lcom/android/server/AppFuseMountException; {:try_start_28 .. :try_end_2e} :catch_52
    .catchall {:try_start_28 .. :try_end_2e} :catchall_58

    .line 3950
    .local v3, "name":I
    :try_start_2e
    new-instance v4, Lcom/android/internal/os/AppFuseMount;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    new-instance v6, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    invoke-direct {v6, p0, v0, v3}, Lcom/android/server/StorageManagerService$AppFuseMountScope;-><init>(Lcom/android/server/StorageManagerService;II)V

    .line 3951
    invoke-virtual {v5, v6}, Lcom/android/server/storage/AppFuseBridge;->addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/android/internal/os/AppFuseMount;-><init>(ILandroid/os/ParcelFileDescriptor;)V
    :try_end_3e
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_2e .. :try_end_3e} :catch_40
    .catch Lcom/android/server/AppFuseMountException; {:try_start_2e .. :try_end_3e} :catch_52
    .catchall {:try_start_2e .. :try_end_3e} :catchall_58

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_58

    .line 3950
    return-object v4

    .line 3952
    :catch_40
    move-exception v4

    .line 3953
    .local v4, "e":Lcom/android/internal/os/FuseUnavailableMountException;
    const/4 v5, 0x0

    if-eqz v2, :cond_4d

    .line 3955
    :try_start_44
    const-string v6, "StorageManagerService"

    const-string v7, ""

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catch Lcom/android/server/AppFuseMountException; {:try_start_44 .. :try_end_4b} :catch_52
    .catchall {:try_start_44 .. :try_end_4b} :catchall_58

    .line 3956
    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_58

    return-object v5

    .line 3959
    :cond_4d
    :try_start_4d
    iput-object v5, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    :try_end_4f
    .catch Lcom/android/server/AppFuseMountException; {:try_start_4d .. :try_end_4f} :catch_52
    .catchall {:try_start_4d .. :try_end_4f} :catchall_58

    .line 3963
    .end local v3    # "name":I
    .end local v4    # "e":Lcom/android/internal/os/FuseUnavailableMountException;
    nop

    .line 3964
    .end local v2    # "newlyCreated":Z
    :try_start_50
    monitor-exit v1

    goto :goto_c

    .line 3961
    .restart local v2    # "newlyCreated":Z
    :catch_52
    move-exception v3

    .line 3962
    .local v3, "e":Lcom/android/server/AppFuseMountException;
    invoke-virtual {v3}, Lcom/android/server/AppFuseMountException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    throw v4

    .line 3964
    .end local v2    # "newlyCreated":Z
    .end local v3    # "e":Lcom/android/server/AppFuseMountException;
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    :catchall_58
    move-exception v2

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_58

    throw v2
.end method

.method public moveStorageQuickly(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveStorageQuickly...from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1473
    .local v0, "callingUid":I
    const/16 v2, 0x17d4

    if-eq v0, v2, :cond_36

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_36

    .line 1475
    const-string/jumbo v2, "moveStorageQuickly - no permission!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    return-void

    .line 1480
    :cond_36
    :try_start_36
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v3, Lcom/android/server/StorageManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/StorageManagerService$4;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-interface {v2, p1, p2, v3, p3}, Landroid/os/IVold;->moveStorageQuickly(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;I)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_40} :catch_41

    .line 1495
    goto :goto_48

    .line 1493
    :catch_41
    move-exception v2

    .line 1494
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "moveStorageQuickly....failed!"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1496
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_48
    return-void
.end method

.method public needsCheckpoint()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3451
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3452
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v0

    return v0
.end method

.method public notifyAppIoBlocked(Ljava/lang/String;III)V
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I

    .line 3822
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceExternalStorageService()V

    .line 3824
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageSessionController;->notifyAppIoBlocked(Ljava/lang/String;III)V

    .line 3825
    return-void
.end method

.method public notifyAppIoResumed(Ljava/lang/String;III)V
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I

    .line 3829
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceExternalStorageService()V

    .line 3831
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageSessionController;->notifyAppIoResumed(Ljava/lang/String;III)V

    .line 3832
    return-void
.end method

.method public onAwakeStateChanged(Z)V
    .registers 2
    .param p1, "isAwake"    # Z

    .line 1419
    return-void
.end method

.method public onDaemonConnected()V
    .registers 3

    .line 1577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 1578
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1579
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 6
    .param p1, "isShowing"    # Z

    .line 1425
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    .line 1426
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iget v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1427
    .local v0, "isSecureKeyguardShowing":Z
    :goto_17
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    if-eq v1, v0, :cond_2e

    .line 1428
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 1429
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    iget-boolean v3, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1430
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1432
    :cond_2e
    return-void
.end method

.method public openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "mountId"    # I
    .param p2, "fileId"    # I
    .param p3, "mode"    # I

    .line 3971
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptor"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3974
    const/high16 v0, 0x30000000

    and-int/2addr p3, v0

    .line 3977
    const/4 v0, 0x0

    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_c .. :try_end_f} :catch_25
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_25

    .line 3978
    :try_start_f
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v2, :cond_1c

    .line 3979
    const-string v2, "StorageManagerService"

    const-string v3, "FuseBridge has not been created"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    monitor-exit v1

    return-object v0

    .line 3982
    :cond_1c
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/storage/AppFuseBridge;->openFile(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 3983
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_22

    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "mountId":I
    .end local p2    # "fileId":I
    .end local p3    # "mode":I
    :try_start_24
    throw v2
    :try_end_25
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_24 .. :try_end_25} :catch_25
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_25} :catch_25

    .line 3984
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "mountId":I
    .restart local p2    # "fileId":I
    .restart local p3    # "mode":I
    :catch_25
    move-exception v1

    .line 3985
    .local v1, "error":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    const-string v3, "The mount point has already been invalid"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3986
    return-object v0
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .registers 7
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "ratio"    # I

    .line 2710
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2711
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 2713
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2715
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2, p2}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2716
    const-string/jumbo v1, "partitionMixed"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1c

    .line 2719
    goto :goto_22

    .line 2717
    :catch_1c
    move-exception v1

    .line 2718
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2720
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_22
    return-void
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .registers 6
    .param p1, "diskId"    # Ljava/lang/String;

    .line 2696
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2697
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 2699
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2701
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2702
    const-string/jumbo v1, "partitionPrivate"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1d

    .line 2705
    goto :goto_23

    .line 2703
    :catch_1d
    move-exception v1

    .line 2704
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2706
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .registers 6
    .param p1, "diskId"    # Ljava/lang/String;

    .line 2683
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2685
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2687
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2688
    const-string/jumbo v1, "partitionPublic"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    .line 2691
    goto :goto_20

    .line 2689
    :catch_1a
    move-exception v1

    .line 2690
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2692
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .registers 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "serialNumber"    # I
    .param p4, "flags"    # I

    .line 3651
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3654
    :try_start_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(Ljava/lang/String;III)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a

    .line 3657
    nop

    .line 3658
    return-void

    .line 3655
    :catch_a
    move-exception v0

    .line 3656
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/storage/IStorageEventListener;

    .line 2515
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->register(Landroid/os/storage/IStorageEventListener;)V

    .line 2516
    return-void
.end method

.method public runExtmFlushPages(ILandroid/os/IVoldTaskListener;)V
    .registers 22
    .param p1, "flushLevel"    # I
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;

    .line 1515
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {v7, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1516
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1518
    .local v9, "mStartTime":J
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    move-object v11, v0

    .line 1520
    .local v11, "result":Landroid/os/PersistableBundle;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/StorageManagerService;->getPagesNeedFlush(I)I

    move-result v12

    .line 1521
    .local v12, "pagesCount":I
    const/4 v0, 0x0

    const-string v13, "StorageManagerService"

    if-gtz v12, :cond_2b

    .line 1522
    const-string v1, "MFZ_PAGE_COUNT"

    invoke-virtual {v11, v1, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1523
    invoke-direct {v7, v8, v0, v11}, Lcom/android/server/StorageManagerService;->dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 1524
    const-string/jumbo v0, "no pages need to flush"

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return-void

    .line 1527
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flush thread start , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pages need to flush"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :try_start_47
    const-class v1, Landroid/os/IVold;

    const-string/jumbo v2, "runExtMFlush"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Landroid/os/IVoldTaskListener;

    const/4 v14, 0x2

    aput-object v5, v4, v14

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v15, v1

    .line 1531
    .local v15, "method":Ljava/lang/reflect/Method;
    iget-object v5, v7, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    new-instance v0, Lcom/android/server/StorageManagerService$5;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_74} :catch_8f

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v6, v3

    move-wide v3, v9

    move-object/from16 v16, v5

    move v5, v12

    move-wide/from16 v17, v9

    move-object v9, v6

    .end local v9    # "mStartTime":J
    .local v17, "mStartTime":J
    move-object/from16 v6, p2

    :try_start_81
    invoke-direct/range {v1 .. v6}, Lcom/android/server/StorageManagerService$5;-><init>(Lcom/android/server/StorageManagerService;JILandroid/os/IVoldTaskListener;)V

    aput-object v0, v9, v14

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8b} :catch_8d

    .line 1556
    nop

    .end local v15    # "method":Ljava/lang/reflect/Method;
    goto :goto_9e

    .line 1552
    :catch_8d
    move-exception v0

    goto :goto_92

    .end local v17    # "mStartTime":J
    .restart local v9    # "mStartTime":J
    :catch_8f
    move-exception v0

    move-wide/from16 v17, v9

    .line 1553
    .end local v9    # "mStartTime":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "mStartTime":J
    :goto_92
    const/4 v1, -0x1

    invoke-direct {v7, v8, v1, v11}, Lcom/android/server/StorageManagerService;->dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 1554
    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1555
    const-string v1, "Failed to runExtmFlushPages"

    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9e
    return-void
.end method

.method public runFileDefrag(Ljava/lang/String;I)I
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "maxAllowedDefragSizeKB"    # I

    .line 2875
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2877
    :try_start_5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2878
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 2879
    .local v1, "res":[I
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v4, Lcom/android/server/StorageManagerService$13;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/server/StorageManagerService$13;-><init>(Lcom/android/server/StorageManagerService;[ILjava/util/concurrent/CountDownLatch;)V

    invoke-interface {v3, p1, p2, v4}, Landroid/os/IVold;->runFileDefrag(Ljava/lang/String;ILandroid/os/IVoldTaskListener;)V

    .line 2890
    const-string v3, "defrag"

    const-wide/32 v4, 0x493e0

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V

    .line 2891
    aget v2, v1, v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_25

    return v2

    .line 2892
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v1    # "res":[I
    :catch_25
    move-exception v0

    .line 2893
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    const-string v2, "Do defragment on file has failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2894
    const/4 v1, -0x1

    return v1
.end method

.method runIdleMaint(Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2900
    const-string v0, "StorageManagerService"

    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2907
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1a

    .line 2921
    :cond_14
    const-string v1, "Skipping idle maintenance - block based checkpoint in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 2908
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mNeedGC:Z

    new-instance v3, Lcom/android/server/StorageManagerService$14;

    invoke-direct {v3, p0, p1}, Lcom/android/server/StorageManagerService$14;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2, v3}, Landroid/os/IVold;->runIdleMaint(ZLandroid/os/IVoldTaskListener;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_27

    .line 2925
    :goto_26
    goto :goto_2b

    .line 2923
    :catch_27
    move-exception v1

    .line 2924
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2926
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public runIdleMaintenance()V
    .registers 2

    .line 2930
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 2931
    return-void
.end method

.method runIdleMaintenance(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 1561
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1562
    return-void
.end method

.method public runMaintenance()V
    .registers 2

    .line 1567
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1568
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    .line 1569
    return-void
.end method

.method runSmartIdleMaint(Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 3104
    const-string v0, "StorageManagerService"

    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3109
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1b

    .line 3132
    :cond_14
    const-string v1, "Skipping smart idle maintenance - block based checkpoint in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a3

    .line 3110
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshLifetimeConstraint()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->checkChargeStatus()Z

    move-result v1

    if-nez v1, :cond_29

    goto/16 :goto_a6

    .line 3114
    :cond_29
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1}, Landroid/os/IVold;->getWriteAmount()I

    move-result v1

    .line 3115
    .local v1, "latestWrite":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3d

    .line 3116
    const-string v2, "Failed to get storage write record"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_ae
    .catchall {:try_start_7 .. :try_end_37} :catchall_ac

    .line 3137
    if-eqz p1, :cond_3c

    .line 3138
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3117
    :cond_3c
    return-void

    .line 3120
    :cond_3d
    :try_start_3d
    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->updateStorageWriteRecords(I)V

    .line 3121
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getAverageWriteAmount()I

    move-result v2

    .line 3123
    .local v2, "avgWriteAmount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set smart idle maintenance: latest write amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", average write amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", min segment threshold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/StorageManagerService;->mMinSegmentsThreshold:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dirty reclaim rate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/StorageManagerService;->mDirtyReclaimRate:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segment reclaim weight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/StorageManagerService;->mSegmentReclaimWeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", period: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v5, p0, Lcom/android/server/StorageManagerService;->mMinSegmentsThreshold:I

    iget v6, p0, Lcom/android/server/StorageManagerService;->mDirtyReclaimRate:F

    iget v7, p0, Lcom/android/server/StorageManagerService;->mSegmentReclaimWeight:F

    sget v8, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    move v4, v2

    invoke-interface/range {v3 .. v8}, Landroid/os/IVold;->setGCUrgentPace(IIFFI)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_a2} :catch_ae
    .catchall {:try_start_3d .. :try_end_a2} :catchall_ac

    .line 3131
    .end local v1    # "latestWrite":I
    .end local v2    # "avgWriteAmount":I
    nop

    .line 3137
    :goto_a3
    if-eqz p1, :cond_b8

    .line 3138
    goto :goto_b5

    .line 3137
    :cond_a6
    :goto_a6
    if-eqz p1, :cond_ab

    .line 3138
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3111
    :cond_ab
    return-void

    .line 3137
    :catchall_ac
    move-exception v0

    goto :goto_b9

    .line 3134
    :catch_ae
    move-exception v1

    .line 3135
    .local v1, "e":Ljava/lang/Exception;
    :try_start_af
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_ac

    .line 3137
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz p1, :cond_b8

    .line 3138
    :goto_b5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3141
    :cond_b8
    return-void

    .line 3137
    :goto_b9
    if-eqz p1, :cond_be

    .line 3138
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3140
    :cond_be
    throw v0
.end method

.method public setCloudMediaProvider(Ljava/lang/String;)V
    .registers 8
    .param p1, "authority"    # Ljava/lang/String;

    .line 3846
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceExternalStorageService()V

    .line 3848
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3849
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3850
    :try_start_e
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3851
    .local v2, "oldAuthority":Ljava/lang/String;
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 3852
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3853
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3854
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3856
    .end local v2    # "oldAuthority":Ljava/lang/String;
    :cond_2d
    monitor-exit v1

    .line 3857
    return-void

    .line 3856
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public setDebugFlags(II)V
    .registers 10
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 3145
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3147
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_55

    .line 3152
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 3156
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v0

    if-nez v0, :cond_45

    .line 3161
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3163
    .local v3, "token":J
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_23

    move v0, v2

    goto :goto_24

    :cond_23
    move v0, v1

    .line 3164
    .local v0, "emulateFbe":Z
    :goto_24
    :try_start_24
    const-string/jumbo v5, "persist.sys.emulate_fbe"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/PowerManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_24 .. :try_end_3c} :catchall_40

    .line 3169
    .end local v0    # "emulateFbe":Z
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3170
    goto :goto_55

    .line 3169
    :catchall_40
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3170
    throw v0

    .line 3157
    .end local v3    # "token":J
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Emulation requires disabling \'Secure start-up\' in Settings > Security"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3153
    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Emulation not supported on device with native FBE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3173
    :cond_55
    :goto_55
    and-int/lit8 v0, p2, 0x3

    const/16 v3, 0xa

    if-eqz v0, :cond_87

    .line 3176
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_62

    .line 3177
    const-string v0, "force_on"

    .local v0, "value":Ljava/lang/String;
    goto :goto_6b

    .line 3178
    .end local v0    # "value":Ljava/lang/String;
    :cond_62
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_69

    .line 3179
    const-string v0, "force_off"

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_6b

    .line 3181
    .end local v0    # "value":Ljava/lang/String;
    :cond_69
    const-string v0, ""

    .line 3184
    .restart local v0    # "value":Ljava/lang/String;
    :goto_6b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3186
    .local v4, "token":J
    :try_start_6f
    const-string/jumbo v6, "persist.sys.adoptable"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_7e
    .catchall {:try_start_6f .. :try_end_7e} :catchall_82

    .line 3191
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3192
    goto :goto_87

    .line 3191
    :catchall_82
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3192
    throw v1

    .line 3195
    .end local v0    # "value":Ljava/lang/String;
    .end local v4    # "token":J
    :cond_87
    :goto_87
    and-int/lit8 v0, p2, 0x18

    if-eqz v0, :cond_b7

    .line 3198
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_92

    .line 3199
    const-string v0, "force_on"

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_9b

    .line 3200
    .end local v0    # "value":Ljava/lang/String;
    :cond_92
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_99

    .line 3201
    const-string v0, "force_off"

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_9b

    .line 3203
    .end local v0    # "value":Ljava/lang/String;
    :cond_99
    const-string v0, ""

    .line 3206
    .restart local v0    # "value":Ljava/lang/String;
    :goto_9b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3208
    .restart local v4    # "token":J
    :try_start_9f
    const-string/jumbo v6, "persist.sys.sdcardfs"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_ae
    .catchall {:try_start_9f .. :try_end_ae} :catchall_b2

    .line 3213
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3214
    goto :goto_b7

    .line 3213
    :catchall_b2
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3214
    throw v1

    .line 3217
    .end local v0    # "value":Ljava/lang/String;
    .end local v4    # "token":J
    :cond_b7
    :goto_b7
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_e1

    .line 3218
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_c0

    move v1, v2

    :cond_c0
    move v0, v1

    .line 3220
    .local v0, "enabled":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3222
    .local v1, "token":J
    :try_start_c5
    const-string/jumbo v4, "persist.sys.virtual_disk"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3225
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_d8
    .catchall {:try_start_c5 .. :try_end_d8} :catchall_dc

    .line 3227
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3228
    goto :goto_e1

    .line 3227
    :catchall_dc
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3228
    throw v3

    .line 3230
    .end local v0    # "enabled":Z
    .end local v1    # "token":J
    :cond_e1
    :goto_e1
    return-void
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 12
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .line 3241
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3246
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3247
    :try_start_8
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    .line 3251
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v1, :cond_fd

    .line 3254
    iput-object p2, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 3255
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 3258
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 3259
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3260
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v4

    if-eqz v4, :cond_65

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 3261
    invoke-virtual {p0, v4}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v4

    if-nez v4, :cond_65

    .line 3262
    const-string v2, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failing move due to locked user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    const/16 v2, -0xa

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 3264
    monitor-exit v0

    return-void

    .line 3266
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_65
    goto :goto_2a

    .line 3270
    :cond_66
    const-string/jumbo v2, "primary_physical"

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_df

    const-string/jumbo v2, "primary_physical"

    .line 3271
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    goto :goto_df

    .line 3279
    :cond_7b
    iget v2, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 3280
    .local v2, "currentUserId":I
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/android/server/StorageManagerService;->findStorageForUuidAsUser(Ljava/lang/String;I)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 3281
    .local v3, "from":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, p1, v2}, Lcom/android/server/StorageManagerService;->findStorageForUuidAsUser(Ljava/lang/String;I)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 3283
    .local v4, "to":Landroid/os/storage/VolumeInfo;
    const/4 v5, -0x6

    if-nez v3, :cond_a9

    .line 3284
    const-string v6, "StorageManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failing move due to missing from volume "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    invoke-direct {p0, v5}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 3286
    monitor-exit v0

    return-void

    .line 3287
    :cond_a9
    if-nez v4, :cond_c8

    .line 3288
    const-string v6, "StorageManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failing move due to missing to volume "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    invoke-direct {p0, v5}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 3290
    monitor-exit v0

    return-void

    .line 3293
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "currentUserId":I
    :cond_c8
    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_8 .. :try_end_c9} :catchall_11e

    .line 3296
    :try_start_c9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v1, v3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget-object v2, v4, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    new-instance v5, Lcom/android/server/StorageManagerService$16;

    invoke-direct {v5, p0}, Lcom/android/server/StorageManagerService$16;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-interface {v0, v1, v2, v5}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d7} :catch_d8

    .line 3311
    goto :goto_de

    .line 3309
    :catch_d8
    move-exception v0

    .line 3310
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3312
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_de
    return-void

    .line 3272
    .end local v3    # "from":Landroid/os/storage/VolumeInfo;
    .end local v4    # "to":Landroid/os/storage/VolumeInfo;
    .restart local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_df
    :goto_df
    :try_start_df
    const-string v2, "StorageManagerService"

    const-string v3, "Skipping move to/from primary physical"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 3274
    const/16 v2, -0x64

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 3275
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3276
    monitor-exit v0

    return-void

    .line 3252
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_fd
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Move already in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "callback":Landroid/content/pm/IPackageMoveObserver;
    throw v1

    .line 3248
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/content/pm/IPackageMoveObserver;
    :cond_105
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary storage already at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "callback":Landroid/content/pm/IPackageMoveObserver;
    throw v1

    .line 3293
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/content/pm/IPackageMoveObserver;
    :catchall_11e
    move-exception v1

    monitor-exit v0
    :try_end_120
    .catchall {:try_start_df .. :try_end_120} :catchall_11e

    throw v1
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .line 2724
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2726
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2727
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2728
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 2729
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    iput-object p2, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 2730
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeRecordChanged(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 2731
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2732
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 2733
    return-void

    .line 2732
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .registers 8
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .line 2737
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2739
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2740
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2741
    :try_start_b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 2742
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    iget v2, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    not-int v3, p3

    and-int/2addr v2, v3

    and-int v3, p2, p3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 2743
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyVolumeRecordChanged(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 2744
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2745
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 2746
    return-void

    .line 2745
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw v1
.end method

.method public shutdown(Landroid/os/storage/IStorageShutdownObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/os/storage/IStorageShutdownObserver;

    .line 2525
    const-string v0, "android.permission.SHUTDOWN"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2527
    const-string v0, "StorageManagerService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2529
    return-void
.end method

.method public startCheckpoint(I)V
    .registers 5
    .param p1, "numTries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3424
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3425
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_18

    if-eqz v0, :cond_18

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_f

    goto :goto_18

    .line 3427
    :cond_f
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "no permission to start filesystem checkpoint"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3430
    :cond_18
    :goto_18
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1, p1}, Landroid/os/IVold;->startCheckpoint(I)V

    .line 3431
    return-void
.end method

.method public supportsCheckpoint()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3411
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->supportsCheckpoint()Z

    move-result v0

    return v0
.end method

.method public triggerCld()I
    .registers 2

    .line 2861
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2862
    invoke-static {}, Lcom/android/server/MiuiCldStub;->getInstance()Lcom/android/server/MiuiCldStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/MiuiCldStub;->triggerCld()I

    move-result v0

    return v0
.end method

.method public unlockUserKey(II[B)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "secret"    # [B

    .line 3552
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    .line 3553
    .local v0, "isFsEncrypted":Z
    const-string v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlockUserKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isFileEncryptedNativeOrEmulated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hasSecret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_2a

    const/4 v3, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    :goto_2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    const-string v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3558
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 3559
    const-string v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s CE storage is already unlocked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    return-void

    .line 3563
    :cond_60
    if-eqz v0, :cond_a0

    .line 3568
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 3569
    const-string v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not unlocking user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s CE storage yet because a secret is needed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    return-void

    .line 3574
    :cond_8f
    :try_start_8f
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_98} :catch_99

    .line 3578
    goto :goto_a0

    .line 3575
    :catch_99
    move-exception v1

    .line 3576
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3577
    return-void

    .line 3581
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a0
    :goto_a0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3582
    :try_start_a3
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {v2, p1}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->append(I)V

    .line 3583
    monitor-exit v1

    .line 3584
    return-void

    .line 3583
    :catchall_aa
    move-exception v2

    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_aa

    throw v2
.end method

.method public unmount(Ljava/lang/String;)V
    .registers 3
    .param p1, "volId"    # Ljava/lang/String;

    .line 2601
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2603
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 2604
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V

    .line 2605
    return-void
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 16
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I

    .line 3382
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3385
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 3386
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 3387
    .local v1, "existingState":Lcom/android/server/StorageManagerService$ObbState;
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_50

    .line 3389
    if-eqz v1, :cond_37

    .line 3391
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3392
    .local v0, "callingUid":I
    new-instance v10, Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, v1, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move v6, v0

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    .line 3394
    .local v2, "newState":Lcom/android/server/StorageManagerService$ObbState;
    new-instance v3, Lcom/android/server/StorageManagerService$UnmountObbAction;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/server/StorageManagerService$UnmountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V

    .line 3395
    .local v3, "action":Lcom/android/server/StorageManagerService$ObbAction;
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3399
    .end local v0    # "callingUid":I
    .end local v2    # "newState":Lcom/android/server/StorageManagerService$ObbState;
    .end local v3    # "action":Lcom/android/server/StorageManagerService$ObbAction;
    goto :goto_4f

    .line 3400
    :cond_37
    const-string v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    :goto_4f
    return-void

    .line 3387
    .end local v1    # "existingState":Lcom/android/server/StorageManagerService$ObbState;
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/storage/IStorageEventListener;

    .line 2520
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->unregister(Landroid/os/storage/IStorageEventListener;)V

    .line 2521
    return-void
.end method
