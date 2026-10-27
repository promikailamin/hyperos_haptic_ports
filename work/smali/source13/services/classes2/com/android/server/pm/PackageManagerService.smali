.class public Lcom/android/server/pm/PackageManagerService;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageSender;
.implements Landroid/content/pm/TestUtilityService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;,
        Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl;,
        Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;,
        Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;,
        Lcom/android/server/pm/PackageManagerService$Snapshot;,
        Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;,
        Lcom/android/server/pm/PackageManagerService$PackageStartability;,
        Lcom/android/server/pm/PackageManagerService$ScanFlags;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_UID:I = 0x3ea

.field private static final BROADCAST_DELAY:J = 0x3e8L

.field private static final BROADCAST_DELAY_DURING_STARTUP:J = 0x2710L

.field static final CHECK_PENDING_INTEGRITY_VERIFICATION:I = 0x1a

.field static final CHECK_PENDING_VERIFICATION:I = 0x10

.field private static final COMPANION_PACKAGE_NAME:Ljava/lang/String; = "com.android.companiondevicemanager"

.field public static final COMPRESSED_EXTENSION:Ljava/lang/String; = ".gz"

.field static final DEBUG_ABI_SELECTION:Z = false

.field public static DEBUG_ART_STATSLOG:Z = false

.field public static DEBUG_BACKUP:Z = false

.field public static final DEBUG_COMPRESSION:Z

.field public static final DEBUG_DEXOPT:Z = false

.field public static DEBUG_DOMAIN_VERIFICATION:Z = false

.field public static DEBUG_INSTALL:Z = false

.field public static final DEBUG_INSTANT:Z

.field public static DEBUG_INTENT_MATCHING:Z = false

.field public static DEBUG_PACKAGE_INFO:Z = false

.field public static DEBUG_PACKAGE_SCANNING:Z = false

.field public static DEBUG_PERMISSIONS:Z = false

.field private static final DEBUG_PER_UID_READ_TIMEOUTS:Z = false

.field public static DEBUG_PREFERRED:Z = false

.field public static DEBUG_REMOVE:Z = false

.field public static DEBUG_SETTINGS:Z = false

.field public static DEBUG_UPGRADE:Z = false

.field public static DEBUG_VERIFY:Z = false

.field private static final DEFAULT_MANDATORY_FSTRIM_INTERVAL:J = 0xf731400L

.field static final DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

.field static final DEFAULT_VERIFICATION_RESPONSE:I = 0x1

.field static final DEFERRED_NO_KILL_INSTALL_OBSERVER:I = 0x18

.field private static final DEFERRED_NO_KILL_INSTALL_OBSERVER_DELAY_MS:I = 0x1f4

.field static final DEFERRED_NO_KILL_POST_DELETE:I = 0x17

.field static final DEFERRED_NO_KILL_POST_DELETE_DELAY_MS:I = 0xbb8

.field static final DEFERRED_PENDING_KILL_INSTALL_OBSERVER:I = 0x1d

.field private static final DEFERRED_PENDING_KILL_INSTALL_OBSERVER_DELAY_MS:I = 0x3e8

.field static final DOMAIN_VERIFICATION:I = 0x1b

.field static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

.field static final ENABLE_ROLLBACK_STATUS:I = 0x15

.field static final ENABLE_ROLLBACK_TIMEOUT:I = 0x16

.field private static final FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

.field static final HIDE_EPHEMERAL_APIS:Z = false

.field static final INIT_COPY:I = 0x5

.field static final INSTANT_APP_RESOLUTION_PHASE_TWO:I = 0x14

.field static final INTEGRITY_VERIFICATION_COMPLETE:I = 0x19

.field private static final LOG_UID:I = 0x3ef

.field private static final NETWORKSTACK_UID:I = 0x431

.field private static final NFC_UID:I = 0x403

.field static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field public static final PACKAGE_STARTABILITY_DIRECT_BOOT_UNSUPPORTED:I = 0x4

.field public static final PACKAGE_STARTABILITY_FROZEN:I = 0x3

.field public static final PACKAGE_STARTABILITY_NOT_FOUND:I = 0x1

.field public static final PACKAGE_STARTABILITY_NOT_SYSTEM:I = 0x2

.field public static final PACKAGE_STARTABILITY_OK:I = 0x0

.field static final PACKAGE_VERIFIED:I = 0xf

.field public static final PLATFORM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field static final POST_INSTALL:I = 0x9

.field static final PRECOMPILE_LAYOUTS:Ljava/lang/String; = "pm.precompile_layouts"

.field private static final PROPERTY_INCFS_DEFAULT_TIMEOUTS:Ljava/lang/String; = "incfs_default_timeouts"

.field private static final PROPERTY_KNOWN_DIGESTERS_LIST:Ljava/lang/String; = "known_digesters_list"

.field private static final PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

.field static final PRUNE_UNUSED_STATIC_SHARED_LIBRARIES:I = 0x1c

.field private static final RADIO_UID:I = 0x3e9

.field static final RANDOM_CODEPATH_PREFIX:C = '-'

.field static final RANDOM_DIR_PREFIX:Ljava/lang/String; = "~~"

.field public static final REASON_AB_OTA:I = 0xa

.field public static final REASON_BACKGROUND_DEXOPT:I = 0x9

.field public static final REASON_BASELINE:I = 0x10

.field public static final REASON_BOOT_AFTER_OTA:I = 0x1

.field public static final REASON_CMDLINE:I = 0xc

.field public static final REASON_FIRST_BOOT:I = 0x0

.field public static final REASON_FIRST_USE:I = 0xd

.field public static final REASON_INACTIVE_PACKAGE_DOWNGRADE:I = 0xb

.field public static final REASON_INSTALL:I = 0x3

.field public static final REASON_INSTALL_BULK:I = 0x5

.field public static final REASON_INSTALL_BULK_DOWNGRADED:I = 0x7

.field public static final REASON_INSTALL_BULK_SECONDARY:I = 0x6

.field public static final REASON_INSTALL_BULK_SECONDARY_DOWNGRADED:I = 0x8

.field public static final REASON_INSTALL_CREATE_DM:I = 0xf

.field public static final REASON_INSTALL_FAST:I = 0x4

.field public static final REASON_LAST:I = 0x11

.field public static final REASON_POST_BOOT:I = 0x2

.field public static final REASON_SECONDARY:I = 0xe

.field public static final REASON_SHARED:I = 0x11

.field static final SCAN_AS_APK_IN_APEX:I = 0x800000

.field static final SCAN_AS_FULL_APP:I = 0x4000

.field static final SCAN_AS_INSTANT_APP:I = 0x2000

.field static final SCAN_AS_ODM:I = 0x400000

.field static final SCAN_AS_OEM:I = 0x40000

.field static final SCAN_AS_PRIVILEGED:I = 0x20000

.field static final SCAN_AS_PRODUCT:I = 0x100000

.field static final SCAN_AS_SYSTEM:I = 0x10000

.field static final SCAN_AS_SYSTEM_EXT:I = 0x200000

.field static final SCAN_AS_VENDOR:I = 0x80000

.field static final SCAN_AS_VIRTUAL_PRELOAD:I = 0x8000

.field static final SCAN_BOOTING:I = 0x10

.field static final SCAN_DONT_KILL_APP:I = 0x400

.field static final SCAN_DROP_CACHE:I = 0x1000000

.field static final SCAN_FIRST_BOOT_OR_UPGRADE:I = 0x1000

.field static final SCAN_IGNORE_FROZEN:I = 0x800

.field static final SCAN_INITIAL:I = 0x200

.field static final SCAN_MOVE:I = 0x100

.field static final SCAN_NEW_INSTALL:I = 0x4

.field static final SCAN_NO_DEX:I = 0x1

.field static final SCAN_REQUIRE_KNOWN:I = 0x80

.field static final SCAN_UPDATE_SIGNATURE:I = 0x2

.field static final SCAN_UPDATE_TIME:I = 0x8

.field static final SEND_PENDING_BROADCAST:I = 0x1

.field private static final SE_UID:I = 0x42c

.field private static final SHELL_UID:I = 0x7d0

.field private static final STATIC_SHARED_LIB_DELIMITER:Ljava/lang/String; = "_"

.field public static final STUB_SUFFIX:Ljava/lang/String; = "-Stub"

.field public static final SYSTEM_PARTITIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final THROW_EXCEPTION_ON_REQUIRE_INSTALL_PACKAGES_TO_ADD_INSTALLER_PACKAGE:J = 0x8fde625L

.field public static final TRACE_SNAPSHOTS:Z = false

.field private static final UWB_UID:I = 0x43b

.field static final WATCHDOG_TIMEOUT:J = 0x927c0L

.field static final WRITE_PACKAGE_LIST:I = 0x13

.field static final WRITE_PACKAGE_RESTRICTIONS:I = 0xe

.field static final WRITE_SETTINGS:I = 0xd

.field static final WRITE_SETTINGS_DELAY:I = 0x2710

.field private static volatile sFirstUseHandler:Landroid/os/Handler;

.field private static sFirstUseLock:Ljava/lang/Object;

.field private static sFirstUseThread:Landroid/os/HandlerThread;

.field private static final sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/pm/Computer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final mAmbientContextDetectionPackage:Ljava/lang/String;

.field private mAndroidApplication:Landroid/content/pm/ApplicationInfo;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field private final mAppInstallDir:Ljava/io/File;

.field final mAppPredictionServicePackage:Ljava/lang/String;

.field final mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field final mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

.field private final mAvailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

.field private final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field private mCacheDir:Ljava/io/File;

.field final mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field final mCompilerStats:Lcom/android/server/pm/CompilerStats;

.field final mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field final mConfiguratorPackage:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mCustomResolverComponentName:Landroid/content/ComponentName;

.field private final mDefParseFlags:I

.field private final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field final mDefaultTextClassifierPackage:Ljava/lang/String;

.field private final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field private final mDexManager:Lcom/android/server/pm/dex/DexManager;

.field private final mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

.field final mDirtyUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

.field private final mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

.field final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field private final mEnableFirstUseDexopt:Z

.field private final mEnableFreeCacheV2:Z

.field private mExistingPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

.field final mFactoryTest:Z

.field private mFirstBoot:Z

.field final mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mIncidentReportApproverPackage:Ljava/lang/String;

.field final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field private final mIncrementalVersion:Ljava/lang/String;

.field private final mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

.field final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field final mInstallLock:Ljava/lang/Object;

.field private final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field final mInstaller:Lcom/android/server/pm/Installer;

.field final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field private final mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field final mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field final mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

.field final mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

.field private final mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;>;"
        }
    .end annotation
.end field

.field final mIsEngBuild:Z

.field private final mIsPreNMR1Upgrade:Z

.field private final mIsPreNUpgrade:Z

.field private final mIsPreQUpgrade:Z

.field private final mIsUpgrade:Z

.field private final mIsUserDebugBuild:Z

.field final mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field private final mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeepUninstalledPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

.field private mLiveComputer:Lcom/android/server/pm/ComputerLocked;

.field final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field final mMetrics:Landroid/util/DisplayMetrics;

.field private final mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

.field final mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

.field mNextInstallToken:I

.field private final mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mNoKillInstallObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/PackageInstalledInfo;",
            "Landroid/content/pm/IPackageInstallObserver2;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnlyCore:Z

.field final mOptionalVerifierPackage:Ljava/lang/String;

.field private final mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

.field final mOverlayConfigSignaturePackage:Ljava/lang/String;

.field private final mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field final mPackageChangeObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/IPackageChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field private final mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

.field final mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

.field private final mPackageProperty:Lcom/android/server/pm/PackageProperty;

.field private final mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

.field private final mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field private final mPackageUsage:Lcom/android/server/pm/PackageUsage;

.field final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

.field final mPendingEnableRollback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/VerificationParams;",
            ">;"
        }
    .end annotation
.end field

.field mPendingEnableRollbackToken:I

.field private final mPendingKillInstallObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/PackageInstalledInfo;",
            "Landroid/content/pm/IPackageInstallObserver2;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPendingVerification:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageVerificationState;",
            ">;"
        }
    .end annotation
.end field

.field mPendingVerificationToken:I

.field mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

.field final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field private mPlatformPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field private mPlatformPackageOverlayPaths:[Ljava/lang/String;

.field private mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

.field private final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field private mPrepareAppDataFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

.field mPromoteSystemApps:Z

.field final mProtectedBroadcasts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

.field final mRecentsPackage:Ljava/lang/String;

.field mReleaseOnSystemReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field private mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

.field private mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

.field mRequiredInstallerPackage:Ljava/lang/String;

.field final mRequiredPermissionControllerPackage:Ljava/lang/String;

.field private final mRequiredSdkSandboxPackage:Ljava/lang/String;

.field mRequiredUninstallerPackage:Ljava/lang/String;

.field final mRequiredVerifierPackage:Ljava/lang/String;

.field private final mResolveActivity:Landroid/content/pm/ActivityInfo;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field mResolveComponentName:Landroid/content/ComponentName;
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

.field private mResolverReplaced:Z

.field final mRetailDemoPackage:Ljava/lang/String;

.field final mRunningInstalls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PostInstallData;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSafeMode:Z
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field private final mSdkVersion:I

.field private final mSeparateProcesses:[Ljava/lang/String;

.field private mServiceStartWithDelay:J

.field final mServicesExtensionPackageName:Ljava/lang/String;

.field final mSettings:Lcom/android/server/pm/Settings;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field final mSetupWizardPackage:Ljava/lang/String;

.field private final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field final mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

.field private final mSnapshotLock:Ljava/lang/Object;

.field private final mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

.field private final mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

.field final mStorageManagerPackage:Ljava/lang/String;

.field private final mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

.field private volatile mSystemReady:Z
    .annotation runtime Lcom/android/server/utils/Watched;
        manual = true
    .end annotation
.end field

.field final mSystemTextClassifierPackageName:Ljava/lang/String;

.field private final mTestUtilityService:Landroid/content/pm/TestUtilityService;

.field final mTransferredPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUserManager:Lcom/android/server/pm/UserManagerService;

.field final mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

.field final mViewCompiler:Lcom/android/server/pm/dex/ViewCompiler;

.field private final mWatcher:Lcom/android/server/utils/Watcher;

.field private final mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field private retryFirstUseDexoptPkgName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAndroidApplication(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ApplicationInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCacheDir(Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultAppProvider(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDexManager(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDexOptHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DexOptHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDistractingPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DistractingPackageHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDomainVerificationConnection(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DomainVerificationConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrozenPackagesSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstallPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstallPackageHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstantAppInstallerInfo(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ResolveInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstrumentation(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/WatchedArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstrumentationSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsolatedOwnersSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLiveComputer(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ComputerLocked;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModuleInfoProvider(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextMoveId(Lcom/android/server/pm/PackageManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageObserverHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageObserverHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageProperty(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageProperty;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageStateWriteLock(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerTracedLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackagesSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlatformPackage(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreferredActivityHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PreferredActivityHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequiredSdkSandboxPackage(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResolveActivity(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResolveIntentHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ResolveIntentHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSharedLibraries(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SharedLibrariesImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageEventHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/StorageEventHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemReady(Lcom/android/server/pm/PackageManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestUtilityService(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/TestUtilityService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWebInstantAppsDisabled(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/WatchedSparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSafeMode(Lcom/android/server/pm/PackageManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddPermierFlagIfNeedForGlobalROM(Lcom/android/server/pm/PackageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->addPermierFlagIfNeedForGlobalROM()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearApplicationUserDataLIF(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->clearApplicationUserDataLIF(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$menforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->enforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceCanSetDistractingPackageRestrictionsAsUser(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->enforceCanSetDistractingPackageRestrictionsAsUser(IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService;->enforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/Computer;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfilterPackageStateForInstalledAndFiltered(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->filterPackageStateForInstalledAndFiltered(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mflushPackageRestrictionsAsUserInternalLocked(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->notifyPackageUseInternal(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetComponentEnabledSettingsIfNeededLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->resetComponentEnabledSettingsIfNeededLPw(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendApplicationHiddenForUser(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->sendApplicationHiddenForUser(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEnabledOverlayPackages(Lcom/android/server/pm/PackageManagerService;ILjava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/util/Set;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->setEnabledOverlayPackages(ILjava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setEnabledSettings(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 334
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    .line 335
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    .line 336
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    .line 337
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    .line 338
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    .line 339
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    .line 340
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    .line 341
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    .line 342
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    .line 343
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    .line 344
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    .line 345
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    .line 347
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_ART_STATSLOG:Z

    .line 349
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 359
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    .line 473
    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 715
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;-><init>()V

    .line 716
    invoke-static {v1}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v1

    .line 715
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    .line 727
    new-array v0, v0, [Landroid/os/incremental/PerUidReadTimeouts;

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 921
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 922
    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/PackageManagerService;->PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

    .line 927
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 928
    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/PackageManagerService;->FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    .line 929
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 930
    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/PackageManagerService;->DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    .line 1081
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1084
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3001
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sFirstUseLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerServiceTestParams;)V
    .registers 8
    .param p1, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p2, "testParams"    # Lcom/android/server/pm/PackageManagerServiceTestParams;

    .line 1645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->retryFirstUseDexoptPkgName:Ljava/util/List;

    .line 613
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 618
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 623
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 626
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v2, "PackageManagerService.mPackages"

    invoke-direct {v1, v0, v0, v2}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 631
    new-instance v1, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 634
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "PackageManagerService.mIsolatedOwners"

    invoke-direct {v2, v1, v1, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 642
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 676
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 678
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "PackageManagerService.mFrozenPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 701
    new-instance v2, Lcom/android/server/pm/PackageObserverHelper;

    invoke-direct {v2}, Lcom/android/server/pm/PackageObserverHelper;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 720
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    .line 759
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 762
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "PackageManagerService.mInstrumentation"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 769
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    .line 772
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 779
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 785
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 799
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 806
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 812
    iput v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    .line 818
    new-instance v3, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 824
    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 828
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 835
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 836
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 838
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 839
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 841
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 854
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 857
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 858
    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    .line 860
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 861
    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    .line 870
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 875
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 887
    new-instance v3, Lcom/android/server/pm/PackageProperty;

    invoke-direct {v3}, Lcom/android/server/pm/PackageProperty;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 937
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 939
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 940
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 966
    new-instance v3, Lcom/android/server/pm/PackageUsage;

    invoke-direct {v3}, Lcom/android/server/pm/PackageUsage;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    .line 968
    new-instance v3, Lcom/android/server/pm/CompilerStats;

    invoke-direct {v3}, Lcom/android/server/pm/CompilerStats;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 994
    new-instance v3, Lcom/android/server/pm/PackageManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PackageManagerService$1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    .line 1092
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    .line 1646
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1647
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->bootstrap(Lcom/android/server/pm/PackageManagerService;)V

    .line 1648
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 1649
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 1650
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1651
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 1652
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 1653
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1654
    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1655
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1656
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1657
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1658
    new-instance v4, Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {v4, v3}, Lcom/android/server/pm/UserNeedsBadgingCache;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 1659
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 1660
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1661
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1663
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->apexManager:Lcom/android/server/pm/ApexManager;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 1664
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->artManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    .line 1665
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->availableFeatures:Landroid/util/ArrayMap;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 1666
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->backgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    .line 1667
    iget v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->defParseFlags:I

    iput v4, p0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 1668
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->defaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 1669
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->legacyPermissionManagerInternal:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 1670
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->dexManager:Lcom/android/server/pm/dex/DexManager;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 1671
    iget-boolean v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->factoryTest:Z

    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    .line 1672
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->incrementalManager:Landroid/os/incremental/IncrementalManager;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 1673
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->installerService:Lcom/android/server/pm/PackageInstallerService;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 1674
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 1675
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->changedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 1676
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->instantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 1677
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->instantAppResolverSettingsComponent:Landroid/content/ComponentName;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 1678
    iget-boolean v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isPreNmr1Upgrade:Z

    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    .line 1679
    iget-boolean v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isPreNupgrade:Z

    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreNUpgrade:Z

    .line 1680
    iget-boolean v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isPreQupgrade:Z

    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z

    .line 1681
    iget-boolean v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isUpgrade:Z

    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    .line 1682
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->Metrics:Landroid/util/DisplayMetrics;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1683
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->moduleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 1684
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->moveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 1685
    iget-boolean v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->onlyCore:Z

    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    .line 1686
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->overlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 1687
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->packageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 1688
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->packageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    .line 1689
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->pendingPackageBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 1690
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->testUtilityService:Landroid/content/pm/TestUtilityService;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    .line 1691
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->processLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 1692
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->protectedPackages:Lcom/android/server/pm/ProtectedPackages;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 1693
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->separateProcesses:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 1694
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->viewCompiler:Lcom/android/server/pm/dex/ViewCompiler;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mViewCompiler:Lcom/android/server/pm/dex/ViewCompiler;

    .line 1695
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredVerifierPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 1696
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->optionalVerifierPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    .line 1697
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredInstallerPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 1698
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredUninstallerPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 1699
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredPermissionControllerPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 1700
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->setupWizardPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    .line 1701
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->storageManagerPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    .line 1702
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->defaultTextClassifierPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 1703
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->systemTextClassifierPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 1704
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->retailDemoPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    .line 1705
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->recentsPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    .line 1706
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->ambientContextDetectionPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    .line 1707
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->configuratorPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    .line 1708
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->appPredictionServicePackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 1709
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->incidentReportApproverPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 1710
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->servicesExtensionPackageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 1711
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->sharedSystemSharedLibraryPackageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    .line 1712
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->overlayConfigSignaturePackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 1713
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->resolveComponentName:Landroid/content/ComponentName;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 1714
    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredSdkSandboxPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    .line 1716
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->createLiveComputer()Lcom/android/server/pm/ComputerLocked;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 1717
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 1719
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->packages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 1720
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->enableFreeCacheV2:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mEnableFreeCacheV2:Z

    .line 1721
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->enableFirstUseDexopt:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mEnableFirstUseDexopt:Z

    .line 1722
    iget v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->sdkVersion:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    .line 1723
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->appInstallDir:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 1724
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isEngBuild:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    .line 1725
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isUserDebugBuild:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    .line 1726
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->incrementalVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalVersion:Ljava/lang/String;

    .line 1727
    new-instance v0, Lcom/android/server/pm/DomainVerificationConnection;

    invoke-direct {v0, p0}, Lcom/android/server/pm/DomainVerificationConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 1729
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->broadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 1730
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->appDataHelper:Lcom/android/server/pm/AppDataHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 1731
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->installPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 1732
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->removePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 1733
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->initAndSystemPackageHelper:Lcom/android/server/pm/InitAppsHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 1734
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->deletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 1735
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->preferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 1736
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->resolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 1737
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->dexOptHelper:Lcom/android/server/pm/DexOptHelper;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 1738
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->suspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 1739
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->distractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 1741
    invoke-virtual {v3, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->setDeletePackageHelper(Lcom/android/server/pm/DeletePackageHelper;)V

    .line 1743
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->storageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 1745
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageManagerService;->registerObservers(Z)V

    .line 1746
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 1747
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;ZZLjava/lang/String;ZZILjava/lang/String;)V
    .registers 46
    .param p1, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p2, "onlyCore"    # Z
    .param p3, "factoryTest"    # Z
    .param p4, "buildFingerprint"    # Ljava/lang/String;
    .param p5, "isEngBuild"    # Z
    .param p6, "isUserDebugBuild"    # Z
    .param p7, "sdkVersion"    # I
    .param p8, "incrementalVersion"    # Ljava/lang/String;

    .line 1751
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->retryFirstUseDexoptPkgName:Ljava/util/List;

    .line 613
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 618
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v0, v3, v4}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 623
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 626
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "PackageManagerService.mPackages"

    invoke-direct {v3, v0, v0, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 631
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 634
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "PackageManagerService.mIsolatedOwners"

    invoke-direct {v3, v0, v0, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 642
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 676
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 678
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v5, "PackageManagerService.mFrozenPackages"

    invoke-direct {v4, v0, v0, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 701
    new-instance v0, Lcom/android/server/pm/PackageObserverHelper;

    invoke-direct {v0}, Lcom/android/server/pm/PackageObserverHelper;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    .line 759
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 762
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v5, "PackageManagerService.mInstrumentation"

    invoke-direct {v4, v0, v0, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 769
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    .line 772
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 779
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 785
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 799
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 806
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 812
    iput v4, v1, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    .line 818
    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 824
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 828
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 835
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 836
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 838
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 839
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 841
    iput-boolean v4, v1, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 854
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 857
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 858
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    .line 860
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 861
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    .line 870
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 875
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 887
    new-instance v0, Lcom/android/server/pm/PackageProperty;

    invoke-direct {v0}, Lcom/android/server/pm/PackageProperty;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 937
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 939
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 940
    const/4 v5, 0x1

    iput v5, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 966
    new-instance v0, Lcom/android/server/pm/PackageUsage;

    invoke-direct {v0}, Lcom/android/server/pm/PackageUsage;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    .line 968
    new-instance v0, Lcom/android/server/pm/CompilerStats;

    invoke-direct {v0}, Lcom/android/server/pm/CompilerStats;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 994
    new-instance v0, Lcom/android/server/pm/PackageManagerService$1;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    .line 1092
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    .line 1752
    move/from16 v6, p5

    iput-boolean v6, v1, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    .line 1753
    move/from16 v7, p6

    iput-boolean v7, v1, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    .line 1754
    move/from16 v8, p7

    iput v8, v1, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    .line 1755
    move-object/from16 v9, p8

    iput-object v9, v1, Lcom/android/server/pm/PackageManagerService;->mIncrementalVersion:Ljava/lang/String;

    .line 1756
    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1757
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemWrapper()Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;->disablePackageCaches()V

    .line 1759
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v10, "PackageManagerTiming"

    const-wide/32 v11, 0x40000

    invoke-direct {v0, v10, v11, v12}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    move-object v10, v0

    .line 1761
    .local v10, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v0, Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-direct {v0}, Lcom/android/server/pm/PendingPackageBroadcasts;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 1763
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->bootstrap(Lcom/android/server/pm/PackageManagerService;)V

    .line 1764
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1765
    iput-object v11, v1, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1766
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 1767
    const/4 v13, 0x3

    invoke-static {v11, v13}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 1768
    nop

    .line 1769
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1768
    const/16 v0, 0xbf4

    invoke-static {v0, v14, v15}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1771
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1772
    move/from16 v14, p3

    iput-boolean v14, v1, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    .line 1773
    move/from16 v15, p2

    iput-boolean v15, v1, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    .line 1774
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1775
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 1777
    invoke-static {}, Lcom/android/server/pm/PackageManagerDebugUtils;->initPackageManagerDebugState()V

    .line 1779
    const-string v4, "fw.free_cache_v2"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/pm/PackageManagerService;->mEnableFreeCacheV2:Z

    .line 1781
    const-string/jumbo v4, "persist.miui.dexopt.first_use"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/pm/PackageManagerService;->mEnableFirstUseDexopt:Z

    .line 1784
    const-string v4, "createSubComponents"

    invoke-virtual {v10, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1787
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    invoke-direct {v3, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-static {v4, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1788
    const-class v3, Landroid/content/pm/TestUtilityService;

    invoke-static {v3, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1789
    const-class v3, Landroid/content/pm/TestUtilityService;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/TestUtilityService;

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    .line 1790
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1791
    new-instance v4, Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {v4, v3}, Lcom/android/server/pm/UserNeedsBadgingCache;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 1792
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolver;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 1793
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1794
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1795
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getIncrementalManager()Landroid/os/incremental/IncrementalManager;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 1796
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 1797
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLegacyPermissionManagerInternal()Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 1798
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v7

    .line 1799
    .local v7, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    new-instance v8, Lcom/android/server/pm/PackageManagerService$2;

    invoke-direct {v8, v1, v7}, Lcom/android/server/pm/PackageManagerService$2;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/compat/PlatformCompat;)V

    iput-object v8, v1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    .line 1812
    invoke-virtual {v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1815
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v8

    invoke-virtual {v8, v1, v6, v0}, Lcom/android/server/pm/PackageManagerServiceStub;->init(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Landroid/content/Context;)V

    .line 1818
    const-string v8, "addSharedUsers"

    invoke-virtual {v10, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1819
    const-string v8, "android.uid.system"

    move-object/from16 v25, v7

    .end local v7    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .local v25, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    const/16 v7, 0x3e8

    const/16 v9, 0x8

    const/4 v14, 0x1

    invoke-virtual {v6, v8, v7, v14, v9}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 1821
    const-string v7, "android.uid.phone"

    const/16 v8, 0x3e9

    invoke-virtual {v6, v7, v8, v14, v9}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 1823
    const-string v7, "android.uid.log"

    const/16 v8, 0x3ef

    invoke-virtual {v6, v7, v8, v14, v9}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 1825
    const-string v7, "android.uid.nfc"

    const/16 v8, 0x403

    invoke-virtual {v6, v7, v8, v14, v9}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 1827
    const-string v7, "android.uid.bluetooth"

    const/16 v8, 0x3ea

    invoke-virtual {v6, v7, v8, v14, v9}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 1829
    const-string v7, "android.uid.shell"

    const/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v14, v9}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 1831
    const-string v7, "android.uid.se"

    const/16 v8, 0x42c

    invoke-virtual {v6, v7, v8, v14, v9}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 1833
    const-string v7, "android.uid.networkstack"

    const/16 v8, 0x431

    invoke-virtual {v6, v7, v8, v14, v9}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 1835
    const-string v7, "android.uid.uwb"

    const/16 v8, 0x43b

    invoke-virtual {v6, v7, v8, v14, v9}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 1838
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceStub;->addMiuiSharedUids()V

    .line 1840
    invoke-virtual {v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1842
    const-string v6, "debug.separate_processes"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1844
    .local v6, "separateProcesses":Ljava/lang/String;
    if-eqz v6, :cond_28f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_28f

    .line 1845
    const-string v7, "*"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26b

    .line 1846
    const/4 v7, 0x2

    iput v7, v1, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 1847
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 1848
    const-string v7, "PackageManager"

    const-string v8, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_295

    .line 1850
    :cond_26b
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 1851
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 1852
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Running with debug.separate_processes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_295

    .line 1856
    :cond_28f
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 1857
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 1860
    :goto_295
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageDexOptimizer()Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 1861
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 1862
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundDexOptService()Lcom/android/server/pm/BackgroundDexOptService;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    .line 1863
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getArtManagerService()Lcom/android/server/pm/dex/ArtManagerService;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    .line 1864
    new-instance v7, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;-><init>(Landroid/os/Looper;)V

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 1865
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getViewCompiler()Lcom/android/server/pm/dex/ViewCompiler;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mViewCompiler:Lcom/android/server/pm/dex/ViewCompiler;

    .line 1866
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1868
    const-class v8, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/display/DisplayManager;

    .line 1869
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1871
    const-string v8, "get system config"

    invoke-virtual {v10, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1872
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v8

    .line 1873
    .local v8, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v8}, Lcom/android/server/SystemConfig;->getAvailableFeatures()Landroid/util/ArrayMap;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 1874
    invoke-virtual {v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1876
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerServiceStub;->initIgnoreApps()V

    .line 1879
    new-instance v9, Lcom/android/server/pm/ProtectedPackages;

    invoke-direct {v9, v0}, Lcom/android/server/pm/ProtectedPackages;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 1881
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getApexManager()Lcom/android/server/pm/ApexManager;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 1882
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 1884
    new-instance v13, Lcom/android/server/pm/InstantAppRegistry;

    .line 1885
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v14

    move-object/from16 v26, v6

    .end local v6    # "separateProcesses":Ljava/lang/String;
    .local v26, "separateProcesses":Ljava/lang/String;
    new-instance v6, Lcom/android/server/pm/DeletePackageHelper;

    invoke-direct {v6, v1}, Lcom/android/server/pm/DeletePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v13, v0, v5, v14, v6}, Lcom/android/server/pm/InstantAppRegistry;-><init>(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/pm/DeletePackageHelper;)V

    iput-object v13, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 1887
    new-instance v5, Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-direct {v5}, Lcom/android/server/pm/ChangedPackagesTracker;-><init>()V

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 1889
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const-string v13, "app"

    invoke-direct {v5, v6, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 1891
    new-instance v5, Lcom/android/server/pm/DomainVerificationConnection;

    invoke-direct {v5, v1}, Lcom/android/server/pm/DomainVerificationConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 1892
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 1893
    invoke-interface {v6, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setConnection(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;)V

    .line 1895
    new-instance v5, Lcom/android/server/pm/BroadcastHelper;

    invoke-direct {v5, v2}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 1896
    new-instance v13, Lcom/android/server/pm/AppDataHelper;

    invoke-direct {v13, v1}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v13, v1, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 1897
    new-instance v14, Lcom/android/server/pm/InstallPackageHelper;

    invoke-direct {v14, v1, v13}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;)V

    iput-object v14, v1, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 1898
    new-instance v14, Lcom/android/server/pm/RemovePackageHelper;

    invoke-direct {v14, v1, v13}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;)V

    iput-object v14, v1, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 1899
    new-instance v15, Lcom/android/server/pm/DeletePackageHelper;

    invoke-direct {v15, v1, v14, v13}, Lcom/android/server/pm/DeletePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/AppDataHelper;)V

    iput-object v15, v1, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 1901
    invoke-virtual {v7, v15}, Lcom/android/server/pm/SharedLibrariesImpl;->setDeletePackageHelper(Lcom/android/server/pm/DeletePackageHelper;)V

    .line 1902
    new-instance v7, Lcom/android/server/pm/PreferredActivityHelper;

    invoke-direct {v7, v1}, Lcom/android/server/pm/PreferredActivityHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 1903
    new-instance v13, Lcom/android/server/pm/ResolveIntentHelper;

    .line 1904
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v19

    move-object/from16 v27, v10

    .end local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v27, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v10, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v10, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    move-object/from16 v28, v8

    .end local v8    # "systemConfig":Lcom/android/server/SystemConfig;
    .local v28, "systemConfig":Lcom/android/server/SystemConfig;
    new-instance v8, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v8, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    move-object/from16 v16, v13

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    move-object/from16 v22, v4

    move-object/from16 v23, v10

    move-object/from16 v24, v8

    invoke-direct/range {v16 .. v24}, Lcom/android/server/pm/ResolveIntentHelper;-><init>(Landroid/content/Context;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/UserNeedsBadgingCache;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    iput-object v13, v1, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 1906
    new-instance v0, Lcom/android/server/pm/DexOptHelper;

    invoke-direct {v0, v1}, Lcom/android/server/pm/DexOptHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 1907
    new-instance v0, Lcom/android/server/pm/SuspendPackageHelper;

    invoke-direct {v0, v1, v2, v5, v9}, Lcom/android/server/pm/SuspendPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/ProtectedPackages;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 1909
    new-instance v3, Lcom/android/server/pm/StorageEventHelper;

    invoke-direct {v3, v1, v15, v14}, Lcom/android/server/pm/StorageEventHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/RemovePackageHelper;)V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 1911
    new-instance v3, Lcom/android/server/pm/DistractingPackageHelper;

    invoke-direct {v3, v1, v2, v5, v0}, Lcom/android/server/pm/DistractingPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/SuspendPackageHelper;)V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 1914
    monitor-enter v11

    .line 1918
    :try_start_3ad
    new-instance v0, Lcom/android/server/pm/SnapshotStatistics;

    invoke-direct {v0}, Lcom/android/server/pm/SnapshotStatistics;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 1919
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1920
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->createLiveComputer()Lcom/android/server/pm/ComputerLocked;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 1921
    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerService;->registerObservers(Z)V

    .line 1922
    monitor-exit v11
    :try_end_3c4
    .catchall {:try_start_3ad .. :try_end_3c4} :catchall_a40

    .line 1924
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 1926
    .local v3, "computer":Lcom/android/server/pm/Computer;
    monitor-enter v12

    .line 1928
    :try_start_3c7
    monitor-enter v11
    :try_end_3c8
    .catchall {:try_start_3c7 .. :try_end_3c8} :catchall_a39

    .line 1929
    :try_start_3c8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1930
    new-instance v4, Lcom/android/server/pm/ProcessLoggingHandler;

    invoke-direct {v4}, Lcom/android/server/pm/ProcessLoggingHandler;-><init>()V

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 1931
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    const-wide/32 v5, 0x927c0

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 1933
    nop

    .line 1934
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/SystemConfig;->getSharedLibraries()Landroid/util/ArrayMap;

    move-result-object v0

    move-object v4, v0

    .line 1935
    .local v4, "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_3e9
    .catchall {:try_start_3c8 .. :try_end_3e9} :catchall_a32

    move v5, v0

    .line 1936
    .local v5, "builtInLibCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3eb
    if-ge v0, v5, :cond_400

    .line 1937
    :try_start_3ed
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/SharedLibrariesImpl;->addBuiltInSharedLibraryLPw(Lcom/android/server/SystemConfig$SharedLibraryEntry;)V

    .line 1936
    add-int/lit8 v0, v0, 0x1

    goto :goto_3eb

    .line 2316
    .end local v0    # "i":I
    .end local v4    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .end local v5    # "builtInLibCount":I
    :catchall_3fb
    move-exception v0

    move-object/from16 v2, v27

    goto/16 :goto_a35

    .line 1942
    .restart local v4    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .restart local v5    # "builtInLibCount":I
    :cond_400
    const-wide/16 v6, -0x1

    .line 1943
    .local v6, "undefinedVersion":J
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_403
    if-ge v0, v5, :cond_42e

    .line 1944
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1945
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    .line 1946
    .local v9, "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    iget-object v10, v9, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    array-length v10, v10

    .line 1947
    .local v10, "dependencyCount":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_415
    if-ge v13, v10, :cond_42b

    .line 1948
    iget-object v14, v9, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    aget-object v14, v14, v13

    .line 1949
    invoke-interface {v3, v14, v6, v7}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v14

    .line 1950
    .local v14, "dependency":Landroid/content/pm/SharedLibraryInfo;
    if-eqz v14, :cond_428

    .line 1951
    invoke-interface {v3, v8, v6, v7}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v15

    .line 1952
    invoke-virtual {v15, v14}, Landroid/content/pm/SharedLibraryInfo;->addDependency(Landroid/content/pm/SharedLibraryInfo;)V
    :try_end_428
    .catchall {:try_start_3ed .. :try_end_428} :catchall_3fb

    .line 1947
    .end local v14    # "dependency":Landroid/content/pm/SharedLibraryInfo;
    :cond_428
    add-int/lit8 v13, v13, 0x1

    goto :goto_415

    .line 1943
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "entry":Lcom/android/server/SystemConfig$SharedLibraryEntry;
    .end local v10    # "dependencyCount":I
    .end local v13    # "j":I
    :cond_42b
    add-int/lit8 v0, v0, 0x1

    goto :goto_403

    .line 1957
    .end local v0    # "i":I
    :cond_42e
    :try_start_42e
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy()Z

    .line 1959
    const-string v0, "loadFallbacks"
    :try_end_433
    .catchall {:try_start_42e .. :try_end_433} :catchall_a32

    move-object/from16 v8, v27

    .end local v27    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v8, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_435
    invoke-virtual {v8, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1960
    invoke-static {}, Landroid/content/pm/FallbackCategoryProvider;->loadFallbacks()V

    .line 1961
    invoke-virtual {v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1963
    const-string/jumbo v0, "read user settings"

    invoke-virtual {v8, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1964
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1965
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v13, 0x1

    invoke-virtual {v9, v13, v10, v10}, Lcom/android/server/pm/UserManagerInternal;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v9

    .line 1964
    invoke-virtual {v0, v3, v9}, Lcom/android/server/pm/Settings;->readLPw(Lcom/android/server/pm/Computer;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_45a

    const/4 v0, 0x1

    goto :goto_45b

    :cond_45a
    const/4 v0, 0x0

    :goto_45b
    iput-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 1969
    invoke-virtual {v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1971
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z
    :try_end_462
    .catchall {:try_start_435 .. :try_end_462} :catchall_a2f

    const/4 v9, 0x4

    if-eqz v0, :cond_49e

    .line 1973
    :try_start_465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "First boot of "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v10, "ro.build.fingerprint"

    .line 1974
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1973
    invoke-static {v9, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1976
    const-string/jumbo v0, "setFirstBoot: "

    invoke-virtual {v8, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_488
    .catchall {:try_start_465 .. :try_end_488} :catchall_49a

    .line 1978
    :try_start_488
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->setFirstBoot()V
    :try_end_48d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_488 .. :try_end_48d} :catch_48e
    .catchall {:try_start_488 .. :try_end_48d} :catchall_49a

    .line 1981
    goto :goto_496

    .line 1979
    :catch_48e
    move-exception v0

    .line 1980
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    :try_start_48f
    const-string v10, "PackageManager"

    const-string v13, "Could not set First Boot: "

    invoke-static {v10, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1982
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_496
    invoke-virtual {v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_499
    .catchall {:try_start_48f .. :try_end_499} :catchall_49a

    goto :goto_49e

    .line 2316
    .end local v4    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .end local v5    # "builtInLibCount":I
    .end local v6    # "undefinedVersion":J
    :catchall_49a
    move-exception v0

    move-object v2, v8

    goto/16 :goto_a35

    .line 1985
    .restart local v4    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .restart local v5    # "builtInLibCount":I
    .restart local v6    # "undefinedVersion":J
    :cond_49e
    :goto_49e
    :try_start_49e
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-interface {v0, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 1988
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v0

    array-length v10, v0
    :try_end_4ae
    .catchall {:try_start_49e .. :try_end_4ae} :catchall_a2f

    const/4 v13, 0x0

    :goto_4af
    if-ge v13, v10, :cond_4bb

    :try_start_4b1
    aget v14, v0, v13

    .line 1989
    .local v14, "userId":I
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v15, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->readLegacyPermissionStateTEMP(I)V
    :try_end_4b8
    .catchall {:try_start_4b1 .. :try_end_4b8} :catchall_49a

    .line 1988
    .end local v14    # "userId":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_4af

    .line 1993
    :cond_4bb
    :try_start_4bb
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z
    :try_end_4bd
    .catchall {:try_start_4bb .. :try_end_4bd} :catchall_a2f

    if-nez v0, :cond_4c6

    :try_start_4bf
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v0, :cond_4c6

    .line 1994
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->requestCopyPreoptedFiles()V
    :try_end_4c6
    .catchall {:try_start_4bf .. :try_end_4c6} :catchall_49a

    .line 1997
    :cond_4c6
    :try_start_4c6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x104023e

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 1999
    .local v10, "customResolverActivityName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4d6
    .catchall {:try_start_4c6 .. :try_end_4d6} :catchall_a2f

    if-nez v0, :cond_4de

    .line 2000
    :try_start_4d8
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;
    :try_end_4de
    .catchall {:try_start_4d8 .. :try_end_4de} :catchall_49a

    .line 2004
    :cond_4de
    :try_start_4de
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 2006
    .local v13, "startTime":J
    const/16 v0, 0xbfe

    invoke-static {v0, v13, v14}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2009
    const-string v0, "BOOTCLASSPATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 2010
    .local v21, "bootClassPath":Ljava/lang/String;
    const-string v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4f5
    .catchall {:try_start_4de .. :try_end_4f5} :catchall_a2f

    move-object/from16 v22, v0

    .line 2012
    .local v22, "systemServerClassPath":Ljava/lang/String;
    if-nez v21, :cond_500

    .line 2013
    :try_start_4f9
    const-string v0, "PackageManager"

    const-string v15, "No BOOTCLASSPATH found!"

    invoke-static {v0, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_500
    if-nez v22, :cond_509

    .line 2017
    const-string v0, "PackageManager"

    const-string v15, "No SYSTEMSERVERCLASSPATH found!"

    invoke-static {v0, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_509
    .catchall {:try_start_4f9 .. :try_end_509} :catchall_49a

    .line 2020
    :cond_509
    :try_start_509
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    move-object v15, v0

    .line 2021
    .local v15, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    iget-object v0, v15, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 2022
    move-object/from16 v9, p4

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51c

    const/4 v0, 0x1

    goto :goto_51d

    :cond_51c
    const/4 v0, 0x0

    :goto_51d
    iput-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z
    :try_end_51f
    .catchall {:try_start_509 .. :try_end_51f} :catchall_a2f

    .line 2023
    if-eqz v0, :cond_567

    .line 2024
    :try_start_521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v4

    .end local v4    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .local v23, "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    const-string v4, "Upgrading from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v15, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2027
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ro.build.fingerprint"

    .line 2028
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2027
    const/4 v4, 0x4

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_566
    .catchall {:try_start_521 .. :try_end_566} :catchall_49a

    goto :goto_569

    .line 2023
    .end local v23    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .restart local v4    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    :cond_567
    move-object/from16 v23, v4

    .line 2032
    .end local v4    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .restart local v23    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    :goto_569
    :try_start_569
    new-instance v2, Lcom/android/server/pm/InitAppsHelper;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    move/from16 v24, v5

    .end local v5    # "builtInLibCount":I
    .local v24, "builtInLibCount":I
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    move-wide/from16 v29, v6

    .end local v6    # "undefinedVersion":J
    .local v29, "undefinedVersion":J
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2033
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemPartitions()Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v1, v4, v5, v6}, Lcom/android/server/pm/InitAppsHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;)V

    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;
    :try_end_57e
    .catchall {:try_start_569 .. :try_end_57e} :catchall_a2f

    .line 2036
    if-eqz v0, :cond_588

    :try_start_580
    iget v2, v15, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I
    :try_end_582
    .catchall {:try_start_580 .. :try_end_582} :catchall_49a

    const/16 v4, 0x16

    if-gt v2, v4, :cond_588

    const/4 v2, 0x1

    goto :goto_589

    :cond_588
    const/4 v2, 0x0

    :goto_589
    :try_start_589
    iput-boolean v2, v1, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z
    :try_end_58b
    .catchall {:try_start_589 .. :try_end_58b} :catchall_a2f

    .line 2041
    if-eqz v0, :cond_595

    :try_start_58d
    iget v2, v15, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I
    :try_end_58f
    .catchall {:try_start_58d .. :try_end_58f} :catchall_49a

    const/16 v4, 0x18

    if-ge v2, v4, :cond_595

    const/4 v2, 0x1

    goto :goto_596

    :cond_595
    const/4 v2, 0x0

    :goto_596
    :try_start_596
    iput-boolean v2, v1, Lcom/android/server/pm/PackageManagerService;->mIsPreNUpgrade:Z
    :try_end_598
    .catchall {:try_start_596 .. :try_end_598} :catchall_a2f

    .line 2043
    if-eqz v0, :cond_5a2

    :try_start_59a
    iget v2, v15, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I
    :try_end_59c
    .catchall {:try_start_59a .. :try_end_59c} :catchall_49a

    const/16 v4, 0x19

    if-ge v2, v4, :cond_5a2

    const/4 v2, 0x1

    goto :goto_5a3

    :cond_5a2
    const/4 v2, 0x0

    :goto_5a3
    :try_start_5a3
    iput-boolean v2, v1, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z
    :try_end_5a5
    .catchall {:try_start_5a3 .. :try_end_5a5} :catchall_a2f

    .line 2044
    if-eqz v0, :cond_5af

    :try_start_5a7
    iget v0, v15, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I
    :try_end_5a9
    .catchall {:try_start_5a7 .. :try_end_5a9} :catchall_49a

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_5af

    const/4 v0, 0x1

    goto :goto_5b0

    :cond_5af
    const/4 v0, 0x0

    :goto_5b0
    :try_start_5b0
    iput-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z

    .line 2046
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2047
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    move-object v2, v0

    .line 2051
    .local v2, "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0
    :try_end_5bd
    .catchall {:try_start_5b0 .. :try_end_5bd} :catchall_a2f

    if-eqz v0, :cond_5e9

    .line 2052
    :try_start_5bf
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 2053
    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2054
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_5e7
    .catchall {:try_start_5bf .. :try_end_5e7} :catchall_49a

    .line 2055
    nop

    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_5d2

    .line 2058
    :cond_5e9
    :try_start_5e9
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    iget-boolean v4, v1, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mIncrementalVersion:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->preparePackageParserCache(ZZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    .line 2061
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    move-object v4, v0

    .line 2062
    .local v4, "userIds":[I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getScanningCachingPackageParser()Lcom/android/server/pm/parsing/PackageParser2;

    move-result-object v0

    move-object v5, v0

    .line 2063
    .local v5, "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    move-object v6, v15

    .end local v15    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .local v6, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    move-object v15, v0

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-wide/from16 v19, v13

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/pm/InitAppsHelper;->initSystemApps(Lcom/android/server/pm/parsing/PackageParser2;Lcom/android/server/utils/WatchedArrayMap;[IJ)Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 2067
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceStub;->performPreinstallApp()V

    .line 2070
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    invoke-virtual {v0, v5, v4, v13, v14}, Lcom/android/server/pm/InitAppsHelper;->initNonSystemApps(Lcom/android/server/pm/parsing/PackageParser2;[IJ)V

    .line 2071
    invoke-virtual {v5}, Lcom/android/server/pm/parsing/PackageParser2;->close()V

    .line 2074
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getStorageManagerPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    .line 2078
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getSetupWizardPackageNameImpl(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    .line 2079
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v7, v0}, Lcom/android/server/pm/resolution/ComponentResolver;->fixProtectedFilterPriorities(Ljava/lang/String;)V

    .line 2081
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10402bf

    .line 2082
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2081
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 2083
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040262

    .line 2084
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2083
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 2085
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040268

    .line 2086
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2085
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    .line 2087
    const v0, 0x1040246

    .line 2088
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v0

    .line 2087
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 2089
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v7, 0x104028c

    .line 2090
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2089
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 2091
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->getRetailDemoPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    .line 2092
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2093
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getOverlayConfigSignaturePackage()Ljava/lang/String;

    move-result-object v0

    .line 2092
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 2094
    const v0, 0x10402b3

    .line 2095
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v0

    .line 2094
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    .line 2096
    const v0, 0x1040245

    .line 2097
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v0

    .line 2096
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    .line 2102
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2103
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 2102
    const/4 v15, 0x0

    invoke-virtual {v0, v15, v15, v7}, Lcom/android/server/pm/SharedLibrariesImpl;->updateAllSharedLibrariesLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2105
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getAllSharedUsersLPw()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6c4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_6c8
    .catchall {:try_start_5e9 .. :try_end_6c8} :catchall_a2f

    if-eqz v0, :cond_738

    :try_start_6ca
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    move-object v15, v0

    .line 2109
    .local v15, "setting":Lcom/android/server/pm/SharedUserSetting;
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2112
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;

    move-result-object v0

    .line 2113
    move-object/from16 v16, v5

    .end local v5    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .local v16, "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    invoke-virtual {v15}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v5

    .line 2112
    move-object/from16 v17, v7

    const/4 v7, 0x0

    invoke-interface {v0, v5, v7}, Lcom/android/server/pm/PackageAbiHelper;->getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    .line 2110
    invoke-static {v15, v7, v0}, Lcom/android/server/pm/ScanPackageUtils;->applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    .line 2114
    .local v5, "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_729

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_729

    .line 2115
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    move v7, v0

    .local v7, "i":I
    :goto_6f8
    if-ltz v7, :cond_726

    .line 2116
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_700
    .catchall {:try_start_6ca .. :try_end_700} :catchall_49a

    move-object/from16 v18, v0

    .line 2118
    .local v18, "codePathString":Ljava/lang/String;
    :try_start_702
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 2119
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v19
    :try_end_708
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_702 .. :try_end_708} :catch_71a
    .catchall {:try_start_702 .. :try_end_708} :catchall_49a

    move-object/from16 v20, v5

    .end local v5    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_70a
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_70e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_70a .. :try_end_70e} :catch_716
    .catchall {:try_start_70a .. :try_end_70e} :catchall_49a

    .line 2118
    move-object/from16 v9, v18

    .end local v18    # "codePathString":Ljava/lang/String;
    .local v9, "codePathString":Ljava/lang/String;
    :try_start_710
    invoke-virtual {v0, v9, v5}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_713
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_710 .. :try_end_713} :catch_714
    .catchall {:try_start_710 .. :try_end_713} :catchall_49a

    .line 2121
    goto :goto_71f

    .line 2120
    :catch_714
    move-exception v0

    goto :goto_71f

    .end local v9    # "codePathString":Ljava/lang/String;
    .restart local v18    # "codePathString":Ljava/lang/String;
    :catch_716
    move-exception v0

    move-object/from16 v9, v18

    .end local v18    # "codePathString":Ljava/lang/String;
    .restart local v9    # "codePathString":Ljava/lang/String;
    goto :goto_71f

    .end local v9    # "codePathString":Ljava/lang/String;
    .end local v20    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "codePathString":Ljava/lang/String;
    :catch_71a
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v9, v18

    .line 2115
    .end local v5    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "codePathString":Ljava/lang/String;
    .restart local v20    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_71f
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v9, p4

    move-object/from16 v5, v20

    goto :goto_6f8

    .end local v20    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_726
    move-object/from16 v20, v5

    .end local v5    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_72b

    .line 2114
    .end local v7    # "i":I
    .end local v20    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_729
    move-object/from16 v20, v5

    .line 2126
    .end local v5    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_72b
    :try_start_72b
    invoke-virtual {v15}, Lcom/android/server/pm/SharedUserSetting;->fixSeInfoLocked()V

    .line 2127
    invoke-virtual {v15}, Lcom/android/server/pm/SharedUserSetting;->updateProcesses()V
    :try_end_731
    .catchall {:try_start_72b .. :try_end_731} :catchall_49a

    .line 2128
    .end local v15    # "setting":Lcom/android/server/pm/SharedUserSetting;
    .end local v20    # "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v9, p4

    move-object/from16 v5, v16

    move-object/from16 v7, v17

    goto :goto_6c4

    .line 2132
    .end local v16    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .local v5, "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :cond_738
    move-object/from16 v16, v5

    .end local v5    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local v16    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :try_start_73a
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageUsage;->read(Ljava/lang/Object;)V

    .line 2133
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v0}, Lcom/android/server/pm/CompilerStats;->read()V
    :try_end_744
    .catchall {:try_start_73a .. :try_end_744} :catchall_a2f

    .line 2135
    nop

    .line 2136
    :try_start_745
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2135
    const/16 v5, 0xc12

    invoke-static {v5, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2137
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time to scan packages: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object v5, v10

    .end local v10    # "customResolverActivityName":Ljava/lang/String;
    .local v5, "customResolverActivityName":Ljava/lang/String;
    sub-long v9, v17, v13

    long-to-float v7, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v7, v9

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " seconds"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2137
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0
    :try_end_77b
    .catchall {:try_start_745 .. :try_end_77b} :catchall_a2b

    move-object/from16 v1, p0

    :try_start_77d
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceStub;->markPmsScanDetail(Lcom/android/server/pm/PackageManagerService;)V

    .line 2149
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z
    :try_end_782
    .catchall {:try_start_77d .. :try_end_782} :catchall_a2f

    if-eqz v0, :cond_7b0

    .line 2150
    :try_start_784
    const-string v0, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Build fingerprint changed from "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v6, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "; regranting permissions for internal storage"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b0
    .catchall {:try_start_784 .. :try_end_7b0} :catchall_49a

    .line 2154
    :cond_7b0
    :try_start_7b0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    sget-object v7, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-boolean v9, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    invoke-interface {v0, v7, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    .line 2156
    iget v0, v1, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    iput v0, v6, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 2161
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z
    :try_end_7bf
    .catchall {:try_start_7b0 .. :try_end_7bf} :catchall_a2f

    if-nez v0, :cond_7ec

    :try_start_7c1
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z

    if-nez v0, :cond_7c9

    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v0, :cond_7ec

    .line 2162
    :cond_7c9
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7d8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7ec

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2163
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V
    :try_end_7eb
    .catchall {:try_start_7c1 .. :try_end_7eb} :catchall_49a

    .line 2164
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    goto :goto_7d8

    .line 2172
    :cond_7ec
    :try_start_7ec
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z
    :try_end_7ee
    .catchall {:try_start_7ec .. :try_end_7ee} :catchall_a2f

    const/4 v7, -0x1

    if-eqz v0, :cond_832

    :try_start_7f1
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    if-nez v0, :cond_832

    .line 2173
    const-string v0, "PackageManager"

    const-string v9, "Build fingerprint changed; clearing code caches"

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7fd
    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v9

    if-ge v0, v9, :cond_82b

    .line 2175
    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 2176
    .local v9, "ps":Lcom/android/server/pm/PackageSetting;
    sget-object v10, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v15

    invoke-static {v10, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_824

    .line 2178
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    move-object/from16 v17, v5

    .end local v5    # "customResolverActivityName":Ljava/lang/String;
    .local v17, "customResolverActivityName":Ljava/lang/String;
    const v5, 0x20027

    invoke-virtual {v10, v15, v7, v5}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    goto :goto_826

    .line 2176
    .end local v17    # "customResolverActivityName":Ljava/lang/String;
    .restart local v5    # "customResolverActivityName":Ljava/lang/String;
    :cond_824
    move-object/from16 v17, v5

    .line 2174
    .end local v5    # "customResolverActivityName":Ljava/lang/String;
    .end local v9    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "customResolverActivityName":Ljava/lang/String;
    :goto_826
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v17

    goto :goto_7fd

    .end local v17    # "customResolverActivityName":Ljava/lang/String;
    .restart local v5    # "customResolverActivityName":Ljava/lang/String;
    :cond_82b
    move-object/from16 v17, v5

    .line 2184
    .end local v0    # "i":I
    .end local v5    # "customResolverActivityName":Ljava/lang/String;
    .restart local v17    # "customResolverActivityName":Ljava/lang/String;
    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;
    :try_end_831
    .catchall {:try_start_7f1 .. :try_end_831} :catchall_49a

    goto :goto_834

    .line 2172
    .end local v17    # "customResolverActivityName":Ljava/lang/String;
    .restart local v5    # "customResolverActivityName":Ljava/lang/String;
    :cond_832
    move-object/from16 v17, v5

    .line 2188
    .end local v5    # "customResolverActivityName":Ljava/lang/String;
    .restart local v17    # "customResolverActivityName":Ljava/lang/String;
    :goto_834
    :try_start_834
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/AppDataHelper;->fixAppsDataOnBoot()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    .line 2192
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z
    :try_end_83e
    .catchall {:try_start_834 .. :try_end_83e} :catchall_a2f

    if-nez v0, :cond_86a

    :try_start_840
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z

    if-eqz v0, :cond_86a

    .line 2193
    const-string v0, "PackageManager"

    const-string v5, "Allowlisting all existing apps to hide their icons"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    .line 2195
    .local v0, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_850
    if-ge v5, v0, :cond_86a

    .line 2196
    invoke-virtual {v2, v5}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 2197
    .restart local v9    # "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getFlags()I

    move-result v10

    const/4 v15, 0x1

    and-int/2addr v10, v15

    if-eqz v10, :cond_861

    .line 2198
    goto :goto_867

    .line 2200
    :cond_861
    sget-object v10, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v9, v10, v15}, Lcom/android/server/pm/PackageSetting;->disableComponentLPw(Ljava/lang/String;I)Z
    :try_end_867
    .catchall {:try_start_840 .. :try_end_867} :catchall_49a

    .line 2195
    .end local v9    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_867
    add-int/lit8 v5, v5, 0x1

    goto :goto_850

    .line 2206
    .end local v0    # "size":I
    .end local v5    # "i":I
    :cond_86a
    const/4 v5, 0x0

    :try_start_86b
    iput-boolean v5, v1, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z

    .line 2209
    const/4 v5, 0x3

    iput v5, v6, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 2212
    const-string/jumbo v0, "write settings"

    invoke-virtual {v8, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2213
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 2214
    invoke-virtual {v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2215
    const/16 v0, 0xc1c

    .line 2216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2215
    invoke-static {v0, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2218
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z
    :try_end_887
    .catchall {:try_start_86b .. :try_end_887} :catchall_a2f

    if-nez v0, :cond_8d3

    .line 2219
    :try_start_889
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getRequiredButNotReallyRequiredVerifierLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 2220
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getOptionalVerifierLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    .line 2221
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getRequiredInstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 2222
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getRequiredUninstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 2223
    nop

    .line 2224
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getIntentFilterVerifierComponentNameLPr(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;

    move-result-object v31

    .line 2225
    .local v31, "intentFilterVerifierComponent":Landroid/content/ComponentName;
    nop

    .line 2226
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getDomainVerificationAgentComponentNameLPr(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;

    move-result-object v32

    .line 2228
    .local v32, "domainVerificationAgent":Landroid/content/ComponentName;
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 2230
    invoke-interface {v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getCollector()Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    move-result-object v35

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 2228
    move-object/from16 v33, v0

    move-object/from16 v34, v5

    move-object/from16 v36, v9

    invoke-static/range {v31 .. v36}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->makeProxy(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;)Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object v0

    .line 2233
    .local v0, "domainVerificationProxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v5, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setProxy(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 2235
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getRequiredServicesExtensionPackageLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 2236
    const-string v5, "android.ext.shared"

    invoke-direct {v1, v3, v5, v7}, Lcom/android/server/pm/PackageManagerService;->getRequiredSharedLibrary(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;
    :try_end_8d2
    .catchall {:try_start_889 .. :try_end_8d2} :catchall_49a

    .line 2239
    .end local v0    # "domainVerificationProxy":Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .end local v31    # "intentFilterVerifierComponent":Landroid/content/ComponentName;
    .end local v32    # "domainVerificationAgent":Landroid/content/ComponentName;
    goto :goto_8e0

    .line 2240
    :cond_8d3
    const/4 v5, 0x0

    :try_start_8d4
    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 2241
    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    .line 2242
    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 2243
    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 2244
    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 2245
    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    .line 2250
    :goto_8e0
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getRequiredPermissionControllerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 2252
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2253
    const-wide/16 v9, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v0, v9, v10, v7}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_8ef
    .catchall {:try_start_8d4 .. :try_end_8ef} :catchall_a2f

    .line 2254
    move-object/from16 v27, v8

    .end local v8    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v27    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_8f1
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    .line 2252
    invoke-virtual {v5, v7, v8}, Lcom/android/server/pm/Settings;->setPermissionControllerVersion(J)V

    .line 2257
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->getRequiredSdkSandboxPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    .line 2260
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_908
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_90c
    .catchall {:try_start_8f1 .. :try_end_90c} :catchall_a32

    if-eqz v5, :cond_95d

    :try_start_90e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2261
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v7

    if-eqz v7, :cond_91b

    .line 2262
    goto :goto_908

    .line 2264
    :cond_91b
    array-length v7, v4

    const/4 v8, 0x0

    :goto_91d
    if-ge v8, v7, :cond_958

    aget v15, v4, v8

    .line 2265
    .local v15, "userId":I
    nop

    .line 2266
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v9

    .line 2267
    .local v9, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v9, :cond_94f

    invoke-interface {v9, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v10

    if-eqz v10, :cond_94f

    .line 2268
    invoke-interface {v9, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v10

    if-nez v10, :cond_943

    .line 2269
    move-object/from16 v20, v0

    goto :goto_951

    .line 2271
    :cond_943
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    move-object/from16 v20, v0

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V
    :try_end_94e
    .catchall {:try_start_90e .. :try_end_94e} :catchall_3fb

    goto :goto_951

    .line 2267
    :cond_94f
    move-object/from16 v20, v0

    .line 2264
    .end local v9    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v15    # "userId":I
    :goto_951
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v20

    const-wide/16 v9, 0x0

    goto :goto_91d

    :cond_958
    move-object/from16 v20, v0

    .line 2273
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const-wide/16 v9, 0x0

    goto :goto_908

    .line 2275
    :cond_95d
    :try_start_95d
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 2276
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->getInstantAppResolver(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_969
    .catchall {:try_start_95d .. :try_end_969} :catchall_a32

    .line 2277
    .local v0, "instantAppResolverComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_998

    .line 2278
    :try_start_96b
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v5, :cond_987

    .line 2279
    const-string v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set ephemeral resolver: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    :cond_987
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2282
    invoke-virtual {v5, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstantAppResolverConnection(Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 2283
    nop

    .line 2284
    invoke-direct {v1, v3, v0}, Lcom/android/server/pm/PackageManagerService;->getInstantAppResolverSettingsLPr(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;
    :try_end_996
    .catchall {:try_start_96b .. :try_end_996} :catchall_3fb

    const/4 v5, 0x0

    goto :goto_99d

    .line 2287
    :cond_998
    const/4 v5, 0x0

    :try_start_999
    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 2288
    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 2290
    :goto_99d
    invoke-virtual {v1, v5}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 2300
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2301
    .local v5, "userPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    array-length v7, v4
    :try_end_9a6
    .catchall {:try_start_999 .. :try_end_9a6} :catchall_a32

    const/4 v8, 0x0

    :goto_9a7
    if-ge v8, v7, :cond_9c6

    :try_start_9a9
    aget v9, v4, v8

    .line 2302
    .local v9, "userId":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v15, v6

    move/from16 v20, v7

    const-wide/16 v6, 0x0

    .end local v6    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .local v15, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-interface {v3, v6, v7, v9}, Lcom/android/server/pm/Computer;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v18

    .line 2303
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    .line 2302
    invoke-interface {v5, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9bf
    .catchall {:try_start_9a9 .. :try_end_9bf} :catchall_3fb

    .line 2301
    nop

    .end local v9    # "userId":I
    add-int/lit8 v8, v8, 0x1

    move-object v6, v15

    move/from16 v7, v20

    goto :goto_9a7

    .line 2305
    .end local v15    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v6    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    :cond_9c6
    move-object v15, v6

    .end local v6    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v15    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    :try_start_9c7
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/dex/DexManager;->load(Ljava/util/Map;)V

    .line 2306
    iget-boolean v6, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z
    :try_end_9ce
    .catchall {:try_start_9c7 .. :try_end_9ce} :catchall_a32

    if-eqz v6, :cond_9dc

    .line 2307
    const/16 v6, 0xef

    const/16 v7, 0xd

    .line 2310
    :try_start_9d4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v13

    .line 2307
    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V
    :try_end_9dc
    .catchall {:try_start_9d4 .. :try_end_9dc} :catchall_3fb

    .line 2314
    :cond_9dc
    :try_start_9dc
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->createLiveComputer()Lcom/android/server/pm/ComputerLocked;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 2316
    .end local v0    # "instantAppResolverComponent":Landroid/content/ComponentName;
    .end local v2    # "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v4    # "userIds":[I
    .end local v5    # "userPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    .end local v13    # "startTime":J
    .end local v15    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v16    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .end local v17    # "customResolverActivityName":Ljava/lang/String;
    .end local v21    # "bootClassPath":Ljava/lang/String;
    .end local v22    # "systemServerClassPath":Ljava/lang/String;
    .end local v23    # "libConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$SharedLibraryEntry;>;"
    .end local v24    # "builtInLibCount":I
    .end local v29    # "undefinedVersion":J
    monitor-exit v11
    :try_end_9e3
    .catchall {:try_start_9dc .. :try_end_9e3} :catchall_a32

    .line 2317
    :try_start_9e3
    monitor-exit v12
    :try_end_9e4
    .catchall {:try_start_9e3 .. :try_end_9e4} :catchall_a39

    .line 2320
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getModuleInfoProvider()Lcom/android/server/pm/ModuleInfoProvider;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 2322
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemWrapper()Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;->enablePackageCaches()V

    .line 2327
    const-string v0, "GC"

    move-object/from16 v2, v27

    .end local v27    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v2, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2328
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 2329
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2332
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->truncateSettingsProblemFileIfNeeded()V

    .line 2337
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Installer;->setWarnIfHeld(Ljava/lang/Object;)V

    .line 2339
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->readConfigUseRoundIcon(Landroid/content/res/Resources;)V

    .line 2341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/android/server/pm/PackageManagerService;->mServiceStartWithDelay:J

    .line 2343
    const-string v0, "PackageManager"

    const-string v4, "Fix for b/169414761 is applied"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    return-void

    .line 2316
    .end local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v8    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_a2b
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_a30

    :catchall_a2f
    move-exception v0

    :goto_a30
    move-object v2, v8

    .end local v8    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    goto :goto_a35

    .end local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v27    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_a32
    move-exception v0

    move-object/from16 v2, v27

    .end local v27    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :goto_a35
    :try_start_a35
    monitor-exit v11
    :try_end_a36
    .catchall {:try_start_a35 .. :try_end_a36} :catchall_a37

    .end local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v3    # "computer":Lcom/android/server/pm/Computer;
    .end local v25    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .end local v26    # "separateProcesses":Ljava/lang/String;
    .end local v28    # "systemConfig":Lcom/android/server/SystemConfig;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "injector":Lcom/android/server/pm/PackageManagerServiceInjector;
    .end local p2    # "onlyCore":Z
    .end local p3    # "factoryTest":Z
    .end local p4    # "buildFingerprint":Ljava/lang/String;
    .end local p5    # "isEngBuild":Z
    .end local p6    # "isUserDebugBuild":Z
    .end local p7    # "sdkVersion":I
    .end local p8    # "incrementalVersion":Ljava/lang/String;
    :try_start_a36
    throw v0

    .restart local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v3    # "computer":Lcom/android/server/pm/Computer;
    .restart local v25    # "platformCompat":Lcom/android/server/compat/PlatformCompat;
    .restart local v26    # "separateProcesses":Ljava/lang/String;
    .restart local v28    # "systemConfig":Lcom/android/server/SystemConfig;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "injector":Lcom/android/server/pm/PackageManagerServiceInjector;
    .restart local p2    # "onlyCore":Z
    .restart local p3    # "factoryTest":Z
    .restart local p4    # "buildFingerprint":Ljava/lang/String;
    .restart local p5    # "isEngBuild":Z
    .restart local p6    # "isUserDebugBuild":Z
    .restart local p7    # "sdkVersion":I
    .restart local p8    # "incrementalVersion":Ljava/lang/String;
    :catchall_a37
    move-exception v0

    goto :goto_a35

    .line 2317
    .end local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v27    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_a39
    move-exception v0

    move-object/from16 v2, v27

    .end local v27    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :goto_a3c
    monitor-exit v12
    :try_end_a3d
    .catchall {:try_start_a36 .. :try_end_a3d} :catchall_a3e

    throw v0

    :catchall_a3e
    move-exception v0

    goto :goto_a3c

    .line 1922
    .end local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v3    # "computer":Lcom/android/server/pm/Computer;
    .restart local v27    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_a40
    move-exception v0

    move-object/from16 v2, v27

    .end local v27    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :goto_a43
    :try_start_a43
    monitor-exit v11
    :try_end_a44
    .catchall {:try_start_a43 .. :try_end_a44} :catchall_a45

    throw v0

    :catchall_a45
    move-exception v0

    goto :goto_a43
.end method

.method private addPermierFlagIfNeedForGlobalROM()V
    .registers 6

    .line 2942
    const-string v0, "com.google.android.feature.PREMIER_TIER"

    .line 2943
    .local v0, "FEATURE_PERMIER_TIER":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    const-string v2, "com.google.android.feature.PREMIER_TIER"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_46

    .line 2944
    const-string/jumbo v1, "ro.com.miui.rsa"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "tier1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2945
    const-string/jumbo v1, "ro.miui.build.region"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "global"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2946
    const-string/jumbo v1, "ro.miui.customized.region"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2947
    new-instance v1, Landroid/content/pm/FeatureInfo;

    invoke-direct {v1}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 2948
    .local v1, "fi":Landroid/content/pm/FeatureInfo;
    iput-object v2, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 2949
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2951
    .end local v1    # "fi":Landroid/content/pm/FeatureInfo;
    :cond_46
    return-void
.end method

.method private applyUpdatedSystemOverlayPaths()V
    .registers 3

    .line 6963
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_c

    .line 6964
    const-string v0, "PackageManager"

    const-string v1, "Skipped the AndroidApplication overlay paths update - no app yet"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 6966
    :cond_c
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 6967
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 6969
    :goto_16
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    if-eqz v0, :cond_2a

    .line 6970
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 6971
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 6974
    :cond_2a
    return-void
.end method

.method private clearApplicationUserDataLIF(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3498
    const/4 v0, 0x0

    const-string v1, "PackageManager"

    if-nez p2, :cond_b

    .line 3499
    const-string v2, "Attempt to delete null packageName."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    return v0

    .line 3504
    :cond_b
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 3505
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v2, :cond_2e

    .line 3506
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package named \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    return v0

    .line 3509
    :cond_2e
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, v2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->resetRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 3511
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/4 v1, 0x7

    invoke-virtual {v0, v2, p3, v1}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 3514
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3515
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v1, p3, v0}, Lcom/android/server/pm/AppDataHelper;->clearKeystoreData(II)V

    .line 3517
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    .line 3518
    .local v1, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v4, Landroid/os/storage/StorageManagerInternal;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManagerInternal;

    .line 3520
    .local v3, "smInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-static {p3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-virtual {v3, p3}, Landroid/os/storage/StorageManagerInternal;->isCeStoragePrepared(I)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 3521
    const/4 v4, 0x3

    .local v4, "flags":I
    goto :goto_6d

    .line 3522
    .end local v4    # "flags":I
    :cond_64
    invoke-virtual {v1, p3}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 3523
    const/4 v4, 0x1

    .restart local v4    # "flags":I
    goto :goto_6d

    .line 3525
    .end local v4    # "flags":I
    :cond_6c
    const/4 v4, 0x0

    .line 3527
    .restart local v4    # "flags":I
    :goto_6d
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    invoke-virtual {v5, v2, v6, p3, v4}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    .line 3530
    const/4 v5, 0x1

    return v5
.end method

.method private createLiveComputer()Lcom/android/server/pm/ComputerLocked;
    .registers 4

    .line 1166
    new-instance v0, Lcom/android/server/pm/ComputerLocked;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$Snapshot;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/PackageManagerService$Snapshot;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComputerLocked;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;)V

    return-object v0
.end method

.method private static decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;
    .registers 7
    .param p0, "certs"    # Ljava/util/List;

    .line 1335
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 1336
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    .line 1337
    .local v1, "result":[Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_11
    if-ge v2, v3, :cond_29

    .line 1338
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1339
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 1340
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    aput-object v5, v1, v2
    :try_end_26
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_26} :catch_2a

    .line 1337
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1342
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_29
    return-object v1

    .line 1343
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v1    # "result":[Ljava/security/cert/Certificate;
    :catch_2a
    move-exception v0

    .line 1344
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private deletePackageIfUnused(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .registers 7
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4564
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4565
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_7

    .line 4566
    return-void

    .line 4568
    :cond_7
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v1

    .line 4569
    .local v1, "userStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Lcom/android/server/pm/pkg/PackageUserStateInternal;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_c
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 4570
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4571
    return-void

    .line 4569
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4577
    .end local v2    # "index":I
    :cond_22
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4580
    return-void
.end method

.method private disableSkuSpecificApps()V
    .registers 12

    .line 4437
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 4439
    .local v0, "apkList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 4441
    .local v1, "skuArray":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4442
    return-void

    .line 4444
    :cond_21
    const-string/jumbo v2, "ro.boot.hardware.sku"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4445
    .local v2, "sku":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 4446
    return-void

    .line 4448
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    .line 4449
    .local v3, "snapshot":Lcom/android/server/pm/Computer;
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_3c
    if-ge v6, v4, :cond_67

    aget-object v7, v0, v6

    .line 4450
    .local v7, "packageName":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {p0, v3, v7, v8}, Lcom/android/server/pm/PackageManagerService;->setSystemAppHiddenUntilInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;Z)V

    .line 4451
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_52
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_64

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 4452
    .local v9, "user":Landroid/content/pm/UserInfo;
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3, v7, v5, v10}, Lcom/android/server/pm/PackageManagerService;->setSystemAppInstallState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)Z

    .line 4453
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    goto :goto_52

    .line 4449
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 4455
    :cond_67
    return-void
.end method

.method private enforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;

    .line 6978
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 6981
    const-string v2, "android.permission.UPGRADE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_3c

    .line 6984
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6988
    :cond_3c
    :goto_3c
    return-void
.end method

.method private enforceCanSetDistractingPackageRestrictionsAsUser(IILjava/lang/String;)V
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "callingMethod"    # Ljava/lang/String;

    .line 3324
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SUSPEND_APPS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3327
    if-eqz p1, :cond_37

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_37

    .line 3328
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_14

    goto :goto_37

    .line 3329
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot call for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3332
    :cond_37
    :goto_37
    return-void
.end method

.method private enforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/Computer;Ljava/lang/String;IILjava/lang/String;)V
    .registers 13
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .param p5, "callingMethod"    # Ljava/lang/String;

    .line 3278
    if-eqz p3, :cond_6d

    .line 3280
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    goto :goto_6d

    .line 3284
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v0

    .line 3285
    .local v0, "ownerPackage":Ljava/lang/String;
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1c

    .line 3286
    invoke-interface {p1, v0, v1, v2, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 3287
    .local v3, "ownerUid":I
    if-ne v3, p3, :cond_1c

    .line 3288
    return-void

    .line 3292
    .end local v3    # "ownerUid":I
    :cond_1c
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SUSPEND_APPS"

    invoke-virtual {v3, v4, p5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3295
    invoke-interface {p1, p2, v1, v2, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 3296
    .local v1, "packageUid":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p3, :cond_2d

    move v4, v2

    goto :goto_2e

    :cond_2d
    move v4, v3

    .line 3298
    .local v4, "allowedPackageUid":Z
    :goto_2e
    const/16 v5, 0x7d0

    if-ne p3, v5, :cond_39

    .line 3299
    invoke-static {v1, p3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-eqz v5, :cond_39

    goto :goto_3a

    :cond_39
    move v2, v3

    .line 3301
    .local v2, "allowedShell":Z
    :goto_3a
    if-nez v2, :cond_6c

    if-eqz v4, :cond_3f

    goto :goto_6c

    .line 3302
    :cond_3f
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not belong to calling uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3305
    :cond_6c
    :goto_6c
    return-void

    .line 3281
    .end local v0    # "ownerPackage":Ljava/lang/String;
    .end local v1    # "packageUid":I
    .end local v2    # "allowedShell":Z
    .end local v4    # "allowedPackageUid":Z
    :cond_6d
    :goto_6d
    return-void
.end method

.method private enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .registers 10
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 3642
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 3643
    return-void

    .line 3645
    :cond_9
    invoke-interface {p1, p3}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 3646
    .local v0, "callerPackageNames":[Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 3650
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3651
    .local v1, "callingUserId":I
    const-wide/16 v2, 0x0

    invoke-interface {p1, p2, v2, v3, v1}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3652
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_20

    .line 3656
    return-void

    .line 3653
    :cond_20
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3647
    .end local v1    # "callingUserId":I
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_43
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not own package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static extrasForInstallResult(Lcom/android/server/pm/PackageInstalledInfo;)Landroid/os/Bundle;
    .registers 4
    .param p0, "res"    # Lcom/android/server/pm/PackageInstalledInfo;

    .line 1349
    const/4 v0, 0x0

    .line 1350
    .local v0, "extras":Landroid/os/Bundle;
    iget v1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    sparse-switch v1, :sswitch_data_78

    goto :goto_77

    .line 1360
    :sswitch_7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 1361
    iget-object v1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1364
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstalledInfo;->getTotal()I

    move-result v1

    const-string/jumbo v2, "total"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1365
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstalledInfo;->getFileCopying()I

    move-result v1

    const-string v2, "fileCopying"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1366
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstalledInfo;->getCollectingCerts()I

    move-result v1

    const-string v2, "collectingCerts"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1367
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstalledInfo;->getMiuiVerification()I

    move-result v1

    const-string/jumbo v2, "miuiVerification"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1368
    nop

    .line 1369
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstalledInfo;->getGoogleVerification()I

    move-result v1

    .line 1368
    const-string v2, "googleVerification"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1370
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstalledInfo;->getDexopt()I

    move-result v1

    const-string v2, "dexopt"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1371
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstalledInfo;->getExtractNativeLib()I

    move-result v1

    const-string v2, "extractNativeLib"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_77

    .line 1352
    :sswitch_62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 1353
    iget-object v1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mOrigPermission:Ljava/lang/String;

    const-string v2, "android.content.pm.extra.FAILURE_EXISTING_PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    iget-object v1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mOrigPackage:Ljava/lang/String;

    const-string v2, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    nop

    .line 1376
    :goto_77
    return-object v0

    :sswitch_data_78
    .sparse-switch
        -0x70 -> :sswitch_62
        0x1 -> :sswitch_7
    .end sparse-switch
.end method

.method private filterPackageStateForInstalledAndFiltered(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 7
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 7010
    nop

    .line 7011
    invoke-interface {p1, p2, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 7012
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_19

    .line 7013
    invoke-interface {p1, v0, p3, p4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_19

    .line 7014
    invoke-interface {v0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_19

    .line 7017
    :cond_18
    return-object v0

    .line 7015
    :cond_19
    :goto_19
    const/4 v1, 0x0

    return-object v1
.end method

.method private flushPackageRestrictionsAsUserInternalLocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 4218
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4219
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 4220
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4221
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4222
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4224
    :cond_20
    monitor-exit v0

    .line 4225
    return-void

    .line 4224
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private forEachPackageState(Landroid/util/ArrayMap;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    .line 7050
    .local p1, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 7051
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 7052
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 7053
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7051
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7055
    .end local v1    # "index":I
    :cond_13
    return-void
.end method

.method static getDefaultTimeouts()Ljava/lang/String;
    .registers 5

    .line 7179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7181
    .local v0, "token":J
    :try_start_4
    const-string/jumbo v2, "package_manager_service"

    const-string v3, "incfs_default_timeouts"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 7184
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7181
    return-object v2

    .line 7184
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7185
    throw v2
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .registers 2

    .line 3488
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_11

    .line 3490
    nop

    .line 3491
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3490
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 3493
    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method private getDomainVerificationAgentComponentNameLPr(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;
    .registers 13
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2537
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.DOMAINS_NEED_VERIFICATION"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2538
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2541
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2539
    const/4 v3, 0x0

    const-wide/32 v4, 0x1c0000

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    .line 2542
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 2543
    .local v1, "best":Landroid/content/pm/ResolveInfo;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2544
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    const-string v5, "PackageManager"

    if-ge v4, v3, :cond_69

    .line 2545
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 2546
    .local v6, "cur":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 2547
    .local v7, "packageName":Ljava/lang/String;
    const-string v8, "android.permission.DOMAIN_VERIFICATION_AGENT"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v7, v9}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4d

    .line 2550
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Domain verification agent found but does not hold permission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    goto :goto_66

    .line 2555
    :cond_4d
    if-eqz v1, :cond_55

    iget v8, v6, Landroid/content/pm/ResolveInfo;->priority:I

    iget v10, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v8, v10, :cond_66

    .line 2556
    :cond_55
    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v8

    invoke-interface {p1, v8, v9}, Lcom/android/server/pm/Computer;->isComponentEffectivelyEnabled(Landroid/content/pm/ComponentInfo;I)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 2558
    move-object v1, v6

    goto :goto_66

    .line 2560
    :cond_61
    const-string v8, "Domain verification agent found but not enabled"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    .end local v6    # "cur":Landroid/content/pm/ResolveInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_66
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 2565
    .end local v4    # "i":I
    :cond_69
    if-eqz v1, :cond_74

    .line 2566
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    return-object v4

    .line 2568
    :cond_74
    const-string v4, "Domain verification agent not found"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    const/4 v4, 0x0

    return-object v4
.end method

.method public static getFirstUseHandler()Landroid/os/Handler;
    .registers 3

    .line 3004
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sFirstUseHandler:Landroid/os/Handler;

    if-nez v0, :cond_29

    .line 3005
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sFirstUseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3006
    :try_start_7
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sFirstUseHandler:Landroid/os/Handler;

    if-nez v1, :cond_24

    .line 3007
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "first_use_thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/pm/PackageManagerService;->sFirstUseThread:Landroid/os/HandlerThread;

    .line 3008
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 3009
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sFirstUseThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/pm/PackageManagerService;->sFirstUseHandler:Landroid/os/Handler;

    .line 3011
    :cond_24
    monitor-exit v0

    goto :goto_29

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v1

    .line 3013
    :cond_29
    :goto_29
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sFirstUseHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getInstantAppInstallerLPr()Landroid/content/pm/ActivityInfo;
    .registers 16

    .line 2629
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    const-string v1, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    if-eqz v0, :cond_d

    .line 2630
    const-string v2, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE_TEST"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 2633
    :cond_d
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    :goto_11
    nop

    .line 2636
    .local v1, "orderedActions":[Ljava/lang/String;
    const v2, 0xc0200

    .line 2640
    const/4 v3, 0x0

    if-eqz v0, :cond_1a

    move v0, v3

    goto :goto_1c

    :cond_1a
    const/high16 v0, 0x100000

    :goto_1c
    or-int/2addr v0, v2

    .line 2641
    .local v0, "resolveFlags":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 2642
    .local v2, "computer":Lcom/android/server/pm/Computer;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object v10, v4

    .line 2643
    .local v10, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v10, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2644
    new-instance v4, Ljava/io/File;

    const-string v5, "foo.apk"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v10, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2645
    const/4 v4, 0x0

    .line 2646
    .local v4, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    array-length v11, v1

    move v13, v3

    move-object v12, v4

    .end local v4    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v12, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_40
    if-ge v13, v11, :cond_76

    aget-object v14, v1, v13

    .line 2647
    .local v14, "action":Ljava/lang/String;
    invoke-virtual {v10, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2648
    int-to-long v7, v0

    const/4 v9, 0x0

    const-string v6, "application/vnd.android.package-archive"

    move-object v4, v2

    move-object v5, v10

    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v12

    .line 2650
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 2651
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_73

    .line 2652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instant App installer not found with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    .end local v14    # "action":Ljava/lang/String;
    :cond_73
    add-int/lit8 v13, v13, 0x1

    goto :goto_40

    .line 2658
    :cond_76
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2659
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_7a
    :goto_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 2660
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2661
    .local v5, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p0, v7, v6, v3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7a

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    if-eqz v6, :cond_97

    .line 2664
    goto :goto_7a

    .line 2666
    :cond_97
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 2667
    .end local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_7a

    .line 2668
    :cond_9b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_a3

    .line 2669
    const/4 v3, 0x0

    return-object v3

    .line 2670
    :cond_a3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b7

    .line 2671
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    return-object v3

    .line 2673
    :cond_b7
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There must be at most one ephemeral installer; found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getInstantAppResolverSettingsLPr(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 11
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "resolver"    # Landroid/content/ComponentName;

    .line 2680
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSTANT_APP_RESOLVER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2681
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2682
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2683
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0xc0000

    .line 2684
    .local v1, "resolveFlags":I
    const/4 v4, 0x0

    const-wide/32 v5, 0xc0000

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v0

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v2

    .line 2686
    .local v2, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2687
    const/4 v3, 0x0

    return-object v3

    .line 2689
    :cond_2a
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    return-object v3
.end method

.method private getIntentFilterVerifierComponentNameLPr(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;
    .registers 11
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2505
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2507
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2511
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2508
    const-string v3, "application/vnd.android.package-archive"

    const-wide/32 v4, 0x1c0000

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    .line 2512
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 2513
    .local v1, "best":Landroid/content/pm/ResolveInfo;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2514
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v3, :cond_42

    .line 2515
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2516
    .local v5, "cur":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 2517
    .local v6, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "android.permission.INTENT_FILTER_VERIFICATION_AGENT"

    invoke-virtual {p0, v8, v6, v7}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_36

    .line 2520
    goto :goto_3f

    .line 2523
    :cond_36
    if-eqz v1, :cond_3e

    iget v7, v5, Landroid/content/pm/ResolveInfo;->priority:I

    iget v8, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v7, v8, :cond_3f

    .line 2524
    :cond_3e
    move-object v1, v5

    .line 2514
    .end local v5    # "cur":Landroid/content/pm/ResolveInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_3f
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 2528
    .end local v4    # "i":I
    :cond_42
    if-eqz v1, :cond_4d

    .line 2529
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    return-object v4

    .line 2531
    :cond_4d
    const-string v4, "PackageManager"

    const-string v5, "Intent filter verifier not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    const/4 v4, 0x0

    return-object v4
.end method

.method static getKnownDigestersList()Ljava/lang/String;
    .registers 5

    .line 7189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7191
    .local v0, "token":J
    :try_start_4
    const-string/jumbo v2, "package_manager_service"

    const-string v3, "known_digesters_list"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 7194
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7191
    return-object v2

    .line 7194
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7195
    throw v2
.end method

.method private getOptionalVerifierLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2402
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.qualcomm.qti.intent.action.PACKAGE_NEEDS_OPTIONAL_VERIFICATION"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2404
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2407
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2404
    const-string v3, "application/vnd.android.package-archive"

    const-wide/32 v4, 0x1c0000

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    .line 2408
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v4, :cond_5d

    .line 2409
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10402a2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2410
    .local v1, "optionalVerifierName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2411
    return-object v3

    .line 2412
    :cond_34
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5d

    .line 2413
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 2414
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v3

    .line 2412
    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 2418
    .end local v1    # "optionalVerifierName":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_5d
    return-object v3
.end method

.method private static getPruneUnusedSharedLibrariesDelay()J
    .registers 3

    .line 1242
    sget-wide v0, Lcom/android/server/pm/PackageManagerService;->PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

    const-string v2, "debug.pm.prune_unused_shared_libraries_delay"

    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getRequiredButNotReallyRequiredVerifierLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2377
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2379
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2383
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2380
    const-string v3, "application/vnd.android.package-archive"

    const-wide/32 v4, 0x1c0000

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    .line 2384
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2d

    .line 2385
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v1

    .line 2386
    :cond_2d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_7d

    .line 2387
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10402a2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2388
    .local v1, "optionalVerifierName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 2389
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v3

    .line 2390
    :cond_53
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7c

    .line 2391
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_79

    .line 2392
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v4

    .line 2390
    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .end local v1    # "optionalVerifierName":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_7c
    goto :goto_8c

    .line 2394
    :cond_7d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8c

    .line 2395
    const-string v1, "PackageManager"

    const-string v3, "There should probably be a verifier, but, none were found"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    const/4 v1, 0x0

    return-object v1

    .line 2394
    :cond_8c
    :goto_8c
    nop

    .line 2398
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There must be exactly one verifier; found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRequiredInstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2449
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2450
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2451
    const-string v1, "content://com.example/foo.apk"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2453
    const-string v4, "application/vnd.android.package-archive"

    const-wide/32 v5, 0x1c0000

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v0

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v1

    .line 2457
    .local v1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_50

    .line 2458
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 2459
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 2462
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v2

    .line 2460
    :cond_48
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "The installer must be a privileged app"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2464
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_50
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There must be exactly one installer; found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getRequiredPermissionControllerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2485
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2486
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2488
    const/4 v4, 0x0

    const-wide/32 v5, 0x1c0000

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v0

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v1

    .line 2491
    .local v1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_44

    .line 2492
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 2493
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2496
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v2

    .line 2494
    :cond_3c
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "The permissions manager must be a privileged app"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2498
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_44
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There must be exactly one permissions manager; found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getRequiredSdkSandboxPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 9
    .param p0, "computer"    # Lcom/android/server/pm/Computer;

    .line 3707
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.android.sdksandbox.SdkSandboxService"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3709
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 3714
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 3709
    const/4 v2, 0x0

    const-wide/32 v3, 0x1c0000

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object v0

    .line 3716
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    .line 3717
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v2

    .line 3719
    :cond_2c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There should exactly one sdk sandbox package; found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3720
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": matches="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getRequiredServicesExtensionPackageLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 5
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2437
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2439
    const v1, 0x10402bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2438
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2440
    .local v0, "servicesExtensionPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 2445
    return-object v0

    .line 2441
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Required services extension package is missing, check config_servicesExtensionPackage."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRequiredSharedLibrary(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I

    .line 2424
    int-to-long v0, p3

    invoke-interface {p1, p2, v0, v1}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    .line 2425
    .local v0, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-eqz v0, :cond_27

    .line 2428
    invoke-virtual {v0}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2429
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 2432
    return-object v1

    .line 2430
    :cond_e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a package for shared library "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2426
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required shared library:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRequiredUninstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 15
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 2469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2470
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2471
    const-string/jumbo v1, "package"

    const-string v2, "foo.bar"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2473
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 2473
    const/4 v5, 0x0

    const-wide/32 v6, 0x1c0000

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2476
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_46

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2477
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 2481
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v2

    .line 2478
    :cond_46
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There must be exactly one uninstaller; found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getRetailDemoPackageName()Ljava/lang/String;
    .registers 13

    .line 3726
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v1, 0x10402b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3727
    .local v0, "predefinedPkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10402b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3730
    .local v1, "predefinedSignature":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_68

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_68

    .line 3734
    :cond_20
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3735
    .local v2, "androidPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v2, :cond_67

    .line 3736
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    .line 3737
    .local v4, "signingDetail":Landroid/content/pm/SigningDetails;
    if-eqz v4, :cond_67

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v5

    if-eqz v5, :cond_67

    .line 3739
    :try_start_36
    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 3740
    .local v5, "msgDigest":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_43
    if-ge v9, v7, :cond_5e

    aget-object v10, v6, v9

    .line 3741
    .local v10, "signature":Landroid/content/pm/Signature;
    nop

    .line 3743
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    .line 3742
    invoke-virtual {v5, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v11

    invoke-static {v11, v8}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v11

    .line 3741
    invoke-static {v1, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_58
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_36 .. :try_end_58} :catch_5f

    if-eqz v11, :cond_5b

    .line 3744
    return-object v0

    .line 3740
    .end local v10    # "signature":Landroid/content/pm/Signature;
    :cond_5b
    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    .line 3752
    .end local v5    # "msgDigest":Ljava/security/MessageDigest;
    :cond_5e
    goto :goto_67

    .line 3747
    :catch_5f
    move-exception v5

    .line 3748
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "PackageManager"

    const-string v7, "Unable to verify signatures as getting the retail demo package name"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3756
    .end local v4    # "signingDetail":Landroid/content/pm/SigningDetails;
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_67
    :goto_67
    return-object v3

    .line 3731
    .end local v2    # "androidPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_68
    :goto_68
    return-object v3
.end method

.method private getSetupWizardPackageNameImpl(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 3673
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3674
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.SETUP_WIZARD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3676
    nop

    .line 3679
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 3676
    const/4 v4, 0x0

    const-wide/32 v5, 0x1c0200

    move-object v2, p1

    move-object v3, v0

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v1

    .line 3680
    .local v1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    .line 3681
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v2

    .line 3683
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There should probably be exactly one setup wizard; found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": matches="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    const/4 v2, 0x0

    return-object v2
.end method

.method private getStorageManagerPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 8
    .param p1, "computer"    # Lcom/android/server/pm/Computer;

    .line 3690
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3692
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 3695
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 3692
    const/4 v2, 0x0

    const-wide/32 v3, 0x1c0200

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    .line 3696
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    .line 3697
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object v2

    .line 3699
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There should probably be exactly one storage manager; found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3700
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": matches="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3699
    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    const/4 v2, 0x0

    return-object v2
.end method

.method private installAllowlistedSystemPackages()V
    .registers 5

    .line 1588
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1590
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 1591
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    .line 1593
    :cond_19
    return-void
.end method

.method public static invalidatePackageInfoCache()V
    .registers 0

    .line 990
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 991
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 992
    return-void
.end method

.method static synthetic lambda$forEachInstalledPackage$55(ILjava/util/function/Consumer;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 4
    .param p0, "userId"    # I
    .param p1, "action"    # Ljava/util/function/Consumer;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 7060
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 7061
    invoke-interface {p2, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7062
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7064
    :cond_17
    return-void
.end method

.method static synthetic lambda$main$10(Landroid/content/Context;Lcom/android/server/pm/Installer;Ljava/lang/Object;ZLcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UserManagerService;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "onlyCore"    # Z
    .param p4, "lock"    # Lcom/android/server/pm/PackageManagerTracedLock;
    .param p5, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p6, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1477
    new-instance v0, Lcom/android/server/pm/UserManagerService;

    new-instance v1, Lcom/android/server/pm/UserDataPreparer;

    invoke-direct {v1, p1, p2, p0, p3}, Lcom/android/server/pm/UserDataPreparer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Z)V

    invoke-direct {v0, p0, p6, v1, p4}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$main$11(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/Settings;
    .registers 13
    .param p0, "domainVerificationService"    # Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .param p1, "backgroundHandler"    # Landroid/os/Handler;
    .param p2, "lock"    # Lcom/android/server/pm/PackageManagerTracedLock;
    .param p3, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p4, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1480
    new-instance v7, Lcom/android/server/pm/Settings;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 1481
    invoke-static {}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->createInstance()Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    move-result-object v2

    .line 1482
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v3

    move-object v0, v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/Settings;-><init>(Ljava/io/File;Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V

    .line 1480
    return-object v7
.end method

.method static synthetic lambda$main$12(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppsFilterImpl;
    .registers 3
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1484
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 1485
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1484
    invoke-static {p0, v0}, Lcom/android/server/pm/AppsFilterImpl;->create(Lcom/android/server/pm/PackageManagerServiceInjector;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/pm/AppsFilterImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$main$13(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/compat/PlatformCompat;
    .registers 3
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1486
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/PlatformCompat;

    return-object v0
.end method

.method static synthetic lambda$main$14(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/SystemConfig;
    .registers 3
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1487
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$main$15(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageDexOptimizer;
    .registers 7
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1488
    new-instance v0, Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Ljava/lang/Object;

    move-result-object v2

    .line 1489
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "*dexopt*"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    .line 1488
    return-object v0
.end method

.method static synthetic lambda$main$16(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DexManager;
    .registers 7
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1490
    new-instance v0, Lcom/android/server/pm/dex/DexManager;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageDexOptimizer()Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v2

    .line 1491
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/dex/DexManager;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V

    .line 1490
    return-object v0
.end method

.method static synthetic lambda$main$17(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/ArtManagerService;
    .registers 6
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1492
    new-instance v0, Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v2

    .line 1493
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/dex/ArtManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V

    .line 1492
    return-object v0
.end method

.method static synthetic lambda$main$18(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;
    .registers 3
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1494
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$main$19(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/ViewCompiler;
    .registers 5
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1495
    new-instance v0, Lcom/android/server/pm/dex/ViewCompiler;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/dex/ViewCompiler;-><init>(Ljava/lang/Object;Lcom/android/server/pm/Installer;)V

    return-object v0
.end method

.method static synthetic lambda$main$20(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/incremental/IncrementalManager;
    .registers 4
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1496
    nop

    .line 1497
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "incremental"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/incremental/IncrementalManager;

    .line 1496
    return-object v0
.end method

.method static synthetic lambda$main$21(Landroid/content/Context;)Landroid/app/role/RoleManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1498
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    return-object v0
.end method

.method static synthetic lambda$main$22()Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 1499
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    return-object v0
.end method

.method static synthetic lambda$main$23(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1498
    new-instance v0, Lcom/android/server/pm/DefaultAppProvider;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda20;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultAppProvider;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method static synthetic lambda$main$24(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/util/DisplayMetrics;
    .registers 3
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1500
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$main$25(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/PackageParser2;
    .registers 9
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1501
    new-instance v6, Lcom/android/server/pm/parsing/PackageParser2;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    .line 1502
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    iget-object v5, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    .line 1501
    return-object v6
.end method

.method static synthetic lambda$main$26(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/PackageParser2;
    .registers 9
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1504
    new-instance v6, Lcom/android/server/pm/parsing/PackageParser2;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    .line 1505
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    .line 1504
    return-object v6
.end method

.method static synthetic lambda$main$27(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/parsing/PackageParser2;
    .registers 9
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1507
    new-instance v6, Lcom/android/server/pm/parsing/PackageParser2;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    return-object v6
.end method

.method static synthetic lambda$main$28(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageInstallerService;
    .registers 5
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1511
    new-instance v0, Lcom/android/server/pm/PackageInstallerService;

    .line 1512
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/pm/PackageInstallerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/util/function/Supplier;)V

    .line 1511
    return-object v0
.end method

.method static synthetic lambda$main$29(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;
    .registers 6
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .line 1513
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection;

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-direct {v0, v1, p2, v2}, Lcom/android/server/pm/InstantAppResolverConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1513
    return-object v0
.end method

.method static synthetic lambda$main$30(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;
    .registers 4
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1515
    new-instance v0, Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/ModuleInfoProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$main$31(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    .registers 3
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1516
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->create(Landroid/content/Context;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$main$32(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .registers 3
    .param p0, "domainVerificationService"    # Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .param p1, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1517
    return-object p0
.end method

.method static synthetic lambda$main$33(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/Handler;
    .registers 6
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1519
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PackageManager"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 1521
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1522
    new-instance v1, Lcom/android/server/pm/PackageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/server/pm/PackageHandler;-><init>(Landroid/os/Looper;Lcom/android/server/pm/PackageManagerService;)V

    return-object v1
.end method

.method static synthetic lambda$main$34(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/BackgroundDexOptService;
    .registers 5
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1527
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/pm/BackgroundDexOptService;-><init>(Landroid/content/Context;Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageManagerService;)V

    return-object v0
.end method

.method static synthetic lambda$main$35(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/app/backup/IBackupManager;
    .registers 3
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1528
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$main$36(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SharedLibrariesImpl;
    .registers 3
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1530
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/SharedLibrariesImpl;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)V

    return-object v0
.end method

.method static synthetic lambda$main$37(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2
    .param p0, "newSeInfo"    # Ljava/lang/String;
    .param p1, "state"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 1566
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method static synthetic lambda$main$38(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 12
    .param p0, "m"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1542
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1543
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 1544
    .local v1, "snapshot":Lcom/android/server/pm/Computer;
    nop

    .line 1545
    invoke-interface {v1, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 1546
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_28

    .line 1547
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find package setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    monitor-exit v0

    return-void

    .line 1550
    :cond_28
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 1551
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    nop

    .line 1552
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSharedUserAppId()I

    move-result v4

    .line 1551
    invoke-interface {v1, v4}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v4

    .line 1553
    .local v4, "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    invoke-static {v3, v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v5

    .line 1555
    .local v5, "oldSeInfo":Ljava/lang/String;
    if-nez v3, :cond_55

    .line 1556
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    monitor-exit v0

    return-void

    .line 1559
    :cond_55
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1560
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v6

    .line 1559
    invoke-static {v3, v4, v6}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/SharedUserApi;Lcom/android/server/compat/PlatformCompat;)Ljava/lang/String;

    move-result-object v6

    .line 1562
    .local v6, "newSeInfo":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9f

    .line 1563
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating seInfo for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 v7, 0x0

    new-instance v8, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;

    invoke-direct {v8, v6}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, p1, v8}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 1567
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 1569
    .end local v1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    .end local v5    # "oldSeInfo":Ljava/lang/String;
    .end local v6    # "newSeInfo":Ljava/lang/String;
    :cond_9f
    monitor-exit v0

    .line 1570
    return-void

    .line 1569
    :catchall_a1
    move-exception v1

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_3 .. :try_end_a3} :catchall_a1

    throw v1
.end method

.method static synthetic lambda$main$8(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/resolution/ComponentResolver;
    .registers 5
    .param p0, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1474
    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/resolution/ComponentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    return-object v0
.end method

.method static synthetic lambda$main$9(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1475
    nop

    .line 1476
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAvailableFeatures()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1475
    invoke-static {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->create(Landroid/content/Context;Landroid/util/ArrayMap;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$requestChecksumsInternal$5(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1
    .param p0, "handler"    # Landroid/os/Handler;

    .line 1325
    return-object p0
.end method

.method static synthetic lambda$requestFileChecksums$1(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1
    .param p0, "handler"    # Landroid/os/Handler;

    .line 1270
    return-object p0
.end method

.method static synthetic lambda$resetComponentEnabledSettingsIfNeededLPw$45(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V
    .registers 5
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "userId"    # I
    .param p2, "updatedComponents"    # Ljava/util/ArrayList;
    .param p3, "component"    # Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    .line 3549
    invoke-interface {p3}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->restoreComponentLPw(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3550
    invoke-interface {p3}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3552
    :cond_11
    return-void
.end method

.method static synthetic lambda$setEnabledOverlayPackages$54(Ljava/lang/String;ILandroid/content/pm/overlay/OverlayPaths;Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 10
    .param p0, "targetPackageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "newOverlayPaths"    # Landroid/content/pm/overlay/OverlayPaths;
    .param p3, "libNameToModifiedDependents"    # Landroid/util/ArrayMap;
    .param p4, "mutator"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 6904
    invoke-virtual {p4, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v0

    .line 6905
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v0

    .line 6906
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 6908
    const/4 v0, 0x0

    .local v0, "mapIndex":I
    :goto_c
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 6909
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6910
    .local v1, "libName":Ljava/lang/String;
    nop

    .line 6911
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 6912
    .local v2, "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "setIndex":I
    :goto_20
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 6913
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p4, v4}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v4

    .line 6914
    invoke-interface {v4, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v4

    .line 6915
    invoke-interface {v4, v1, p2}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 6912
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 6908
    .end local v1    # "libName":Ljava/lang/String;
    .end local v2    # "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "setIndex":I
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 6918
    .end local v0    # "mapIndex":I
    :cond_3d
    return-void
.end method

.method static synthetic lambda$setPackageStoppedState$52(IZZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 6
    .param p0, "userId"    # I
    .param p1, "stopped"    # Z
    .param p2, "wasNotLaunched"    # Z
    .param p3, "state"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 4731
    invoke-interface {p3, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v0

    .line 4732
    .local v0, "userState":Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setStopped(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 4733
    if-eqz p2, :cond_d

    .line 4734
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setNotLaunched(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 4736
    :cond_d
    return-void
.end method

.method static synthetic lambda$setSystemAppHiddenUntilInstalled$51(Ljava/lang/String;ZLcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "hidden"    # Z
    .param p2, "mutator"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 4609
    invoke-virtual {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v0

    .line 4610
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 4611
    invoke-virtual {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v0

    .line 4612
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 4613
    return-void
.end method

.method static synthetic lambda$updateComponentLabelIcon$47(ILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 6
    .param p0, "userId"    # I
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "nonLocalizedLabel"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/Integer;
    .param p4, "state"    # Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 3854
    invoke-interface {p4, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v0

    .line 3855
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 3854
    return-void
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;ZZ)Landroid/util/Pair;
    .registers 56
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "domainVerificationService"    # Lcom/android/server/pm/verify/domain/DomainVerificationService;
    .param p3, "factoryTest"    # Z
    .param p4, "onlyCore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/Installer;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationService;",
            "ZZ)",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/content/pm/IPackageManager;",
            ">;"
        }
    .end annotation

    move-object/from16 v5, p0

    move-object/from16 v4, p2

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    .line 1458
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->checkProperties()V

    .line 1459
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "PackageManagerTiming"

    const-wide/32 v2, 0x40000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    move-object v2, v0

    .line 1461
    .local v2, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v0, "create package manager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1462
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    move-object v1, v0

    .local v1, "lock":Lcom/android/server/pm/PackageManagerTracedLock;
    move-object v8, v1

    .line 1463
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .local v3, "installLock":Ljava/lang/Object;
    move-object v10, v3

    .line 1465
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v6, "PackageManagerBg"

    const/16 v11, 0xa

    const/4 v12, 0x1

    invoke-direct {v0, v6, v11, v12}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    move-object/from16 v44, v0

    .line 1467
    .local v44, "backgroundThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v44 .. v44}, Landroid/os/HandlerThread;->start()V

    .line 1468
    new-instance v0, Landroid/os/Handler;

    invoke-virtual/range {v44 .. v44}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v0, "backgroundHandler":Landroid/os/Handler;
    move-object v12, v0

    .line 1470
    new-instance v45, Lcom/android/server/pm/PackageManagerServiceInjector;

    move-object/from16 v6, v45

    new-instance v13, Lcom/android/server/pm/PackageAbiHelperImpl;

    move-object v11, v13

    invoke-direct {v13}, Lcom/android/server/pm/PackageAbiHelperImpl;-><init>()V

    sget-object v13, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    new-instance v15, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda25;

    move-object v14, v15

    invoke-direct {v15}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda25;-><init>()V

    new-instance v15, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda36;

    move-object/from16 v16, v15

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    .end local v0    # "backgroundHandler":Landroid/os/Handler;
    .local v17, "backgroundHandler":Landroid/os/Handler;
    invoke-direct {v0, v5}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda36;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;

    move-object/from16 v16, v0

    move-object/from16 v46, v6

    move-object/from16 v6, v17

    .end local v17    # "backgroundHandler":Landroid/os/Handler;
    .local v6, "backgroundHandler":Landroid/os/Handler;
    move-object/from16 v47, v1

    .end local v1    # "lock":Lcom/android/server/pm/PackageManagerTracedLock;
    .local v47, "lock":Lcom/android/server/pm/PackageManagerTracedLock;
    move-object/from16 v1, p0

    move-object/from16 v48, v2

    .end local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .local v48, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    move-object/from16 v2, p1

    move-object/from16 v49, v7

    move-object v7, v4

    move/from16 v4, p4

    move-object/from16 v50, v8

    move-object v8, v5

    move-object/from16 v5, v47

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;Ljava/lang/Object;ZLcom/android/server/pm/PackageManagerTracedLock;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;

    move-object/from16 v17, v0

    move-object/from16 v1, v47

    .end local v47    # "lock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v1    # "lock":Lcom/android/server/pm/PackageManagerTracedLock;
    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;

    move-object/from16 v18, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda50;

    move-object/from16 v19, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda50;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda51;

    move-object/from16 v20, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda51;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;

    move-object/from16 v21, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;

    move-object/from16 v22, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda54;

    move-object/from16 v23, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda54;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda26;

    move-object/from16 v24, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda26;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda27;

    move-object/from16 v25, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda27;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda28;

    move-object/from16 v26, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda28;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;

    move-object/from16 v27, v0

    invoke-direct {v0, v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda30;

    move-object/from16 v28, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda30;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda31;

    move-object/from16 v29, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda31;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;

    move-object/from16 v30, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;

    move-object/from16 v31, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;

    move-object/from16 v32, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda35;

    move-object/from16 v33, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda35;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda37;

    move-object/from16 v34, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda37;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda38;

    move-object/from16 v35, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda38;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda39;

    move-object/from16 v36, v0

    invoke-direct {v0, v7}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;

    move-object/from16 v37, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;

    move-object/from16 v38, v0

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;-><init>(Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper-IA;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;

    move-object/from16 v39, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;-><init>()V

    .line 1526
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;

    move-object/from16 v40, v0

    invoke-direct {v0, v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda43;

    move-object/from16 v41, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda43;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;

    move-object/from16 v42, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;-><init>()V

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;

    move-object/from16 v43, v0

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;-><init>()V

    move-object v0, v6

    move-object/from16 v6, v46

    move-object/from16 v7, v49

    move-object/from16 v8, v50

    .end local v6    # "backgroundHandler":Landroid/os/Handler;
    .restart local v0    # "backgroundHandler":Landroid/os/Handler;
    invoke-direct/range {v6 .. v43}, Lcom/android/server/pm/PackageManagerServiceInjector;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/Installer;Ljava/lang/Object;Lcom/android/server/pm/PackageAbiHelper;Landroid/os/Handler;Ljava/util/List;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    move-object/from16 v12, v45

    .line 1532
    .local v12, "injector":Lcom/android/server/pm/PackageManagerServiceInjector;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gtz v4, :cond_155

    .line 1533
    const-string v4, "PackageManager"

    const-string v5, "**** ro.build.version.sdk not set!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_155
    new-instance v4, Lcom/android/server/pm/PackageManagerService;

    sget-object v15, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    sget-boolean v16, Landroid/os/Build;->IS_ENG:Z

    sget-boolean v17, Landroid/os/Build;->IS_USERDEBUG:Z

    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v19, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object v11, v4

    move/from16 v13, p4

    move/from16 v14, p3

    invoke-direct/range {v11 .. v19}, Lcom/android/server/pm/PackageManagerService;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;ZZLjava/lang/String;ZZILjava/lang/String;)V

    .line 1539
    .local v4, "m":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1541
    new-instance v5, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;

    invoke-direct {v5, v4}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 1572
    .local v5, "selinuxChangeListener":Lcom/android/server/compat/CompatChange$ChangeListener;
    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v6

    const-wide/32 v7, 0x88e3d87

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    .line 1574
    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v6

    const-wide/32 v7, 0xa0f6c63

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    .line 1577
    invoke-direct {v4}, Lcom/android/server/pm/PackageManagerService;->installAllowlistedSystemPackages()V

    .line 1578
    new-instance v6, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v6, v4}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 1579
    .local v6, "iPackageManager":Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
    const-string/jumbo v7, "package"

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1580
    new-instance v7, Lcom/android/server/pm/PackageManagerNative;

    invoke-direct {v7, v4}, Lcom/android/server/pm/PackageManagerNative;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 1581
    .local v7, "pmn":Lcom/android/server/pm/PackageManagerNative;
    const-string/jumbo v8, "package_native"

    invoke-static {v8, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1582
    const-class v8, Lcom/android/server/pm/PackageManagerLocal;

    new-instance v9, Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v9, v4, v2}, Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageManagerLocalImpl-IA;)V

    invoke-static {v8, v9}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1583
    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private maybeUpdateSystemOverlays(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)V
    .registers 6
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "newOverlayPaths"    # Landroid/content/pm/overlay/OverlayPaths;

    .line 6933
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_35

    .line 6934
    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 6935
    if-nez p2, :cond_15

    .line 6936
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 6937
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    goto :goto_31

    .line 6939
    :cond_15
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 6941
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 6944
    :goto_31
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    goto :goto_69

    .line 6947
    :cond_35
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 6948
    if-nez p2, :cond_48

    .line 6949
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 6950
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    goto :goto_66

    .line 6952
    :cond_48
    nop

    .line 6953
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 6954
    nop

    .line 6955
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 6957
    :goto_66
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    .line 6960
    :cond_69
    :goto_69
    return-void
.end method

.method private notifyPackageUseInternal(Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 3083
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3087
    .local v0, "time":J
    const/16 v2, 0x8

    if-ne p2, v2, :cond_23

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mEnableFirstUseDexopt:Z

    if-eqz v2, :cond_23

    .line 3088
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLastPackageUsageTime()[J

    move-result-object v2

    aget-wide v2, v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_23

    .line 3089
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->runDexopt(Ljava/lang/String;)V

    .line 3092
    :cond_23
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 3093
    :try_start_26
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 3094
    .local v3, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_30

    .line 3095
    monitor-exit v2

    return-void

    .line 3097
    :cond_30
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4, p2, v0, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 3098
    nop

    .end local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    monitor-exit v2

    .line 3099
    return-void

    .line 3098
    :catchall_3a
    move-exception v3

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method public static onChange(Lcom/android/server/utils/Watchable;)V
    .registers 2
    .param p0, "what"    # Lcom/android/server/utils/Watchable;

    .line 1179
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1180
    return-void
.end method

.method static onChanged()V
    .registers 1

    .line 1187
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->onChange(Lcom/android/server/utils/Watchable;)V

    .line 1188
    return-void
.end method

.method private parsePerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;
    .registers 21
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;

    .line 7212
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getDefaultTimeouts()Ljava/lang/String;

    move-result-object v0

    .line 7213
    .local v0, "defaultTimeouts":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getKnownDigestersList()Ljava/lang/String;

    move-result-object v1

    .line 7214
    .local v1, "knownDigestersList":Ljava/lang/String;
    nop

    .line 7215
    invoke-static {v0, v1}, Lcom/android/server/pm/PerPackageReadTimeouts;->parseDigestersList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 7217
    .local v2, "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_16

    .line 7218
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

    return-object v3

    .line 7221
    :cond_16
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    .line 7222
    .local v4, "allUsers":[I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 7223
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/incremental/PerUidReadTimeouts;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_30
    if-ge v6, v7, :cond_fa

    .line 7224
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PerPackageReadTimeouts;

    .line 7225
    .local v8, "perPackage":Lcom/android/server/pm/PerPackageReadTimeouts;
    iget-object v9, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->packageName:Ljava/lang/String;

    .line 7226
    move-object/from16 v10, p1

    invoke-interface {v10, v9}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v9

    .line 7227
    .local v9, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v9, :cond_4a

    .line 7232
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto/16 :goto_f0

    .line 7234
    :cond_4a
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    const/16 v12, 0x2710

    if-ge v11, v12, :cond_5a

    .line 7239
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto/16 :goto_f0

    .line 7242
    :cond_5a
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v11

    .line 7243
    .local v11, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v12

    iget-object v14, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    iget-wide v14, v14, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->minVersionCode:J

    cmp-long v12, v12, v14

    if-ltz v12, :cond_ea

    .line 7244
    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v12

    iget-object v14, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    iget-wide v14, v14, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->maxVersionCode:J

    cmp-long v12, v12, v14

    if-lez v12, :cond_7e

    .line 7249
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto/16 :goto_f0

    .line 7251
    :cond_7e
    iget-object v12, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->sha256certificate:[B

    if-eqz v12, :cond_95

    .line 7252
    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v12

    iget-object v13, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->sha256certificate:[B

    invoke-virtual {v12, v13}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v12

    if-nez v12, :cond_95

    .line 7258
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto :goto_f0

    .line 7260
    :cond_95
    array-length v12, v4

    const/4 v13, 0x0

    :goto_97
    if-ge v13, v12, :cond_e3

    aget v14, v4, v13

    .line 7261
    .local v14, "userId":I
    invoke-interface {v9, v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v15

    if-nez v15, :cond_ac

    .line 7262
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto :goto_da

    .line 7264
    :cond_ac
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v15

    invoke-static {v14, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    .line 7265
    .local v15, "uid":I
    new-instance v16, Landroid/os/incremental/PerUidReadTimeouts;

    invoke-direct/range {v16 .. v16}, Landroid/os/incremental/PerUidReadTimeouts;-><init>()V

    move-object/from16 v17, v16

    .line 7266
    .local v17, "perUid":Landroid/os/incremental/PerUidReadTimeouts;
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "perUid":Landroid/os/incremental/PerUidReadTimeouts;
    .local v0, "perUid":Landroid/os/incremental/PerUidReadTimeouts;
    .local v16, "defaultTimeouts":Ljava/lang/String;
    iput v15, v0, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    .line 7267
    move-object/from16 v17, v1

    .end local v1    # "knownDigestersList":Ljava/lang/String;
    .local v17, "knownDigestersList":Ljava/lang/String;
    iget-object v1, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    move-object/from16 v18, v2

    .end local v2    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    .local v18, "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    iget-wide v1, v1, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minTimeUs:J

    iput-wide v1, v0, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    .line 7268
    iget-object v1, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    iget-wide v1, v1, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minPendingTimeUs:J

    iput-wide v1, v0, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    .line 7269
    iget-object v1, v8, Lcom/android/server/pm/PerPackageReadTimeouts;->timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    iget-wide v1, v1, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->maxPendingTimeUs:J

    iput-wide v1, v0, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    .line 7270
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7260
    .end local v0    # "perUid":Landroid/os/incremental/PerUidReadTimeouts;
    .end local v14    # "userId":I
    .end local v15    # "uid":I
    :goto_da
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto :goto_97

    .end local v16    # "defaultTimeouts":Ljava/lang/String;
    .end local v17    # "knownDigestersList":Ljava/lang/String;
    .end local v18    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    .local v0, "defaultTimeouts":Ljava/lang/String;
    .restart local v1    # "knownDigestersList":Ljava/lang/String;
    .restart local v2    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    :cond_e3
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v0    # "defaultTimeouts":Ljava/lang/String;
    .end local v1    # "knownDigestersList":Ljava/lang/String;
    .end local v2    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    .restart local v16    # "defaultTimeouts":Ljava/lang/String;
    .restart local v17    # "knownDigestersList":Ljava/lang/String;
    .restart local v18    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    goto :goto_f0

    .line 7243
    .end local v16    # "defaultTimeouts":Ljava/lang/String;
    .end local v17    # "knownDigestersList":Ljava/lang/String;
    .end local v18    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    .restart local v0    # "defaultTimeouts":Ljava/lang/String;
    .restart local v1    # "knownDigestersList":Ljava/lang/String;
    .restart local v2    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    :cond_ea
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 7223
    .end local v0    # "defaultTimeouts":Ljava/lang/String;
    .end local v1    # "knownDigestersList":Ljava/lang/String;
    .end local v2    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    .end local v8    # "perPackage":Lcom/android/server/pm/PerPackageReadTimeouts;
    .end local v9    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v11    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v16    # "defaultTimeouts":Ljava/lang/String;
    .restart local v17    # "knownDigestersList":Ljava/lang/String;
    .restart local v18    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    :goto_f0
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto/16 :goto_30

    .end local v16    # "defaultTimeouts":Ljava/lang/String;
    .end local v17    # "knownDigestersList":Ljava/lang/String;
    .end local v18    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    .restart local v0    # "defaultTimeouts":Ljava/lang/String;
    .restart local v1    # "knownDigestersList":Ljava/lang/String;
    .restart local v2    # "perPackageReadTimeouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PerPackageReadTimeouts;>;"
    :cond_fa
    move-object/from16 v16, v0

    .line 7273
    .end local v0    # "defaultTimeouts":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "size":I
    .restart local v16    # "defaultTimeouts":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/incremental/PerUidReadTimeouts;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/incremental/PerUidReadTimeouts;

    return-object v0
.end method

.method private readPermissionStateForUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 4536
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 4539
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->writeLegacyPermissionStateTEMP(I)V

    .line 4540
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->readPermissionStateForUserSyncLPr(I)V

    .line 4542
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->readLegacyPermissionStateTEMP(I)V

    .line 4543
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->isPermissionUpgradeNeeded(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4544
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private rebuildSnapshot(Lcom/android/server/pm/Computer;I)Lcom/android/server/pm/Computer;
    .registers 15
    .param p1, "oldSnapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "newVersion"    # I

    .line 1150
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v6

    .line 1151
    .local v6, "now":J
    if-nez p1, :cond_8

    const/4 v0, -0x1

    goto :goto_c

    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUsed()I

    move-result v0

    :goto_c
    move v5, v0

    .line 1152
    .local v5, "hits":I
    new-instance v0, Lcom/android/server/pm/PackageManagerService$Snapshot;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Snapshot;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    move-object v8, v0

    .line 1153
    .local v8, "args":Lcom/android/server/pm/PackageManagerService$Snapshot;
    new-instance v0, Lcom/android/server/pm/ComputerEngine;

    invoke-direct {v0, v8, p2}, Lcom/android/server/pm/ComputerEngine;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V

    move-object v9, v0

    .line 1154
    .local v9, "newSnapshot":Lcom/android/server/pm/ComputerEngine;
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v10

    .line 1156
    .local v10, "done":J
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    if-eqz v0, :cond_27

    .line 1157
    move-wide v1, v6

    move-wide v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SnapshotStatistics;->rebuild(JJI)V

    .line 1159
    :cond_27
    return-object v9
.end method

.method private registerObservers(Z)V
    .registers 4
    .param p1, "verify"    # Z

    .line 1599
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_9

    .line 1600
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1602
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    if-eqz v0, :cond_12

    .line 1603
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1605
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_1b

    .line 1606
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1608
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-eqz v0, :cond_24

    .line 1609
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1611
    :cond_24
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    if-eqz v0, :cond_2d

    .line 1612
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppsFilterImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1614
    :cond_2d
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    if-eqz v0, :cond_36

    .line 1615
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/InstantAppRegistry;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1617
    :cond_36
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    if-eqz v0, :cond_3f

    .line 1618
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1620
    :cond_3f
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    if-eqz v0, :cond_48

    .line 1621
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1623
    :cond_48
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    if-eqz v0, :cond_51

    .line 1624
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/resolution/ComponentResolver;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1626
    :cond_51
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_5a

    .line 1627
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1629
    :cond_5a
    if-eqz p1, :cond_6c

    .line 1632
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    if-nez v1, :cond_68

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    if-nez v1, :cond_68

    const/4 v1, 0x1

    goto :goto_69

    :cond_68
    const/4 v1, 0x0

    :goto_69
    invoke-static {p0, v0, v1}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;Z)V

    .line 1634
    :cond_6c
    return-void
.end method

.method static renameStaticSharedLibraryPackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    .registers 4
    .param p0, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 2925
    nop

    .line 2926
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibVersion()J

    move-result-wide v1

    .line 2925
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->toStaticSharedLibraryPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 2927
    return-void
.end method

.method public static reportSettingsProblem(ILjava/lang/String;)V
    .registers 2
    .param p0, "priority"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 2919
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2920
    return-void
.end method

.method private resetComponentEnabledSettingsIfNeededLPw(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3539
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 3540
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_c
    if-eqz v0, :cond_b8

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isResetEnabledSettingsOnAppDataCleared()Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_b8

    .line 3543
    :cond_16
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 3544
    .local v1, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_1f

    .line 3545
    return-void

    .line 3547
    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3548
    .local v2, "updatedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v3, v1, p2, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;)V

    .line 3553
    .local v3, "resetSettings":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/pkg/component/ParsedMainComponent;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_42

    .line 3554
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3553
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 3556
    .end local v4    # "i":I
    :cond_42
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_43
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5b

    .line 3557
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3556
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 3559
    .end local v4    # "i":I
    :cond_5b
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5c
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_74

    .line 3560
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3559
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 3562
    .end local v4    # "i":I
    :cond_74
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_75
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8d

    .line 3563
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3562
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    .line 3565
    .end local v4    # "i":I
    :cond_8d
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 3567
    return-void

    .line 3570
    :cond_94
    const/4 v4, 0x1

    new-array v5, v4, [I

    const/4 v6, 0x0

    aput p2, v5, v6

    invoke-virtual {p0, v1, v5}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 3571
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 3572
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 3574
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v5, p2, p1, v2}, Lcom/android/server/pm/PendingPackageBroadcasts;->addComponents(ILjava/lang/String;Ljava/util/List;)V

    .line 3575
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_b7

    .line 3576
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3578
    :cond_b7
    return-void

    .line 3541
    .end local v1    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "updatedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "resetSettings":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/pkg/component/ParsedMainComponent;>;"
    :cond_b8
    :goto_b8
    return-void
.end method

.method private runDexopt(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3103
    new-instance v0, Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService$3;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 3109
    .local v0, "task":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getFirstUseHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x2328

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3110
    return-void
.end method

.method private scheduleWritePackageListLocked(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 1390
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 1391
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1392
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1393
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1394
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1396
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1c
    return-void
.end method

.method private sendApplicationHiddenForUser(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "userId"    # I

    .line 3258
    new-instance v0, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageRemovedInfo;-><init>(Lcom/android/server/pm/PackageSender;)V

    .line 3259
    .local v0, "info":Lcom/android/server/pm/PackageRemovedInfo;
    iput-object p1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 3260
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 3261
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p3, v2, v3

    iput-object v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 3262
    new-array v2, v1, [I

    aput p3, v2, v3

    iput-object v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 3263
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v2

    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iput v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 3264
    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/PackageRemovedInfo;->sendPackageRemovedBroadcasts(ZZ)V

    .line 3265
    return-void
.end method

.method private setEnabledOverlayPackages(ILjava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/util/Set;)Z
    .registers 26
    .param p1, "userId"    # I
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .param p3, "newOverlayPaths"    # Landroid/content/pm/overlay/OverlayPaths;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 6848
    .local p4, "outUpdatedPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService;->mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v12

    .line 6849
    :try_start_d
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6850
    .local v0, "libNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    move-object v13, v2

    .line 6851
    .local v13, "computer":Lcom/android/server/pm/Computer;
    invoke-interface {v13, v9}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    move-object v14, v2

    .line 6853
    .local v14, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v14, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    :goto_24
    move-object/from16 v16, v2

    .line 6854
    .local v16, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v9, :cond_d2

    if-nez v16, :cond_2c

    goto/16 :goto_d2

    .line 6859
    :cond_2c
    invoke-interface {v14, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v2

    invoke-static {v2, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v17, 0x1

    if-eqz v2, :cond_3e

    .line 6861
    monitor-exit v12

    return v17

    .line 6864
    :cond_3e
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 6866
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    .line 6867
    .local v7, "libName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 6869
    .local v19, "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide/16 v2, -0x1

    invoke-interface {v13, v7, v2, v3}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v2

    move-object/from16 v20, v2

    .line 6871
    .local v20, "info":Landroid/content/pm/SharedLibraryInfo;
    if-nez v20, :cond_66

    .line 6872
    goto :goto_4c

    .line 6874
    :cond_66
    const-wide/16 v4, 0x0

    const/16 v6, 0x3e8

    .line 6875
    move-object v2, v13

    move-object/from16 v3, v20

    move-object v15, v7

    .end local v7    # "libName":Ljava/lang/String;
    .local v15, "libName":Ljava/lang/String;
    move/from16 v7, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;

    move-result-object v2

    .line 6876
    .local v2, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    if-nez v2, :cond_77

    .line 6877
    goto :goto_4c

    .line 6879
    :cond_77
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v4, v19

    .end local v19    # "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_7d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/VersionedPackage;

    .line 6880
    .local v5, "dependent":Landroid/content/pm/VersionedPackage;
    nop

    .line 6881
    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 6882
    .local v6, "dependentState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v6, :cond_95

    .line 6883
    goto :goto_7d

    .line 6885
    :cond_95
    invoke-interface {v6, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    .line 6886
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSharedLibraryOverlayPaths()Ljava/util/Map;

    move-result-object v7

    .line 6887
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 6885
    invoke-static {v7, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b4

    .line 6888
    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 6889
    .local v7, "dependentPackageName":Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v19

    move-object/from16 v4, v19

    .line 6891
    invoke-interface {v11, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6893
    .end local v5    # "dependent":Landroid/content/pm/VersionedPackage;
    .end local v6    # "dependentState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "dependentPackageName":Ljava/lang/String;
    :cond_b4
    goto :goto_7d

    .line 6895
    :cond_b5
    if-eqz v4, :cond_ba

    .line 6896
    invoke-virtual {v0, v15, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6898
    .end local v2    # "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local v4    # "modifiedDependents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "libName":Ljava/lang/String;
    .end local v20    # "info":Landroid/content/pm/SharedLibraryInfo;
    :cond_ba
    goto :goto_4c

    .line 6901
    :cond_bb
    invoke-interface {v11, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6903
    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v2, v9, v8, v10, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;-><init>(Ljava/lang/String;ILandroid/content/pm/overlay/OverlayPaths;Landroid/util/ArrayMap;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 6919
    nop

    .end local v0    # "libNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v13    # "computer":Lcom/android/server/pm/Computer;
    .end local v14    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    monitor-exit v12
    :try_end_c9
    .catchall {:try_start_d .. :try_end_c9} :catchall_ed

    .line 6921
    if-nez v8, :cond_ce

    .line 6924
    invoke-direct {v1, v9, v10}, Lcom/android/server/pm/PackageManagerService;->maybeUpdateSystemOverlays(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)V

    .line 6927
    :cond_ce
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 6929
    return v17

    .line 6855
    .restart local v0    # "libNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v13    # "computer":Lcom/android/server/pm/Computer;
    .restart local v14    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_d2
    :goto_d2
    :try_start_d2
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to find package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6856
    const/4 v2, 0x0

    monitor-exit v12

    return v2

    .line 6919
    .end local v0    # "libNameToModifiedDependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v13    # "computer":Lcom/android/server/pm/Computer;
    .end local v14    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v16    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_ed
    move-exception v0

    monitor-exit v12
    :try_end_ef
    .catchall {:try_start_d2 .. :try_end_ef} :catchall_ed

    throw v0
.end method

.method private setEnabledSettingInternalLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageManager$ComponentEnabledSetting;ILjava/lang/String;)Z
    .registers 13
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "setting"    # Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .param p4, "userId"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 4157
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v0

    .line 4158
    .local v0, "newState":I
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4159
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4160
    .local v2, "success":Z
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2e

    .line 4162
    if-eqz v0, :cond_14

    if-ne v0, v4, :cond_15

    .line 4165
    :cond_14
    const/4 p5, 0x0

    .line 4167
    :cond_15
    invoke-virtual {p2, v0, p4, p5}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 4168
    const/4 v3, 0x3

    if-eq v0, v3, :cond_1e

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2c

    .line 4170
    :cond_1e
    const-string v3, "android.permission.SUSPEND_APPS"

    invoke-virtual {p0, v3, v1, p4}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2c

    .line 4175
    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 4176
    invoke-virtual {p0, p1, p4}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V

    .line 4178
    :cond_2c
    const/4 v2, 0x1

    goto :goto_71

    .line 4181
    :cond_2e
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 4182
    .local v3, "className":Ljava/lang/String;
    packed-switch v0, :pswitch_data_8e

    .line 4193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed setComponentEnabledSetting: component "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requested an invalid new component state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 4187
    :pswitch_62
    invoke-virtual {p2, v3, p4}, Lcom/android/server/pm/PackageSetting;->disableComponentLPw(Ljava/lang/String;I)Z

    move-result v2

    .line 4188
    goto :goto_71

    .line 4184
    :pswitch_67
    invoke-virtual {p2, v3, p4}, Lcom/android/server/pm/PackageSetting;->enableComponentLPw(Ljava/lang/String;I)Z

    move-result v2

    .line 4185
    goto :goto_71

    .line 4190
    :pswitch_6c
    invoke-virtual {p2, v3, p4}, Lcom/android/server/pm/PackageSetting;->restoreComponentLPw(Ljava/lang/String;I)Z

    move-result v2

    .line 4191
    nop

    .line 4199
    .end local v3    # "className":Ljava/lang/String;
    :goto_71
    const/4 v3, 0x0

    if-nez v2, :cond_75

    .line 4200
    return v3

    .line 4203
    :cond_75
    new-array v5, v4, [I

    aput p4, v5, v3

    invoke-virtual {p0, p2, v5}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 4204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 4206
    .local v5, "callingId":J
    :try_start_80
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_88

    .line 4208
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4209
    nop

    .line 4211
    return v4

    .line 4208
    :catchall_88
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4209
    throw v3

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_67
        :pswitch_62
    .end packed-switch
.end method

.method private setEnabledSettings(Ljava/util/List;ILjava/lang/String;)V
    .registers 28
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$ComponentEnabledSetting;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3866
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 3868
    .local v11, "callingUid":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v12

    .line 3869
    .local v12, "preLockSnapshot":Lcom/android/server/pm/Computer;
    const-string/jumbo v6, "set enabled"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, v12

    move v2, v11

    move/from16 v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3872
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    .line 3873
    .local v13, "targetSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    const/4 v7, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-ge v0, v13, :cond_56

    .line 3874
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v1

    .line 3875
    .local v1, "newState":I
    if-eqz v1, :cond_53

    if-eq v1, v15, :cond_53

    if-eq v1, v7, :cond_53

    if-eq v1, v14, :cond_53

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3a

    goto :goto_53

    .line 3880
    :cond_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid new component state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3873
    .end local v1    # "newState":I
    :cond_53
    :goto_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 3883
    .end local v0    # "i":I
    :cond_56
    if-le v13, v15, :cond_10f

    .line 3884
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3885
    .local v0, "checkDuplicatedPackage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 3886
    .local v1, "checkDuplicatedComponent":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 3887
    .local v2, "checkConflictFlag":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_68
    if-ge v3, v13, :cond_10f

    .line 3888
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 3889
    .local v4, "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3890
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 3891
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 3892
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c2

    .line 3896
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3900
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 3901
    .local v16, "enabledFlags":Ljava/lang/Integer;
    if-nez v16, :cond_9b

    .line 3902
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a8

    .line 3903
    :cond_9b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/2addr v7, v15

    .line 3904
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v17

    and-int/lit8 v14, v17, 0x1

    if-ne v7, v14, :cond_a9

    .line 3908
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v16    # "enabledFlags":Ljava/lang/Integer;
    :goto_a8
    goto :goto_ea

    .line 3905
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    .restart local v16    # "enabledFlags":Ljava/lang/Integer;
    :cond_a9
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "A conflict of the DONT_KILL_APP flag between components in the package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3893
    .end local v16    # "enabledFlags":Ljava/lang/Integer;
    :cond_c2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The component "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is duplicated"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3909
    .end local v6    # "componentName":Landroid/content/ComponentName;
    :cond_e1
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f0

    .line 3913
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3887
    .end local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_ea
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x2

    const/4 v14, 0x3

    goto/16 :goto_68

    .line 3910
    .restart local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_f0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The package "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, " is duplicated"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3918
    .end local v0    # "checkDuplicatedPackage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "checkDuplicatedComponent":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v2    # "checkConflictFlag":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "i":I
    .end local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_10f
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11b

    move v0, v15

    goto :goto_11c

    :cond_11b
    const/4 v0, 0x0

    :goto_11c
    move v14, v0

    .line 3920
    .local v14, "allowedByPermission":Z
    new-array v7, v13, [Z

    .line 3921
    .local v7, "updateAllowed":[Z
    invoke-static {v7, v15}, Ljava/util/Arrays;->fill([ZZ)V

    .line 3923
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v13}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v6, v0

    .line 3925
    .local v6, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    iget-object v2, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 3926
    :try_start_12b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0
    :try_end_12f
    .catchall {:try_start_12b .. :try_end_12f} :catchall_616

    .line 3928
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_130
    if-ge v3, v13, :cond_2eb

    .line 3929
    :try_start_132
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 3930
    .restart local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3931
    .restart local v5    # "packageName":Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_148

    .line 3933
    move-object/from16 v20, v0

    move-object/from16 v22, v12

    goto/16 :goto_2d6

    .line 3935
    :cond_148
    nop

    .line 3936
    invoke-interface {v0, v11}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 3935
    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 3937
    .local v1, "isCallerTargetApp":Z
    iget-object v15, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v15, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v15
    :try_end_157
    .catchall {:try_start_132 .. :try_end_157} :catchall_2e1

    .line 3939
    .local v15, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_240

    .line 3941
    if-eqz v14, :cond_1de

    .line 3942
    :try_start_15b
    invoke-interface {v0, v15, v11, v10}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v20

    if-eqz v20, :cond_169

    move-object/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v22, v12

    goto/16 :goto_1e4

    .line 3950
    :cond_169
    move-object/from16 v20, v0

    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .local v20, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, v10, v5}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v0
    :try_end_171
    .catchall {:try_start_15b .. :try_end_171} :catchall_1d9

    if-nez v0, :cond_1b9

    .line 3956
    :try_start_173
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v0

    if-nez v0, :cond_1ab

    .line 3957
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    .line 3958
    move/from16 v21, v1

    .end local v1    # "isCallerTargetApp":Z
    .local v21, "isCallerTargetApp":Z
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/pm/PackageManagerServiceStub;->canBeDisabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 3960
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    .line 3961
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/pm/PackageManagerServiceStub;->canCarrierAppBeDisabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19b

    move-object/from16 v22, v12

    goto/16 :goto_246

    .line 3962
    :cond_19b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot disable carrier core packages."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "updateAllowed":[Z
    .end local v11    # "callingUid":I
    .end local v12    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .end local v13    # "targetSize":I
    .end local v14    # "allowedByPermission":Z
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local p2    # "userId":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v0

    .line 3959
    .restart local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v7    # "updateAllowed":[Z
    .restart local v11    # "callingUid":I
    .restart local v12    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v13    # "targetSize":I
    .restart local v14    # "allowedByPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .restart local p2    # "userId":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_1a3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot disable miui core packages."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "updateAllowed":[Z
    .end local v11    # "callingUid":I
    .end local v12    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .end local v13    # "targetSize":I
    .end local v14    # "allowedByPermission":Z
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local p2    # "userId":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v0
    :try_end_1ab
    .catchall {:try_start_173 .. :try_end_1ab} :catchall_1b1

    .line 3956
    .end local v21    # "isCallerTargetApp":Z
    .restart local v1    # "isCallerTargetApp":Z
    .restart local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v7    # "updateAllowed":[Z
    .restart local v11    # "callingUid":I
    .restart local v12    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v13    # "targetSize":I
    .restart local v14    # "allowedByPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .restart local p2    # "userId":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_1ab
    move/from16 v21, v1

    .end local v1    # "isCallerTargetApp":Z
    .restart local v21    # "isCallerTargetApp":Z
    move-object/from16 v22, v12

    goto/16 :goto_246

    .line 4024
    .end local v3    # "i":I
    .end local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v15    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v20    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v21    # "isCallerTargetApp":Z
    :catchall_1b1
    move-exception v0

    move-object v9, v6

    move-object/from16 v18, v7

    move-object/from16 v22, v12

    goto/16 :goto_61c

    .line 3951
    .restart local v1    # "isCallerTargetApp":Z
    .restart local v3    # "i":I
    .restart local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v15    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v20    # "snapshot":Lcom/android/server/pm/Computer;
    :cond_1b9
    move/from16 v21, v1

    .end local v1    # "isCallerTargetApp":Z
    .restart local v21    # "isCallerTargetApp":Z
    :try_start_1bb
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1c2
    .catchall {:try_start_1bb .. :try_end_1c2} :catchall_1d9

    move-object/from16 v22, v12

    .end local v12    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .local v22, "preLockSnapshot":Lcom/android/server/pm/Computer;
    :try_start_1c4
    const-string v12, "Cannot disable a protected package: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "updateAllowed":[Z
    .end local v11    # "callingUid":I
    .end local v13    # "targetSize":I
    .end local v14    # "allowedByPermission":Z
    .end local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local p2    # "userId":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v0
    :try_end_1d6
    .catchall {:try_start_1c4 .. :try_end_1d6} :catchall_1d6

    .line 4024
    .end local v3    # "i":I
    .end local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v15    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v20    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v21    # "isCallerTargetApp":Z
    .restart local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v7    # "updateAllowed":[Z
    .restart local v11    # "callingUid":I
    .restart local v13    # "targetSize":I
    .restart local v14    # "allowedByPermission":Z
    .restart local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .restart local p2    # "userId":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_1d6
    move-exception v0

    goto/16 :goto_387

    .end local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v12    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    :catchall_1d9
    move-exception v0

    move-object/from16 v22, v12

    goto/16 :goto_2e6

    .line 3941
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v1    # "isCallerTargetApp":Z
    .restart local v3    # "i":I
    .restart local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v15    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_1de
    move-object/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v22, v12

    .line 3943
    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v1    # "isCallerTargetApp":Z
    .end local v12    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v20    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v21    # "isCallerTargetApp":Z
    .restart local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    :goto_1e4
    :try_start_1e4
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Attempt to change component state; pid="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3944
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", uid="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3946
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v12

    if-nez v12, :cond_21d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", package="

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_234

    .line 3947
    :cond_21d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ", component="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_234
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "updateAllowed":[Z
    .end local v11    # "callingUid":I
    .end local v13    # "targetSize":I
    .end local v14    # "allowedByPermission":Z
    .end local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local p2    # "userId":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v0

    .line 3939
    .end local v20    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v21    # "isCallerTargetApp":Z
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v1    # "isCallerTargetApp":Z
    .restart local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v7    # "updateAllowed":[Z
    .restart local v11    # "callingUid":I
    .restart local v12    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v13    # "targetSize":I
    .restart local v14    # "allowedByPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .restart local p2    # "userId":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_240
    move-object/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v22, v12

    .line 3967
    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v1    # "isCallerTargetApp":Z
    .end local v12    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v20    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v21    # "isCallerTargetApp":Z
    .restart local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    :goto_246
    if-nez v15, :cond_27f

    .line 3968
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v1

    if-eqz v1, :cond_268

    .line 3969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown component: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_27b

    .line 3970
    :cond_268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown package: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_27b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "updateAllowed":[Z
    .end local v11    # "callingUid":I
    .end local v13    # "targetSize":I
    .end local v14    # "allowedByPermission":Z
    .end local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local p2    # "userId":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v0

    .line 3972
    .restart local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v7    # "updateAllowed":[Z
    .restart local v11    # "callingUid":I
    .restart local v13    # "targetSize":I
    .restart local v14    # "allowedByPermission":Z
    .restart local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .restart local p2    # "userId":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_27f
    const/16 v0, 0x7d0

    if-ne v11, v0, :cond_2d3

    .line 3973
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2d3

    .line 3976
    invoke-virtual {v15, v10}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    .line 3977
    .local v0, "oldState":I
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v1

    .line 3978
    .local v1, "newState":I
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v8

    if-nez v8, :cond_2aa

    const/4 v8, 0x3

    if-eq v0, v8, :cond_2a1

    if-eqz v0, :cond_2a1

    const/4 v8, 0x1

    if-ne v0, v8, :cond_2aa

    :cond_2a1
    const/4 v8, 0x3

    if-eq v1, v8, :cond_2a9

    if-eqz v1, :cond_2a9

    const/4 v8, 0x1

    if-ne v1, v8, :cond_2aa

    :cond_2a9
    goto :goto_2d3

    .line 3989
    :cond_2aa
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v0

    .end local v0    # "oldState":I
    .local v23, "oldState":I
    const-string v0, "Shell cannot change component state for "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3991
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " to "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "updateAllowed":[Z
    .end local v11    # "callingUid":I
    .end local v13    # "targetSize":I
    .end local v14    # "allowedByPermission":Z
    .end local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local p2    # "userId":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v8

    .line 3994
    .end local v1    # "newState":I
    .end local v23    # "oldState":I
    .restart local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v7    # "updateAllowed":[Z
    .restart local v11    # "callingUid":I
    .restart local v13    # "targetSize":I
    .restart local v14    # "allowedByPermission":Z
    .restart local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .restart local p2    # "userId":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_2d3
    :goto_2d3
    invoke-interface {v6, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3928
    .end local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v15    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v21    # "isCallerTargetApp":Z
    :goto_2d6
    add-int/lit8 v3, v3, 0x1

    const/4 v15, 0x1

    move-object/from16 v8, p0

    move-object/from16 v0, v20

    move-object/from16 v12, v22

    goto/16 :goto_130

    .line 4024
    .end local v3    # "i":I
    .end local v20    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v12    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    :catchall_2e1
    move-exception v0

    move-object/from16 v22, v12

    move-object/from16 v8, p0

    :goto_2e6
    move-object v9, v6

    move-object/from16 v18, v7

    .end local v12    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    goto/16 :goto_61c

    .line 3928
    .end local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    .restart local v3    # "i":I
    .restart local v12    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    :cond_2eb
    move-object/from16 v20, v0

    move-object/from16 v22, v12

    .line 3997
    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v3    # "i":I
    .end local v12    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v20    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f0
    if-ge v0, v13, :cond_38c

    .line 3998
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4000
    .local v1, "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v3

    if-nez v3, :cond_300

    goto/16 :goto_380

    .line 4004
    :cond_300
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4005
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 4006
    .local v4, "className":Ljava/lang/String;
    if-nez v14, :cond_31b

    sget-object v5, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 4007
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_313

    goto :goto_31b

    .line 4008
    :cond_313
    new-instance v5, Ljava/lang/SecurityException;

    const-string v8, "Cannot disable a system-generated component"

    invoke-direct {v5, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "updateAllowed":[Z
    .end local v11    # "callingUid":I
    .end local v13    # "targetSize":I
    .end local v14    # "allowedByPermission":Z
    .end local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local p2    # "userId":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v5

    .line 4011
    .restart local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v7    # "updateAllowed":[Z
    .restart local v11    # "callingUid":I
    .restart local v13    # "targetSize":I
    .restart local v14    # "allowedByPermission":Z
    .restart local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .restart local p2    # "userId":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_31b
    :goto_31b
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 4012
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v5, :cond_32d

    invoke-static {v5, v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_380

    .line 4013
    :cond_32d
    if-eqz v5, :cond_35b

    .line 4014
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v8

    const/16 v12, 0x10

    if-ge v8, v12, :cond_338

    goto :goto_35b

    .line 4015
    :cond_338
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Component class "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " does not exist in "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "updateAllowed":[Z
    .end local v11    # "callingUid":I
    .end local v13    # "targetSize":I
    .end local v14    # "allowedByPermission":Z
    .end local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local p2    # "userId":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v8

    .line 4018
    .restart local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v7    # "updateAllowed":[Z
    .restart local v11    # "callingUid":I
    .restart local v13    # "targetSize":I
    .restart local v14    # "allowedByPermission":Z
    .restart local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .restart local p2    # "userId":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_35b
    :goto_35b
    const-string v8, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed setComponentEnabledSetting: component class "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " does not exist in "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4020
    const/4 v8, 0x0

    aput-boolean v8, v7, v0
    :try_end_380
    .catchall {:try_start_1e4 .. :try_end_380} :catchall_384

    .line 3997
    .end local v1    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_380
    :goto_380
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2f0

    .line 4024
    .end local v0    # "i":I
    .end local v20    # "snapshot":Lcom/android/server/pm/Computer;
    :catchall_384
    move-exception v0

    move-object/from16 v8, p0

    :goto_387
    move-object v9, v6

    move-object/from16 v18, v7

    goto/16 :goto_61c

    :cond_38c
    :try_start_38c
    monitor-exit v2
    :try_end_38d
    .catchall {:try_start_38c .. :try_end_38d} :catchall_60f

    .line 4027
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_38f
    if-ge v1, v13, :cond_41b

    .line 4028
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4030
    .local v2, "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v0

    if-eqz v0, :cond_3a3

    const/4 v0, 0x0

    move-object/from16 v8, p0

    goto/16 :goto_414

    .line 4032
    :cond_3a3
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4033
    .local v3, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v4

    .line 4034
    .local v4, "newState":I
    move-object/from16 v8, p0

    iget-object v5, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v5

    .line 4035
    :try_start_3b7
    invoke-virtual {v3, v10}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    if-ne v0, v4, :cond_3c3

    .line 4037
    const/4 v0, 0x0

    aput-boolean v0, v7, v1

    .line 4038
    monitor-exit v5

    const/4 v0, 0x0

    goto :goto_414

    .line 4040
    :cond_3c3
    monitor-exit v5
    :try_end_3c4
    .catchall {:try_start_3b7 .. :try_end_3c4} :catchall_418

    .line 4044
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 4045
    .local v0, "deletedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_3d8

    .line 4046
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStub()Z

    move-result v5

    if-eqz v5, :cond_3d8

    .line 4047
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_3d8

    const/4 v5, 0x1

    goto :goto_3d9

    :cond_3d8
    const/4 v5, 0x0

    .line 4048
    .local v5, "isSystemStub":Z
    :goto_3d9
    if-eqz v5, :cond_411

    if-eqz v4, :cond_3e3

    const/4 v12, 0x1

    if-ne v4, v12, :cond_3e1

    goto :goto_3e3

    :cond_3e1
    const/4 v0, 0x0

    goto :goto_414

    .line 4051
    :cond_3e3
    :goto_3e3
    iget-object v12, v8, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v12, v0, v3}, Lcom/android/server/pm/InstallPackageHelper;->enableCompressedPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z

    move-result v12

    if-nez v12, :cond_40d

    .line 4052
    const-string v12, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    .end local v0    # "deletedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v20, "deletedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const-string v0, "Failed setApplicationEnabledSetting: failed to enable commpressed package "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4053
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4052
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    const/4 v0, 0x0

    aput-boolean v0, v7, v1

    goto :goto_414

    .line 4051
    .end local v20    # "deletedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "deletedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_40d
    move-object/from16 v20, v0

    const/4 v0, 0x0

    .end local v0    # "deletedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v20    # "deletedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_414

    .line 4048
    .end local v20    # "deletedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v0    # "deletedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_411
    move-object/from16 v20, v0

    const/4 v0, 0x0

    .line 4027
    .end local v0    # "deletedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "newState":I
    .end local v5    # "isSystemStub":Z
    :goto_414
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_38f

    .line 4040
    .restart local v2    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "newState":I
    :catchall_418
    move-exception v0

    :try_start_419
    monitor-exit v5
    :try_end_41a
    .catchall {:try_start_419 .. :try_end_41a} :catchall_418

    throw v0

    .line 4027
    .end local v2    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "newState":I
    :cond_41b
    move-object/from16 v8, p0

    .line 4060
    .end local v1    # "i":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v13}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v12, v0

    .line 4061
    .local v12, "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v15, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v15

    .line 4062
    :try_start_426
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2
    :try_end_42a
    .catchall {:try_start_426 .. :try_end_42a} :catchall_607

    .line 4063
    .local v2, "computer":Lcom/android/server/pm/Computer;
    const/4 v0, 0x0

    .line 4064
    .local v0, "scheduleBroadcastMessage":Z
    const/4 v1, 0x0

    .line 4065
    .local v1, "isSynchronous":Z
    const/4 v3, 0x0

    .line 4067
    .local v3, "anyChanged":Z
    const/4 v4, 0x0

    move/from16 v16, v1

    move/from16 v20, v3

    move v5, v4

    .end local v1    # "isSynchronous":Z
    .end local v3    # "anyChanged":Z
    .local v5, "i":I
    .local v16, "isSynchronous":Z
    .local v20, "anyChanged":Z
    :goto_433
    if-ge v5, v13, :cond_57a

    .line 4068
    :try_start_435
    aget-boolean v1, v7, v5

    if-nez v1, :cond_440

    .line 4069
    move/from16 v19, v5

    move-object v9, v6

    move-object/from16 v23, v7

    goto/16 :goto_565

    .line 4072
    :cond_440
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4073
    .local v4, "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 4075
    .local v3, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v5

    .end local v5    # "i":I
    .local v21, "i":I
    const-string/jumbo v5, "set app"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v5
    :try_end_45e
    .catchall {:try_start_435 .. :try_end_45e} :catchall_574

    if-eqz v5, :cond_486

    .line 4076
    :try_start_460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_465
    .catchall {:try_start_460 .. :try_end_465} :catchall_480

    move-object/from16 v23, v7

    .end local v7    # "updateAllowed":[Z
    .local v23, "updateAllowed":[Z
    :try_start_467
    const-string v7, " component="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_479
    .catchall {:try_start_467 .. :try_end_479} :catchall_47a

    goto :goto_49b

    .line 4135
    .end local v0    # "scheduleBroadcastMessage":Z
    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v16    # "isSynchronous":Z
    .end local v20    # "anyChanged":Z
    .end local v21    # "i":I
    :catchall_47a
    move-exception v0

    move-object v9, v6

    move-object/from16 v18, v23

    goto/16 :goto_60b

    .end local v23    # "updateAllowed":[Z
    .restart local v7    # "updateAllowed":[Z
    :catchall_480
    move-exception v0

    move-object v9, v6

    move-object/from16 v18, v7

    .end local v7    # "updateAllowed":[Z
    .restart local v23    # "updateAllowed":[Z
    goto/16 :goto_60b

    .line 4076
    .end local v23    # "updateAllowed":[Z
    .restart local v0    # "scheduleBroadcastMessage":Z
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .restart local v7    # "updateAllowed":[Z
    .restart local v16    # "isSynchronous":Z
    .restart local v20    # "anyChanged":Z
    .restart local v21    # "i":I
    :cond_486
    move-object/from16 v23, v7

    .end local v7    # "updateAllowed":[Z
    .restart local v23    # "updateAllowed":[Z
    :try_start_488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " package: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_49b
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " enabled state: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4077
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " from "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v7, p3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",uid="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",pid="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4079
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 4080
    .local v5, "msg":Ljava/lang/String;
    const-string v1, "PackageManager"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v1
    :try_end_4df
    .catchall {:try_start_488 .. :try_end_4df} :catchall_56e

    if-nez v1, :cond_4f8

    :try_start_4e1
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_4f8

    .line 4082
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v1

    const/4 v7, 0x3

    if-ne v1, v7, :cond_4f9

    .line 4083
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_4f7
    .catchall {:try_start_4e1 .. :try_end_4f7} :catchall_47a

    goto :goto_4f9

    .line 4081
    :cond_4f8
    const/4 v7, 0x3

    .line 4086
    :cond_4f9
    :goto_4f9
    :try_start_4f9
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/server/pm/PackageSetting;
    :try_end_501
    .catchall {:try_start_4f9 .. :try_end_501} :catchall_56e

    move-object/from16 v1, p0

    move-object v7, v3

    .end local v3    # "packageName":Ljava/lang/String;
    .local v7, "packageName":Ljava/lang/String;
    move-object/from16 v3, v19

    move/from16 v19, v21

    move-object/from16 v21, v5

    .end local v5    # "msg":Ljava/lang/String;
    .local v19, "i":I
    .local v21, "msg":Ljava/lang/String;
    move/from16 v5, p2

    move-object v9, v6

    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .local v9, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    move-object/from16 v6, p3

    :try_start_50f
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->setEnabledSettingInternalLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageManager$ComponentEnabledSetting;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_516

    .line 4088
    goto :goto_565

    .line 4090
    :cond_516
    const/4 v1, 0x1

    .line 4092
    .end local v20    # "anyChanged":Z
    .local v1, "anyChanged":Z
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v3

    const/4 v5, 0x2

    and-int/2addr v3, v5

    if-eqz v3, :cond_521

    .line 4093
    const/16 v16, 0x1

    .line 4096
    :cond_521
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v3

    if-eqz v3, :cond_52c

    .line 4097
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_52d

    :cond_52c
    move-object v3, v7

    .line 4098
    .local v3, "componentName":Ljava/lang/String;
    :goto_52d
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v6

    const/16 v17, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_55d

    .line 4099
    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 4100
    .local v6, "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_545

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    goto :goto_547

    :cond_545
    move-object/from16 v18, v6

    :goto_547
    move-object/from16 v6, v18

    .line 4101
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_552

    .line 4102
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4104
    :cond_552
    invoke-virtual {v12, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4107
    iget-object v5, v8, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v5, v10, v7}, Lcom/android/server/pm/PendingPackageBroadcasts;->remove(ILjava/lang/String;)V

    .line 4108
    .end local v6    # "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v20, v1

    goto :goto_565

    .line 4109
    :cond_55d
    iget-object v5, v8, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v5, v10, v7, v3}, Lcom/android/server/pm/PendingPackageBroadcasts;->addComponent(ILjava/lang/String;Ljava/lang/String;)V

    .line 4110
    const/4 v0, 0x1

    move/from16 v20, v1

    .line 4067
    .end local v1    # "anyChanged":Z
    .end local v3    # "componentName":Ljava/lang/String;
    .end local v4    # "setting":Landroid/content/pm/PackageManager$ComponentEnabledSetting;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v21    # "msg":Ljava/lang/String;
    .restart local v20    # "anyChanged":Z
    :goto_565
    add-int/lit8 v5, v19, 0x1

    move-object v6, v9

    move-object/from16 v7, v23

    move-object/from16 v9, p1

    .end local v19    # "i":I
    .local v5, "i":I
    goto/16 :goto_433

    .line 4135
    .end local v0    # "scheduleBroadcastMessage":Z
    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v5    # "i":I
    .end local v9    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v16    # "isSynchronous":Z
    .end local v20    # "anyChanged":Z
    .local v6, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :catchall_56e
    move-exception v0

    move-object v9, v6

    move-object/from16 v18, v23

    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v9    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    goto/16 :goto_60b

    .end local v9    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v23    # "updateAllowed":[Z
    .restart local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .local v7, "updateAllowed":[Z
    :catchall_574
    move-exception v0

    move-object v9, v6

    move-object/from16 v18, v7

    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "updateAllowed":[Z
    .restart local v9    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v23    # "updateAllowed":[Z
    goto/16 :goto_60b

    .line 4067
    .end local v9    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v23    # "updateAllowed":[Z
    .restart local v0    # "scheduleBroadcastMessage":Z
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    .restart local v5    # "i":I
    .restart local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v7    # "updateAllowed":[Z
    .restart local v16    # "isSynchronous":Z
    .restart local v20    # "anyChanged":Z
    :cond_57a
    move/from16 v19, v5

    move-object v9, v6

    move-object/from16 v23, v7

    .line 4113
    .end local v5    # "i":I
    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "updateAllowed":[Z
    .restart local v9    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v23    # "updateAllowed":[Z
    if-nez v20, :cond_588

    .line 4115
    monitor-exit v15

    return-void

    .line 4135
    .end local v0    # "scheduleBroadcastMessage":Z
    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v16    # "isSynchronous":Z
    .end local v20    # "anyChanged":Z
    :catchall_583
    move-exception v0

    move-object/from16 v18, v23

    goto/16 :goto_60b

    .line 4118
    .restart local v0    # "scheduleBroadcastMessage":Z
    .restart local v2    # "computer":Lcom/android/server/pm/Computer;
    .restart local v16    # "isSynchronous":Z
    .restart local v20    # "anyChanged":Z
    :cond_588
    if-eqz v16, :cond_58e

    .line 4119
    invoke-direct {v8, v10}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V
    :try_end_58d
    .catchall {:try_start_50f .. :try_end_58d} :catchall_583

    goto :goto_591

    .line 4121
    :cond_58e
    :try_start_58e
    invoke-virtual {v8, v10}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V
    :try_end_591
    .catchall {:try_start_58e .. :try_end_591} :catchall_603

    .line 4123
    :goto_591
    if-eqz v0, :cond_5b2

    .line 4124
    :try_start_593
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5b2

    .line 4129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v8, Lcom/android/server/pm/PackageManagerService;->mServiceStartWithDelay:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_5a9

    .line 4130
    const-wide/16 v3, 0x3e8

    goto :goto_5ab

    .line 4131
    :cond_5a9
    const-wide/16 v3, 0x2710

    :goto_5ab
    nop

    .line 4132
    .local v3, "broadcastDelay":J
    iget-object v1, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_5b2
    .catchall {:try_start_593 .. :try_end_5b2} :catchall_583

    .line 4135
    .end local v0    # "scheduleBroadcastMessage":Z
    .end local v2    # "computer":Lcom/android/server/pm/Computer;
    .end local v3    # "broadcastDelay":J
    .end local v16    # "isSynchronous":Z
    .end local v20    # "anyChanged":Z
    :cond_5b2
    :try_start_5b2
    monitor-exit v15
    :try_end_5b3
    .catchall {:try_start_5b2 .. :try_end_5b3} :catchall_603

    .line 4137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 4139
    .local v15, "callingId":J
    :try_start_5b7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 4140
    .local v2, "newSnapshot":Lcom/android/server/pm/Computer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5bc
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f5

    .line 4141
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v7, v1

    .line 4142
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/ArrayList;

    .line 4143
    .local v5, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 4144
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    .line 4143
    invoke-static {v10, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6
    :try_end_5df
    .catchall {:try_start_5b7 .. :try_end_5df} :catchall_5fc

    .line 4145
    .local v6, "packageUid":I
    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v3, v7

    move-object/from16 v19, v7

    move-object/from16 v18, v23

    .end local v7    # "packageName":Ljava/lang/String;
    .end local v23    # "updateAllowed":[Z
    .local v18, "updateAllowed":[Z
    .local v19, "packageName":Ljava/lang/String;
    move-object/from16 v7, v17

    :try_start_5eb
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V
    :try_end_5ee
    .catchall {:try_start_5eb .. :try_end_5ee} :catchall_5f3

    .line 4140
    .end local v5    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "packageUid":I
    .end local v19    # "packageName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v23, v18

    goto :goto_5bc

    .line 4149
    .end local v0    # "i":I
    .end local v2    # "newSnapshot":Lcom/android/server/pm/Computer;
    :catchall_5f3
    move-exception v0

    goto :goto_5ff

    .line 4140
    .end local v18    # "updateAllowed":[Z
    .restart local v0    # "i":I
    .restart local v2    # "newSnapshot":Lcom/android/server/pm/Computer;
    .restart local v23    # "updateAllowed":[Z
    :cond_5f5
    move-object/from16 v18, v23

    .line 4149
    .end local v0    # "i":I
    .end local v2    # "newSnapshot":Lcom/android/server/pm/Computer;
    .end local v23    # "updateAllowed":[Z
    .restart local v18    # "updateAllowed":[Z
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4150
    nop

    .line 4151
    return-void

    .line 4149
    .end local v18    # "updateAllowed":[Z
    .restart local v23    # "updateAllowed":[Z
    :catchall_5fc
    move-exception v0

    move-object/from16 v18, v23

    .end local v23    # "updateAllowed":[Z
    .restart local v18    # "updateAllowed":[Z
    :goto_5ff
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4150
    throw v0

    .line 4135
    .end local v15    # "callingId":J
    .end local v18    # "updateAllowed":[Z
    .restart local v23    # "updateAllowed":[Z
    :catchall_603
    move-exception v0

    move-object/from16 v18, v23

    .end local v23    # "updateAllowed":[Z
    .restart local v18    # "updateAllowed":[Z
    goto :goto_60b

    .end local v9    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v18    # "updateAllowed":[Z
    .local v6, "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .local v7, "updateAllowed":[Z
    :catchall_607
    move-exception v0

    move-object v9, v6

    move-object/from16 v18, v7

    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "updateAllowed":[Z
    .restart local v9    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v18    # "updateAllowed":[Z
    :goto_60b
    :try_start_60b
    monitor-exit v15
    :try_end_60c
    .catchall {:try_start_60b .. :try_end_60c} :catchall_60d

    throw v0

    :catchall_60d
    move-exception v0

    goto :goto_60b

    .line 4024
    .end local v9    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v12    # "sendNowBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v18    # "updateAllowed":[Z
    .restart local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v7    # "updateAllowed":[Z
    :catchall_60f
    move-exception v0

    move-object/from16 v8, p0

    move-object v9, v6

    move-object/from16 v18, v7

    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "updateAllowed":[Z
    .restart local v9    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v18    # "updateAllowed":[Z
    goto :goto_61c

    .end local v9    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v18    # "updateAllowed":[Z
    .end local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v7    # "updateAllowed":[Z
    .local v12, "preLockSnapshot":Lcom/android/server/pm/Computer;
    :catchall_616
    move-exception v0

    move-object v9, v6

    move-object/from16 v18, v7

    move-object/from16 v22, v12

    .end local v6    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v7    # "updateAllowed":[Z
    .end local v12    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    .restart local v9    # "pkgSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .restart local v18    # "updateAllowed":[Z
    .restart local v22    # "preLockSnapshot":Lcom/android/server/pm/Computer;
    :goto_61c
    :try_start_61c
    monitor-exit v2
    :try_end_61d
    .catchall {:try_start_61c .. :try_end_61d} :catchall_61e

    throw v0

    :catchall_61e
    move-exception v0

    goto :goto_61c
.end method

.method private setUpInstantAppInstallerActivityLP(Landroid/content/pm/ActivityInfo;)V
    .registers 5
    .param p1, "installerActivity"    # Landroid/content/pm/ActivityInfo;

    .line 3138
    const-string v0, "PackageManager"

    if-nez p1, :cond_14

    .line 3139
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_d

    .line 3140
    const-string v1, "Clear ephemeral installer activity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 3143
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 3144
    return-void

    .line 3147
    :cond_14
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_32

    .line 3148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set ephemeral installer activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3149
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3148
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    :cond_32
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 3153
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v0, v0, 0x120

    iput v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3155
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3156
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 3157
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3158
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput v1, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 3159
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput v1, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 3160
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput-boolean v1, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 3161
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    const v1, 0x588000

    iput v1, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 3163
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 3164
    return-void
.end method

.method private static toStaticSharedLibraryPackageName(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "libraryVersion"    # J

    .line 2931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addAllPackageProperties(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 7326
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageProperty;->addAllProperties(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 7327
    return-void
.end method

.method public addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V
    .registers 15
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "intentFilter"    # Lcom/android/server/pm/WatchedIntentFilter;
    .param p3, "ownerPackage"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "targetUserId"    # I
    .param p6, "flags"    # I

    .line 3609
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3611
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3612
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 3613
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    const-string/jumbo v2, "no_debugging_features"

    invoke-static {v1, v2, v0, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 3615
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_29

    .line 3616
    const-string v1, "PackageManager"

    const-string v2, "Cannot set a crossProfile intent filter with no filter actions"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    return-void

    .line 3619
    :cond_29
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 3620
    :try_start_2c
    new-instance v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v2, p2, p3, p5, p6}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;II)V

    .line 3622
    .local v2, "newFilter":Lcom/android/server/pm/CrossProfileIntentFilter;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3623
    invoke-virtual {v3, p4}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v3

    .line 3624
    .local v3, "resolver":Lcom/android/server/pm/CrossProfileIntentResolver;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/CrossProfileIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3626
    .local v4, "existing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    if-eqz v4, :cond_55

    .line 3627
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3628
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_42
    if-ge v6, v5, :cond_55

    .line 3629
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {v2, v7}, Lcom/android/server/pm/CrossProfileIntentFilter;->equalsIgnoreFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 3630
    monitor-exit v1

    return-void

    .line 3628
    :cond_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 3634
    .end local v5    # "size":I
    .end local v6    # "i":I
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3635
    .end local v2    # "newFilter":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local v3    # "resolver":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v4    # "existing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_2c .. :try_end_5d} :catchall_61

    .line 3636
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 3637
    return-void

    .line 3635
    :catchall_61
    move-exception v2

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v2
.end method

.method addInstallerPackageName(Lcom/android/server/pm/InstallSource;)V
    .registers 4
    .param p1, "installSource"    # Lcom/android/server/pm/InstallSource;

    .line 7599
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 7600
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 7601
    monitor-exit v0

    .line 7602
    return-void

    .line 7601
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method addInstrumentation(Landroid/content/ComponentName;Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "instrumentation"    # Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    .line 7330
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7331
    return-void
.end method

.method canHaveOatDir(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .registers 6
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 7118
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 7119
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_1e

    .line 7122
    :cond_d
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 7123
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v2

    .line 7122
    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->canHaveOatDir(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z

    move-result v1

    return v1

    .line 7120
    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    return v1
.end method

.method checkPackageStartable(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .registers 11
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4681
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4682
    .local v6, "callingUid":I
    invoke-interface {p1, v6}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a4

    .line 4685
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 4688
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "checkPackageStartable"

    move-object v0, p1

    move v1, v6

    move v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4690
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    invoke-interface {p1, v0, p2, v6, p3}, Lcom/android/server/pm/Computer;->getPackageStartability(ZLjava/lang/String;II)I

    move-result v0

    const-string v1, "Package "

    packed-switch v0, :pswitch_data_ac

    .line 4702
    return-void

    .line 4698
    :pswitch_28
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not encryption aware!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4696
    :pswitch_45
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is currently frozen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4694
    :pswitch_62
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a system app!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4692
    :pswitch_7f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4686
    :cond_9c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "User doesn\'t exist"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4683
    :cond_a4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_62
        :pswitch_45
        :pswitch_28
    .end packed-switch
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2881
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, p2, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V
    .registers 7
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "userId"    # I

    .line 4481
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 4482
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_38

    .line 4483
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4484
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_35

    .line 4485
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserNeedsBadgingCache;->delete(I)V

    .line 4486
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onUserRemoved(I)V

    .line 4487
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/Settings;->removeUserLPw(I)V

    .line 4488
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PendingPackageBroadcasts;->remove(I)V

    .line 4489
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/DeletePackageHelper;->removeUnusedPackagesLPw(Lcom/android/server/pm/UserManagerService;I)V

    .line 4490
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/AppsFilterImpl;->onUserDeleted(I)V

    .line 4491
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_38

    .line 4492
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->onUserRemoved(I)V

    .line 4493
    return-void

    .line 4484
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "userManager":Lcom/android/server/pm/UserManagerService;
    .end local p2    # "userId":I
    :try_start_37
    throw v2

    .line 4491
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "userManager":Lcom/android/server/pm/UserManagerService;
    .restart local p2    # "userId":I
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "outUserChanged"    # Landroid/util/SparseBooleanArray;
    .param p3, "userId"    # I

    .line 3589
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/Settings;->clearPackagePreferredActivities(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 3590
    return-void
.end method

.method public commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .registers 8
    .param p1, "initialState"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/mutate/PackageStateWrite;",
            ">;)",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;"
        }
    .end annotation

    .line 7564
    .local p3, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/pkg/mutate/PackageStateWrite;>;"
    const/4 v0, 0x0

    .line 7565
    .local v0, "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 7568
    sget-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 7570
    :cond_b
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 7571
    if-nez v0, :cond_1d

    .line 7574
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 7575
    invoke-virtual {v3}, Lcom/android/server/pm/ChangedPackagesTracker;->getSequenceNumber()I

    move-result v3

    .line 7574
    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->generateResult(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object v2

    move-object v0, v2

    .line 7577
    :cond_1d
    sget-object v2, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    if-eq v0, v2, :cond_23

    .line 7578
    monitor-exit v1

    return-object v0

    .line 7581
    :cond_23
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v2

    .line 7582
    .local v2, "state":Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    if-nez v2, :cond_2f

    .line 7583
    sget-object v3, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SPECIFIC_PACKAGE_NULL:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    monitor-exit v1

    return-object v3

    .line 7585
    :cond_2f
    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7588
    invoke-interface {v2}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->onChanged()V

    .line 7589
    .end local v2    # "state":Lcom/android/server/pm/pkg/mutate/PackageStateWrite;
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_39

    .line 7591
    sget-object v1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object v1

    .line 7589
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .registers 6
    .param p1, "initialState"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator;",
            ">;)",
            "Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;"
        }
    .end annotation

    .line 7542
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/pkg/mutate/PackageStateMutator;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 7543
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 7544
    invoke-virtual {v2}, Lcom/android/server/pm/ChangedPackagesTracker;->getSequenceNumber()I

    move-result v2

    .line 7543
    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->generateResult(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object v1

    .line 7545
    .local v1, "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    sget-object v2, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    if-eq v1, v2, :cond_15

    .line 7546
    monitor-exit v0

    return-object v1

    .line 7549
    :cond_15
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7550
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 7551
    .end local v1    # "result":Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_21

    .line 7553
    sget-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-object v0

    .line 7551
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method createNewUser(ILjava/util/Set;[Ljava/lang/String;)V
    .registers 11
    .param p1, "userId"    # I
    .param p3, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4506
    .local p2, "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4507
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/util/Set;[Ljava/lang/String;)V

    .line 4509
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2d

    .line 4510
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 4511
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 4512
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageListLocked(I)V

    .line 4513
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/android/server/pm/AppsFilterImpl;->onUserCreated(Lcom/android/server/pm/snapshot/PackageDataSnapshot;I)V

    .line 4514
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_2a

    .line 4516
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerServiceStub;->updateSystemAppDefaultStateForUser(I)V

    .line 4518
    return-void

    .line 4514
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    .line 4509
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .registers 5
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I

    .line 3422
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/DeletePackageHelper;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    .line 3424
    return-void
.end method

.method deleteOatArtifactsOfPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)J
    .registers 6
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 7127
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 7128
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_1c

    .line 7131
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 7132
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/server/pm/dex/ArtUtils;->createArtPackageInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Lcom/android/server/pm/dex/ArtPackageInfo;

    move-result-object v2

    .line 7131
    invoke-virtual {v1, v2}, Lcom/android/server/pm/dex/DexManager;->deleteOptimizedFiles(Lcom/android/server/pm/dex/ArtPackageInfo;)J

    move-result-wide v1

    return-wide v1

    .line 7129
    :cond_1c
    :goto_1c
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    .registers 11
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I
    .param p4, "deleteFlags"    # I

    .line 3428
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V

    .line 3430
    return-void
.end method

.method deletePreloadsFileCache()V
    .registers 4

    .line 4583
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const-string v2, "deletePreloadsFileCache"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4585
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsFileCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 4586
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting preloaded file cache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4587
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 4588
    return-void
.end method

.method ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3775
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 3776
    return-object v0

    .line 3778
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3780
    .local v1, "token":J
    const-wide/32 v3, 0x200000

    const/4 v5, 0x0

    :try_start_c
    invoke-interface {p1, p2, v3, v4, v5}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_5f

    .line 3782
    const-wide/16 v3, 0x0

    .line 3783
    invoke-interface {p1, p2, v3, v4, v5}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 3784
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_37

    .line 3785
    const v4, 0x534e4554

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "145981139"

    aput-object v7, v6, v5

    const/4 v5, 0x1

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x2

    const-string v7, ""

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3788
    :cond_37
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing required system package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_4d

    .line 3789
    const-string v6, ", but found with extended search."

    goto :goto_4f

    :cond_4d
    const-string v6, "."

    :goto_4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3788
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_c .. :try_end_5a} :catchall_64

    .line 3790
    nop

    .line 3793
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3790
    return-object v0

    .line 3793
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_5f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3794
    nop

    .line 3795
    return-object p2

    .line 3793
    :catchall_64
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3794
    throw v0
.end method

.method finishPackageInstall(IZ)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "didLaunch"    # Z

    .line 4666
    const-string v0, "Only the system is allowed to finish installs"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 4669
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_21

    .line 4670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BM finishing package install for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    :cond_21
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "restore"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 4674
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 4675
    nop

    .line 4674
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4676
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4677
    return-void
.end method

.method forEachInstalledPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;I)V
    .registers 6
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 7059
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p3, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>(ILjava/util/function/Consumer;)V

    .line 7065
    .local v0, "actionWrapped":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Landroid/util/ArrayMap;Ljava/util/function/Consumer;)V

    .line 7066
    return-void
.end method

.method forEachPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .line 7036
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    nop

    .line 7037
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    .line 7038
    .local v0, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 7039
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_a
    if-ge v2, v1, :cond_22

    .line 7040
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 7041
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 7042
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7039
    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 7045
    .end local v2    # "index":I
    :cond_22
    return-void
.end method

.method forEachPackageSetting(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7023
    .local p1, "actionLocked":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 7024
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    .line 7025
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_e
    if-ge v2, v1, :cond_22

    .line 7026
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7025
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 7028
    .end local v1    # "size":I
    .end local v2    # "index":I
    :cond_22
    monitor-exit v0

    .line 7029
    return-void

    .line 7028
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    .line 7032
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Landroid/util/ArrayMap;Ljava/util/function/Consumer;)V

    .line 7033
    return-void
.end method

.method public freeAllAppCacheAboveQuota(Ljava/lang/String;)V
    .registers 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2703
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2708
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const-wide v2, 0x7fffffffffffffffL

    const/16 v4, 0x900

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_f} :catch_12
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    .line 2711
    goto :goto_13

    .line 2712
    :catchall_10
    move-exception v1

    goto :goto_15

    .line 2710
    :catch_12
    move-exception v1

    .line 2712
    :goto_13
    :try_start_13
    monitor-exit v0

    .line 2713
    return-void

    .line 2712
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_10

    throw v1
.end method

.method freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 20
    .param p1, "recommendedInstallLocation"    # I
    .param p2, "pkgLite"    # Landroid/content/pm/parsing/PackageLite;
    .param p3, "resolvedPath"    # Ljava/lang/String;
    .param p4, "mPackageAbiOverride"    # Ljava/lang/String;
    .param p5, "installFlags"    # I

    .line 2829
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    .line 2830
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v3

    .line 2832
    .local v3, "lowThreshold":J
    invoke-static/range {p3 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    .line 2834
    .local v5, "sizeBytes":J
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_61

    .line 2835
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2837
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v8, 0x0

    add-long v9, v5, v3

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V

    .line 2838
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;
    :try_end_27
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1c .. :try_end_27} :catch_4b
    .catchall {:try_start_1c .. :try_end_27} :catchall_41

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    :try_start_2f
    invoke-static {v0, v8, v9, v11, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    .line 2842
    .local v0, "pkgInfoLite":Landroid/content/pm/PackageInfoLite;
    iget v12, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v13, -0x6

    if-ne v12, v13, :cond_3b

    .line 2844
    const/4 v12, -0x1

    iput v12, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 2847
    :cond_3b
    iget v12, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I
    :try_end_3d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2f .. :try_end_3d} :catch_3f
    .catchall {:try_start_2f .. :try_end_3d} :catchall_5e

    :try_start_3d
    monitor-exit v7

    return v12

    .line 2848
    .end local v0    # "pkgInfoLite":Landroid/content/pm/PackageInfoLite;
    :catch_3f
    move-exception v0

    goto :goto_54

    .line 2851
    :catchall_41
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    goto :goto_5f

    .line 2848
    :catch_4b
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    .line 2849
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_54
    const-string v12, "PackageManager"

    const-string v13, "Failed to free cache"

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2851
    nop

    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    monitor-exit v7

    goto :goto_69

    :catchall_5e
    move-exception v0

    :goto_5f
    monitor-exit v7
    :try_end_60
    .catchall {:try_start_3d .. :try_end_60} :catchall_5e

    throw v0

    .line 2834
    :cond_61
    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    .line 2853
    :goto_69
    return p1
.end method

.method public freeStorage(Ljava/lang/String;JI)V
    .registers 25
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2722
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p2

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/storage/StorageManager;

    .line 2723
    .local v11, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v11, v2}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 2724
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-ltz v0, :cond_1e

    return-void

    .line 2726
    :cond_1e
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mEnableFreeCacheV2:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_11d

    .line 2727
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    .line 2729
    .local v13, "internalVolume":Z
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    move v0, v3

    :goto_30
    move v14, v0

    .line 2733
    .local v14, "aggressive":Z
    if-eqz v13, :cond_4a

    if-nez v14, :cond_3e

    const-string/jumbo v0, "persist.sys.preloads.file_cache_expired"

    .line 2734
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2735
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->deletePreloadsFileCache()V

    .line 2736
    invoke-virtual {v12}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-ltz v0, :cond_4a

    return-void

    .line 2740
    :cond_4a
    if-eqz v13, :cond_5c

    if-eqz v14, :cond_5c

    .line 2741
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 2742
    invoke-virtual {v12}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-ltz v0, :cond_5c

    return-void

    .line 2746
    :cond_5c
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2748
    :try_start_5f
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v3, 0x100

    invoke-virtual {v0, v2, v9, v10, v3}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_66
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_5f .. :try_end_66} :catch_6c
    .catchall {:try_start_5f .. :try_end_66} :catchall_67

    .line 2750
    goto :goto_6d

    .line 2751
    :catchall_67
    move-exception v0

    move/from16 v18, v14

    goto/16 :goto_119

    .line 2749
    :catch_6c
    move-exception v0

    .line 2751
    :goto_6d
    :try_start_6d
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_116

    .line 2752
    invoke-virtual {v12}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-ltz v0, :cond_77

    return-void

    .line 2754
    :cond_77
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v15

    .line 2756
    .local v15, "computer":Lcom/android/server/pm/Computer;
    if-eqz v13, :cond_98

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2757
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "unused_static_shared_lib_min_cache_period"

    sget-wide v5, Lcom/android/server/pm/PackageManagerService;->FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 2756
    move-object v4, v15

    move-wide/from16 v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/SharedLibrariesImpl;->pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 2760
    return-void

    .line 2767
    :cond_98
    const-wide/32 v7, 0x240c8400

    if-eqz v13, :cond_bc

    .line 2768
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2770
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "installed_instant_app_min_cache_period"

    .line 2769
    invoke-static {v0, v4, v7, v8}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v16

    .line 2768
    move-object v4, v15

    move-wide/from16 v5, p2

    move/from16 v18, v14

    move-object/from16 v19, v15

    move-wide v14, v7

    .end local v14    # "aggressive":Z
    .end local v15    # "computer":Lcom/android/server/pm/Computer;
    .local v18, "aggressive":Z
    .local v19, "computer":Lcom/android/server/pm/Computer;
    move-wide/from16 v7, v16

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstalledInstantApps(Lcom/android/server/pm/Computer;JJ)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 2774
    return-void

    .line 2767
    .end local v18    # "aggressive":Z
    .end local v19    # "computer":Lcom/android/server/pm/Computer;
    .restart local v14    # "aggressive":Z
    .restart local v15    # "computer":Lcom/android/server/pm/Computer;
    :cond_bc
    move/from16 v18, v14

    move-object/from16 v19, v15

    move-wide v14, v7

    .line 2779
    .end local v14    # "aggressive":Z
    .end local v15    # "computer":Lcom/android/server/pm/Computer;
    .restart local v18    # "aggressive":Z
    .restart local v19    # "computer":Lcom/android/server/pm/Computer;
    :cond_c1
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2781
    :try_start_c4
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v4, 0x300

    invoke-virtual {v0, v2, v9, v10, v4}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_cb
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_c4 .. :try_end_cb} :catch_ce
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_cc

    .line 2784
    goto :goto_cf

    .line 2785
    :catchall_cc
    move-exception v0

    goto :goto_114

    .line 2783
    :catch_ce
    move-exception v0

    .line 2785
    :goto_cf
    :try_start_cf
    monitor-exit v3
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_cc

    .line 2786
    invoke-virtual {v12}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-ltz v0, :cond_d9

    return-void

    .line 2792
    :cond_d9
    if-eqz v13, :cond_f5

    .line 2793
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2795
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "uninstalled_instant_app_min_cache_period"

    .line 2794
    invoke-static {v0, v4, v14, v15}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 2793
    move-object/from16 v4, v19

    move-wide/from16 v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/InstantAppRegistry;->pruneUninstalledInstantApps(Lcom/android/server/pm/Computer;JJ)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 2799
    return-void

    .line 2804
    :cond_f5
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v3, Landroid/os/storage/StorageManagerInternal;

    .line 2805
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 2806
    .local v0, "smInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-virtual {v12}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    sub-long v3, v9, v3

    .line 2807
    .local v3, "freeBytesRequired":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_10e

    .line 2808
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/storage/StorageManagerInternal;->freeCache(Ljava/lang/String;J)V

    .line 2812
    :cond_10e
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/PackageInstallerService;->freeStageDirs(Ljava/lang/String;)V

    .line 2813
    .end local v0    # "smInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v3    # "freeBytesRequired":J
    .end local v13    # "internalVolume":Z
    .end local v18    # "aggressive":Z
    .end local v19    # "computer":Lcom/android/server/pm/Computer;
    goto :goto_12a

    .line 2785
    .restart local v13    # "internalVolume":Z
    .restart local v18    # "aggressive":Z
    .restart local v19    # "computer":Lcom/android/server/pm/Computer;
    :goto_114
    :try_start_114
    monitor-exit v3
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_cc

    throw v0

    .line 2751
    .end local v18    # "aggressive":Z
    .end local v19    # "computer":Lcom/android/server/pm/Computer;
    .restart local v14    # "aggressive":Z
    :catchall_116
    move-exception v0

    move/from16 v18, v14

    .end local v14    # "aggressive":Z
    .restart local v18    # "aggressive":Z
    :goto_119
    :try_start_119
    monitor-exit v4
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_11b

    throw v0

    :catchall_11b
    move-exception v0

    goto :goto_119

    .line 2814
    .end local v13    # "internalVolume":Z
    .end local v18    # "aggressive":Z
    :cond_11d
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2816
    :try_start_120
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v2, v9, v10, v3}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_125
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_120 .. :try_end_125} :catch_128
    .catchall {:try_start_120 .. :try_end_125} :catchall_126

    .line 2818
    goto :goto_129

    .line 2819
    :catchall_126
    move-exception v0

    goto :goto_156

    .line 2817
    :catch_128
    move-exception v0

    .line 2819
    :goto_129
    :try_start_129
    monitor-exit v4
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_126

    .line 2821
    :goto_12a
    invoke-virtual {v12}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-ltz v0, :cond_133

    return-void

    .line 2823
    :cond_133
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to free "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on storage device at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2819
    :goto_156
    :try_start_156
    monitor-exit v4
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_126

    throw v0
.end method

.method public freezePackage(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "killReason"    # Ljava/lang/String;

    .line 4462
    new-instance v0, Lcom/android/server/pm/PackageFreezer;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/server/pm/PackageFreezer;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    return-object v0
.end method

.method public freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "killReason"    # Ljava/lang/String;

    .line 4458
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0

    return-object v0
.end method

.method public freezePackageForDelete(Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "deleteFlags"    # I
    .param p4, "killReason"    # Ljava/lang/String;

    .line 4472
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_a

    .line 4473
    new-instance v0, Lcom/android/server/pm/PackageFreezer;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-object v0

    .line 4475
    :cond_a
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0

    return-object v0
.end method

.method public freezePackageForDelete(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deleteFlags"    # I
    .param p3, "killReason"    # Ljava/lang/String;

    .line 4467
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0

    return-object v0
.end method

.method getActiveLauncherPackageName(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 7356
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAppInstallDir()Ljava/io/File;
    .registers 2

    .line 7378
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    return-object v0
.end method

.method getCacheDir()Ljava/io/File;
    .registers 2

    .line 7310
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    return-object v0
.end method

.method getCompilerPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 7082
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/CompilerStats;->getPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v0

    return-object v0
.end method

.method getCoreAndroidApplication()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 7462
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method getDefParseFlags()I
    .registers 2

    .line 7386
    iget v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    return v0
.end method

.method getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;
    .registers 2

    .line 7306
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    return-object v0
.end method

.method getDexManager()Lcom/android/server/pm/dex/DexManager;
    .registers 2

    .line 3114
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    return-object v0
.end method

.method getDexoptFilter(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/lang/String;
    .registers 15
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "useInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 3018
    nop

    .line 3019
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v0

    .line 3020
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v1

    .line 3018
    invoke-static {v0, v1}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3021
    .local v0, "instructionSets":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3022
    .local v1, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePathsExcludingResourceOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v2

    .line 3023
    .local v2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3024
    .local v4, "path":Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x0

    :goto_27
    if-ge v6, v5, :cond_42

    aget-object v7, v1, v6

    .line 3026
    .local v7, "isa":Ljava/lang/String;
    :try_start_2b
    invoke-static {v4, v7}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v8

    .line 3027
    .local v8, "info":Ldalvik/system/DexFile$OptimizationInfo;
    invoke-virtual {v8}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object v9
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_33} :catch_37

    .line 3028
    .local v9, "filter":Ljava/lang/String;
    if-eqz v9, :cond_36

    .line 3029
    return-object v9

    .line 3033
    .end local v8    # "info":Ldalvik/system/DexFile$OptimizationInfo;
    .end local v9    # "filter":Ljava/lang/String;
    :cond_36
    goto :goto_3f

    .line 3031
    :catch_37
    move-exception v8

    .line 3032
    .local v8, "ioe":Ljava/io/IOException;
    const-string v9, "PackageManager"

    const-string v10, "Exception : "

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3024
    .end local v7    # "isa":Ljava/lang/String;
    .end local v8    # "ioe":Ljava/io/IOException;
    :goto_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 3035
    .end local v4    # "path":Ljava/lang/String;
    :cond_42
    goto :goto_19

    .line 3036
    :cond_43
    const/4 v3, 0x0

    return-object v3
.end method

.method getDisabledPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7003
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method getInstantAppResolver(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;
    .registers 18
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;

    .line 2573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2574
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2575
    .local v1, "packageArray":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    const-string v4, "PackageManager"

    if-nez v2, :cond_23

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v2, :cond_23

    .line 2576
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_22

    .line 2577
    const-string v2, "Ephemeral resolver NOT found; empty package list"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    :cond_22
    return-object v3

    .line 2582
    :cond_23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2583
    .local v2, "callingUid":I
    const/high16 v5, 0xc0000

    .line 2586
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v6, :cond_30

    const/high16 v6, 0x100000

    goto :goto_31

    :cond_30
    const/4 v6, 0x0

    :goto_31
    or-int v13, v6, v5

    .line 2587
    .local v13, "resolveFlags":I
    new-instance v6, Landroid/content/Intent;

    const-string v5, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2588
    .local v6, "resolverIntent":Landroid/content/Intent;
    const/4 v7, 0x0

    int-to-long v8, v13

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move v11, v2

    invoke-interface/range {v5 .. v12}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object v5

    .line 2590
    .local v5, "resolvers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 2591
    .local v7, "N":I
    if-nez v7, :cond_55

    .line 2592
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v8, :cond_54

    .line 2593
    const-string v8, "Ephemeral resolver NOT found; no matching intent filters"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    :cond_54
    return-object v3

    .line 2598
    :cond_55
    new-instance v8, Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2599
    .local v8, "possiblePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5f
    if-ge v9, v7, :cond_cd

    .line 2600
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 2602
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_6c

    .line 2603
    goto :goto_9e

    .line 2606
    :cond_6c
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2607
    .local v11, "packageName":Ljava/lang/String;
    invoke-interface {v8, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    const-string v14, ", info:"

    if-nez v12, :cond_a1

    sget-boolean v12, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v12, :cond_a1

    .line 2608
    sget-boolean v12, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v12, :cond_9e

    .line 2609
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ephemeral resolver not in allowed package list; pkg: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_9e
    :goto_9e
    add-int/lit8 v9, v9, 0x1

    goto :goto_5f

    .line 2615
    .restart local v10    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "packageName":Ljava/lang/String;
    :cond_a1
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_c3

    .line 2616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ephemeral resolver found; pkg: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    :cond_c3
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v11, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 2621
    .end local v9    # "i":I
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_cd
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v9, :cond_d6

    .line 2622
    const-string v9, "Ephemeral resolver NOT found"

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    :cond_d6
    return-object v3
.end method

.method getInstrumentation()Lcom/android/server/utils/WatchedArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation

    .line 7318
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    return-object v0
.end method

.method getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;
    .registers 23
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "knownPackage"    # I
    .param p3, "userId"    # I

    .line 7335
    move-object/from16 v0, p0

    new-instance v14, Lcom/android/server/pm/KnownPackages;

    move-object v1, v14

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    move-object/from16 v18, v14

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    move-object/from16 v16, v14

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    move-object/from16 v17, v14

    const-string v14, "com.android.companiondevicemanager"

    move-object/from16 v0, v18

    invoke-direct/range {v1 .. v17}, Lcom/android/server/pm/KnownPackages;-><init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7352
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/KnownPackages;->getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v0

    .line 7335
    return-object v0
.end method

.method getMimeGroupInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7137
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 7138
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_b

    .line 7139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 7142
    :cond_b
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getMimeGroups()Ljava/util/Map;

    move-result-object v1

    .line 7143
    .local v1, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_18

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 7144
    .local v2, "mimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_19
    if-eqz v2, :cond_21

    .line 7148
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3

    .line 7145
    :cond_21
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown MIME group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 2857
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ModuleInfoProvider;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v0

    return-object v0
.end method

.method getModuleMetadataPackageName()Ljava/lang/String;
    .registers 2

    .line 7374
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {v0}, Lcom/android/server/pm/ModuleInfoProvider;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateCompilerPackageStats(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .registers 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 7073
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->getOrCreateCompilerPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateCompilerPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 7077
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/CompilerStats;->getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v0

    return-object v0
.end method

.method getPackageFromComponentString(I)Ljava/lang/String;
    .registers 5
    .param p1, "stringResId"    # I

    .line 3761
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3762
    .local v0, "componentString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 3763
    return-object v2

    .line 3765
    :cond_e
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 3766
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_15

    .line 3767
    return-object v2

    .line 3769
    :cond_15
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getPackageInstallerPackageName()Ljava/lang/String;
    .registers 2

    .line 2889
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    return-object v0
.end method

.method getPackageProperty()Lcom/android/server/pm/PackageProperty;
    .registers 2

    .line 7314
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    return-object v0
.end method

.method getPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6995
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method getPackageUsage()Lcom/android/server/pm/PackageUsage;
    .registers 2

    .line 7370
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    return-object v0
.end method

.method public getPerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;
    .registers 3
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;

    .line 7203
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 7204
    .local v0, "result":[Landroid/os/incremental/PerUidReadTimeouts;
    if-nez v0, :cond_a

    .line 7205
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->parsePerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;

    move-result-object v0

    .line 7206
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 7208
    :cond_a
    return-object v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 2695
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 2696
    invoke-virtual {v0, p1, p2}, Landroid/permission/PermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    .line 2695
    return-object v0
.end method

.method getPlatformPackage()Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 2

    .line 7470
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-object v0
.end method

.method getResolveComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 7302
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method getSafeMode()Z
    .registers 2

    .line 7298
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    return v0
.end method

.method public getSdkSandboxPackageName()Ljava/lang/String;
    .registers 2

    .line 2885
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    return-object v0
.end method

.method getSdkVersion()I
    .registers 2

    .line 7322
    iget v0, p0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    return v0
.end method

.method getSettingsVersionForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;
    .registers 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3409
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3410
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3411
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    return-object v0

    .line 3413
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    return-object v0

    .line 3416
    :cond_22
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method getSystemPackageRescanFlagsAndReparseFlags(Ljava/io/File;II)Landroid/util/Pair;
    .registers 11
    .param p1, "scanFile"    # Ljava/io/File;
    .param p2, "systemScanFlags"    # I
    .param p3, "systemParseFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7504
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 7505
    invoke-virtual {v0}, Lcom/android/server/pm/InitAppsHelper;->getDirsToScanAsSystem()Ljava/util/List;

    move-result-object v0

    .line 7506
    .local v0, "dirsToScanAsSystem":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ScanPartition;>;"
    const/4 v1, 0x0

    .line 7507
    .local v1, "reparseFlags":I
    const/4 v2, 0x0

    .line 7508
    .local v2, "rescanFlags":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i1":I
    :goto_e
    if-ltz v3, :cond_34

    .line 7509
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ScanPartition;

    .line 7510
    .local v4, "partition":Lcom/android/server/pm/ScanPartition;
    invoke-virtual {v4, p1}, Lcom/android/server/pm/ScanPartition;->containsPrivApp(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 7511
    move v1, p3

    .line 7512
    const/high16 v5, 0x20000

    or-int/2addr v5, p2

    iget v6, v4, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v2, v5, v6

    .line 7514
    goto :goto_34

    .line 7516
    :cond_25
    invoke-virtual {v4, p1}, Lcom/android/server/pm/ScanPartition;->containsApp(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 7517
    move v1, p3

    .line 7518
    iget v5, v4, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v2, p2, v5

    .line 7519
    goto :goto_34

    .line 7508
    .end local v4    # "partition":Lcom/android/server/pm/ScanPartition;
    :cond_31
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 7522
    .end local v3    # "i1":I
    :cond_34
    :goto_34
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method getSystemPackageScanFlags(Ljava/io/File;)I
    .registers 7
    .param p1, "codePath"    # Ljava/io/File;

    .line 7486
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 7487
    invoke-virtual {v0}, Lcom/android/server/pm/InitAppsHelper;->getDirsToScanAsSystem()Ljava/util/List;

    move-result-object v0

    .line 7488
    .local v0, "dirsToScanAsSystem":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ScanPartition;>;"
    const/high16 v1, 0x10000

    .line 7489
    .local v1, "scanFlags":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_2c

    .line 7490
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ScanPartition;

    .line 7491
    .local v3, "partition":Lcom/android/server/pm/ScanPartition;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/ScanPartition;->containsFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 7492
    iget v4, v3, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v1, v4

    .line 7493
    invoke-virtual {v3, p1}, Lcom/android/server/pm/ScanPartition;->containsPrivApp(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 7494
    const/high16 v4, 0x20000

    or-int/2addr v1, v4

    goto :goto_2c

    .line 7489
    .end local v3    # "partition":Lcom/android/server/pm/ScanPartition;
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 7499
    .end local v2    # "i":I
    :cond_2c
    :goto_2c
    return v1
.end method

.method grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V
    .registers 13
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "recipientAppId"    # I
    .param p5, "visibleUid"    # I
    .param p6, "direct"    # Z
    .param p7, "retainOnUpdate"    # Z

    .line 7089
    invoke-interface {p1, p5}, Lcom/android/server/pm/Computer;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 7090
    .local v0, "visiblePackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static {p2, p4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 7091
    .local v1, "recipientUid":I
    if-eqz v0, :cond_36

    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_36

    .line 7095
    :cond_11
    nop

    .line 7096
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7095
    invoke-interface {p1, v2, p2, p5}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v2

    .line 7098
    .local v2, "instantApp":Z
    if-eqz v2, :cond_2a

    .line 7099
    if-nez p6, :cond_1f

    .line 7103
    return-void

    .line 7105
    :cond_1f
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 7106
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 7105
    invoke-virtual {v3, p2, p3, p4, v4}, Lcom/android/server/pm/InstantAppRegistry;->grantInstantAccess(ILandroid/content/Intent;II)Z

    move-result v3

    .local v3, "accessGranted":Z
    goto :goto_30

    .line 7108
    .end local v3    # "accessGranted":Z
    :cond_2a
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {v3, v1, p5, p7}, Lcom/android/server/pm/AppsFilterImpl;->grantImplicitAccess(IIZ)Z

    move-result v3

    .line 7112
    .restart local v3    # "accessGranted":Z
    :goto_30
    if-eqz v3, :cond_35

    .line 7113
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    .line 7115
    :cond_35
    return-void

    .line 7092
    .end local v2    # "instantApp":Z
    .end local v3    # "accessGranted":Z
    :cond_36
    :goto_36
    return-void
.end method

.method public handleFirstUseActivity(Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3040
    const/4 v0, 0x1

    .line 3041
    .local v0, "isDeviceProvisioned":Z
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 3043
    nop

    .line 3044
    :try_start_7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "device_provisioned"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_11} :catch_18

    const/4 v3, 0x1

    if-ne v1, v3, :cond_15

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    move v0, v3

    .line 3048
    goto :goto_1a

    .line 3046
    :catch_18
    move-exception v1

    .line 3047
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/4 v0, 0x0

    .line 3050
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1a
    :goto_1a
    const-string v1, "PackageManager"

    if-nez v0, :cond_24

    .line 3051
    const-string v2, "Skip dexopt, device is not provisioned."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    return-void

    .line 3054
    :cond_24
    const-string v3, ""

    .line 3055
    .local v3, "filter":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 3056
    .local v4, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_3e

    .line 3057
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 3058
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 3059
    invoke-virtual {v6, p1}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v6

    .line 3060
    .local v6, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-eqz v5, :cond_3e

    .line 3061
    invoke-virtual {p0, v5, v4, v6}, Lcom/android/server/pm/PackageManagerService;->getDexoptFilter(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/lang/String;

    move-result-object v3

    .line 3064
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v6    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :cond_3e
    const/4 v5, 0x0

    .line 3065
    .local v5, "success":Z
    if-eqz v3, :cond_61

    const-string/jumbo v6, "run-from-apk"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_61

    const-string/jumbo v6, "speed-profile"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_61

    .line 3066
    const/4 v6, 0x5

    .line 3068
    .local v6, "flags":I
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    new-instance v8, Lcom/android/server/pm/dex/DexoptOptions;

    const/16 v9, 0xd

    invoke-direct {v8, p1, v9, v6}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v7, v8}, Lcom/android/server/pm/DexOptHelper;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result v5

    .line 3071
    .end local v6    # "flags":I
    :cond_61
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FirstUseActivity packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " success = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    const-class v6, Lcom/android/server/PinnerService;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PinnerService;

    .line 3073
    .local v6, "pinnerService":Lcom/android/server/PinnerService;
    if-eqz v6, :cond_ac

    .line 3074
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FirstUseActivity Pinning optimized code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 3076
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3077
    invoke-virtual {v6, v1, v2}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;Z)V

    .line 3079
    .end local v1    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_ac
    return-void
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .line 2866
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2868
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->addPermierFlagIfNeedForGlobalROM()V

    .line 2870
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/FeatureInfo;

    .line 2871
    .local v1, "feat":Landroid/content/pm/FeatureInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 2872
    monitor-exit v0

    return v2

    .line 2874
    :cond_13
    iget v3, v1, Landroid/content/pm/FeatureInfo;->version:I

    if-lt v3, p2, :cond_18

    const/4 v2, 0x1

    :cond_18
    monitor-exit v0

    return v2

    .line 2876
    .end local v1    # "feat":Landroid/content/pm/FeatureInfo;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method isCallerVerifier(Lcom/android/server/pm/Computer;I)Z
    .registers 7
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "callingUid"    # I

    .line 3433
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3434
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v1, :cond_12

    const-wide/16 v2, 0x0

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ne p2, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public isDeviceUpgrading()Z
    .registers 3

    .line 2371
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const-string/jumbo v0, "persist.pm.mock-upgrade"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method isExpectingBetter(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7382
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InitAppsHelper;->isExpectingBetter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFirstBoot()Z
    .registers 2

    .line 2360
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    return v0
.end method

.method isHistoricalPackageUsageAvailable()Z
    .registers 2

    .line 7069
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageUsage;->isHistoricalPackageUsageAvailable()Z

    move-result v0

    return v0
.end method

.method public isOnlyCoreApps()Z
    .registers 2

    .line 2365
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mOnlyCore:Z

    return v0
.end method

.method isOverlayMutable(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7482
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isPackageDeviceAdmin(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3454
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    .line 3456
    .local v0, "dpm":Landroid/app/admin/IDevicePolicyManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 3457
    :try_start_7
    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 3459
    .local v2, "deviceOwnerComponentName":Landroid/content/ComponentName;
    if-nez v2, :cond_f

    const/4 v3, 0x0

    goto :goto_13

    .line 3460
    :cond_f
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_13
    nop

    .line 3465
    .local v3, "deviceOwnerPackageName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1c

    .line 3466
    return v5

    .line 3470
    :cond_1c
    const/4 v4, -0x1

    if-ne p2, v4, :cond_26

    .line 3471
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    .local v4, "users":[I
    goto :goto_2a

    .line 3473
    .end local v4    # "users":[I
    :cond_26
    new-array v4, v5, [I

    aput p2, v4, v1

    .line 3475
    .restart local v4    # "users":[I
    :goto_2a
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2b
    array-length v7, v4

    if-ge v6, v7, :cond_3c

    .line 3476
    aget v7, v4, v6

    invoke-interface {v0, p1, v7}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v7
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_34} :catch_3a

    if-eqz v7, :cond_37

    .line 3477
    return v5

    .line 3475
    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 3481
    .end local v2    # "deviceOwnerComponentName":Landroid/content/ComponentName;
    .end local v3    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v4    # "users":[I
    .end local v6    # "i":I
    :catch_3a
    move-exception v2

    goto :goto_3d

    .line 3482
    :cond_3c
    nop

    .line 3483
    :goto_3d
    return v1
.end method

.method public isPackageDeviceAdminOnAnyUser(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .registers 9
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3439
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3440
    .local v0, "callingUid":I
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-interface {p1, v1, v0}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_20

    .line 3446
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 3447
    invoke-interface {p1, p2, v0}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 3448
    return v3

    .line 3450
    :cond_1b
    invoke-virtual {p0, p2, v2}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 3442
    :cond_20
    const v1, 0x534e4554

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "128599183"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3443
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "android.permission.MANAGE_USERS permission is required to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method isPreNMR1Upgrade()Z
    .registers 2

    .line 7478
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    return v0
.end method

.method isPreNUpgrade()Z
    .registers 2

    .line 7474
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreNUpgrade:Z

    return v0
.end method

.method public isStorageLow()Z
    .registers 5

    .line 4549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4552
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v3, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 4553
    .local v2, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-eqz v2, :cond_18

    .line 4554
    invoke-interface {v2}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result v3
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1d

    .line 4559
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4554
    return v3

    .line 4556
    :cond_18
    const/4 v3, 0x0

    .line 4559
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4556
    return v3

    .line 4559
    .end local v2    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4560
    throw v2
.end method

.method isSystemReady()Z
    .registers 2

    .line 7466
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    return v0
.end method

.method isUserRestricted(ILjava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "restrictionKey"    # Ljava/lang/String;

    .line 3268
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 3269
    .local v0, "restrictions":Landroid/os/Bundle;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User is restricted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    const/4 v1, 0x1

    return v1

    .line 3273
    :cond_27
    return v1
.end method

.method killApplication(Ljava/lang/String;IILjava/lang/String;)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 3175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3177
    .local v0, "token":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    .line 3178
    .local v2, "am":Landroid/app/IActivityManager;
    if-eqz v2, :cond_f

    .line 3180
    :try_start_a
    invoke-interface {v2, p1, p2, p3, p4}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 3182
    goto :goto_f

    .line 3181
    :catch_e
    move-exception v3

    .line 3185
    .end local v2    # "am":Landroid/app/IActivityManager;
    :cond_f
    :goto_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3186
    nop

    .line 3187
    return-void

    .line 3185
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3186
    throw v2
.end method

.method killApplication(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 3167
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    .line 3168
    return-void
.end method

.method synthetic lambda$deletePackageIfUnused$50$com-android-server-pm-PackageManagerService(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4577
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    return-void
.end method

.method synthetic lambda$new$39$com-android-server-pm-PackageManagerService()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 1905
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method synthetic lambda$new$40$com-android-server-pm-PackageManagerService()Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 1905
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method synthetic lambda$notifyFirstLaunch$44$com-android-server-pm-PackageManagerService(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "installerPackage"    # Ljava/lang/String;

    .line 3359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const-string v2, "Package "

    const-string v3, "PackageManager"

    const/4 v4, 0x1

    if-ge v0, v1, :cond_60

    .line 3360
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PostInstallData;

    .line 3361
    .local v1, "data":Lcom/android/server/pm/PostInstallData;
    iget-object v5, v1, Lcom/android/server/pm/PostInstallData;->res:Lcom/android/server/pm/PackageInstalledInfo;

    iget v5, v5, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-eq v5, v4, :cond_1d

    .line 3362
    goto :goto_5d

    .line 3364
    :cond_1d
    iget-object v4, v1, Lcom/android/server/pm/PostInstallData;->res:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 3366
    const/4 v4, 0x0

    .local v4, "uIndex":I
    :goto_2c
    iget-object v5, v1, Lcom/android/server/pm/PostInstallData;->res:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageInstalledInfo;->mNewUsers:[I

    array-length v5, v5

    if-ge v4, v5, :cond_5d

    .line 3367
    iget-object v5, v1, Lcom/android/server/pm/PostInstallData;->res:Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageInstalledInfo;->mNewUsers:[I

    aget v5, v5, v4

    if-ne p2, v5, :cond_5a

    .line 3368
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v5, :cond_59

    .line 3369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " being restored so deferring FIRST_LAUNCH"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    :cond_59
    return-void

    .line 3366
    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 3359
    .end local v1    # "data":Lcom/android/server/pm/PostInstallData;
    .end local v4    # "uIndex":I
    :cond_5d
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3378
    .end local v0    # "i":I
    :cond_60
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v0, :cond_7e

    .line 3379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sending normal FIRST_LAUNCH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    :cond_7e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-interface {v0, p1, p2, v1}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v0

    .line 3383
    .local v0, "isInstantApp":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_8e

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_92

    :cond_8e
    new-array v2, v4, [I

    aput p2, v2, v1

    .line 3384
    .local v2, "userIds":[I
    :goto_92
    if-eqz v0, :cond_99

    new-array v3, v4, [I

    aput p2, v3, v1

    goto :goto_9b

    :cond_99
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    :goto_9b
    move-object v1, v3

    .line 3385
    .local v1, "instantUserIds":[I
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {v3, p1, p3, v2, v1}, Lcom/android/server/pm/BroadcastHelper;->sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V

    .line 3387
    return-void
.end method

.method synthetic lambda$postPreferredActivityChangedBroadcast$46$com-android-server-pm-PackageManagerService(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 3581
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    return-void
.end method

.method synthetic lambda$requestChecksumsInternal$4$com-android-server-pm-PackageManagerService()Landroid/content/Context;
    .registers 2

    .line 1324
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method synthetic lambda$requestChecksumsInternal$6$com-android-server-pm-PackageManagerService()Landroid/content/pm/PackageManagerInternal;
    .registers 3

    .line 1327
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method synthetic lambda$requestChecksumsInternal$7$com-android-server-pm-PackageManagerService(Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 15
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "filesToChecksum"    # Ljava/util/List;
    .param p3, "optional"    # I
    .param p4, "required"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "trustedCerts"    # [Ljava/security/cert/Certificate;
    .param p7, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;

    .line 1323
    new-instance v6, Lcom/android/server/pm/ApkChecksums$Injector;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1326
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v6, v0, v1, v3, v2}, Lcom/android/server/pm/ApkChecksums$Injector;-><init>(Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;)V

    .line 1328
    .local v6, "injector":Lcom/android/server/pm/ApkChecksums$Injector;
    move-object v0, p2

    move v1, p3

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/ApkChecksums;->getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V

    .line 1330
    return-void
.end method

.method synthetic lambda$requestFileChecksums$0$com-android-server-pm-PackageManagerService()Landroid/content/Context;
    .registers 2

    .line 1269
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method synthetic lambda$requestFileChecksums$2$com-android-server-pm-PackageManagerService()Landroid/content/pm/PackageManagerInternal;
    .registers 3

    .line 1272
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method synthetic lambda$requestFileChecksums$3$com-android-server-pm-PackageManagerService(Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 15
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "filesToChecksum"    # Ljava/util/List;
    .param p3, "optional"    # I
    .param p4, "required"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "trustedCerts"    # [Ljava/security/cert/Certificate;
    .param p7, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;

    .line 1268
    new-instance v6, Lcom/android/server/pm/ApkChecksums$Injector;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda58;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda58;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1271
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v6, v0, v1, v3, v2}, Lcom/android/server/pm/ApkChecksums$Injector;-><init>(Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;)V

    .line 1273
    .local v6, "injector":Lcom/android/server/pm/ApkChecksums$Injector;
    move-object v0, p2

    move v1, p3

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/ApkChecksums;->getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V

    .line 1275
    return-void
.end method

.method synthetic lambda$sendPackageAddedForNewUsers$42$com-android-server-pm-PackageManagerService(Ljava/lang/String;I[I[IILandroid/util/SparseArray;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userIds"    # [I
    .param p4, "instantUserIds"    # [I
    .param p5, "dataLoaderType"    # I
    .param p6, "broadcastAllowList"    # Landroid/util/SparseArray;

    .line 3243
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Ljava/lang/String;I[I[IILandroid/util/SparseArray;)V

    return-void
.end method

.method synthetic lambda$sendPackageAddedForNewUsers$43$com-android-server-pm-PackageManagerService([ILjava/lang/String;Z)V
    .registers 8
    .param p1, "userIds"    # [I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "includeStopped"    # Z

    .line 3247
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget v2, p1, v1

    .line 3248
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {v3, p2, p3, v2}, Lcom/android/server/pm/BroadcastHelper;->sendBootCompletedBroadcastToSystemApp(Ljava/lang/String;ZI)V

    .line 3247
    .end local v2    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3251
    :cond_e
    return-void
.end method

.method synthetic lambda$sendPackageBroadcast$41$com-android-server-pm-PackageManagerService(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .registers 23
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "flags"    # I
    .param p5, "targetPkg"    # Ljava/lang/String;
    .param p6, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p7, "userIds"    # [I
    .param p8, "instantUserIds"    # [I
    .param p9, "broadcastAllowList"    # Landroid/util/SparseArray;
    .param p10, "bOptions"    # Landroid/os/Bundle;

    .line 3195
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$sendPackageChangedBroadcast$48$com-android-server-pm-PackageManagerService(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dontKillApp"    # Z
    .param p3, "componentNames"    # Ljava/util/ArrayList;
    .param p4, "packageUid"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "userIds"    # [I
    .param p7, "instantUserIds"    # [I
    .param p8, "broadcastAllowList"    # Landroid/util/SparseArray;

    .line 4241
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;)V

    return-void
.end method

.method synthetic lambda$setPackageStoppedState$53$com-android-server-pm-PackageManagerService(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4764
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 4765
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 4766
    .local v0, "ah":Lcom/android/server/apphibernation/AppHibernationManagerInternal;
    if-eqz v0, :cond_19

    invoke-virtual {v0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4767
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 4768
    invoke-virtual {v0, p1, v1}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->setHibernatingGlobally(Ljava/lang/String;Z)V

    .line 4770
    :cond_19
    return-void
.end method

.method synthetic lambda$systemReady$49$com-android-server-pm-PackageManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 4422
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    .line 4423
    .local v0, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "incfs_default_timeouts"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "known_digesters_list"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4425
    :cond_14
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 4427
    :cond_17
    return-void
.end method

.method notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3358
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3388
    return-void
.end method

.method notifyInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V
    .registers 7
    .param p1, "info"    # Lcom/android/server/pm/PackageInstalledInfo;
    .param p2, "installObserver"    # Landroid/content/pm/IPackageInstallObserver2;

    .line 1202
    if-eqz p2, :cond_18

    .line 1204
    :try_start_2
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->extrasForInstallResult(Lcom/android/server/pm/PackageInstalledInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 1205
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/android/server/pm/PackageInstalledInfo;->mName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    iget-object v3, p1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnMsg:Ljava/lang/String;

    invoke-interface {p2, v1, v2, v3, v0}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    .line 1209
    .end local v0    # "extras":Landroid/os/Bundle;
    goto :goto_18

    .line 1207
    :catch_10
    move-exception v0

    .line 1208
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method notifyInstallObserver(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "killApp"    # Z

    .line 1192
    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    goto :goto_13

    .line 1193
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    :goto_13
    nop

    .line 1195
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;>;"
    if-eqz v0, :cond_21

    .line 1196
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageInstalledInfo;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V

    .line 1198
    :cond_21
    return-void
.end method

.method notifyInstantAppPackageInstalled(Ljava/lang/String;[I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newUsers"    # [I

    .line 7595
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->onPackageInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)V

    .line 7596
    return-void
.end method

.method public notifyPackageAdded(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3202
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageObserverHelper;->notifyAdded(Ljava/lang/String;I)V

    .line 3203
    return-void
.end method

.method notifyPackageChangeObservers(Landroid/content/pm/PackageChangeEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/content/pm/PackageChangeEvent;

    .line 3392
    const-wide/32 v0, 0x40000

    :try_start_3
    const-string/jumbo v2, "notifyPackageChangeObservers"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3393
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_32

    .line 3394
    :try_start_c
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/IPackageChangeObserver;
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_2f

    .line 3396
    .local v4, "observer":Landroid/content/pm/IPackageChangeObserver;
    :try_start_1e
    invoke-interface {v4, p1}, Landroid/content/pm/IPackageChangeObserver;->onPackageChanged(Landroid/content/pm/PackageChangeEvent;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_2f

    .line 3399
    goto :goto_28

    .line 3397
    :catch_22
    move-exception v5

    .line 3398
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_23
    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3400
    .end local v4    # "observer":Landroid/content/pm/IPackageChangeObserver;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_28
    goto :goto_12

    .line 3401
    :cond_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2f

    .line 3403
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3404
    nop

    .line 3405
    return-void

    .line 3401
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .end local p1    # "event":Landroid/content/pm/PackageChangeEvent;
    :try_start_31
    throw v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 3403
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    .restart local p1    # "event":Landroid/content/pm/PackageChangeEvent;
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3404
    throw v2
.end method

.method public notifyPackageChanged(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3207
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageObserverHelper;->notifyChanged(Ljava/lang/String;I)V

    .line 3208
    return-void
.end method

.method public notifyPackageRemoved(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3212
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageObserverHelper;->notifyRemoved(Ljava/lang/String;I)V

    .line 3213
    return-void
.end method

.method onNewUserCreated(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "convertedFromPreCreated"    # Z

    .line 4521
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_2d

    .line 4522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNewUserCreated(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", convertedFromPreCreated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4526
    :cond_2d
    invoke-static {}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyStub;->get()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyStub;->grantDefaultPermissions(I)V

    .line 4528
    if-eqz p2, :cond_3c

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService;->readPermissionStateForUser(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 4529
    :cond_3c
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onUserCreated(I)V

    .line 4530
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->grantDefaultPermissions(I)V

    .line 4531
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearUser(I)V

    .line 4533
    :cond_4b
    return-void
.end method

.method public performFstrimIfNeeded()V
    .registers 10

    .line 2954
    const-string v0, "Only the system can request fstrim"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 2958
    :try_start_5
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_7f

    .line 2959
    .local v0, "sm":Landroid/os/storage/IStorageManager;
    const-string v1, "PackageManager"

    if-eqz v0, :cond_78

    .line 2960
    const/4 v2, 0x0

    .line 2961
    .local v2, "doTrim":Z
    :try_start_e
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2962
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fstrim_mandatory_interval"

    const-wide/32 v5, 0xf731400

    .line 2961
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 2965
    .local v3, "interval":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_4d

    .line 2966
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->lastMaintenance()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 2967
    .local v5, "timeSinceLast":J
    cmp-long v7, v5, v3

    if-lez v7, :cond_4d

    .line 2968
    const/4 v2, 0x1

    .line 2969
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No disk maintenance in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; running immediately"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    .end local v5    # "timeSinceLast":J
    :cond_4d
    if-eqz v2, :cond_77

    .line 2974
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    if-nez v1, :cond_74

    .line 2975
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v1}, Lcom/android/server/pm/DexOptHelper;->isDexOptDialogShown()Z

    move-result v1
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_5b} :catch_7f

    if-eqz v1, :cond_74

    .line 2977
    :try_start_5d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2978
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040142

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 2977
    invoke-interface {v1, v5, v6}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_72} :catch_73

    .line 2981
    goto :goto_74

    .line 2980
    :catch_73
    move-exception v1

    .line 2984
    :cond_74
    :goto_74
    :try_start_74
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->runMaintenance()V

    .line 2986
    .end local v2    # "doTrim":Z
    .end local v3    # "interval":J
    :cond_77
    goto :goto_7e

    .line 2987
    :cond_78
    const-string/jumbo v2, "storageManager service unavailable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_7e} :catch_7f

    .line 2991
    .end local v0    # "sm":Landroid/os/storage/IStorageManager;
    :goto_7e
    goto :goto_80

    .line 2989
    :catch_7f
    move-exception v0

    .line 2992
    :goto_80
    return-void
.end method

.method postPreferredActivityChangedBroadcast(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3581
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3582
    return-void
.end method

.method public queryIntentReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 16
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 2914
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2915
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2914
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .registers 3

    .line 7531
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-virtual {v1}, Lcom/android/server/pm/ChangedPackagesTracker;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->initialState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object v0

    return-object v0
.end method

.method removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V
    .registers 5
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I

    .line 3317
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    move-result-object v0

    .line 3318
    .local v0, "allPackages":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    .line 3320
    return-void
.end method

.method requestChecksumsInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V
    .registers 25
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "includeSplits"    # Z
    .param p4, "optional"    # I
    .param p5, "required"    # I
    .param p6, "trustedInstallers"    # Ljava/util/List;
    .param p7, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;
    .param p8, "userId"    # I
    .param p9, "executor"    # Ljava/util/concurrent/Executor;
    .param p10, "handler"    # Landroid/os/Handler;

    .line 1283
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    invoke-static/range {p9 .. p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    invoke-static/range {p10 .. p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    nop

    .line 1289
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1288
    const-wide/16 v2, 0x0

    move-object v0, p1

    move-object/from16 v1, p2

    move/from16 v5, p8

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1290
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_92

    .line 1294
    invoke-interface/range {p1 .. p2}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v1

    .line 1296
    .local v1, "installSourceInfo":Landroid/content/pm/InstallSourceInfo;
    if-eqz v1, :cond_38

    .line 1297
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1298
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "installerPackageName":Ljava/lang/String;
    goto :goto_39

    .line 1300
    .end local v2    # "installerPackageName":Ljava/lang/String;
    :cond_33
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "installerPackageName":Ljava/lang/String;
    goto :goto_39

    .line 1303
    .end local v2    # "installerPackageName":Ljava/lang/String;
    :cond_38
    const/4 v2, 0x0

    .line 1306
    .restart local v2    # "installerPackageName":Ljava/lang/String;
    :goto_39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    .line 1309
    .local v12, "filesToChecksum":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;>;"
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1312
    if-eqz p3, :cond_71

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    if-eqz v3, :cond_71

    .line 1313
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    array-length v5, v5

    .local v5, "size":I
    :goto_58
    if-ge v3, v5, :cond_71

    .line 1314
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    aget-object v6, v6, v3

    new-instance v7, Ljava/io/File;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 1319
    .end local v3    # "i":I
    .end local v5    # "size":I
    :cond_71
    if-eqz p6, :cond_79

    invoke-static/range {p6 .. p6}, Lcom/android/server/pm/PackageManagerService;->decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;

    move-result-object v3

    move-object v10, v3

    goto :goto_7a

    .line 1320
    :cond_79
    move-object v10, v4

    :goto_7a
    nop

    .line 1322
    .local v10, "trustedCerts":[Ljava/security/cert/Certificate;
    new-instance v13, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda0;

    move-object v3, v13

    move-object v4, p0

    move-object/from16 v5, p10

    move-object v6, v12

    move/from16 v7, p4

    move/from16 v8, p5

    move-object v9, v2

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V

    move-object/from16 v3, p9

    invoke-interface {v3, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1331
    return-void

    .line 1291
    .end local v1    # "installSourceInfo":Landroid/content/pm/InstallSourceInfo;
    .end local v2    # "installerPackageName":Ljava/lang/String;
    .end local v10    # "trustedCerts":[Ljava/security/cert/Certificate;
    .end local v12    # "filesToChecksum":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;>;"
    :cond_92
    move-object/from16 v3, p9

    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    move-object/from16 v4, p2

    invoke-direct {v2, v4}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestFileChecksums(Ljava/io/File;Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 22
    .param p1, "file"    # Ljava/io/File;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "optional"    # I
    .param p4, "required"    # I
    .param p5, "trustedInstallers"    # Ljava/util/List;
    .param p6, "onChecksumsReadyListener"    # Landroid/content/pm/IOnChecksumsReadyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1255
    move-object v9, p0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1259
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    .line 1260
    .local v10, "executor":Ljava/util/concurrent/Executor;
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v11

    .line 1261
    .local v11, "handler":Landroid/os/Handler;
    const/4 v0, 0x0

    if-eqz p5, :cond_1c

    invoke-static/range {p5 .. p5}, Lcom/android/server/pm/PackageManagerService;->decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;

    move-result-object v1

    move-object v7, v1

    goto :goto_1d

    .line 1262
    :cond_1c
    move-object v7, v0

    :goto_1d
    nop

    .line 1264
    .local v7, "trustedCerts":[Ljava/security/cert/Certificate;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v1

    .line 1265
    .local v12, "filesToChecksum":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;>;"
    move-object/from16 v13, p1

    invoke-static {v0, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    new-instance v14, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v11

    move-object v3, v12

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p2

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V

    invoke-interface {v10, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1276
    return-void

    .line 1256
    .end local v7    # "trustedCerts":[Ljava/security/cert/Certificate;
    .end local v10    # "executor":Ljava/util/concurrent/Executor;
    .end local v11    # "handler":Landroid/os/Handler;
    .end local v12    # "filesToChecksum":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;>;"
    :cond_43
    move-object/from16 v13, p1

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 25
    .param p1, "responseObj"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "origIntent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "isRequesterInstantApp"    # Z
    .param p7, "verificationBundle"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .line 2896
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v15, Landroid/content/pm/InstantAppRequest;

    iget-object v11, v13, Landroid/content/pm/AuxiliaryResolveInfo;->hostDigestPrefixSecure:[I

    iget-object v12, v13, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    const/16 v1, 0x14

    invoke-virtual {v14, v1, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2901
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2902
    return-void
.end method

.method resolveUserIds(I)[I
    .registers 4
    .param p1, "userId"    # I

    .line 3134
    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    goto :goto_10

    :cond_a
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    :goto_10
    return-object v0
.end method

.method restorePermissionsAndUpdateRolesForNewUserInstall(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3596
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->restoreDelayedRuntimePermissions(Ljava/lang/String;I)V

    .line 3600
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 3601
    return-void
.end method

.method scheduleDeferredNoKillInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V
    .registers 8
    .param p1, "info"    # Lcom/android/server/pm/PackageInstalledInfo;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver2;

    .line 1215
    iget-object v0, p1, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1216
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1218
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1219
    return-void
.end method

.method scheduleDeferredNoKillPostDelete(Lcom/android/server/pm/InstallArgs;)V
    .registers 6
    .param p1, "args"    # Lcom/android/server/pm/InstallArgs;

    .line 1222
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1223
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1224
    return-void
.end method

.method scheduleDeferredPendingKillInstallObserver(Lcom/android/server/pm/PackageInstalledInfo;Landroid/content/pm/IPackageInstallObserver2;)V
    .registers 8
    .param p1, "info"    # Lcom/android/server/pm/PackageInstalledInfo;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver2;

    .line 1234
    iget-object v0, p1, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1235
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1238
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1239
    return-void
.end method

.method schedulePruneUnusedStaticSharedLibraries(Z)V
    .registers 6
    .param p1, "delay"    # Z

    .line 1227
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1228
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1229
    if-eqz p1, :cond_10

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getPruneUnusedSharedLibrariesDelay()J

    move-result-wide v2

    goto :goto_12

    :cond_10
    const-wide/16 v2, 0x0

    .line 1228
    :goto_12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1230
    return-void
.end method

.method scheduleWritePackageRestrictions(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 1404
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 1405
    const/4 v0, -0x1

    if-ne p1, v0, :cond_27

    .line 1406
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1407
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_22

    aget v4, v1, v3

    .line 1408
    .local v4, "aUserId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1407
    nop

    .end local v4    # "aUserId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1410
    :cond_22
    monitor-exit v0

    goto :goto_3d

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw v1

    .line 1412
    :cond_27
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1413
    return-void

    .line 1415
    :cond_30
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1416
    :try_start_33
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1417
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_4f

    .line 1419
    :goto_3d
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1420
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1422
    :cond_4e
    return-void

    .line 1417
    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method scheduleWritePackageRestrictions(Landroid/os/UserHandle;)V
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 1399
    if-nez p1, :cond_4

    const/4 v0, -0x1

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1400
    .local v0, "userId":I
    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 1401
    return-void
.end method

.method scheduleWriteSettings()V
    .registers 5

    .line 1383
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 1384
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1385
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1387
    :cond_14
    return-void
.end method

.method public sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[II)V
    .registers 24
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "sendBootCompleted"    # Z
    .param p4, "includeStopped"    # Z
    .param p5, "appId"    # I
    .param p6, "userIds"    # [I
    .param p7, "instantUserIds"    # [I
    .param p8, "dataLoaderType"    # I

    .line 3237
    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p6

    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static/range {p7 .. p7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3238
    return-void

    .line 3240
    :cond_14
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    const/16 v1, 0x3e8

    .line 3241
    invoke-interface {v9, v10, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 3242
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    .line 3240
    invoke-virtual {v0, v9, v1, v11, v2}, Lcom/android/server/pm/AppsFilterImpl;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v12

    .line 3243
    .local v12, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iget-object v13, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda11;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I[I[IILandroid/util/SparseArray;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3245
    if-eqz p3, :cond_50

    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_50

    .line 3246
    iget-object v0, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

    move/from16 v2, p4

    invoke-direct {v1, p0, v11, v10, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/PackageManagerService;[ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_52

    .line 3245
    :cond_50
    move/from16 v2, p4

    .line 3254
    :goto_52
    return-void
.end method

.method sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;II)V
    .registers 19
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p4, "userId"    # I
    .param p5, "dataLoaderType"    # I

    .line 3217
    move/from16 v0, p4

    invoke-interface/range {p3 .. p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    .line 3218
    .local v1, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v11

    .line 3219
    .local v11, "isSystem":Z
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v12

    .line 3220
    .local v12, "isInstantApp":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v12, :cond_15

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_19

    :cond_15
    new-array v4, v3, [I

    aput v0, v4, v2

    :goto_19
    move-object v8, v4

    .line 3221
    .local v8, "userIds":[I
    if-eqz v12, :cond_22

    new-array v3, v3, [I

    aput v0, v3, v2

    move-object v9, v3

    goto :goto_25

    :cond_22
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    move-object v9, v2

    .line 3222
    .local v9, "instantUserIds":[I
    :goto_25
    const/4 v6, 0x0

    .line 3223
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7

    .line 3222
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v11

    move/from16 v10, p5

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/PackageManagerService;->sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[II)V

    .line 3227
    new-instance v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 3228
    .local v2, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getInstallReason()I

    move-result v3

    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 3229
    move-object v3, p2

    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 3230
    move-object v4, p0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/PackageManagerService;->sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    .line 3231
    return-void
.end method

.method public sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .registers 26
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "flags"    # I
    .param p5, "targetPkg"    # Ljava/lang/String;
    .param p6, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p7, "userIds"    # [I
    .param p8, "instantUserIds"    # [I
    .param p10, "bOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/IIntentReceiver;",
            "[I[I",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 3195
    .local p9, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    move-object v12, p0

    iget-object v13, v12, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3198
    return-void
.end method

.method sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V
    .registers 24
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dontKillApp"    # Z
    .param p5, "packageUid"    # I
    .param p6, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4229
    .local p4, "componentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-object/from16 v11, p2

    const/16 v1, 0x3e8

    invoke-interface {v0, v11, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    .line 4231
    .local v12, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v12, :cond_d

    .line 4232
    return-void

    .line 4234
    :cond_d
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 4235
    .local v13, "userId":I
    nop

    .line 4236
    invoke-interface {v0, v11, v13, v1}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v14

    .line 4237
    .local v14, "isInstantApp":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v14, :cond_1d

    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_21

    :cond_1d
    new-array v3, v2, [I

    aput v13, v3, v1

    :goto_21
    move-object v15, v3

    .line 4238
    .local v15, "userIds":[I
    if-eqz v14, :cond_2a

    new-array v2, v2, [I

    aput v13, v2, v1

    move-object v9, v2

    goto :goto_2d

    :cond_2a
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    move-object v9, v1

    .line 4239
    .local v9, "instantUserIds":[I
    :goto_2d
    invoke-interface {v0, v11, v15, v14}, Lcom/android/server/pm/Computer;->getBroadcastAllowList(Ljava/lang/String;[IZ)Landroid/util/SparseArray;

    move-result-object v16

    .line 4241
    .local v16, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    move-object/from16 v10, p0

    iget-object v8, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda56;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object v0, v7

    move-object/from16 v7, p6

    move-object v11, v8

    move-object v8, v15

    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda56;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4244
    return-void
.end method

.method public sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V
    .registers 13
    .param p1, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p2, "userId"    # I

    .line 3659
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 3660
    .local v0, "ums":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2b

    .line 3663
    :cond_d
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3664
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_16

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_17

    :cond_16
    move v2, p2

    .line 3666
    .local v2, "launcherUid":I
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    .line 3667
    invoke-interface {v3, v2}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v9

    .line 3668
    .local v9, "launcherComponent":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    move-object v4, p1

    move v5, p2

    move v6, v2

    move-object v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/BroadcastHelper;->sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;IILandroid/content/ComponentName;Ljava/lang/String;)V

    .line 3670
    return-void

    .line 3661
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .end local v2    # "launcherUid":I
    .end local v9    # "launcherComponent":Landroid/content/ComponentName;
    :cond_2b
    :goto_2b
    return-void
.end method

.method setActiveLauncherPackage(Ljava/lang/String;ILjava/util/function/Consumer;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 7361
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/pm/DefaultAppProvider;->setDefaultHome(Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method setDefaultBrowser(Ljava/lang/String;ZI)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "async"    # Z
    .param p3, "userId"    # I

    .line 7366
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/DefaultAppProvider;->setDefaultBrowser(Ljava/lang/String;ZI)Z

    .line 7367
    return-void
.end method

.method setEnableRollbackCode(II)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "enableRollbackCode"    # I

    .line 3335
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3336
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3337
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 3338
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3339
    return-void
.end method

.method setKeepUninstalledPackagesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;)V
    .registers 7
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7277
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7278
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    monitor-enter v0

    .line 7279
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7280
    .local v1, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 7282
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 7283
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 7285
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 7286
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/PackageManagerService;->deletePackageIfUnused(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    .line 7285
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 7288
    .end local v1    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :cond_2d
    monitor-exit v0

    .line 7289
    return-void

    .line 7288
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method setPackageStoppedState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)V
    .registers 14
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopped"    # Z
    .param p4, "userId"    # I

    .line 4706
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 4707
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4708
    .local v0, "callingUid":I
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b0

    .line 4709
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    .line 4711
    .local v7, "permission":I
    if-nez v7, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    move v8, v1

    .line 4712
    .local v8, "allowedByPermission":Z
    if-nez v8, :cond_5f

    .line 4713
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_5f

    .line 4714
    :cond_2e
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4716
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4719
    :cond_5f
    :goto_5f
    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "stop package"

    move-object v1, p1

    move v2, v0

    move v3, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4722
    nop

    .line 4723
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 4724
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v2, 0x0

    if-nez v1, :cond_74

    .line 4725
    move-object v3, v2

    goto :goto_78

    :cond_74
    invoke-interface {v1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 4726
    .local v3, "packageUserState":Lcom/android/server/pm/pkg/PackageUserState;
    :goto_78
    if-eqz v1, :cond_b0

    .line 4727
    invoke-interface {p1, v1, v0, p4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-nez v4, :cond_b0

    .line 4728
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v4

    if-eq v4, p3, :cond_b0

    .line 4729
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v4

    .line 4730
    .local v4, "wasNotLaunched":Z
    new-instance v5, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v5, p4, p3, v4}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda22;-><init>(IZZ)V

    invoke-virtual {p0, v2, p2, v5}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 4738
    if-eqz v4, :cond_ad

    .line 4739
    nop

    .line 4740
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 4741
    .local v2, "installerPackageName":Ljava/lang/String;
    if-eqz v2, :cond_a0

    .line 4742
    invoke-virtual {p0, p2, v2, p4}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4745
    :cond_a0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 4746
    .local v5, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-static {}, Lcom/android/server/pm/SettingsStub;->get()Lcom/android/server/pm/SettingsStub;

    move-result-object v6

    invoke-virtual {v6, p0, v5, p4}, Lcom/android/server/pm/SettingsStub;->noftifyFirstLaunch(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;I)V

    .line 4750
    .end local v2    # "installerPackageName":Ljava/lang/String;
    .end local v5    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_ad
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 4756
    .end local v1    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "packageUserState":Lcom/android/server/pm/pkg/PackageUserState;
    .end local v4    # "wasNotLaunched":Z
    .end local v7    # "permission":I
    .end local v8    # "allowedByPermission":Z
    :cond_b0
    if-nez p3, :cond_d9

    .line 4758
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    if-nez v1, :cond_cf

    .line 4759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System is not ready, and should unhibernate an app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    return-void

    .line 4763
    :cond_cf
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0, p2, p4}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4772
    :cond_d9
    return-void
.end method

.method setPlatformPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V
    .registers 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 7421
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 7423
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 7427
    const-wide/16 v2, 0x0

    sget-object v4, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 7430
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    if-nez v2, :cond_7f

    .line 7431
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v1, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7432
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const-class v2, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 7433
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 7434
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const-string/jumbo v2, "system:ui"

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 7435
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 7436
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x3

    iput v3, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 7437
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x1020

    iput v3, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 7439
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const v3, 0x1030226

    iput v3, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 7440
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 7441
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-boolean v3, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 7442
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x2

    iput v3, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 7443
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0xdb0

    iput v3, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 7449
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 7450
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput v2, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 7451
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput v2, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 7452
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput v2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 7453
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 7456
    :cond_7f
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 7457
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_3 .. :try_end_83} :catchall_87

    .line 7458
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    .line 7459
    return-void

    .line 7457
    :catchall_87
    move-exception v1

    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v1
.end method

.method setSystemAppHiddenUntilInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z

    .line 4592
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4593
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_f

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    .line 4595
    .local v1, "calledFromSystemOrPhone":Z
    :goto_10
    if-nez v1, :cond_1c

    .line 4596
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.SUSPEND_APPS"

    const-string/jumbo v4, "setSystemAppHiddenUntilInstalled"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4600
    :cond_1c
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 4601
    .local v2, "stateRead":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_4e

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_2f

    goto :goto_4e

    .line 4604
    :cond_2f
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCoreApp()Z

    move-result v3

    if-eqz v3, :cond_44

    if-eqz v1, :cond_3c

    goto :goto_44

    .line 4605
    :cond_3c
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Only system or phone callers can modify core apps"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4608
    :cond_44
    :goto_44
    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v4, p2, p3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 4614
    return-void

    .line 4602
    :cond_4e
    :goto_4e
    return-void
.end method

.method setSystemAppInstallState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)Z
    .registers 22
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "installed"    # Z
    .param p4, "userId"    # I

    .line 4618
    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v10, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 4619
    .local v11, "callingUid":I
    const/4 v0, 0x0

    const/4 v12, 0x1

    const/16 v3, 0x3e9

    if-eq v11, v3, :cond_17

    const/16 v3, 0x3e8

    if-ne v11, v3, :cond_15

    goto :goto_17

    :cond_15
    move v3, v0

    goto :goto_18

    :cond_17
    :goto_17
    move v3, v12

    :goto_18
    move v13, v3

    .line 4621
    .local v13, "calledFromSystemOrPhone":Z
    if-nez v13, :cond_25

    .line 4622
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SUSPEND_APPS"

    const-string/jumbo v5, "setSystemAppHiddenUntilInstalled"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4626
    :cond_25
    invoke-interface/range {p1 .. p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    .line 4628
    .local v14, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v14, :cond_97

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_3a

    move-object/from16 v4, p2

    goto :goto_99

    .line 4631
    :cond_3a
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCoreApp()Z

    move-result v3

    if-eqz v3, :cond_4f

    if-eqz v13, :cond_47

    goto :goto_4f

    .line 4632
    :cond_47
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Only system or phone callers can modify core apps"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4635
    :cond_4f
    :goto_4f
    invoke-interface {v14, v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v3

    if-ne v3, v2, :cond_5a

    .line 4636
    return v0

    .line 4639
    :cond_5a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 4641
    .local v15, "callingId":J
    if-eqz v2, :cond_73

    .line 4643
    :try_start_60
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    const/high16 v6, 0x400000

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p2

    move/from16 v5, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)I
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_90

    .line 4650
    nop

    .line 4661
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4650
    return v12

    .line 4654
    :cond_73
    :try_start_73
    new-instance v0, Landroid/content/pm/VersionedPackage;
    :try_end_75
    .catchall {:try_start_73 .. :try_end_75} :catchall_90

    const/4 v3, -0x1

    move-object/from16 v4, p2

    :try_start_78
    invoke-direct {v0, v4, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v3, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    .line 4656
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v3

    const/4 v5, 0x4

    .line 4654
    invoke-virtual {v1, v0, v3, v10, v5}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    :try_end_89
    .catchall {:try_start_78 .. :try_end_89} :catchall_8e

    .line 4659
    nop

    .line 4661
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4659
    return v12

    .line 4661
    :catchall_8e
    move-exception v0

    goto :goto_93

    :catchall_90
    move-exception v0

    move-object/from16 v4, p2

    :goto_93
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4662
    throw v0

    .line 4628
    .end local v15    # "callingId":J
    :cond_97
    move-object/from16 v4, p2

    .line 4629
    :goto_99
    return v0
.end method

.method setUpCustomResolverActivity(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V
    .registers 11
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 7390
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 7391
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 7395
    const-wide/16 v3, 0x0

    sget-object v5, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 7399
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v2, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7400
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 7401
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 7402
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 7403
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 7404
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x120

    iput v5, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 7406
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput v4, v3, Landroid/content/pm/ActivityInfo;->theme:I

    .line 7407
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-boolean v1, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 7408
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-boolean v1, v3, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 7409
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 7410
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput v4, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 7411
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput v4, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 7412
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput v4, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 7413
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 7414
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 7415
    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replacing default ResolverActivity with custom activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7417
    nop

    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    monitor-exit v0

    .line 7418
    return-void

    .line 7417
    :catchall_7c
    move-exception v1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_4 .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method shouldKeepUninstalledPackageLPr(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7292
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    monitor-enter v0

    .line 7293
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 7294
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public shutdown()V
    .registers 4

    .line 3118
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v0}, Lcom/android/server/pm/CompilerStats;->writeNow()V

    .line 3119
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DexManager;->writePackageDexUsageNow()V

    .line 3120
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PackageWatchdog;->writeNow()V

    .line 3122
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 3123
    :try_start_16
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageUsage;->writeNow(Ljava/lang/Object;)V

    .line 3125
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    .line 3126
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    .line 3127
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 3128
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writeSettings()V

    .line 3130
    :cond_42
    monitor-exit v0

    .line 3131
    return-void

    .line 3130
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_16 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public snapshotComputer()Lcom/android/server/pm/Computer;
    .registers 9

    .line 1108
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1111
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    return-object v0

    .line 1114
    :cond_b
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Computer;

    .line 1115
    .local v1, "oldSnapshot":Lcom/android/server/pm/Computer;
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 1117
    .local v3, "pendingVersion":I
    if-eqz v1, :cond_26

    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getVersion()I

    move-result v4

    if-ne v4, v3, :cond_26

    .line 1118
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object v0

    return-object v0

    .line 1121
    :cond_26
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1123
    :try_start_29
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/Computer;

    .line 1124
    .local v5, "rebuildSnapshot":Lcom/android/server/pm/Computer;
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    .line 1130
    .local v6, "rebuildVersion":I
    if-eqz v5, :cond_41

    invoke-interface {v5}, Lcom/android/server/pm/Computer;->getVersion()I

    move-result v7

    if-ne v7, v6, :cond_41

    .line 1131
    invoke-interface {v5}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object v0

    monitor-exit v4

    return-object v0

    .line 1134
    :cond_41
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v7
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_5a

    .line 1138
    :try_start_44
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    move v6, v2

    .line 1141
    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/PackageManagerService;->rebuildSnapshot(Lcom/android/server/pm/Computer;I)Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 1142
    .local v2, "newSnapshot":Lcom/android/server/pm/Computer;
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1143
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object v0

    monitor-exit v7
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_57

    :try_start_55
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_5a

    return-object v0

    .line 1144
    .end local v2    # "newSnapshot":Lcom/android/server/pm/Computer;
    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit v7
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    .end local v1    # "oldSnapshot":Lcom/android/server/pm/Computer;
    .end local v3    # "pendingVersion":I
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    :try_start_59
    throw v0

    .line 1145
    .end local v5    # "rebuildSnapshot":Lcom/android/server/pm/Computer;
    .end local v6    # "rebuildVersion":I
    .restart local v1    # "oldSnapshot":Lcom/android/server/pm/Computer;
    .restart local v3    # "pendingVersion":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    :catchall_5a
    move-exception v0

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method public systemReady()V
    .registers 16

    .line 4258
    const-string v0, "Only the system can claim the system is ready"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 4261
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4262
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    .line 4263
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_26

    .line 4264
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 4265
    .local v4, "dstCodePath":Ljava/io/File;
    invoke-static {v0, v4}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 4263
    .end local v4    # "dstCodePath":Ljava/io/File;
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 4267
    .end local v1    # "i":I
    :cond_26
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    .line 4270
    :cond_28
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceStub;->beforeSystemReady()V

    .line 4272
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    .line 4273
    new-instance v1, Lcom/android/server/pm/PackageManagerService$4;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v4, v0}, Lcom/android/server/pm/PackageManagerService$4;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 4286
    .local v1, "co":Landroid/database/ContentObserver;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_ephemeral_feature"

    .line 4287
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 4286
    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4289
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "instant_apps_enabled"

    .line 4290
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 4289
    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4291
    invoke-virtual {v1, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4293
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    const-class v5, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/AppsFilterImpl;->onSystemReady(Landroid/content/pm/PackageManagerInternal;)V

    .line 4298
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceStub;->updateSystemAppDefaultStateForAllUsers()V

    .line 4303
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4304
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4303
    invoke-static {v4, v6, v5}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;ILandroid/content/Context;)V

    .line 4306
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->disableSkuSpecificApps()V

    .line 4309
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4310
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "compatibility_mode"

    .line 4309
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_8d

    move v4, v3

    goto :goto_8e

    :cond_8d
    move v4, v6

    .line 4312
    .local v4, "compatibilityModeEnabled":Z
    :goto_8e
    invoke-static {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->setCompatibilityModeEnabled(Z)V

    .line 4314
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v5, :cond_ad

    .line 4315
    const-string v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "compatibility mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    :cond_ad
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v5

    .line 4319
    :try_start_b0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v7, v8}, Lcom/android/server/pm/Settings;->systemReady(Lcom/android/server/pm/resolution/ComponentResolver;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4320
    .local v7, "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_b9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_d1

    .line 4321
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4320
    add-int/lit8 v8, v8, 0x1

    goto :goto_b9

    .line 4323
    .end local v7    # "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    :cond_d1
    monitor-exit v5
    :try_end_d2
    .catchall {:try_start_b0 .. :try_end_d2} :catchall_1b9

    .line 4325
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->systemReady()V

    .line 4328
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v7}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 4329
    .local v5, "storage":Landroid/os/storage/StorageManager;
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {v5, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 4331
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerService;->systemReady()V

    .line 4332
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageDexOptimizer;->systemReady()V

    .line 4335
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    sget-object v8, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/pm/UserManagerService;->reconcileUsers(Ljava/lang/String;)V

    .line 4336
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    sget-object v9, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/pm/StorageEventHelper;->reconcileApps(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    .line 4338
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onSystemReady()V

    .line 4340
    sget-object v7, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 4341
    .local v7, "grantPermissionsUserIds":[I
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v8

    invoke-virtual {v8, v3, v3, v6}, Lcom/android/server/pm/UserManagerInternal;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v8

    .line 4345
    .local v8, "livingUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 4346
    .local v9, "livingUserCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_118
    if-ge v10, v9, :cond_131

    .line 4347
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    .line 4348
    .local v11, "userId":I
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v12, v11}, Lcom/android/server/pm/Settings;->isPermissionUpgradeNeeded(I)Z

    move-result v12

    if-eqz v12, :cond_12e

    .line 4349
    invoke-static {v7, v11}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    .line 4346
    .end local v11    # "userId":I
    :cond_12e
    add-int/lit8 v10, v10, 0x1

    goto :goto_118

    .line 4354
    .end local v10    # "i":I
    :cond_131
    array-length v10, v7

    move v11, v6

    :goto_133
    if-ge v11, v10, :cond_13f

    aget v12, v7, v11

    .line 4355
    .local v12, "userId":I
    iget-object v13, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {v13, v12}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->grantDefaultPermissions(I)V

    .line 4354
    .end local v12    # "userId":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_133

    .line 4358
    :cond_13f
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v10

    array-length v11, v10

    move v12, v6

    :goto_149
    if-ge v12, v11, :cond_157

    aget v13, v10, v12

    .line 4359
    .local v13, "userId":I
    invoke-static {}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyStub;->get()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyStub;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyStub;->grantDefaultPermissions(I)V

    .line 4358
    .end local v13    # "userId":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_149

    .line 4362
    :cond_157
    sget-object v10, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    if-ne v7, v10, :cond_160

    .line 4366
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {v10}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->scheduleReadDefaultPermissionExceptions()V

    .line 4369
    :cond_160
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    if-eqz v10, :cond_175

    .line 4370
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/pm/PackageManagerService$5;

    invoke-direct {v11, p0}, Lcom/android/server/pm/PackageManagerService$5;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4379
    :cond_175
    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4380
    .local v10, "overlayFilter":Landroid/content/IntentFilter;
    const-string/jumbo v11, "package"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4381
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/android/server/pm/PackageManagerService$6;

    invoke-direct {v12, p0}, Lcom/android/server/pm/PackageManagerService$6;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v11, v12, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4408
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {v11}, Lcom/android/server/pm/ModuleInfoProvider;->systemReady()V

    .line 4409
    new-instance v11, Landroid/util/BoostFramework;

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v3}, Landroid/util/BoostFramework;-><init>(Landroid/content/Context;Z)V

    .line 4414
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerService;->restoreAndApplyStagedSessionIfNeeded()V

    .line 4416
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 4419
    const-string/jumbo v2, "package_manager_service"

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 4420
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v11, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;

    invoke-direct {v11, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 4419
    invoke-static {v2, v3, v11}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 4429
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundDexOptService;->systemReady()V

    .line 4432
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    .line 4433
    return-void

    .line 4323
    .end local v5    # "storage":Landroid/os/storage/StorageManager;
    .end local v7    # "grantPermissionsUserIds":[I
    .end local v8    # "livingUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v9    # "livingUserCount":I
    .end local v10    # "overlayFilter":Landroid/content/IntentFilter;
    :catchall_1b9
    move-exception v2

    :try_start_1ba
    monitor-exit v5
    :try_end_1bb
    .catchall {:try_start_1ba .. :try_end_1bb} :catchall_1b9

    throw v2
.end method

.method unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .registers 7
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "suspendingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3311
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3312
    .local v0, "allPackages":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 3313
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v2, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;)V

    .line 3312
    invoke-virtual {v1, p1, v0, v2, p3}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 3314
    return-void
.end method

.method public updateComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)V
    .registers 22
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "nonLocalizedLabel"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/Integer;
    .param p4, "userId"    # I

    .line 3801
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    if-eqz v1, :cond_13c

    .line 3805
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3806
    .local v5, "callingUid":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3808
    .local v6, "componentPkgName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 3810
    .local v7, "computer":Lcom/android/server/pm/Computer;
    const-wide/16 v8, 0x0

    invoke-interface {v7, v6, v8, v9, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    .line 3811
    .local v8, "componentUid":I
    invoke-static {v5, v8}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    const-string v10, "The calling UID ("

    if-eqz v9, :cond_11d

    .line 3816
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v11, 0x10402a3

    .line 3817
    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3818
    .local v9, "allowedCallerPkg":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_115

    .line 3823
    const-wide/32 v11, 0x100000

    invoke-interface {v7, v9, v11, v12, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v11

    .line 3825
    .local v11, "allowedCallerUid":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_f6

    invoke-static {v5, v11}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v12

    if-eqz v12, :cond_f6

    .line 3829
    invoke-interface {v7, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 3830
    .local v10, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_db

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v12

    if-eqz v12, :cond_db

    .line 3831
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v12

    if-nez v12, :cond_66

    .line 3832
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v12

    if-eqz v12, :cond_62

    goto :goto_66

    :cond_62
    move-object/from16 v16, v7

    goto/16 :goto_dd

    .line 3837
    :cond_66
    :goto_66
    invoke-interface {v7}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v12

    invoke-interface {v12, v1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->componentExists(Landroid/content/ComponentName;)Z

    move-result v12

    if-eqz v12, :cond_ba

    .line 3841
    invoke-interface {v10, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    .line 3842
    invoke-interface {v12, v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;

    move-result-object v12

    .line 3844
    .local v12, "overrideLabelIcon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    if-nez v12, :cond_7d

    move-object v14, v13

    goto :goto_81

    :cond_7d
    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 3845
    .local v14, "existingLabel":Ljava/lang/String;
    :goto_81
    if-nez v12, :cond_85

    move-object v15, v13

    goto :goto_89

    :cond_85
    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    .line 3847
    .local v15, "existingIcon":Ljava/lang/Integer;
    :goto_89
    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_96

    .line 3848
    invoke-static {v15, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_96

    .line 3850
    return-void

    .line 3853
    :cond_96
    move-object/from16 v16, v7

    .end local v7    # "computer":Lcom/android/server/pm/Computer;
    .local v16, "computer":Lcom/android/server/pm/Computer;
    new-instance v7, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v7, v4, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda17;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v13, v6, v7}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 3857
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v4, v6, v13}, Lcom/android/server/pm/PendingPackageBroadcasts;->addComponent(ILjava/lang/String;Ljava/lang/String;)V

    .line 3859
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_b9

    .line 3860
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v7, v13, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3862
    :cond_b9
    return-void

    .line 3838
    .end local v12    # "overrideLabelIcon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "existingLabel":Ljava/lang/String;
    .end local v15    # "existingIcon":Ljava/lang/Integer;
    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    .restart local v7    # "computer":Lcom/android/server/pm/Computer;
    :cond_ba
    move-object/from16 v16, v7

    .end local v7    # "computer":Lcom/android/server/pm/Computer;
    .restart local v16    # "computer":Lcom/android/server/pm/Computer;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Component "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " not found"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3830
    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    .restart local v7    # "computer":Lcom/android/server/pm/Computer;
    :cond_db
    move-object/from16 v16, v7

    .line 3833
    .end local v7    # "computer":Lcom/android/server/pm/Computer;
    .restart local v16    # "computer":Lcom/android/server/pm/Computer;
    :goto_dd
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Changing the label is not allowed for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3825
    .end local v10    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    .restart local v7    # "computer":Lcom/android/server/pm/Computer;
    :cond_f6
    move-object/from16 v16, v7

    .line 3826
    .end local v7    # "computer":Lcom/android/server/pm/Computer;
    .restart local v16    # "computer":Lcom/android/server/pm/Computer;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ") is not allowed to change a component\'s label or icon"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3819
    .end local v11    # "allowedCallerUid":I
    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    .restart local v7    # "computer":Lcom/android/server/pm/Computer;
    :cond_115
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "There is no package defined as allowed to change a component\'s label or icon"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3812
    .end local v9    # "allowedCallerPkg":Ljava/lang/String;
    :cond_11d
    move-object/from16 v16, v7

    .end local v7    # "computer":Lcom/android/server/pm/Computer;
    .restart local v16    # "computer":Lcom/android/server/pm/Computer;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ") does not match the target UID"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3802
    .end local v5    # "callingUid":I
    .end local v6    # "componentPkgName":Ljava/lang/String;
    .end local v8    # "componentUid":I
    .end local v16    # "computer":Lcom/android/server/pm/Computer;
    :cond_13c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must specify a component"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method updateInstantAppInstallerLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "modifiedPackage"    # Ljava/lang/String;

    .line 2350
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_13

    .line 2351
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2352
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2353
    return-void

    .line 2355
    :cond_13
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService;->getInstantAppInstallerLPr()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService;->setUpInstantAppInstallerActivityLP(Landroid/content/pm/ActivityInfo;)V

    .line 2356
    return-void
.end method

.method public updatePackagesIfNeeded()V
    .registers 2

    .line 2995
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v0}, Lcom/android/server/pm/DexOptHelper;->performPackageDexOptUpgradeIfNeeded()V

    .line 2996
    return-void
.end method

.method updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V
    .registers 5
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userList"    # [I

    .line 2861
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/ChangedPackagesTracker;->updateSequenceNumber(Ljava/lang/String;[I)V

    .line 2862
    return-void
.end method

.method public verifyHoldLockToken(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 7165
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_35

    .line 7169
    if-eqz p1, :cond_2c

    .line 7173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holdLock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-ne v0, p0, :cond_24

    .line 7176
    return-void

    .line 7174
    :cond_24
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid holdLock() token"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7170
    :cond_2c
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "null holdLockToken"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7166
    :cond_35
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "holdLock requires a debuggable build"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForAppDataPrepared()V
    .registers 3

    .line 4250
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_5

    .line 4251
    return-void

    .line 4253
    :cond_5
    const-string/jumbo v1, "wait for prepareAppData"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 4254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    .line 4255
    return-void
.end method

.method writePackageList(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1448
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 1449
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1450
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 1451
    monitor-exit v0

    .line 1452
    return-void

    .line 1451
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method writePendingRestrictions()V
    .registers 6

    .line 1425
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 1426
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1427
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_34

    .line 1428
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1429
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1430
    .end local v3    # "userId":I
    goto :goto_13

    .line 1431
    :cond_29
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1432
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_31

    .line 1433
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_34

    .line 1434
    return-void

    .line 1432
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    :try_start_33
    throw v2

    .line 1433
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_34

    throw v1
.end method

.method writeSettings()V
    .registers 4

    .line 1437
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 1438
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1439
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1440
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 1441
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_22

    .line 1442
    :try_start_17
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1443
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1f

    .line 1444
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_22

    .line 1445
    return-void

    .line 1443
    :catchall_1f
    move-exception v2

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    :try_start_21
    throw v2

    .line 1444
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_22

    throw v1
.end method

.method writeSettingsLPrTEMP()V
    .registers 3

    .line 7159
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 7160
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;)V

    .line 7161
    return-void
.end method
