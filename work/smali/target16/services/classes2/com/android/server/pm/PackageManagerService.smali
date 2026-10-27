.class public Lcom/android/server/pm/PackageManagerService;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageSender;
.implements Landroid/content/pm/TestUtilityService;


# static fields
.field public static final BACKGROUND_HANDLER_CALLBACK:Landroid/os/Handler$Callback;

.field public static final DEBUG_COMPRESSION:Z

.field public static final DEBUG_INSTANT:Z

.field public static final DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

.field public static final DEFERRED_NO_KILL_POST_DELETE_DELAY_MS_EXTENDED:J

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

.field public static final MIN_INSTALLABLE_TARGET_SDK:I

.field public static final PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

.field public static final SYSTEM_PARTITIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/ScanPartition;",
            ">;"
        }
    .end annotation
.end field

.field public static sRestrictedPermissions:Ljava/util/Set;

.field public static final sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static sThreadPriorityBooster:Lcom/android/server/ThreadPriorityBooster;


# instance fields
.field public final mAmbientContextDetectionPackage:Ljava/lang/String;

.field public mAndroidApplication:Landroid/content/pm/ApplicationInfo;

.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field public final mAppInstallDir:Ljava/io/File;

.field public final mAppPredictionServicePackage:Ljava/lang/String;

.field public final mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

.field public final mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

.field public final mAvailableFeatures:Landroid/util/ArrayMap;

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public mCacheDir:Ljava/io/File;

.field public final mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field public final mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

.field public final mConfiguratorPackage:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mCustomResolverComponentName:Landroid/content/ComponentName;

.field public final mDefParseFlags:I

.field public final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field public final mDefaultTextClassifierPackage:Ljava/lang/String;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mDeveloperVerificationPolicyDelegatePackage:Ljava/lang/String;

.field public final mDeveloperVerificationServiceProvider:Landroid/content/ComponentName;

.field public mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field public final mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

.field public final mDirtyUsers:Landroid/util/ArraySet;

.field public final mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

.field public final mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

.field public mExistingPackages:Landroid/util/ArraySet;

.field public mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

.field public final mFactoryTest:Z

.field public mFirstBoot:Z

.field public final mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

.field public final mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

.field public final mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mHandler:Landroid/os/Handler;

.field public final mIncidentReportApproverPackage:Ljava/lang/String;

.field public final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field public final mIncrementalVersion:Ljava/lang/String;

.field public final mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

.field public final mInitialNonStoppedSystemPackages:Ljava/util/Set;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

.field public final mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

.field public final mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

.field public final mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

.field public final mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

.field public final mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

.field public final mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mIsEngBuild:Z

.field public final mIsPreNMR1Upgrade:Z

.field public final mIsPreQUpgrade:Z

.field public final mIsUpgrade:Z

.field public final mIsUserDebugBuild:Z

.field public final mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

.field public final mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mKeepUninstalledPackages:Landroid/util/ArraySet;

.field public final mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

.field public mLiveComputer:Lcom/android/server/pm/ComputerLocked;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mMetrics:Landroid/util/DisplayMetrics;

.field public final mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

.field public final mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

.field public mNextInstallToken:I

.field public final mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mNoKillInstallObservers:Ljava/util/Map;

.field public final mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

.field public final mOverlayConfigSignaturePackage:Ljava/lang/String;

.field public final mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

.field public final mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

.field public final mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

.field public final mPackageProperty:Lcom/android/server/pm/PackageProperty;

.field public final mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

.field public final mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mPackageUsage:Lcom/android/server/pm/PackageUsage;

.field public final mPackages:Lcom/android/server/utils/WatchedArrayMap;

.field public final mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

.field public final mPendingEnableRollback:Landroid/util/SparseArray;

.field public mPendingEnableRollbackToken:I

.field public final mPendingKillInstallObservers:Ljava/util/Map;

.field public final mPendingVerification:Landroid/util/SparseArray;

.field public mPendingVerificationToken:I

.field public mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

.field public mPlatformPackageOverlayPaths:[Ljava/lang/String;

.field public mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

.field public final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field public mPrepareAppDataFuture:Ljava/util/concurrent/Future;

.field public final mPriorSdkVersion:I

.field public final mPriorSdkVersionFull:I

.field public final mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

.field public mPromoteSystemApps:Z

.field public final mProtectedBroadcasts:Landroid/util/ArraySet;

.field public final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

.field public final mRecentsPackage:Ljava/lang/String;

.field public mReleaseOnSystemReady:Ljava/util/List;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

.field public mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

.field public final mRequiredInstallerPackage:Ljava/lang/String;

.field public final mRequiredPermissionControllerPackage:Ljava/lang/String;

.field public final mRequiredSdkSandboxPackage:Ljava/lang/String;

.field public final mRequiredUninstallerPackage:Ljava/lang/String;

.field public final mRequiredVerifierPackages:[Ljava/lang/String;

.field public final mResolveActivity:Landroid/content/pm/ActivityInfo;

.field public mResolveComponentName:Landroid/content/ComponentName;

.field public final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field public final mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

.field public mResolverReplaced:Z

.field public final mRetailDemoPackage:Ljava/lang/String;

.field public final mRunningInstalls:Landroid/util/SparseArray;

.field public volatile mSafeMode:Z

.field public final mSdkVersion:I

.field public final mSdkVersionFull:I

.field public final mSeparateProcesses:[Ljava/lang/String;

.field public mServiceStartWithDelay:J

.field public final mServicesExtensionPackageName:Ljava/lang/String;

.field public final mSettings:Lcom/android/server/pm/Settings;

.field public final mSetupWizardPackage:Ljava/lang/String;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

.field public final mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

.field public final mShouldStopSystemPackagesByDefault:Z

.field public final mSnapshotLock:Ljava/lang/Object;

.field public final mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

.field public final mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

.field public final mStorageManagerPackage:Ljava/lang/String;

.field public final mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

.field public volatile mSystemReady:Z

.field public final mSystemTextClassifierPackageName:Ljava/lang/String;

.field public final mTestUtilityService:Landroid/content/pm/TestUtilityService;

.field public final mTransferredPackages:Landroid/util/ArraySet;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

.field public final mWatcher:Lcom/android/server/utils/Watcher;

.field public final mWearableSensingPackage:Ljava/lang/String;

.field public final mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;


# direct methods
.method public static synthetic $r8$lambda$1Hh-4dRAKPAsGfGxf0jeDIg_UWo(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ResolveInfo;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$new$42()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2dq3gcB-FyNbaguPbHZ3fWQy7Qk(Lcom/android/server/pm/PackageManagerService;I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$getDevicePolicyManagementRoleHolderPackageName$46(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$37_f7uTIIApy3eBsvofAcu9Sx7U(ILandroid/util/ArrayMap;Ljava/util/Set;ILandroid/util/ArrayMap;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 15

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p0, :cond_5f

    .line 7437
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7438
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/overlay/OverlayPaths;

    .line 7440
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_5c

    .line 7444
    :cond_17
    invoke-virtual {p5, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v4

    .line 7445
    invoke-interface {v4, p3}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v4

    .line 7446
    invoke-interface {v4, v3}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 7449
    invoke-virtual {p4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_2b

    goto :goto_5c

    :cond_2b
    move v4, v0

    .line 7455
    :goto_2c
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_5c

    .line 7457
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7459
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    move v7, v0

    .line 7460
    :goto_3f
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_59

    .line 7461
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p5, v8}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v8

    .line 7462
    invoke-interface {v8, p3}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v8

    .line 7463
    invoke-interface {v8, v5, v3}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5f
    return-void
.end method

.method public static synthetic $r8$lambda$3mIb5ePUtsnF_Jw5WDT00aKPu4A(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;
    .registers 2

    .line 1722
    new-instance p1, Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/server/pm/ModuleInfoProvider;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public static synthetic $r8$lambda$4TqIhmUFc2FQUiHSQhzxuqSrjBE(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/CrossProfileIntentFilterHelper;
    .registers 9

    .line 1737
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v1

    .line 1738
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/CrossProfileIntentFilterHelper;-><init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/UserManagerInternal;Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$4Z1YtE7cxcYUZgWM-J4EjdW1x5M(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/SystemConfig;
    .registers 2

    .line 1700
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5rf1Sb88jhHfeC97Xa_s1UnQDGk(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/app/backup/IBackupManager;
    .registers 2

    .line 1734
    const-string p0, "backup"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7ScFlyIceZa-tV1ihbHhUUzf3CQ(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/ArtManagerService;
    .registers 2

    .line 1702
    new-instance p1, Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/server/pm/dex/ArtManagerService;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public static synthetic $r8$lambda$C9kvxs_v2PxV64P8O-yLepdg2Nc(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/util/DisplayMetrics;
    .registers 2

    .line 1708
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$CnHK9WLochNsODAQQ1UyvTWJFu0(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->lambda$notifyFirstLaunch$45(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DyxwdXZ2sKAQ7C3R9fNuovxQL_c(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/resolution/ComponentResolver;
    .registers 3

    .line 1686
    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$F8jOsg_2O5FqusOcsSfRHBrXXm0(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/pm/parsing/PackageParser2;
    .registers 5

    .line 1712
    new-instance v0, Lcom/android/internal/pm/parsing/PackageParser2;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$FLIwJWLINgdL2tNXXriFl5Opsto(ILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 5

    .line 3906
    invoke-interface {p4, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object p0

    .line 3907
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$FmXrzL7rJutJnjNWGEFS5oJzBmw(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;
    .registers 3

    .line 1706
    new-instance p1, Lcom/android/server/pm/DefaultAppProvider;

    new-instance p2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;

    invoke-direct {p2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda48;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;-><init>()V

    invoke-direct {p1, p2, p0}, Lcom/android/server/pm/DefaultAppProvider;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    return-object p1
.end method

.method public static synthetic $r8$lambda$Gx1bi3qoVKfWWPEV1ejhYf81aAw(IZZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 4

    .line 4757
    invoke-interface {p3, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object p0

    .line 4758
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setStopped(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    if-eqz p2, :cond_d

    const/4 p1, 0x0

    .line 4760
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->setNotLaunched(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    :cond_d
    return-void
.end method

.method public static synthetic $r8$lambda$J6o3D2Tfvh6ZiVoSjsM9OaQ5UVw(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;
    .registers 2

    .line 1703
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JBkyeqqcKcrkFXwHsWY-lfqZDZQ(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/app/AppOpsManagerInternal;
    .registers 2

    .line 1689
    const-class p0, Landroid/app/AppOpsManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManagerInternal;

    return-object p0
.end method

.method public static synthetic $r8$lambda$Kf225Nc8dxGmB7bsE01M60Oxbbs(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageMonitorCallbackHelper;
    .registers 2

    .line 1741
    new-instance p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;

    invoke-direct {p0}, Lcom/android/server/pm/PackageMonitorCallbackHelper;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$KrvHCSRRXEYuCzKJ1sxpJQo0ex0(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->lambda$setPackageStoppedState$55(Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lffb49nnzAYe4UN61UBep0za67w(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/Handler;
    .registers 5

    .line 1726
    new-instance p0, Lcom/android/server/ServiceThread;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "PackageManager"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 1728
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 1729
    new-instance v0, Lcom/android/server/pm/PackageHandler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PackageHandler;-><init>(Landroid/os/Looper;Lcom/android/server/pm/PackageManagerService;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$LoanWrFkSmqmYkKKDCgWwIc_YE4(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestChecksumsInternal$7()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NUyH-5EgnH_DZTUdQCD-424kYC0(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$QM-X9KVMGx-v0CUdTprfZy0wdkA(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V
    .registers 5

    .line 3534
    invoke-interface {p3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->restoreComponentLPw(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 3535
    invoke-interface {p3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public static synthetic $r8$lambda$QpReLR1HjwoiISM1g44KDjdL40M(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;
    .registers 4

    .line 1720
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection;

    .line 1721
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/pm/InstantAppResolverConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic $r8$lambda$R9OCUIE8Eb-uBJKcT18q6p7y_-E(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/pm/parsing/PackageParser2;
    .registers 7

    .line 1709
    new-instance v0, Lcom/android/internal/pm/parsing/PackageParser2;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    new-instance v2, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v3, p1, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$SharHq24opZoac5C2F2DOnnKnBk(Lcom/android/server/pm/PackageManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$systemReady$49(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WChYMR9It4Ie5CFHldnE5irC-Qw(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .registers 3

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$WsQevY_EOQYv9cZUCclQpmpR9Ms()Ljava/lang/Long;
    .registers 4

    .line 1300
    const-string v0, "deferred_no_kill_post_delete_delay_ms_extended"

    sget-wide v1, Lcom/android/server/pm/PackageManagerService;->DEFERRED_NO_KILL_POST_DELETE_DELAY_MS_EXTENDED:J

    const-string/jumbo v3, "package_manager_service"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$YN_zsIMedZwxGl_Li02d0bi2WJo(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UserManagerService;
    .registers 7

    .line 1690
    new-instance p4, Lcom/android/server/pm/UserManagerService;

    new-instance v0, Lcom/android/server/pm/UserDataPreparer;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/pm/UserDataPreparer;-><init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;)V

    invoke-direct {p4, p0, p5, v0, p3}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;)V

    return-object p4
.end method

.method public static synthetic $r8$lambda$YPzAQBEiCiZiw7HWQLLoRbiyn9w(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;)Lcom/android/server/pm/PackageInstallerService;
    .registers 6

    .line 1718
    new-instance v0, Lcom/android/server/pm/PackageInstallerService;

    .line 1719
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/server/pm/PackageInstallerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/util/function/Supplier;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$ZCj3lmoV_Zx9okgcq9uQPqhgiaE(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/compat/PlatformCompat;
    .registers 2

    .line 1699
    const-string/jumbo p0, "platform_compat"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/PlatformCompat;

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZK5tCshpQmlMZgJGT_dvYG10Bx0(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppsFilterImpl;
    .registers 2

    .line 1697
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 1698
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 1697
    invoke-static {p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->create(Lcom/android/server/pm/PackageManagerServiceInjector;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/pm/AppsFilterImpl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_M5jvSBeat0pp7HIizTORe7tN5U(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$deletePackageIfUnused$51(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cBJP-3SQh1-l5SXtvKkgmMg0Rsc(ILjava/util/function/Consumer;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 4

    .line 7621
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 7622
    invoke-interface {p2, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 7623
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public static synthetic $r8$lambda$dWX1CfMqFuW5gEejwGW9rs6ytsE(Landroid/content/Context;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 3

    .line 1688
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getAvailableFeatures()Landroid/util/ArrayMap;

    move-result-object p1

    .line 1687
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->create(Landroid/content/Context;Landroid/util/ArrayMap;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$deUxaNFaZtDzUKHCQdb1LdPEgJA(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Landroid/os/incremental/IncrementalManager;
    .registers 2

    .line 1705
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "incremental"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/incremental/IncrementalManager;

    return-object p0
.end method

.method public static synthetic $r8$lambda$eEuwX6rhyccHNkBz4XcIGCSRCRg(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$setPackageStoppedState$54(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fe9yRsyrevSfPhv48VqysSZCcnY(Lcom/android/server/pm/PackageManagerService;[ILcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$new$44([ILcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gfch2pI1qvy5VB8P3av_zci6UKo(Ljava/lang/String;ZLcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 4

    .line 4635
    invoke-virtual {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v0

    .line 4636
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    .line 4637
    invoke-virtual {p2, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object p0

    .line 4638
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$hOjhXJ9YMpFXDaErKecieWHgZCI(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DynamicCodeLogger;
    .registers 2

    .line 1701
    new-instance p1, Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/server/pm/dex/DynamicCodeLogger;-><init>(Lcom/android/server/pm/Installer;)V

    return-object p1
.end method

.method public static synthetic $r8$lambda$izDFL5YiVl5cP0pc3iMAPodtRZU(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$new$43()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j5KzlvWk9TTfMFAUB01t-Gg_AqU(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/PackageManagerService;->lambda$requestFileChecksums$4(Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lNFSVjkK-rEfgySY2Ol9NfqUg78(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/Settings;
    .registers 12

    .line 1692
    new-instance v0, Lcom/android/server/pm/Settings;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 1693
    invoke-static {}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->createInstance()Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    move-result-object v2

    .line 1694
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/Settings;-><init>(Ljava/io/File;Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$lPftSf7b483FLpBxTyyHfFTo9MY(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SharedLibrariesImpl;
    .registers 3

    .line 1736
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/SharedLibrariesImpl;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$mwi35aYzu1IEej25iF0tBQg2gH8(Ljava/lang/String;Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V
    .registers 2

    .line 1778
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    return-void
.end method

.method public static synthetic $r8$lambda$mx5cCvSWi41BPe3mVl6DECtM_ho(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/PackageManagerService;->lambda$requestChecksumsInternal$8(Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oKuPIpKjnh2q0ulRxEHQu6XRsGI(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestFileChecksums$3()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oviSJhc44C-YTWipt-DYXgcWaWw(Lcom/android/server/pm/PackageManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestFileChecksums$1()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p8Ky1neiIR1xqBFc9FaPrOjt7f8(Lcom/android/server/pm/PackageManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->lambda$requestChecksumsInternal$5()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p_fPVsKBbhj2m_wyJLByZWTJmJw(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$r6R6hXY46S5fZZ0Z8nw75riokrg(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/pm/parsing/PackageParser2;
    .registers 5

    .line 1714
    new-instance v0, Lcom/android/internal/pm/parsing/PackageParser2;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$rThwBUT1nmjGHsTCB0aXLpT6VYY(Landroid/content/Context;)Landroid/app/role/RoleManager;
    .registers 2

    .line 1706
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    return-object p0
.end method

.method public static synthetic $r8$lambda$sc1WLFT2RuY2JzYA-Xh7kZb2XeY(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    .registers 2

    .line 1723
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->create(Landroid/content/Context;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t_lg7b0YYBqCX2az6PB5b4vAPQ0(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/UpdateOwnershipHelper;
    .registers 2

    .line 1740
    new-instance p0, Lcom/android/server/pm/UpdateOwnershipHelper;

    invoke-direct {p0}, Lcom/android/server/pm/UpdateOwnershipHelper;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$xBVXjkY5yDQPern9rY1vDaZeYpE(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 9

    .line 1754
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1755
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 1757
    invoke-interface {v1, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 1759
    const-string p0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find package setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_a3

    .line 1762
    :cond_2d
    :try_start_2d
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    .line 1764
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v4

    .line 1763
    invoke-interface {v1, v4}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v1

    .line 1765
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getSeInfo()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_5a

    .line 1768
    const-string p0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_2d .. :try_end_56} :catchall_2b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1771
    :cond_5a
    :try_start_5a
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1772
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v5

    .line 1771
    invoke-static {v2, v3, v1, v5}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/SharedUserApi;Lcom/android/server/compat/PlatformCompat;)Ljava/lang/String;

    move-result-object v1

    .line 1774
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9e

    .line 1775
    const-string v2, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating seInfo for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 1779
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 1781
    :cond_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_5a .. :try_end_9f} :catchall_2b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_a3
    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_2b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public static synthetic $r8$lambda$ycLid5CfrcIKxha4GPTBH7u22Kc(I)[Ljava/lang/Integer;
    .registers 1

    .line 1620
    new-array p0, p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic $r8$lambda$zJ0AOC6e_dMbse9Db9Y-SKPJ384()Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 1707
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$fgetmAndroidApplication(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ApplicationInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppDataHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/AppDataHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/BroadcastHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultAppProvider(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DefaultAppProvider;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeveloperVerificationServiceProvider(Lcom/android/server/pm/PackageManagerService;)Landroid/content/ComponentName;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDeveloperVerificationServiceProvider:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDexOptHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DexOptHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDistractingPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DistractingPackageHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDomainVerificationConnection(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/DomainVerificationConnection;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDynamicCodeLogger(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/dex/DynamicCodeLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrozenPackagesSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstallPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstallPackageHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstantAppInstallerInfo(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ResolveInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstrumentation(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/WatchedArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstrumentationSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsolatedOwnersSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLiveComputer(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ComputerLocked;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModuleInfoProvider(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextMoveId(Lcom/android/server/pm/PackageManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageMonitorCallbackHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageMonitorCallbackHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageObserverHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageObserverHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageProperty(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageProperty;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageStateWriteLock(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerTracedLock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackagesSnapshot(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/SnapshotCache;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPlatformPackage(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPreferredActivityHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PreferredActivityHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPriorSdkVersion(Lcom/android/server/pm/PackageManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/pm/PackageManagerService;->mPriorSdkVersion:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequiredSdkSandboxPackage(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolveActivity(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolveIntentHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ResolveIntentHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSharedLibraries(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SharedLibrariesImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSnapshotStatistics(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SnapshotStatistics;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStorageEventHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/StorageEventHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuspendPackageHelper(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/SuspendPackageHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemReady(Lcom/android/server/pm/PackageManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTestUtilityService(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/TestUtilityService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWebInstantAppsDisabled(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/WatchedSparseBooleanArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmSafeMode(Lcom/android/server/pm/PackageManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearApplicationUserDataLIF(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;IZ)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->clearApplicationUserDataLIF(Lcom/android/server/pm/Computer;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->enforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceCanSetDistractingPackageRestrictionsAsUser(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->enforceCanSetDistractingPackageRestrictionsAsUser(IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;ZLandroid/content/pm/UserPackage;IILjava/lang/String;)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/PackageManagerService;->enforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/Computer;ZLandroid/content/pm/UserPackage;IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceOwnerRights(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mflushPackageRestrictionsAsUserInternalLocked(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfreezePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;Z)Lcom/android/server/pm/PackageFreezer;
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;Z)Lcom/android/server/pm/PackageFreezer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->notifyPackageUseInternal(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetComponentEnabledSettingsIfNeededLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->resetComponentEnabledSettingsIfNeededLPw(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEnabledOverlayPackages(Lcom/android/server/pm/PackageManagerService;ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->setEnabledOverlayPackages(ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setEnabledSettings(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 353
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 358
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    const/4 v0, 0x0

    .line 478
    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    const/16 v1, 0x18

    .line 566
    sput v1, Lcom/android/server/pm/PackageManagerService;->MIN_INSTALLABLE_TARGET_SDK:I

    .line 724
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda1;-><init>()V

    .line 725
    invoke-static {v1}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v1

    .line 724
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    .line 732
    new-array v0, v0, [Landroid/os/incremental/PerUidReadTimeouts;

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 916
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 917
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/pm/PackageManagerService;->DEFERRED_NO_KILL_POST_DELETE_DELAY_MS_EXTENDED:J

    .line 927
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    .line 928
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/pm/PackageManagerService;->PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

    const-wide/16 v1, 0x7

    .line 934
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/PackageManagerService;->DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    .line 993
    new-instance v0, Lcom/android/server/ThreadPriorityBooster;

    const/4 v1, -0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/ThreadPriorityBooster;-><init>(II)V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sThreadPriorityBooster:Lcom/android/server/ThreadPriorityBooster;

    .line 1125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1647
    new-instance v0, Lcom/android/server/pm/PackageManagerService$2;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->BACKGROUND_HANDLER_CALLBACK:Landroid/os/Handler$Callback;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerServiceTestParams;)V
    .registers 8

    .line 1856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 625
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 630
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 633
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v2, "PackageManagerService.mPackages"

    invoke-direct {v1, v0, v0, v2}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 638
    new-instance v1, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 641
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "PackageManagerService.mIsolatedOwners"

    invoke-direct {v2, v1, v1, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;

    const/4 v1, 0x0

    .line 649
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 683
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 685
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "PackageManagerService.mFrozenPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 707
    new-instance v2, Lcom/android/server/pm/PackageObserverHelper;

    invoke-direct {v2}, Lcom/android/server/pm/PackageObserverHelper;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 768
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 771
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "PackageManagerService.mInstrumentation"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 778
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    .line 781
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 788
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 794
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 801
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    .line 808
    iput v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 814
    iput v2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    .line 820
    new-instance v3, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 826
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

    .line 941
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 943
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    const/4 v3, 0x1

    .line 945
    iput v3, p0, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 970
    new-instance v3, Lcom/android/server/pm/PackageUsage;

    invoke-direct {v3}, Lcom/android/server/pm/PackageUsage;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    .line 1038
    new-instance v3, Lcom/android/server/pm/PackageManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PackageManagerService$1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    .line 1136
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    .line 1857
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1858
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->bootstrap(Lcom/android/server/pm/PackageManagerService;)V

    .line 1859
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 1860
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 1861
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1862
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 1863
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1864
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1865
    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1866
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1867
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1868
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1869
    new-instance v4, Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {v4, v3}, Lcom/android/server/pm/UserNeedsBadgingCache;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 1870
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 1871
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 1872
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 1873
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 1875
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->apexManager:Lcom/android/server/pm/ApexManager;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 1876
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->artManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    .line 1877
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->availableFeatures:Landroid/util/ArrayMap;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 1878
    iget v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->defParseFlags:I

    iput v3, p0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 1879
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->defaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 1880
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->legacyPermissionManagerInternal:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 1881
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->dynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 1882
    iget-boolean v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->factoryTest:Z

    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    .line 1883
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->incrementalManager:Landroid/os/incremental/IncrementalManager;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 1884
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->installerService:Lcom/android/server/pm/PackageInstallerService;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 1885
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 1886
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->changedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 1887
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->instantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 1888
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->instantAppResolverSettingsComponent:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 1889
    iget-boolean v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isPreNmr1Upgrade:Z

    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    .line 1890
    iget-boolean v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isPreQupgrade:Z

    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z

    .line 1891
    iget v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->priorSdkVersion:I

    iput v3, p0, Lcom/android/server/pm/PackageManagerService;->mPriorSdkVersion:I

    .line 1892
    iget v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->priorSdkVersionFull:I

    iput v3, p0, Lcom/android/server/pm/PackageManagerService;->mPriorSdkVersionFull:I

    .line 1893
    iget-boolean v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isUpgrade:Z

    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    .line 1894
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->Metrics:Landroid/util/DisplayMetrics;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1895
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->moduleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 1896
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->moveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 1897
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->overlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 1898
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->packageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    .line 1899
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->pendingPackageBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 1900
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->testUtilityService:Landroid/content/pm/TestUtilityService;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    .line 1901
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->processLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 1902
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->protectedPackages:Lcom/android/server/pm/ProtectedPackages;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 1903
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->separateProcesses:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 1904
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredVerifierPackages:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 1905
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredInstallerPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 1906
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredUninstallerPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 1907
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredPermissionControllerPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 1908
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->setupWizardPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    .line 1909
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->storageManagerPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    .line 1910
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->defaultTextClassifierPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 1911
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->systemTextClassifierPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 1912
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->retailDemoPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    .line 1913
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->recentsPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    .line 1914
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->ambientContextDetectionPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    .line 1915
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->wearableSensingPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mWearableSensingPackage:Ljava/lang/String;

    .line 1916
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->configuratorPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    .line 1917
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->appPredictionServicePackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 1918
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->incidentReportApproverPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 1919
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->servicesExtensionPackageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 1920
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->sharedSystemSharedLibraryPackageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    .line 1921
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->overlayConfigSignaturePackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 1922
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->resolveComponentName:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 1923
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->requiredSdkSandboxPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    .line 1924
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->initialNonStoppedSystemPackages:Ljava/util/Set;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 1925
    iget-boolean v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->shouldStopSystemPackagesByDefault:Z

    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    .line 1926
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->developerVerificationServiceProvider:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDeveloperVerificationServiceProvider:Landroid/content/ComponentName;

    .line 1928
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->developerVerificationPolicyDelegatePackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDeveloperVerificationPolicyDelegatePackage:Ljava/lang/String;

    .line 1931
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->createLiveComputer()Lcom/android/server/pm/ComputerLocked;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 1932
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 1934
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->packages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 1935
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->freeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    .line 1936
    iget v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->sdkVersion:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    .line 1937
    iget v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->sdkVersionFull:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService;->mSdkVersionFull:I

    .line 1938
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->appInstallDir:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 1939
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isEngBuild:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    .line 1940
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->isUserDebugBuild:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    .line 1941
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->incrementalVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalVersion:Ljava/lang/String;

    .line 1942
    new-instance v0, Lcom/android/server/pm/DomainVerificationConnection;

    invoke-direct {v0, p0}, Lcom/android/server/pm/DomainVerificationConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 1944
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->broadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 1945
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->appDataHelper:Lcom/android/server/pm/AppDataHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 1946
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->installPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 1947
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->removePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 1948
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->initAndSystemPackageHelper:Lcom/android/server/pm/InitAppsHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 1949
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->deletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 1950
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->preferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 1951
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->resolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 1952
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->dexOptHelper:Lcom/android/server/pm/DexOptHelper;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 1953
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->suspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 1954
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->distractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 1956
    invoke-virtual {p1, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->setDeletePackageHelper(Lcom/android/server/pm/DeletePackageHelper;)V

    .line 1958
    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->storageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 1959
    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceTestParams;->packageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 1961
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService;->registerObservers(Z)V

    const/16 p0, 0x8

    .line 1962
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;ZLjava/lang/String;ZZILjava/lang/String;I)V
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v0, p6

    move/from16 v2, p8

    .line 1969
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 620
    new-instance v3, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v3}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 625
    new-instance v3, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v5, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v3, v4, v5}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 630
    new-instance v3, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 633
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v5, "PackageManagerService.mPackages"

    invoke-direct {v4, v3, v3, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 638
    new-instance v3, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 641
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v5, "PackageManagerService.mIsolatedOwners"

    invoke-direct {v4, v3, v3, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwnersSnapshot:Lcom/android/server/utils/SnapshotCache;

    const/4 v7, 0x0

    .line 649
    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 683
    new-instance v3, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 685
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v5, "PackageManagerService.mFrozenPackages"

    invoke-direct {v4, v3, v3, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 707
    new-instance v3, Lcom/android/server/pm/PackageObserverHelper;

    invoke-direct {v3}, Lcom/android/server/pm/PackageObserverHelper;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 768
    new-instance v3, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 771
    new-instance v4, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v5, "PackageManagerService.mInstrumentation"

    invoke-direct {v4, v3, v3, v5}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mInstrumentationSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 778
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    .line 781
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 788
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 794
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    .line 801
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v8, 0x0

    .line 808
    iput v8, v1, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    .line 814
    iput v8, v1, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    .line 820
    new-instance v3, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 826
    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 828
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 835
    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 836
    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 838
    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 839
    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 841
    iput-boolean v8, v1, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 854
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 857
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 858
    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    .line 860
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 861
    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    .line 870
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 875
    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 887
    new-instance v3, Lcom/android/server/pm/PackageProperty;

    invoke-direct {v3}, Lcom/android/server/pm/PackageProperty;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 941
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 943
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    const/4 v9, 0x1

    .line 945
    iput v9, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 970
    new-instance v3, Lcom/android/server/pm/PackageUsage;

    invoke-direct {v3}, Lcom/android/server/pm/PackageUsage;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    .line 1038
    new-instance v3, Lcom/android/server/pm/PackageManagerService$1;

    invoke-direct {v3, v1}, Lcom/android/server/pm/PackageManagerService$1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    .line 1136
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    move/from16 v3, p4

    .line 1970
    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    move/from16 v3, p5

    .line 1971
    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    .line 1972
    iput v0, v1, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    .line 1974
    iput v2, v1, Lcom/android/server/pm/PackageManagerService;->mSdkVersionFull:I

    .line 1977
    invoke-static {v2}, Landroid/os/Build;->getMajorSdkVersion(I)I

    move-result v3

    if-ne v3, v0, :cond_9b1

    move-object/from16 v3, p7

    .line 1982
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mIncrementalVersion:Ljava/lang/String;

    .line 1983
    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1984
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemWrapper()Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;->disablePackageCaches()V

    .line 1986
    new-instance v10, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v0, "PackageManagerTiming"

    const-wide/32 v2, 0x40000

    invoke-direct {v10, v0, v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    .line 1988
    new-instance v0, Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-direct {v0}, Lcom/android/server/pm/PendingPackageBroadcasts;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    .line 1990
    invoke-virtual {v6, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->bootstrap(Lcom/android/server/pm/PackageManagerService;)V

    .line 1991
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1992
    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1993
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstallLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    const/4 v11, 0x3

    .line 1994
    invoke-static {v0, v11}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    const/16 v0, 0xbf4

    .line 1996
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1995
    invoke-static {v0, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1998
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move/from16 v0, p2

    .line 1999
    iput-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    .line 2000
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    .line 2001
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 2002
    new-instance v0, Lcom/android/server/pm/FreeStorageHelper;

    invoke-direct {v0, v1}, Lcom/android/server/pm/FreeStorageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    .line 2005
    const-string v0, "createSubComponents"

    invoke-virtual {v10, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2008
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2009
    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    new-instance v2, Lcom/android/server/pm/local/PackageManagerLocalImpl;

    invoke-direct {v2, v1}, Lcom/android/server/pm/local/PackageManagerLocalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-static {v0, v2}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2011
    const-class v0, Landroid/content/pm/TestUtilityService;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2012
    const-class v0, Landroid/content/pm/TestUtilityService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/TestUtilityService;

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    .line 2013
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2014
    new-instance v2, Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {v2, v0}, Lcom/android/server/pm/UserNeedsBadgingCache;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 2015
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 2016
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 2017
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2018
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getIncrementalManager()Landroid/os/incremental/IncrementalManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 2019
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 2020
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLegacyPermissionManagerInternal()Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 2021
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v2

    .line 2022
    new-instance v3, Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/PackageManagerService$3;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/compat/PlatformCompat;)V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    .line 2045
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2047
    const-string v2, "get system config"

    invoke-virtual {v10, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2048
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v12

    .line 2049
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2051
    const-string v2, "addSharedUsers"

    invoke-virtual {v10, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2052
    const-string v2, "android.uid.system"

    const/16 v3, 0x3e8

    const/16 v4, 0x8

    invoke-virtual {v0, v2, v3, v9, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2054
    const-string v2, "android.uid.phone"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v2, v3, v9, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2056
    const-string v2, "android.uid.log"

    const/16 v3, 0x3ef

    invoke-virtual {v0, v2, v3, v9, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2058
    const-string v2, "android.uid.nfc"

    const/16 v3, 0x403

    invoke-virtual {v0, v2, v3, v9, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2060
    const-string v2, "android.uid.bluetooth"

    const/16 v3, 0x3ea

    invoke-virtual {v0, v2, v3, v9, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2062
    const-string v2, "android.uid.shell"

    const/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v9, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2064
    const-string v2, "android.uid.se"

    const/16 v3, 0x42c

    invoke-virtual {v0, v2, v3, v9, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2066
    const-string v2, "android.uid.networkstack"

    const/16 v3, 0x431

    invoke-virtual {v0, v2, v3, v9, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2068
    const-string v2, "android.uid.uwb"

    const/16 v3, 0x43b

    invoke-virtual {v0, v2, v3, v9, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 2070
    invoke-virtual {v12}, Lcom/android/server/SystemConfig;->getOemDefinedUids()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2071
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v8

    :goto_234
    if-ge v3, v2, :cond_24e

    .line 2073
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v5, v13, v14, v9, v4}, Lcom/android/server/pm/Settings;->addOemSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    add-int/lit8 v3, v3, 0x1

    goto :goto_234

    .line 2077
    :cond_24e
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2079
    const-string v0, "debug.separate_processes"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_295

    .line 2081
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_295

    .line 2082
    const-string v2, "*"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_274

    const/4 v0, 0x2

    .line 2083
    iput v0, v1, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 2084
    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 2085
    const-string v0, "PackageManager"

    const-string v2, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_299

    .line 2087
    :cond_274
    iput v8, v1, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 2088
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 2089
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running with debug.separate_processes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_299

    .line 2093
    :cond_295
    iput v8, v1, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 2094
    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 2097
    :goto_299
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 2098
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getArtManagerService()Lcom/android/server/pm/dex/ArtManagerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    .line 2099
    new-instance v0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 2100
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 2101
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 2103
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 2104
    invoke-virtual {v0, v8}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2106
    invoke-virtual {v12}, Lcom/android/server/SystemConfig;->getAvailableFeatures()Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 2108
    new-instance v14, Lcom/android/server/pm/ProtectedPackages;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v14, v0}, Lcom/android/server/pm/ProtectedPackages;-><init>(Landroid/content/Context;)V

    iput-object v14, v1, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 2110
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getApexManager()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 2111
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 2113
    new-instance v0, Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-direct {v0}, Lcom/android/server/pm/ChangedPackagesTracker;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 2115
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "app"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 2117
    new-instance v0, Lcom/android/server/pm/DomainVerificationConnection;

    invoke-direct {v0, v1}, Lcom/android/server/pm/DomainVerificationConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 2118
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object v15

    iput-object v15, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 2119
    invoke-interface {v15, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setConnection(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;)V

    .line 2121
    new-instance v5, Lcom/android/server/pm/BroadcastHelper;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-direct {v5, v0}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 2122
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageMonitorCallbackHelper()Lcom/android/server/pm/PackageMonitorCallbackHelper;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 2123
    new-instance v2, Lcom/android/server/pm/AppDataHelper;

    invoke-direct {v2, v1}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 2124
    new-instance v3, Lcom/android/server/pm/RemovePackageHelper;

    invoke-direct {v3, v1, v2, v5}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/BroadcastHelper;)V

    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 2125
    new-instance v4, Lcom/android/server/pm/DeletePackageHelper;

    invoke-direct {v4, v1, v3, v5}, Lcom/android/server/pm/DeletePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V

    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 2127
    new-instance v0, Lcom/android/server/pm/InstallPackageHelper;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 2130
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2131
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v7

    invoke-direct {v0, v2, v11, v7, v4}, Lcom/android/server/pm/InstantAppRegistry;-><init>(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/pm/DeletePackageHelper;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2133
    invoke-virtual {v13, v4}, Lcom/android/server/pm/SharedLibrariesImpl;->setDeletePackageHelper(Lcom/android/server/pm/DeletePackageHelper;)V

    .line 2134
    new-instance v0, Lcom/android/server/pm/PreferredActivityHelper;

    invoke-direct {v0, v1, v5}, Lcom/android/server/pm/PreferredActivityHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/BroadcastHelper;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    move-object/from16 v20, v15

    .line 2135
    new-instance v15, Lcom/android/server/pm/ResolveIntentHelper;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2136
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v18

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    new-instance v13, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda37;

    invoke-direct {v13, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v8, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda38;

    invoke-direct {v8, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    move-object/from16 v17, v0

    move-object/from16 v16, v2

    move-object/from16 v19, v7

    move-object/from16 v23, v8

    move-object/from16 v21, v11

    move-object/from16 v22, v13

    invoke-direct/range {v15 .. v23}, Lcom/android/server/pm/ResolveIntentHelper;-><init>(Landroid/content/Context;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/UserNeedsBadgingCache;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    iput-object v15, v1, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2138
    new-instance v0, Lcom/android/server/pm/DexOptHelper;

    invoke-direct {v0, v1}, Lcom/android/server/pm/DexOptHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 2139
    new-instance v0, Lcom/android/server/pm/SuspendPackageHelper;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-direct {v0, v1, v2, v5, v14}, Lcom/android/server/pm/SuspendPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/ProtectedPackages;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 2141
    new-instance v2, Lcom/android/server/pm/DistractingPackageHelper;

    invoke-direct {v2, v1, v5, v0}, Lcom/android/server/pm/DistractingPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/SuspendPackageHelper;)V

    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 2143
    new-instance v0, Lcom/android/server/pm/StorageEventHelper;

    invoke-direct {v0, v1, v4, v3}, Lcom/android/server/pm/StorageEventHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/RemovePackageHelper;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 2146
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 2150
    :try_start_3a9
    new-instance v0, Lcom/android/server/pm/SnapshotStatistics;

    invoke-direct {v0}, Lcom/android/server/pm/SnapshotStatistics;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 2151
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2152
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->createLiveComputer()Lcom/android/server/pm/ComputerLocked;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 2153
    invoke-virtual {v1, v9}, Lcom/android/server/pm/PackageManagerService;->registerObservers(Z)V

    .line 2154
    monitor-exit v3
    :try_end_3bf
    .catchall {:try_start_3a9 .. :try_end_3bf} :catchall_9ab

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2156
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 2158
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v3

    .line 2160
    :try_start_3ca
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4
    :try_end_3d0
    .catchall {:try_start_3ca .. :try_end_3d0} :catchall_998

    .line 2161
    :try_start_3d0
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 2162
    new-instance v5, Lcom/android/server/pm/ProcessLoggingHandler;

    invoke-direct {v5}, Lcom/android/server/pm/ProcessLoggingHandler;-><init>()V

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 2163
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    const-wide/32 v6, 0x927c0

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 2166
    invoke-virtual {v12}, Lcom/android/server/SystemConfig;->getSharedLibraries()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2167
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3f0
    if-ge v6, v5, :cond_403

    .line 2169
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    invoke-virtual {v7, v8}, Lcom/android/server/pm/SharedLibrariesImpl;->addBuiltInSharedLibraryLPw(Lcom/android/server/SystemConfig$SharedLibraryEntry;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3f0

    :catchall_400
    move-exception v0

    goto/16 :goto_99b

    :cond_403
    const/4 v6, 0x0

    :goto_404
    if-ge v6, v5, :cond_43a

    .line 2176
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2177
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    .line 2178
    iget-object v11, v8, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    array-length v11, v11

    const/4 v13, 0x0

    :goto_416
    if-ge v13, v11, :cond_434

    .line 2180
    iget-object v14, v8, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    aget-object v14, v14, v13

    move v15, v9

    move-object/from16 p5, v10

    const-wide/16 v9, -0x1

    .line 2181
    invoke-interface {v2, v14, v9, v10}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v14

    if-eqz v14, :cond_42e

    .line 2183
    invoke-interface {v2, v7, v9, v10}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v9

    .line 2184
    invoke-virtual {v9, v14}, Landroid/content/pm/SharedLibraryInfo;->addDependency(Landroid/content/pm/SharedLibraryInfo;)V

    :cond_42e
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, p5

    move v9, v15

    goto :goto_416

    :cond_434
    move v15, v9

    move-object/from16 p5, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_404

    :cond_43a
    move v15, v9

    move-object/from16 p5, v10

    .line 2189
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy()Z

    .line 2191
    const-string v0, "loadFallbacks"

    move-object/from16 v5, p5

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2192
    invoke-static {}, Landroid/content/pm/FallbackCategoryProvider;->loadFallbacks()V

    .line 2193
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2195
    const-string/jumbo v0, "read user settings"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2196
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2197
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 2196
    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/Settings;->readLPw(Lcom/android/server/pm/Computer;Ljava/util/List;)Z

    move-result v0

    xor-int/2addr v0, v15

    iput-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 2198
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2200
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v0, :cond_485

    .line 2201
    const-string/jumbo v0, "setFirstBoot: "

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_474
    .catchall {:try_start_3d0 .. :try_end_474} :catchall_400

    .line 2203
    :try_start_474
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->setFirstBoot()V
    :try_end_479
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_474 .. :try_end_479} :catch_47a
    .catchall {:try_start_474 .. :try_end_479} :catchall_400

    goto :goto_482

    :catch_47a
    move-exception v0

    .line 2205
    :try_start_47b
    const-string v6, "PackageManager"

    const-string v7, "Could not set First Boot: "

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2207
    :goto_482
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2210
    :cond_485
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v6, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-interface {v0, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 2211
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->readLegacyPermissionStateTEMP()V

    .line 2213
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v0, :cond_49a

    .line 2214
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->requestCopyPreoptedFiles()V

    .line 2217
    :cond_49a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1040248

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4b1

    .line 2220
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    .line 2224
    :cond_4b1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/16 v0, 0xbfe

    .line 2226
    invoke-static {v0, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2229
    const-string v0, "BOOTCLASSPATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2230
    const-string v6, "SYSTEMSERVERCLASSPATH"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v0, :cond_4cf

    .line 2233
    const-string v0, "PackageManager"

    const-string v7, "No BOOTCLASSPATH found!"

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4cf
    if-nez v6, :cond_4d8

    .line 2237
    const-string v0, "PackageManager"

    const-string v6, "No SYSTEMSERVERCLASSPATH found!"

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    :cond_4d8
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 2241
    iget-object v6, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    move-object/from16 v7, p3

    .line 2242
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v7, v6, 0x1

    iput-boolean v7, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-nez v6, :cond_526

    .line 2244
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upgrading from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v8, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_526
    if-nez v6, :cond_52b

    .line 2249
    iget v7, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    goto :goto_52c

    :cond_52b
    const/4 v7, -0x1

    :goto_52c
    iput v7, v1, Lcom/android/server/pm/PackageManagerService;->mPriorSdkVersion:I

    if-nez v6, :cond_533

    .line 2250
    iget v7, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersionFull:I

    goto :goto_534

    :cond_533
    const/4 v7, -0x1

    :goto_534
    iput v7, v1, Lcom/android/server/pm/PackageManagerService;->mPriorSdkVersionFull:I

    .line 2251
    new-instance v7, Lcom/android/server/pm/InitAppsHelper;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2252
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemPartitions()Ljava/util/List;

    move-result-object v14

    invoke-direct {v7, v1, v8, v9, v14}, Lcom/android/server/pm/InitAppsHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;)V

    iput-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    if-nez v6, :cond_551

    .line 2255
    iget v7, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const/16 v8, 0x16

    if-gt v7, v8, :cond_551

    move v7, v15

    goto :goto_552

    :cond_551
    const/4 v7, 0x0

    :goto_552
    iput-boolean v7, v1, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z

    if-nez v6, :cond_55e

    .line 2258
    iget v7, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const/16 v8, 0x19

    if-ge v7, v8, :cond_55e

    move v7, v15

    goto :goto_55f

    :cond_55e
    const/4 v7, 0x0

    :goto_55f
    iput-boolean v7, v1, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    if-nez v6, :cond_56b

    .line 2259
    iget v6, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const/16 v7, 0x1d

    if-ge v6, v7, :cond_56b

    move v6, v15

    goto :goto_56c

    :cond_56b
    const/4 v6, 0x0

    :goto_56c
    iput-boolean v6, v1, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z

    .line 2261
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 2262
    invoke-virtual {v6}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    .line 2264
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v6

    if-eqz v6, :cond_5af

    .line 2267
    new-instance v6, Landroid/util/ArraySet;

    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    const/4 v6, 0x0

    .line 2268
    :goto_586
    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_59e

    .line 2269
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    invoke-virtual {v8, v6}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_586

    .line 2275
    :cond_59e
    const-string v6, "cross profile intent filter update"

    invoke-virtual {v5, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2276
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCrossProfileIntentFilterHelper()Lcom/android/server/pm/CrossProfileIntentFilterHelper;

    move-result-object v6

    .line 2277
    invoke-virtual {v6}, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->updateDefaultCrossProfileIntentFilter()V

    .line 2278
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2281
    :cond_5af
    iget-boolean v6, v1, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    iget-boolean v7, v1, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService;->mIncrementalVersion:Ljava/lang/String;

    invoke-static {v6, v7, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->preparePackageParserCache(ZZLjava/lang/String;)Ljava/io/File;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    .line 2284
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v6

    .line 2285
    invoke-virtual {v6}, Lcom/android/server/SystemConfig;->getInitialNonStoppedSystemPackages()Ljava/util/Set;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 2286
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x111027e

    .line 2287
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    .line 2289
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v9

    .line 2290
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getScanningCachingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object v7

    .line 2291
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/InitAppsHelper;->initSystemApps(Lcom/android/internal/pm/parsing/PackageParser2;Lcom/android/server/utils/WatchedArrayMap;[IJ)Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 2293
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    invoke-virtual {v6, v7, v9, v10, v11}, Lcom/android/server/pm/InitAppsHelper;->initNonSystemApps(Lcom/android/internal/pm/parsing/PackageParser2;[IJ)V

    .line 2294
    invoke-virtual {v7}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V

    .line 2296
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getRequiredButNotReallyRequiredVerifiersLPr(Lcom/android/server/pm/Computer;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 2297
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getRequiredInstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 2298
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getRequiredUninstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 2302
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getRequiredPermissionControllerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 2305
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getStorageManagerPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    .line 2309
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getSetupWizardPackageNameImpl(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    .line 2310
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/resolution/ComponentResolver;->fixProtectedFilterPriorities(Ljava/lang/String;)V

    .line 2312
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10402ff

    .line 2313
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2312
    invoke-virtual {v1, v2, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 2314
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040278

    .line 2315
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2314
    invoke-virtual {v1, v2, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 2316
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040283

    .line 2317
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2316
    invoke-virtual {v1, v2, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    const v6, 0x1040251

    .line 2319
    invoke-virtual {v1, v6}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v6

    .line 2318
    invoke-virtual {v1, v2, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 2320
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10402b2

    .line 2321
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2320
    invoke-virtual {v1, v2, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 2322
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getRetailDemoPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    .line 2323
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2324
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/SystemConfig;->getOverlayConfigSignaturePackage()Ljava/lang/String;

    move-result-object v6

    .line 2323
    invoke-virtual {v1, v2, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    const v6, 0x10402e6

    .line 2326
    invoke-virtual {v1, v6}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v6

    .line 2325
    invoke-virtual {v1, v2, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    const v6, 0x1040250

    .line 2328
    invoke-virtual {v1, v6}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v6

    .line 2327
    invoke-virtual {v1, v2, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    const v6, 0x104027e

    .line 2331
    invoke-virtual {v1, v6}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    move-result-object v6

    .line 2330
    invoke-virtual {v1, v2, v6}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mWearableSensingPackage:Ljava/lang/String;

    .line 2336
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 2337
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    const/4 v14, 0x0

    .line 2336
    invoke-virtual {v6, v14, v14, v7}, Lcom/android/server/pm/SharedLibrariesImpl;->updateAllSharedLibrariesLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 2339
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6}, Lcom/android/server/pm/Settings;->getAllSharedUsersLPw()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6b7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6dd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    .line 2343
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2346
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;

    move-result-object v14

    .line 2347
    invoke-virtual {v7}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v15

    const/4 v13, 0x0

    .line 2346
    invoke-interface {v14, v15, v13}, Lcom/android/server/pm/PackageAbiHelper;->getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v14

    .line 2344
    invoke-static {v7, v13, v14}, Lcom/android/server/pm/ScanPackageUtils;->applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;

    .line 2350
    invoke-virtual {v7}, Lcom/android/server/pm/SharedUserSetting;->fixSeInfoLocked()V

    .line 2351
    invoke-virtual {v7}, Lcom/android/server/pm/SharedUserSetting;->updateProcesses()V

    const/4 v15, 0x1

    goto :goto_6b7

    .line 2356
    :cond_6dd
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    invoke-virtual {v6, v8}, Lcom/android/server/pm/AbstractStatsBase;->read(Ljava/lang/Object;)V

    .line 2359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/16 v13, 0xc12

    .line 2358
    invoke-static {v13, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2360
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Time to scan packages: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2361
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v10

    long-to-float v13, v13

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " seconds"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2360
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    iget-boolean v6, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-eqz v6, :cond_73a

    .line 2371
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Partitions fingerprint changed from "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "; regranting permissions for internal storage"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :cond_73a
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    sget-object v7, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-boolean v13, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    invoke-interface {v6, v7, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    .line 2377
    iget v6, v1, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    iput v6, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 2378
    iget v6, v1, Lcom/android/server/pm/PackageManagerService;->mSdkVersionFull:I

    iput v6, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersionFull:I

    .line 2382
    iget-boolean v6, v1, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z

    if-nez v6, :cond_753

    iget-boolean v6, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v6, :cond_775

    .line 2383
    :cond_753
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v6

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    .line 2384
    :goto_75f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_775

    .line 2385
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/UserInfo;

    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_75f

    .line 2394
    :cond_775
    iget-boolean v6, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-eqz v6, :cond_7b1

    .line 2395
    const-string v6, "PackageManager"

    const-string v7, "Build fingerprint changed; clearing code caches"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 2396
    :goto_781
    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_7a9

    .line 2397
    invoke-virtual {v8, v6}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 2398
    sget-object v13, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7a6

    .line 2400
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    const v14, 0x20027

    const/4 v15, -0x1

    invoke-virtual {v13, v7, v15, v14}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    :cond_7a6
    add-int/lit8 v6, v6, 0x1

    goto :goto_781

    .line 2406
    :cond_7a9
    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    .line 2407
    sget-object v6, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 2411
    :cond_7b1
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v6}, Lcom/android/server/pm/AppDataHelper;->fixAppsDataOnBoot()Ljava/util/concurrent/Future;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    .line 2415
    iget-boolean v6, v1, Lcom/android/server/pm/PackageManagerService;->mIsPreQUpgrade:Z

    if-eqz v6, :cond_7e3

    .line 2416
    const-string v6, "PackageManager"

    const-string v7, "Allowlisting all existing apps to hide their icons"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_7c9
    if-ge v7, v6, :cond_7e3

    .line 2419
    invoke-virtual {v8, v7}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 2420
    invoke-virtual {v13}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v14

    const/4 v15, 0x1

    and-int/2addr v14, v15

    if-eqz v14, :cond_7da

    goto :goto_7e0

    .line 2423
    :cond_7da
    sget-object v14, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/server/pm/PackageSetting;->disableComponentLPw(Ljava/lang/String;I)Z

    :goto_7e0
    add-int/lit8 v7, v7, 0x1

    goto :goto_7c9

    :cond_7e3
    const/4 v7, 0x0

    .line 2429
    iput-boolean v7, v1, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z

    const/4 v6, 0x3

    .line 2432
    iput v6, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 2435
    const-string/jumbo v0, "write settings"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2436
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 2437
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;)V

    .line 2438
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2440
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/16 v0, 0xc1c

    .line 2439
    invoke-static {v0, v5, v6}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 2443
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getIntentFilterVerifierComponentNameLPr(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;

    move-result-object v13

    const/4 v7, 0x0

    .line 2445
    invoke-virtual {v1, v2, v7}, Lcom/android/server/pm/PackageManagerService;->getDomainVerificationAgentComponentNameLPr(Lcom/android/server/pm/Computer;I)Landroid/content/ComponentName;

    move-result-object v14

    .line 2447
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 2449
    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getCollector()Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    move-result-object v17

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    move-object/from16 v16, v0

    move-object/from16 v18, v5

    .line 2447
    invoke-static/range {v13 .. v18}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->makeProxy(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;)Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object v0

    .line 2452
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v5, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setProxy(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 2454
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getRequiredServicesExtensionPackageLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 2455
    const-string v0, "android.ext.shared"

    const/4 v15, -0x1

    invoke-virtual {v1, v2, v0, v15}, Lcom/android/server/pm/PackageManagerService;->getRequiredSharedLibrary(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    .line 2459
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const/4 v15, 0x0

    .line 2460
    invoke-interface {v2, v5, v6, v7, v15}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2461
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v13

    .line 2459
    invoke-virtual {v0, v13, v14}, Lcom/android/server/pm/Settings;->setPermissionControllerVersion(J)V

    .line 2464
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->getRequiredSdkSandboxPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    .line 2467
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040282

    .line 2468
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->getVerificationServiceProvider(Lcom/android/server/pm/Computer;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mDeveloperVerificationServiceProvider:Landroid/content/ComponentName;

    .line 2473
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v8, 0x1040281

    .line 2474
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/PackageManagerService;->getVerificationPolicyDelegate(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mDeveloperVerificationPolicyDelegatePackage:Ljava/lang/String;

    .line 2478
    new-instance v5, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda39;

    invoke-direct {v5, v1, v9}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/pm/PackageManagerService;[I)V

    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    .line 2492
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService(Landroid/content/ComponentName;)Lcom/android/server/pm/PackageInstallerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 2494
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getInstantAppResolver(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_8a9

    .line 2496
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v5, :cond_899

    .line 2497
    const-string v5, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Set ephemeral resolver: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    :cond_899
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2500
    invoke-virtual {v5, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstantAppResolverConnection(Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 2502
    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/PackageManagerService;->getInstantAppResolverSettingsLPr(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    const/4 v13, 0x0

    goto :goto_8ae

    :cond_8a9
    const/4 v13, 0x0

    .line 2505
    iput-object v13, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 2506
    iput-object v13, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 2508
    :goto_8ae
    invoke-virtual {v1, v13}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 2518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2519
    array-length v5, v9

    move v8, v15

    :goto_8b8
    if-ge v8, v5, :cond_8ce

    aget v14, v9, v8

    .line 2520
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v2, v6, v7, v14}, Lcom/android/server/pm/Computer;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v14

    .line 2521
    invoke-virtual {v14}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v14

    .line 2520
    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_8b8

    .line 2523
    :cond_8ce
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->load(Ljava/util/Map;)V

    .line 2524
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-eqz v0, :cond_8e3

    .line 2528
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v10

    const/16 v0, 0xef

    const/16 v2, 0xd

    .line 2525
    invoke-static {v0, v2, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 2533
    :cond_8e3
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-nez v0, :cond_8ed

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_956

    .line 2534
    :cond_8ed
    invoke-virtual {v12}, Lcom/android/server/SystemConfig;->getAppMetadataFilePaths()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2535
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8f9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_956

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2536
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2537
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    .line 2538
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2539
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_91e

    move-object v14, v13

    .line 2542
    :cond_91e
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-nez v2, :cond_94e

    .line 2544
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_936

    .line 2546
    invoke-virtual {v2, v14}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    const/4 v6, 0x3

    .line 2548
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    goto :goto_94c

    .line 2552
    :cond_936
    const-string v2, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot set app metadata file for nonexistent package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_94c
    const/4 v6, 0x3

    goto :goto_8f9

    .line 2556
    :cond_94e
    invoke-virtual {v2, v14}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    const/4 v6, 0x3

    .line 2558
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    goto :goto_8f9

    .line 2566
    :cond_956
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->createLiveComputer()Lcom/android/server/pm/ComputerLocked;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 2568
    monitor-exit v4
    :try_end_95d
    .catchall {:try_start_47b .. :try_end_95d} :catchall_400

    :try_start_95d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_960
    .catchall {:try_start_95d .. :try_end_960} :catchall_998

    if-eqz v3, :cond_965

    .line 2569
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 2572
    :cond_965
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getModuleInfoProvider()Lcom/android/server/pm/ModuleInfoProvider;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 2574
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemWrapper()Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;->enablePackageCaches()V

    .line 2579
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Installer;->setWarnIfHeld(Ljava/lang/Object;)V

    .line 2581
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->readConfigUseRoundIcon(Landroid/content/res/Resources;)V

    .line 2583
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/pm/PackageManagerService;->mServiceStartWithDelay:J

    .line 2585
    const-string v0, "PackageManager"

    const-string v1, "Fix for b/169414761 is applied"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_998
    move-exception v0

    move-object v1, v0

    goto :goto_9a0

    .line 2568
    :goto_99b
    :try_start_99b
    monitor-exit v4
    :try_end_99c
    .catchall {:try_start_99b .. :try_end_99c} :catchall_400

    :try_start_99c
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_9a0
    .catchall {:try_start_99c .. :try_end_9a0} :catchall_998

    :goto_9a0
    if-eqz v3, :cond_9aa

    .line 2158
    :try_start_9a2
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_9a5
    .catchall {:try_start_9a2 .. :try_end_9a5} :catchall_9a6

    goto :goto_9aa

    :catchall_9a6
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9aa
    :goto_9aa
    throw v1

    :catchall_9ab
    move-exception v0

    .line 2154
    :try_start_9ac
    monitor-exit v3
    :try_end_9ad
    .catchall {:try_start_9ac .. :try_end_9ad} :catchall_9ab

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 1978
    :cond_9b1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sdkVersionFull:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and sdkVersion: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " don\'t match. Please check your build configurations!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static boostPriorityForPackageManagerTracedLockedSection()V
    .registers 0

    .line 0
    return-void
.end method

.method public static decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;
    .registers 7

    .line 1419
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 1420
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    .line 1421
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_29

    .line 1422
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1423
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1424
    aput-object v4, v1, v3
    :try_end_26
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_26} :catch_2a

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_29
    return-object v1

    :catch_2a
    move-exception p0

    .line 1428
    invoke-static {p0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static extrasForInstallResult(Lcom/android/server/pm/InstallRequest;)Landroid/os/Bundle;
    .registers 4

    .line 1434
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v0

    const/16 v1, -0x70

    if-eq v0, v1, :cond_28

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x0

    goto :goto_3f

    .line 1444
    :cond_d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1446
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 1447
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    if-eqz v2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 1445
    :goto_22
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3f

    .line 1436
    :cond_28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1437
    const-string v1, "android.content.pm.extra.FAILURE_EXISTING_PERMISSION"

    .line 1438
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getOrigPermission()Ljava/lang/String;

    move-result-object v2

    .line 1437
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const-string v1, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    .line 1440
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getOrigPackage()Ljava/lang/String;

    move-result-object v2

    .line 1439
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    :goto_3f
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getWarnings()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    if-eqz v0, :cond_54

    .line 1452
    const-string v1, "android.content.pm.extra.WARNINGS"

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getWarnings()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_54
    return-object v0
.end method

.method public static getDefaultTimeouts()Ljava/lang/String;
    .registers 5

    .line 7734
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7736
    :try_start_4
    const-string/jumbo v2, "package_manager_service"

    const-string v3, "incfs_default_timeouts"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 7739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7740
    throw v2
.end method

.method public static getKnownDigestersList()Ljava/lang/String;
    .registers 5

    .line 7744
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7746
    :try_start_4
    const-string/jumbo v2, "package_manager_service"

    const-string v3, "known_digesters_list"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 7749
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7750
    throw v2
.end method

.method public static getPruneUnusedSharedLibrariesDelay()J
    .registers 3

    .line 1324
    const-string v0, "debug.pm.prune_unused_shared_libraries_delay"

    sget-wide v1, Lcom/android/server/pm/PackageManagerService;->PRUNE_UNUSED_SHARED_LIBRARIES_DELAY:J

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRequiredSdkSandboxPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 11

    .line 3705
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.android.sdksandbox.SdkSandboxService"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3712
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-wide/32 v3, 0x1c0000

    const/4 v5, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    .line 3707
    invoke-interface/range {v0 .. v9}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    move-result-object p0

    .line 3716
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x0

    .line 3717
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 3719
    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There should exactly one sdk sandbox package; found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3720
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": matches="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVerificationServiceProvider(Lcom/android/server/pm/Computer;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 14

    .line 3727
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 3730
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.content.pm.action.VERIFY_DEVELOPER"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3731
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3739
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const-wide/32 v5, 0x1c0200

    const/4 v7, 0x0

    const/4 v9, -0x1

    move-object v2, p0

    .line 3733
    invoke-interface/range {v2 .. v11}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    move-result-object p0

    .line 3743
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2a

    return-object v1

    .line 3748
    :cond_2a
    invoke-interface {p0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 3749
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    if-eqz p1, :cond_59

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_3f

    goto :goto_59

    .line 3752
    :cond_3f
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3753
    const-string v0, "android.permission.DEVELOPER_VERIFICATION_AGENT"

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v0, p1}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_50

    return-object v1

    .line 3758
    :cond_50
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_59
    :goto_59
    return-object v1
.end method

.method public static invalidateGetPackagesForUidCache(I)V
    .registers 2

    .line 1033
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    const/4 v0, 0x2

    .line 1034
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageMetrics;->reportCacheInvalidationEvent(II)V

    return-void
.end method

.method public static invalidatePackageInfoCache(I)V
    .registers 2

    .line 1022
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 1023
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    const/4 v0, 0x1

    .line 1024
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageMetrics;->reportCacheInvalidationEvent(II)V

    return-void
.end method

.method public static isPreapprovalRequestAvailable()Z
    .registers 5

    .line 7754
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7756
    :try_start_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_24

    if-nez v2, :cond_16

    .line 7763
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    .line 7760
    :cond_16
    :try_start_16
    const-string/jumbo v2, "package_manager_service"

    const-string v3, "is_preapproval_available"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_24

    .line 7763
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7764
    throw v2
.end method

.method public static isSystemOrPhone(I)Z
    .registers 2

    const/16 v0, 0x3e8

    .line 8281
    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x3e9

    .line 8282
    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static isUpdateOwnershipEnforcementAvailable()Z
    .registers 5

    .line 7768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7770
    :try_start_4
    const-string/jumbo v2, "package_manager_service"

    const-string v3, "is_update_ownership_enforcement_available"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 7773
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7774
    throw v2
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;Z)Lcom/android/server/pm/PackageManagerService;
    .registers 44

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1670
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v3, "PackageManagerTiming"

    const-wide/32 v4, 0x40000

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    .line 1672
    const-string v3, "create package manager"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object v3, v2

    .line 1673
    new-instance v2, Lcom/android/server/pm/PackageManagerTracedLock;

    const-string v4, "mLock"

    invoke-direct {v2, v4}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 1674
    new-instance v4, Lcom/android/server/pm/PackageManagerTracedLock;

    const-string v5, "mInstallLock"

    invoke-direct {v4, v5}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 1676
    new-instance v5, Lcom/android/server/ServiceThread;

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-string v8, "PackageManagerBg"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 1678
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 1679
    new-instance v6, Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    sget-object v7, Lcom/android/server/pm/PackageManagerService;->BACKGROUND_HANDLER_CALLBACK:Landroid/os/Handler$Callback;

    invoke-direct {v6, v5, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 1682
    new-instance v9, Lcom/android/server/pm/PackageManagerServiceInjector;

    new-instance v5, Lcom/android/server/pm/PackageAbiHelperImpl;

    invoke-direct {v5}, Lcom/android/server/pm/PackageAbiHelperImpl;-><init>()V

    sget-object v7, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    new-instance v8, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda6;-><init>()V

    move-object v10, v9

    new-instance v9, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v9, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda17;-><init>(Landroid/content/Context;)V

    move-object v11, v10

    new-instance v10, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda28;

    invoke-direct {v10}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda28;-><init>()V

    move-object v12, v11

    new-instance v11, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda30;

    move-object/from16 v13, p1

    invoke-direct {v11, v1, v13, v4, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda30;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerTracedLock;)V

    move-object v14, v12

    new-instance v12, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda31;

    invoke-direct {v12, v0, v6, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V

    new-instance v13, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;

    invoke-direct {v13}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;-><init>()V

    move-object v15, v14

    new-instance v14, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;

    invoke-direct {v14}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;-><init>()V

    move-object/from16 v16, v15

    new-instance v15, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;

    invoke-direct {v15}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;-><init>()V

    move-object/from16 v17, v16

    new-instance v16, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda35;

    invoke-direct/range {v16 .. v16}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda35;-><init>()V

    move-object/from16 v18, v17

    new-instance v17, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda36;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda36;-><init>()V

    move-object/from16 v19, v18

    new-instance v18, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;

    invoke-direct/range {v18 .. v18}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;-><init>()V

    move-object/from16 v20, v19

    new-instance v19, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;

    invoke-direct/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;-><init>()V

    move-object/from16 v21, v2

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;)V

    move-object/from16 v22, v20

    move-object/from16 v20, v2

    move-object/from16 v2, v21

    new-instance v21, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda10;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda10;-><init>()V

    move-object/from16 v23, v22

    new-instance v22, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda11;

    invoke-direct/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda11;-><init>()V

    move-object/from16 v24, v23

    new-instance v23, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

    invoke-direct/range {v23 .. v23}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;-><init>()V

    move-object/from16 v25, v24

    new-instance v24, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda13;

    invoke-direct/range {v24 .. v24}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda13;-><init>()V

    move-object/from16 v26, v25

    new-instance v25, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda14;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda14;-><init>()V

    move-object/from16 v27, v26

    new-instance v26, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda15;

    invoke-direct/range {v26 .. v26}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda15;-><init>()V

    move-object/from16 v28, v27

    new-instance v27, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda16;

    invoke-direct/range {v27 .. v27}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda16;-><init>()V

    move-object/from16 v29, v28

    new-instance v28, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda18;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda18;-><init>()V

    move-object/from16 v30, v2

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V

    move-object/from16 v0, v29

    move-object/from16 v29, v2

    move-object/from16 v2, v30

    new-instance v30, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda20;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda20;-><init>()V

    move-object/from16 p2, v0

    new-instance v0, Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;

    move-object/from16 v31, v2

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;-><init>(Lcom/android/server/pm/PackageManagerService-IA;)V

    new-instance v32, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;

    invoke-direct/range {v32 .. v32}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;-><init>()V

    .line 1733
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda22;-><init>(Landroid/content/Context;)V

    new-instance v34, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda23;

    invoke-direct/range {v34 .. v34}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda23;-><init>()V

    new-instance v35, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;

    invoke-direct/range {v35 .. v35}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;-><init>()V

    move-object/from16 v33, v0

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda25;-><init>(Landroid/content/Context;)V

    new-instance v37, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda26;

    invoke-direct/range {v37 .. v37}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda26;-><init>()V

    new-instance v38, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda27;

    invoke-direct/range {v38 .. v38}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda27;-><init>()V

    move-object/from16 v36, v33

    move-object/from16 v33, v2

    move-object/from16 v2, v31

    move-object/from16 v31, v36

    move-object/from16 v36, v0

    move-object/from16 v39, v3

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    invoke-direct/range {v0 .. v38}, Lcom/android/server/pm/PackageManagerServiceInjector;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageAbiHelper;Landroid/os/Handler;Ljava/util/List;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    .line 1747
    new-instance v8, Lcom/android/server/pm/PackageManagerService;

    sget-object v11, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    sget-boolean v12, Landroid/os/Build;->IS_ENG:Z

    sget-boolean v13, Landroid/os/Build;->IS_USERDEBUG:Z

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v15, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sget v16, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    move/from16 v10, p3

    move-object v9, v0

    invoke-direct/range {v8 .. v16}, Lcom/android/server/pm/PackageManagerService;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;ZLjava/lang/String;ZZILjava/lang/String;I)V

    .line 1751
    invoke-virtual/range {v39 .. v39}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1753
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;

    invoke-direct {v1, v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 1784
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v2

    const-wide/32 v3, 0x88e3d87

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    .line 1786
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    const-wide/32 v2, 0xa0f6c63

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    .line 1789
    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService;->installAllowlistedSystemPackages()V

    .line 1790
    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-direct {v0, v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 1791
    const-string/jumbo v1, "package"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1792
    new-instance v0, Lcom/android/server/pm/PackageManagerNative;

    invoke-direct {v0, v8}, Lcom/android/server/pm/PackageManagerNative;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 1793
    const-string/jumbo v1, "package_native"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v8
.end method

.method public static onChange(Lcom/android/server/utils/Watchable;)V
    .registers 1

    .line 1254
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static onChanged()V
    .registers 1

    const/4 v0, 0x0

    .line 1262
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->onChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public static renameStaticSharedLibraryPackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .registers 4

    .line 3025
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v1

    .line 3024
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->toStaticSharedLibraryPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    return-void
.end method

.method public static reportSettingsProblem(ILjava/lang/String;)V
    .registers 2

    .line 3018
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return-void
.end method

.method public static resetPriorityAfterPackageManagerTracedLockedSection()V
    .registers 0

    .line 0
    return-void
.end method

.method public static toStaticSharedLibraryPackageName(Ljava/lang/String;J)Ljava/lang/String;
    .registers 4

    .line 3030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAllPackageProperties(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 2

    .line 7909
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageProperty;->addAllProperties(Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V
    .registers 13

    .line 3603
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3605
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3606
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 3610
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v1, 0x1

    invoke-virtual {p1, p4, p5, v0, v1}, Lcom/android/server/pm/UserManagerService;->enforceCrossProfileIntentFilterAccess(IIIZ)V

    .line 3613
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p1

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {p1, v1, v0, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 3615
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->checkDataPathAndSchemeSpecificParts()Z

    move-result p1

    if-eqz p1, :cond_88

    .line 3620
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countActions()I

    move-result p1

    if-nez p1, :cond_35

    .line 3621
    const-string p0, "PackageManager"

    const-string p1, "Cannot set a crossProfile intent filter with no filter actions"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3624
    :cond_35
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 3625
    :try_start_3b
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3627
    invoke-virtual {v1, p4, p5}, Lcom/android/server/pm/UserManagerService;->getCrossProfileIntentFilterAccessControl(II)I

    move-result v5

    move-object v1, p2

    move-object v2, p3

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    .line 3628
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 3629
    invoke-virtual {p2, p4}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object p2

    .line 3630
    invoke-virtual {p2, v1}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_74

    .line 3633
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 p6, 0x0

    :goto_5b
    if-ge p6, p5, :cond_74

    .line 3635
    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/CrossProfileIntentFilter;->equalsIgnoreFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 3636
    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_3b .. :try_end_6a} :catchall_6e

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_6e
    move-exception v0

    move-object p0, v0

    goto :goto_83

    :cond_71
    add-int/lit8 p6, p6, 0x1

    goto :goto_5b

    .line 3640
    :cond_74
    :try_start_74
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3641
    monitor-exit p1
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_6e

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3642
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    return-void

    .line 3641
    :goto_83
    :try_start_83
    monitor-exit p1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_6e

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 3616
    :cond_88
    const-string p0, "246749936"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3617
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid intent data paths or scheme specific parts in the filter."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addInstallerPackageName(Lcom/android/server/pm/InstallSource;)V
    .registers 3

    .line 8186
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 8187
    :try_start_6
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 8188
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public addInstrumentation(Landroid/content/ComponentName;Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)V
    .registers 3

    .line 7913
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final applyUpdatedSystemOverlayPaths()V
    .registers 3

    .line 7526
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_c

    .line 7527
    const-string v0, "PackageManager"

    const-string v1, "Skipped the AndroidApplication overlay paths update - no app yet"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 7529
    :cond_c
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 7530
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 7532
    :goto_14
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    if-eqz v0, :cond_24

    .line 7533
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 7534
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    :cond_24
    return-void
.end method

.method public final canSetOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;)Z
    .registers 4

    .line 7485
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    if-nez p1, :cond_10

    .line 7488
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_18

    :cond_10
    if-nez p2, :cond_19

    .line 7489
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_19

    :cond_18
    return v0

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public checkPackageStartable(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .registers 10

    .line 4706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4707
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a0

    .line 4710
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_98

    const/4 v4, 0x0

    .line 4713
    const-string v5, "checkPackageStartable"

    const/4 v3, 0x0

    move-object v0, p1

    move v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4715
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    invoke-interface {v0, p0, p2, v1, v2}, Lcom/android/server/pm/Computer;->getPackageStartability(ZLjava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    const-string p3, "Package "

    if-eq p0, p1, :cond_7e

    const/4 p1, 0x2

    if-eq p0, p1, :cond_64

    const/4 p1, 0x3

    if-eq p0, p1, :cond_4a

    const/4 p1, 0x4

    if-eq p0, p1, :cond_30

    return-void

    .line 4723
    :cond_30
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not encryption aware!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4721
    :cond_4a
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is currently frozen!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4719
    :cond_64
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not a system app!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4717
    :cond_7e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was not found!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4711
    :cond_98
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "User doesn\'t exist"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4708
    :cond_a0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Instant applications don\'t have access to this method"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .line 2979
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v0, "default:0"

    invoke-interface {p0, p2, p1, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 8214
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cleanUpResources(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    .line 8210
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V
    .registers 8

    .line 4495
    invoke-static {p1}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 4496
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 4497
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_4d

    .line 4498
    :try_start_d
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4499
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_4f

    .line 4500
    :try_start_17
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/UserNeedsBadgingCache;->delete(I)V

    .line 4501
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/DeletePackageHelper;->removeUnusedPackagesLPw(Lcom/android/server/pm/UserManagerService;I)V

    .line 4502
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/Settings;->removeUserLPw(Ljava/util/List;I)V

    .line 4503
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PendingPackageBroadcasts;->remove(I)V

    .line 4504
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/AppsFilterImpl;->onUserDeleted(Lcom/android/server/pm/Computer;I)V

    .line 4505
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onUserRemoved(I)V

    .line 4506
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageInstallerService;->onUserRemoved(I)V

    .line 4507
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_17 .. :try_end_3f} :catchall_4d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4508
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->onUserRemoved(I)V

    .line 4509
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->onUserRemoved(I)V

    return-void

    :catchall_4d
    move-exception p0

    goto :goto_52

    :catchall_4f
    move-exception p0

    .line 4499
    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw p0

    .line 4507
    :goto_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_4d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final clearApplicationUserDataLIF(Lcom/android/server/pm/Computer;Ljava/lang/String;IZ)Z
    .registers 10

    .line 3482
    const-string v0, "PackageManager"

    const/4 v1, 0x0

    if-nez p2, :cond_b

    .line 3483
    const-string p0, "Attempt to delete null packageName."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3488
    :cond_b
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 3490
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Package named \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' doesn\'t exist."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3493
    :cond_2b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, v2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;IZ)V

    .line 3495
    iget-object p4, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/4 v0, 0x7

    invoke-virtual {p4, v2, p3, v0}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 3498
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result p4

    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p4

    .line 3499
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v0, p3, p4}, Lcom/android/server/pm/AppDataHelper;->clearKeystoreData(II)V

    .line 3501
    iget-object p4, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p4

    .line 3502
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v3, Lcom/android/server/StorageManagerInternal;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerInternal;

    .line 3504
    invoke-static {p3}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_62

    invoke-virtual {v0, p3}, Lcom/android/server/StorageManagerInternal;->isCeStoragePrepared(I)Z

    move-result v0

    if-eqz v0, :cond_62

    const/4 v1, 0x3

    goto :goto_69

    .line 3506
    :cond_62
    invoke-virtual {p4, p3}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result p4

    if-eqz p4, :cond_69

    move v1, v4

    .line 3511
    :cond_69
    :goto_69
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    invoke-virtual {p0, v2, p1, p3, v1}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    return v4
.end method

.method public clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V
    .registers 4

    .line 3571
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/Settings;->clearPackagePreferredActivities(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    return-void
.end method

.method public commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .registers 7

    .line 8152
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8155
    sget-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 8157
    :goto_c
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    if-nez v0, :cond_23

    .line 8161
    :try_start_14
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 8162
    invoke-virtual {v2}, Lcom/android/server/pm/ChangedPackagesTracker;->getSequenceNumber()I

    move-result v2

    .line 8161
    invoke-virtual {v0, p1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->generateResult(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object v0

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_46

    .line 8164
    :cond_23
    :goto_23
    sget-object p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    if-eq v0, p1, :cond_2c

    .line 8165
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_21

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v0

    .line 8168
    :cond_2c
    :try_start_2c
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object p0

    if-nez p0, :cond_3b

    .line 8170
    sget-object p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SPECIFIC_PACKAGE_NULL:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_21

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p0

    .line 8172
    :cond_3b
    :try_start_3b
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8175
    invoke-interface {p0}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->onChanged()V

    .line 8176
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_21

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p1

    :goto_46
    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_21

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
    .registers 6

    .line 8129
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 8130
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 8131
    invoke-virtual {v2}, Lcom/android/server/pm/ChangedPackagesTracker;->getSequenceNumber()I

    move-result v2

    .line 8130
    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->generateResult(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    move-result-object p1

    .line 8132
    sget-object v1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    if-eq p1, v1, :cond_1d

    .line 8133
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object p1

    :catchall_1b
    move-exception p0

    goto :goto_2c

    .line 8136
    :cond_1d
    :try_start_1d
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8137
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->onFinished()V

    .line 8138
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_1b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v1

    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_1b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final createLiveComputer()Lcom/android/server/pm/ComputerLocked;
    .registers 4

    .line 1241
    new-instance v0, Lcom/android/server/pm/ComputerLocked;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$Snapshot;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/PackageManagerService$Snapshot;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    invoke-direct {v0, v1}, Lcom/android/server/pm/ComputerLocked;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;)V

    return-object v0
.end method

.method public createNewUser(ILjava/util/Set;[Ljava/lang/String;)V
    .registers 12

    .line 4536
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1

    .line 4537
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object v3, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Settings;->createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/util/Set;[Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_37

    if-eqz v1, :cond_16

    .line 4539
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 4540
    :cond_16
    iget-object p0, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p0

    .line 4541
    :try_start_1c
    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 4542
    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageListLocked(I)V

    .line 4543
    iget-object p1, v3, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p2

    invoke-virtual {p1, p2, v5}, Lcom/android/server/pm/AppsFilterImpl;->onUserCreated(Lcom/android/server/pm/Computer;I)V

    .line 4544
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_30
    move-exception v0

    move-object p1, v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_30

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1

    :catchall_37
    move-exception v0

    move-object p0, v0

    if-eqz v1, :cond_44

    .line 4536
    :try_start_3b
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_44

    :catchall_3f
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw p0
.end method

.method public deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .registers 4

    .line 3356
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/DeletePackageHelper;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    return-void
.end method

.method public deleteOatArtifactsOfPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)J
    .registers 6

    .line 7663
    const-string p0, "PackageManager"

    const-string v0, "Only the system or shell can delete oat artifacts"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRootOrShell(Ljava/lang/String;)V

    .line 7667
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v0

    .line 7668
    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageManagerLocal;->withUnownedFilteredSnapshot(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 7670
    :try_start_11
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/art/ArtManagerLocal;->deleteDexoptArtifacts(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)Lcom/android/server/art/model/DeleteResult;

    move-result-object p2

    .line 7672
    invoke-virtual {p2}, Lcom/android/server/art/model/DeleteResult;->getFreedBytes()J

    move-result-wide v0
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_1d} :catch_27
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_1d} :catch_25
    .catchall {:try_start_11 .. :try_end_1d} :catchall_23

    if-eqz p1, :cond_22

    .line 7680
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    :cond_22
    return-wide v0

    :catchall_23
    move-exception p0

    goto :goto_43

    :catch_25
    move-exception p2

    goto :goto_29

    :catch_27
    move-exception p2

    goto :goto_36

    .line 7677
    :goto_29
    :try_start_29
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_23

    if-eqz p1, :cond_35

    .line 7680
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    :cond_35
    return-wide v0

    .line 7674
    :goto_36
    :try_start_36
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_23

    if-eqz p1, :cond_42

    .line 7680
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    :cond_42
    return-wide v0

    :goto_43
    if-eqz p1, :cond_4d

    .line 7666
    :try_start_45
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    throw p0
.end method

.method public final deletePackageIfUnused(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .registers 5

    .line 4591
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_1e

    .line 4595
    :cond_7
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 4596
    :goto_c
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 4597
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4604
    :cond_22
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    .registers 11

    .line 3370
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V

    return-void
.end method

.method public deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;III)V
    .registers 13

    .line 3363
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIIZ)V

    return-void
.end method

.method public deletePackageX(Ljava/lang/String;JIIZ)I
    .registers 7

    .line 8275
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 p5, 0x2

    const/4 p6, 0x1

    const-wide/16 p2, -0x1

    const/4 p4, 0x0

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result p0

    return p0
.end method

.method public deletePreloadsFileCache()V
    .registers 3

    .line 4610
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CLEAR_APP_CACHE"

    const-string v1, "deletePreloadsFileCache"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4612
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsFileCacheDirectory()Ljava/io/File;

    move-result-object p0

    .line 4613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting preloaded file cache "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    return-void
.end method

.method public enableCompressedPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z
    .registers 3

    .line 8247
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->enableCompressedPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z

    move-result p0

    return p0
.end method

.method public final enforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Ljava/lang/String;)V
    .registers 5

    .line 7541
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_37

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 7544
    const-string v0, "android.permission.UPGRADE_RUNTIME_PERMISSIONS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    goto :goto_37

    .line 7547
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    :goto_37
    return-void
.end method

.method public final enforceCanSetDistractingPackageRestrictionsAsUser(IILjava/lang/String;)V
    .registers 5

    .line 3272
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SUSPEND_APPS"

    invoke-virtual {p0, v0, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p0

    if-nez p0, :cond_33

    .line 3276
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    if-ne p0, p2, :cond_14

    goto :goto_33

    .line 3277
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calling uid "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot call for user "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    return-void
.end method

.method public final enforceCanSetPackagesSuspendedAsUser(Lcom/android/server/pm/Computer;ZLandroid/content/pm/UserPackage;IILjava/lang/String;)V
    .registers 10

    if-eqz p4, :cond_6f

    .line 3193
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    goto :goto_6f

    .line 3197
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 3198
    invoke-virtual {v0, p5}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1c

    .line 3200
    invoke-interface {p1, v0, v1, v2, p5}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-ne v0, p4, :cond_1c

    goto :goto_6f

    :cond_1c
    if-eqz p2, :cond_26

    .line 3207
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.QUARANTINE_APPS"

    invoke-virtual {p0, p2, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 3210
    :cond_26
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.SUSPEND_APPS"

    invoke-virtual {p0, p2, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    :goto_2d
    iget-object p0, p3, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 3228
    invoke-interface {p1, p0, v1, v2, p5}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p0, p4, :cond_37

    const/4 p1, 0x1

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    :goto_38
    const/16 p2, 0x7d0

    if-ne p4, p2, :cond_43

    .line 3231
    invoke-static {p0, p4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_43

    return-void

    :cond_43
    if-eqz p1, :cond_46

    goto :goto_6f

    .line 3234
    :cond_46
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Suspending package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not belong to calling uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6f
    :goto_6f
    return-void
.end method

.method public final enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V
    .registers 6

    .line 3649
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_9

    goto :goto_1f

    .line 3652
    :cond_9
    invoke-interface {p1, p3}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 3653
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3f

    .line 3657
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const-wide/16 v0, 0x0

    .line 3658
    invoke-interface {p1, p2, v0, v1, p0}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_20

    :goto_1f
    return-void

    .line 3660
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on user "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3654
    :cond_3f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calling uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " does not own package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return-object p0

    .line 3830
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-wide/32 v2, 0x200000

    const/4 v4, 0x0

    .line 3832
    :try_start_c
    invoke-interface {p1, p2, v2, v3, v4}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_57

    const-wide/16 v2, 0x0

    .line 3835
    invoke-interface {p1, p2, v2, v3, v4}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 3837
    const-string v2, "145981139"

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ""

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x534e4554

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_33

    :catchall_31
    move-exception p0

    goto :goto_5b

    .line 3840
    :cond_33
    :goto_33
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required system package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_47

    .line 3841
    const-string p1, ", but found with extended search."

    goto :goto_49

    :cond_47
    const-string p1, "."

    :goto_49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3840
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_c .. :try_end_53} :catchall_31

    .line 3845
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :goto_5b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3846
    throw p0
.end method

.method public finishPackageInstall(IZ)V
    .registers 6

    .line 4691
    const-string v0, "Only the system is allowed to finish installs"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    const-wide/32 v0, 0x40000

    .line 4697
    const-string/jumbo v2, "restore"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 4699
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 4701
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final flushPackageRestrictionsAsUserInternalLocked(I)V
    .registers 4

    .line 4278
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4279
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 4280
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4281
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 4282
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 4284
    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_21

    throw p0
.end method

.method public forEachInstalledPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;I)V
    .registers 5

    .line 7620
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda50;

    invoke-direct {v0, p3, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda50;-><init>(ILjava/util/function/Consumer;)V

    .line 7626
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Landroid/util/ArrayMap;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachPackage(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V
    .registers 6

    .line 7585
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p0

    .line 7586
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_21

    .line 7588
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 7589
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 7590
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_21
    return-void
.end method

.method public final forEachPackageState(Landroid/util/ArrayMap;Ljava/util/function/Consumer;)V
    .registers 5

    .line 7611
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_13

    .line 7613
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 7614
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method public forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V
    .registers 3

    .line 7580
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Landroid/util/ArrayMap;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public freeAllAppCacheAboveQuota(Ljava/lang/String;)V
    .registers 6

    .line 2934
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_6} :catch_24

    .line 2938
    :try_start_6
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x900

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_18

    if-eqz v0, :cond_24

    .line 2940
    :try_start_14
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_17
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_14 .. :try_end_17} :catch_24

    return-void

    :catchall_18
    move-exception p0

    if-eqz v0, :cond_23

    .line 2934
    :try_start_1b
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception p1

    :try_start_20
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_23
    :goto_23
    throw p0
    :try_end_24
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_20 .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    return-void
.end method

.method public freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    .line 2955
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/FreeStorageHelper;->freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public freeStorage(Ljava/lang/String;JI)V
    .registers 5

    .line 2950
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/FreeStorageHelper;->freeStorage(Ljava/lang/String;JI)V

    return-void
.end method

.method public freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 4473
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;Z)Lcom/android/server/pm/PackageFreezer;

    move-result-object p0

    return-object p0
.end method

.method public final freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;Z)Lcom/android/server/pm/PackageFreezer;
    .registers 15

    .line 4479
    new-instance v0, Lcom/android/server/pm/PackageFreezer;

    move-object v4, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageFreezer;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/InstallRequest;Z)V

    return-object v0
.end method

.method public freezePackageForDelete(Ljava/lang/String;IILjava/lang/String;I)Lcom/android/server/pm/PackageFreezer;
    .registers 12

    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_b

    .line 4486
    new-instance p1, Lcom/android/server/pm/PackageFreezer;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/InstallRequest;)V

    return-object p1

    :cond_b
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    .line 4488
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object p0

    return-object p0
.end method

.method public getActiveLauncherPackageName(I)Ljava/lang/String;
    .registers 2

    .line 7942
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAllPlatformRestrictedPermissions()Ljava/util/Set;
    .registers 7

    .line 8290
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sRestrictedPermissions:Ljava/util/Set;

    if-nez v0, :cond_46

    .line 8291
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerService;->sRestrictedPermissions:Ljava/util/Set;

    .line 8292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8294
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-string v2, "android"

    const-wide/16 v3, 0x1000

    const/4 v5, 0x0

    invoke-interface {p0, v2, v3, v4, v5}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 8296
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v2, :cond_3e

    .line 8297
    :goto_20
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    array-length v3, v2

    if-ge v5, v3, :cond_3e

    .line 8298
    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 8299
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sRestrictedPermissions:Ljava/util/Set;

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    aget-object v3, v3, v5

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_39

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_42

    :cond_3b
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 8304
    :cond_3e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_46

    :goto_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8305
    throw p0

    .line 8307
    :cond_46
    :goto_46
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sRestrictedPermissions:Ljava/util/Set;

    return-object p0
.end method

.method public getAppInstallDir()Ljava/io/File;
    .registers 1

    .line 7965
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    return-object p0
.end method

.method public getArchivedPackageInternal(Ljava/lang/String;I)Landroid/content/pm/ArchivedPackageParcel;
    .registers 12

    .line 1458
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1461
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/4 v4, 0x1

    .line 1462
    const-string v5, "getArchivedPackage"

    const/4 v3, 0x1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1465
    new-instance p2, Landroid/content/pm/ArchivedPackageParcel;

    invoke-direct {p2}, Landroid/content/pm/ArchivedPackageParcel;-><init>()V

    .line 1466
    iput-object p1, p2, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    .line 1469
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 1470
    :try_start_20
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_b5

    .line 1471
    invoke-interface {v0, v4, v1, v2}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_31

    goto/16 :goto_b5

    .line 1474
    :cond_31
    invoke-interface {v4, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    .line 1475
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v1

    if-nez v1, :cond_49

    .line 1476
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_49

    .line 1477
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_20 .. :try_end_42} :catchall_46

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v5

    :catchall_46
    move-exception v0

    move-object p0, v0

    goto :goto_ba

    .line 1480
    :cond_49
    :try_start_49
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    iput-object v0, p2, Landroid/content/pm/ArchivedPackageParcel;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 1482
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v5

    const/16 v0, 0x20

    shr-long v7, v5, v0

    long-to-int v0, v7

    .line 1483
    iput v0, p2, Landroid/content/pm/ArchivedPackageParcel;->versionCodeMajor:I

    long-to-int v0, v5

    .line 1484
    iput v0, p2, Landroid/content/pm/ArchivedPackageParcel;->versionCode:I

    .line 1486
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v0

    iput v0, p2, Landroid/content/pm/ArchivedPackageParcel;->targetSdkVersion:I

    .line 1490
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isDefaultToDeviceProtectedStorage()Z

    move-result v0

    .line 1489
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/content/pm/ArchivedPackageParcel;->defaultToDeviceProtectedStorage:Ljava/lang/String;

    .line 1492
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isRequestLegacyExternalStorage()Z

    move-result v0

    .line 1491
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/content/pm/ArchivedPackageParcel;->requestLegacyExternalStorage:Ljava/lang/String;

    .line 1493
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isUserDataFragile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/content/pm/ArchivedPackageParcel;->userDataFragile:Ljava/lang/String;

    .line 1494
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_49 .. :try_end_82} :catchall_46

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v1, :cond_8e

    .line 1498
    :try_start_87
    invoke-static {v1}, Lcom/android/server/pm/PackageArchiver;->createArchivedActivities(Lcom/android/server/pm/pkg/ArchiveState;)[Landroid/content/pm/ArchivedActivityParcel;

    move-result-object p0

    iput-object p0, p2, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    return-object p2

    .line 1501
    :cond_8e
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1502
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    .line 1504
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 1505
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/PackageArchiver;->getLauncherActivityInfos(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 1507
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageArchiver;->createArchivedActivities(Ljava/util/List;I)[Landroid/content/pm/ArchivedActivityParcel;

    move-result-object p0

    iput-object p0, p2, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_aa} :catch_ab

    return-object p2

    :catch_ab
    move-exception v0

    move-object p0, v0

    .line 1511
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Package does not have a main activity"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1472
    :cond_b5
    :goto_b5
    :try_start_b5
    monitor-exit v3
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_46

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v5

    .line 1494
    :goto_ba
    :try_start_ba
    monitor-exit v3
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_46

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public getCacheDir()Ljava/io/File;
    .registers 1

    .line 7889
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    return-object p0
.end method

.method public getCoreAndroidApplication()Landroid/content/pm/ApplicationInfo;
    .registers 1

    .line 8053
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public getDefParseFlags()I
    .registers 1

    .line 7973
    iget p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    return p0
.end method

.method public getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;
    .registers 1

    .line 7885
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    return-object p0
.end method

.method public getDefaultBrowser(I)Ljava/lang/String;
    .registers 2

    .line 7953
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeveloperVerificationPolicyDelegatePackageName()Ljava/lang/String;
    .registers 1

    .line 8312
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDeveloperVerificationPolicyDelegatePackage:Ljava/lang/String;

    return-object p0
.end method

.method public getDevicePolicyManagementRoleHolderPackageName(I)Ljava/lang/String;
    .registers 3

    .line 3458
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .registers 2

    .line 3472
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_10

    .line 3474
    const-string v0, "device_policy"

    .line 3475
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3474
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 3477
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    return-object p0
.end method

.method public getDexOptHelper()Lcom/android/server/pm/DexOptHelper;
    .registers 1

    .line 3063
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    return-object p0
.end method

.method public getDisabledPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 7566
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    return-object p0
.end method

.method public final getDomainVerificationAgentComponentNameLPr(Lcom/android/server/pm/Computer;I)Landroid/content/ComponentName;
    .registers 12

    .line 2767
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.DOMAINS_NEED_VERIFICATION"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2768
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    const-wide/32 v4, 0x1c0000

    .line 2771
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v3, 0x0

    move-object v1, p1

    move v6, p2

    .line 2769
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p1

    .line 2773
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, v0

    .line 2774
    :goto_1e
    const-string v4, "PackageManager"

    if-ge v2, p2, :cond_6b

    .line 2775
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2776
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 2777
    const-string v8, "android.permission.DOMAIN_VERIFICATION_AGENT"

    invoke-virtual {p0, v8, v7, v6}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4b

    .line 2780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Domain verification agent found but does not hold permission: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    :cond_4b
    if-eqz v3, :cond_53

    .line 2785
    iget v7, v5, Landroid/content/pm/ResolveInfo;->priority:I

    iget v8, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v7, v8, :cond_68

    .line 2786
    :cond_53
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    .line 2787
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 2786
    invoke-interface {v1, v7, v8}, Lcom/android/server/pm/Computer;->isComponentEffectivelyEnabled(Landroid/content/pm/ComponentInfo;Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_63

    move-object v3, v5

    goto :goto_68

    .line 2790
    :cond_63
    const-string v5, "Domain verification agent found but not enabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    :goto_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_6b
    if-eqz v3, :cond_76

    .line 2796
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 2798
    :cond_76
    const-string p0, "Domain verification agent not found"

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .registers 1

    .line 3067
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    return-object p0
.end method

.method public final getInstantAppInstallerLPr()Landroid/content/pm/ActivityInfo;
    .registers 15

    .line 2860
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    const-string v1, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    const/4 v4, 0x2

    .line 2861
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE_TEST"

    aput-object v5, v4, v3

    aput-object v1, v4, v2

    goto :goto_16

    .line 2864
    :cond_12
    new-array v4, v2, [Ljava/lang/String;

    aput-object v1, v4, v3

    :goto_16
    if-eqz v0, :cond_1a

    move v0, v3

    goto :goto_1c

    :cond_1a
    const/high16 v0, 0x100000

    :goto_1c
    const/high16 v1, -0x7ff40000

    or-int/2addr v0, v1

    .line 2872
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 2873
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2874
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2875
    new-instance v1, Ljava/io/File;

    const-string v7, "foo.apk"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v6, v1, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2877
    array-length v1, v4

    const/4 v11, 0x0

    move v12, v3

    move-object v7, v11

    :goto_41
    if-ge v12, v1, :cond_73

    aget-object v13, v4, v12

    .line 2878
    invoke-virtual {v6, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    int-to-long v8, v0

    const/4 v10, 0x0

    .line 2879
    const-string v7, "application/vnd.android.package-archive"

    invoke-interface/range {v5 .. v10}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v7

    .line 2881
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_73

    .line 2882
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v8, :cond_70

    .line 2883
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Instant App installer not found with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PackageManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    add-int/lit8 v12, v12, 0x1

    goto :goto_41

    .line 2889
    :cond_73
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2890
    :cond_77
    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 2891
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 2892
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p0, v4, v1, v3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_77

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    if-eqz v1, :cond_94

    goto :goto_77

    .line 2897
    :cond_94
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_77

    .line 2899
    :cond_98
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_9f

    return-object v11

    .line 2901
    :cond_9f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v2, :cond_b2

    .line 2902
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    return-object p0

    .line 2904
    :cond_b2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There must be at most one ephemeral installer; found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstantAppResolver(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;
    .registers 16

    .line 2803
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 2804
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x107007e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 2805
    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, "PackageManager"

    if-nez v0, :cond_21

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_21

    .line 2806
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz p0, :cond_20

    .line 2807
    const-string p0, "Ephemeral resolver NOT found; empty package list"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-object v1

    .line 2812
    :cond_21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2816
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v13, 0x0

    if-nez v0, :cond_2d

    const/high16 v0, 0x100000

    goto :goto_2e

    :cond_2d
    move v0, v13

    :goto_2e
    const/high16 v3, 0xc0000

    or-int/2addr v0, v3

    .line 2817
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    int-to-long v6, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    move-object v3, p1

    .line 2818
    invoke-interface/range {v3 .. v12}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    move-result-object p1

    .line 2821
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_53

    .line 2823
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz p0, :cond_52

    .line 2824
    const-string p0, "Ephemeral resolver NOT found; no matching intent filters"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-object v1

    .line 2829
    :cond_53
    new-instance v3, Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_5c
    if-ge v13, v0, :cond_c0

    .line 2831
    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 2833
    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_69

    goto :goto_95

    .line 2837
    :cond_69
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2838
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ", info:"

    if-nez v5, :cond_98

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v5, :cond_98

    .line 2839
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v5, :cond_95

    .line 2840
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ephemeral resolver not in allowed package list; pkg: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    :goto_95
    add-int/lit8 v13, v13, 0x1

    goto :goto_5c

    .line 2846
    :cond_98
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz p1, :cond_b6

    .line 2847
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ephemeral resolver found; pkg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    :cond_b6
    new-instance p1, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v4, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 2852
    :cond_c0
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz p0, :cond_c9

    .line 2853
    const-string p0, "Ephemeral resolver NOT found"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    return-object v1
.end method

.method public final getInstantAppResolverSettingsLPr(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 9

    .line 2911
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSTANT_APP_RESOLVER_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    .line 2912
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 2913
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-wide/32 v3, 0xc0000

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    .line 2915
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    .line 2917
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 p0, 0x0

    return-object p0

    :cond_27
    const/4 p1, 0x0

    .line 2920
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getInstrumentation()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1

    .line 7897
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public final getIntentFilterVerifierComponentNameLPr(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;
    .registers 10

    .line 2734
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2736
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    const/4 v6, 0x0

    .line 2740
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2737
    const-string v3, "application/vnd.android.package-archive"

    const-wide/32 v4, 0x1c0000

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p1

    .line 2742
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_20
    if-ge v3, v0, :cond_43

    .line 2744
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2745
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 2746
    const-string v7, "android.permission.INTENT_FILTER_VERIFICATION_AGENT"

    invoke-virtual {p0, v7, v6, v2}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_37

    goto :goto_40

    :cond_37
    if-eqz v4, :cond_3f

    .line 2752
    iget v6, v5, Landroid/content/pm/ResolveInfo;->priority:I

    iget v7, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v6, v7, :cond_40

    :cond_3f
    move-object v4, v5

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_43
    if-eqz v4, :cond_4e

    .line 2758
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 2760
    :cond_4e
    const-string p0, "PackageManager"

    const-string p1, "Intent filter verifier not found"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;
    .registers 24

    move-object/from16 v0, p0

    .line 7918
    new-instance v1, Lcom/android/server/pm/KnownPackages;

    move-object v2, v1

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    move-object v3, v2

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    move-object v4, v3

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    move-object v6, v5

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    move-object v8, v7

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    move-object v10, v9

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    move-object v11, v10

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    move-object v12, v11

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    move-object v13, v12

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService;->mWearableSensingPackage:Ljava/lang/String;

    move-object v14, v13

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    .line 7936
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDeveloperVerificationServiceProvider:Landroid/content/ComponentName;

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    :goto_3a
    move-object/from16 v18, v0

    move-object v0, v14

    goto :goto_43

    .line 7937
    :cond_3e
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :goto_43
    const-string v14, "com.android.companiondevicemanager"

    move-object/from16 v19, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    invoke-direct/range {v0 .. v18}, Lcom/android/server/pm/KnownPackages;-><init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v0

    move-object/from16 v0, p1

    .line 7938
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/pm/KnownPackages;->getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeGroupInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5

    .line 7685
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-nez p0, :cond_9

    .line 7687
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 7690
    :cond_9
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getMimeGroups()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 7691
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    if-eqz p0, :cond_1f

    .line 7696
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 7693
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown MIME group "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .registers 3

    .line 2960
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ModuleInfoProvider;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object p0

    return-object p0
.end method

.method public getModuleMetadataPackageName()Ljava/lang/String;
    .registers 1

    .line 7961
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {p0}, Lcom/android/server/pm/ModuleInfoProvider;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageFromComponentString(I)Ljava/lang/String;
    .registers 3

    .line 3813
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 3814
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    return-object v0

    .line 3817
    :cond_e
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_15

    return-object v0

    .line 3821
    :cond_15
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInstallerPackageName()Ljava/lang/String;
    .registers 1

    .line 2988
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageProperty()Lcom/android/server/pm/PackageProperty;
    .registers 1

    .line 7893
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    return-object p0
.end method

.method public getPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 7558
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    return-object p0
.end method

.method public getPerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;
    .registers 3

    .line 7782
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    if-nez v0, :cond_b

    .line 7784
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->parsePerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;

    move-result-object p1

    .line 7785
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    return-object p1

    :cond_b
    return-object v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 4

    .line 2926
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionManager;

    .line 2927
    invoke-virtual {p0, p1, p2}, Landroid/permission/PermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPlatformPackage()Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 1

    .line 8061
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    return-object p0
.end method

.method public final getRequiredButNotReallyRequiredVerifiersLPr(Lcom/android/server/pm/Computer;)[Ljava/lang/String;
    .registers 10

    .line 2614
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2616
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    const/4 v6, 0x0

    .line 2620
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2617
    const-string v3, "application/vnd.android.package-archive"

    const-wide/32 v4, 0x1c0000

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p0

    .line 2621
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_28

    .line 2623
    const-string p0, "PackageManager"

    const-string p1, "There should probably be a verifier, but, none were found"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    :cond_28
    const/4 v0, 0x2

    if-gt p1, v0, :cond_5f

    .line 2626
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, p1, :cond_5e

    .line 2628
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 2629
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 2630
    :cond_47
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid verifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    return-object v0

    .line 2635
    :cond_5f
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There must be no more than 2 verifiers; found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getRequiredInstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 8

    .line 2677
    new-instance v1, Landroid/content/Intent;

    const-string p0, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2678
    const-string p0, "android.intent.category.DEFAULT"

    invoke-virtual {v1, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2679
    const-string p0, "content://com.example/foo.apk"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-wide/32 v3, 0x1c0000

    const/4 v5, 0x0

    .line 2681
    const-string v2, "application/vnd.android.package-archive"

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    .line 2685
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4f

    const/4 p1, 0x0

    .line 2686
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2687
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2690
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 2688
    :cond_47
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The installer must be a privileged app"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2692
    :cond_4f
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There must be exactly one installer; found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getRequiredPermissionControllerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 8

    .line 2714
    new-instance v1, Landroid/content/Intent;

    const-string p0, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2715
    const-string p0, "android.intent.category.DEFAULT"

    invoke-virtual {v1, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/32 v3, 0x1c0000

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    .line 2717
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    .line 2720
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_43

    const/4 p1, 0x0

    .line 2721
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2722
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2725
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 2723
    :cond_3b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The permissions manager must be a privileged app"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2727
    :cond_43
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There must be exactly one permissions manager; found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getRequiredServicesExtensionPackageLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 4

    .line 2656
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v1, 0x10402ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2658
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 2663
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2665
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    return-object p0

    .line 2666
    :cond_1a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required services extension package is missing, config_servicesExtensionPackage had defined with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but can not find the package info on the system image, check if the package has a problem."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2659
    :cond_36
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Required services extension package failed due to config_servicesExtensionPackage is empty."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRequiredSharedLibrary(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    int-to-long v0, p3

    .line 2643
    invoke-interface {p1, p2, v0, v1}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 2647
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    return-object p0

    .line 2649
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected a package for shared library "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2645
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing required shared library:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRequiredUninstallerLPr(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 14

    .line 2697
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2698
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2699
    const-string v0, "foo.bar"

    const/4 v1, 0x0

    const-string/jumbo v3, "package"

    invoke-static {v3, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2701
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 2704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    const/4 v3, 0x0

    const-wide/32 v4, 0x1c0000

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    .line 2701
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 2705
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2706
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    .line 2710
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 2707
    :cond_49
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There must be exactly one uninstaller; found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getResolveComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 7881
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getRetailDemoPackageName()Ljava/lang/String;
    .registers 9

    .line 3778
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v1, 0x10402e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3779
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10402e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3782
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_65

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_65

    .line 3786
    :cond_20
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz p0, :cond_65

    .line 3788
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    if-eqz p0, :cond_65

    .line 3789
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 3791
    :try_start_36
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 3792
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    array-length v4, p0

    const/4 v5, 0x0

    move v6, v5

    :goto_43
    if-ge v6, v4, :cond_65

    aget-object v7, p0, v6

    .line 3795
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    .line 3794
    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    invoke-static {v7, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v7

    .line 3793
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_57
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_36 .. :try_end_57} :catch_5d

    if-eqz v7, :cond_5a

    return-object v0

    :cond_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    :catch_5d
    move-exception p0

    .line 3800
    const-string v0, "PackageManager"

    const-string v1, "Unable to verify signatures as getting the retail demo package name"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_65
    :goto_65
    return-object v3
.end method

.method public getSafeMode()Z
    .registers 1

    .line 7877
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    return p0
.end method

.method public getSdkSandboxPackageName()Ljava/lang/String;
    .registers 1

    .line 2984
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkVersion()I
    .registers 1

    .line 7901
    iget p0, p0, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    return p0
.end method

.method public getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    .line 3343
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3344
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3345
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p0

    return-object p0

    .line 3347
    :cond_17
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p0

    return-object p0

    .line 3350
    :cond_22
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getSetupWizardPackageNameImpl(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 8

    .line 3671
    new-instance v1, Landroid/content/Intent;

    const-string p0, "android.intent.action.MAIN"

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3672
    const-string p0, "android.intent.category.SETUP_WIZARD"

    invoke-virtual {v1, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/32 v3, 0x1c0200

    .line 3677
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v2, 0x0

    move-object v0, p1

    .line 3674
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    .line 3678
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2e

    const/4 p1, 0x0

    .line 3679
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 3681
    :cond_2e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There should probably be exactly one setup wizard; found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": matches="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStorageManagerPackageName(Lcom/android/server/pm/Computer;)Ljava/lang/String;
    .registers 8

    .line 3688
    new-instance v1, Landroid/content/Intent;

    const-string p0, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0x1c0200

    .line 3693
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v2, 0x0

    move-object v0, p1

    .line 3690
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    .line 3694
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_29

    const/4 p1, 0x0

    .line 3695
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 3697
    :cond_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There should probably be exactly one storage manager; found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3698
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": matches="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3697
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemAppUpdateOwnerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 8320
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/SystemConfig;->getSystemAppUpdateOwnerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemPackageRescanFlagsAndReparseFlags(Ljava/io/File;II)Landroid/util/Pair;
    .registers 7

    .line 8091
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 8092
    invoke-virtual {p0}, Lcom/android/server/pm/InitAppsHelper;->getDirsToScanAsSystem()Ljava/util/List;

    move-result-object p0

    .line 8095
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_2e

    .line 8096
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ScanPartition;

    .line 8097
    invoke-virtual {v1, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsPrivApp(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/high16 p0, 0x20000

    or-int/2addr p0, p2

    .line 8099
    iget p1, v1, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr p0, p1

    goto :goto_30

    .line 8103
    :cond_21
    invoke-virtual {v1, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsApp(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 8105
    iget p0, v1, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr p0, p2

    goto :goto_30

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_2e
    const/4 p3, 0x0

    move p0, p3

    .line 8109
    :goto_30
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public getSystemPackageScanFlags(Ljava/io/File;)I
    .registers 6

    .line 8073
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 8074
    invoke-virtual {p0}, Lcom/android/server/pm/InitAppsHelper;->getDirsToScanAsSystem()Ljava/util/List;

    move-result-object p0

    .line 8076
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    const/high16 v1, 0x10000

    if-ltz v0, :cond_2e

    .line 8077
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ScanPartition;

    .line 8078
    invoke-virtual {v2, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 8079
    iget p0, v2, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v0, p0, v1

    .line 8080
    invoke-virtual {v2, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsPrivApp(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/high16 p1, 0x30000

    or-int/2addr p0, p1

    return p0

    :cond_2a
    return v0

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_2e
    return v1
.end method

.method public getUidForVerifier(Landroid/content/pm/VerifierInfo;)I
    .registers 2

    .line 8270
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->getUidForVerifier(Landroid/content/pm/VerifierInfo;)I

    move-result p0

    return p0
.end method

.method public final getVerificationPolicyDelegate(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 3764
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return-object v0

    :cond_8
    const/16 p0, 0x3e8

    .line 3768
    invoke-interface {p1, p2, p0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 3770
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result p0

    if-eqz p0, :cond_1d

    return-object p2

    :cond_1d
    return-object v0
.end method

.method public grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V
    .registers 11

    .line 7632
    invoke-interface {p1, p5}, Lcom/android/server/pm/Computer;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 7633
    invoke-static {p2, p4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    if-eqz v0, :cond_38

    .line 7634
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_38

    .line 7639
    :cond_11
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7638
    invoke-interface {p1, v0, p2, p5}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_29

    if-nez p6, :cond_1e

    goto :goto_38

    .line 7648
    :cond_1e
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 7649
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 7648
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/pm/InstantAppRegistry;->grantInstantAccess(ILandroid/content/Intent;II)Z

    move-result p0

    goto :goto_2f

    .line 7651
    :cond_29
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {p0, v1, p5, p7}, Lcom/android/server/pm/AppsFilterImpl;->grantImplicitAccess(IIZ)Z

    move-result p0

    :goto_2f
    if-eqz p0, :cond_38

    const/4 p0, 0x7

    .line 7656
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->invalidateGetPackagesForUidCache(I)V

    .line 7658
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateCheckPackageCache()V

    :cond_38
    :goto_38
    return-void
.end method

.method public handlePackagePostInstall(Lcom/android/server/pm/InstallRequest;Z)V
    .registers 3

    .line 8222
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->handlePackagePostInstall(Lcom/android/server/pm/InstallRequest;Z)V

    return-void
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .registers 3

    .line 2969
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/FeatureInfo;

    const/4 p1, 0x0

    if-nez p0, :cond_c

    return p1

    .line 2973
    :cond_c
    iget p0, p0, Landroid/content/pm/FeatureInfo;->version:I

    if-lt p0, p2, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return p1
.end method

.method public initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 4

    .line 8236
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    return-object p0
.end method

.method public final installAllowlistedSystemPackages()V
    .registers 5

    .line 1799
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->installAllowlistedSystemPackages(ZZLandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, -0x1

    .line 1801
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 1802
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    :cond_19
    return-void
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)Landroid/util/Pair;
    .registers 7

    .line 8231
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public installPackagesTraced(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V
    .registers 3

    .line 8251
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->installPackagesTraced(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    return-void
.end method

.method public isCallerVerifier(Lcom/android/server/pm/Computer;I)Z
    .registers 10

    .line 3375
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3376
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_1a

    aget-object v4, p0, v3

    const-wide/16 v5, 0x0

    .line 3377
    invoke-interface {p1, v4, v5, v6, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    if-ne p2, v4, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1a
    return v2
.end method

.method public final isDeviceManagementRoleHolder(Ljava/lang/String;I)Z
    .registers 3

    .line 3453
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->getDevicePolicyManagementRoleHolderPackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDeviceUpgrading()Z
    .registers 2

    .line 2608
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mIsUpgrade:Z

    if-nez p0, :cond_10

    const-string/jumbo p0, "persist.pm.mock-upgrade"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    return v0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method public isExpectingBetter(Ljava/lang/String;)Z
    .registers 2

    .line 7969
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InitAppsHelper;->isExpectingBetter(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFirstBoot()Z
    .registers 1

    .line 2602
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    return p0
.end method

.method public isOverlayMutable(Ljava/lang/String;)Z
    .registers 2

    .line 8069
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPackageDeviceAdmin(Ljava/lang/String;I)Z
    .registers 10

    .line 3401
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    .line 3402
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3403
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v2, 0x0

    if-eqz v0, :cond_6f

    if-eqz v1, :cond_6f

    .line 3406
    :try_start_13
    invoke-interface {v0, v2}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_1f

    .line 3409
    :cond_1b
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3414
    :goto_1f
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_27

    return v4

    .line 3418
    :cond_27
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    const/4 v5, -0x1

    if-ne p2, v5, :cond_32

    move-object p2, v3

    goto :goto_36

    .line 3423
    :cond_32
    filled-new-array {p2}, [I

    move-result-object p2

    :goto_36
    move v5, v2

    .line 3426
    :goto_37
    array-length v6, p2

    if-ge v5, v6, :cond_46

    .line 3427
    aget v6, p2, v5

    invoke-interface {v0, p1, v6}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_43

    return v4

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 3436
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-nez v0, :cond_51

    return v2

    .line 3440
    :cond_51
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_59

    :cond_58
    move-object v3, p2

    :goto_59
    array-length p2, v3

    move v0, v2

    :goto_5b
    if-ge v0, p2, :cond_6f

    aget v5, v3, v0

    .line 3441
    invoke-virtual {p0, p1, v5}, Lcom/android/server/pm/PackageManagerService;->isDeviceManagementRoleHolder(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 3442
    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    move-result v5
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_69} :catch_6f

    if-eqz v5, :cond_6c

    return v4

    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    :catch_6f
    :cond_6f
    return v2
.end method

.method public isPackageDeviceAdminOnAnyUser(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .registers 6

    .line 3385
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3386
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-interface {p1, v1, v0}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_20

    .line 3392
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 3393
    invoke-interface {p1, p2, v0}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1b

    const/4 p0, 0x0

    return p0

    .line 3396
    :cond_1b
    invoke-virtual {p0, p2, v2}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 3388
    :cond_20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, ""

    const-string p2, "128599183"

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3389
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "android.permission.MANAGE_USERS permission is required to call this API"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isPreNMR1Upgrade()Z
    .registers 1

    .line 8065
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    return p0
.end method

.method public isStorageLow()Z
    .registers 4

    .line 4576
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4579
    :try_start_4
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    if-eqz p0, :cond_1a

    .line 4581
    invoke-interface {p0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 4586
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_18
    move-exception p0

    goto :goto_1f

    :cond_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4587
    throw p0
.end method

.method public isSystemReady()Z
    .registers 1

    .line 8057
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    return p0
.end method

.method public isUserRestricted(ILjava/lang/String;)Z
    .registers 3

    .line 3180
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    .line 3181
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 3182
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "User is restricted: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_25
    return p1
.end method

.method public killApplication(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 9

    .line 3130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3132
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_e

    if-eqz p0, :cond_11

    .line 3135
    :try_start_a
    invoke-interface/range {p0 .. p5}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_11
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    goto :goto_11

    :catchall_e
    move-exception v0

    move-object p0, v0

    goto :goto_15

    .line 3140
    :catch_11
    :cond_11
    :goto_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3141
    throw p0
.end method

.method public killApplication(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 11

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 3122
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method public killApplicationSync(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 14

    .line 3146
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 3147
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    if-nez v1, :cond_14

    goto :goto_38

    .line 3152
    :cond_14
    new-instance v7, Lcom/android/server/pm/KillAppBlocker;

    invoke-direct {v7}, Lcom/android/server/pm/KillAppBlocker;-><init>()V

    .line 3154
    :try_start_19
    invoke-virtual {v7}, Lcom/android/server/pm/KillAppBlocker;->register()V

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 3155
    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->killApplicationSync(Ljava/lang/String;IILjava/lang/String;I)V

    move-object p1, v2

    .line 3156
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v7, v1, p2, p0, p1}, Lcom/android/server/pm/KillAppBlocker;->waitAppProcessGone(Landroid/app/ActivityManagerInternal;Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_32

    .line 3158
    invoke-virtual {v7}, Lcom/android/server/pm/KillAppBlocker;->unregister()V

    return-void

    :catchall_32
    move-exception v0

    move-object p0, v0

    invoke-virtual {v7}, Lcom/android/server/pm/KillAppBlocker;->unregister()V

    .line 3159
    throw p0

    .line 3149
    :cond_38
    :goto_38
    const-string v0, "PackageManager"

    const-string v1, "Holds PM\'s lock, unable kill application synchronized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$deletePackageIfUnused$51(Ljava/lang/String;)V
    .registers 9

    .line 4604
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    return-void
.end method

.method public final synthetic lambda$getDevicePolicyManagementRoleHolderPackageName$46(I)Ljava/lang/String;
    .registers 3

    .line 3459
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    .line 3460
    const-string v0, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    .line 3462
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 3461
    invoke-virtual {p0, v0, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 3463
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p0, 0x0

    return-object p0

    :cond_1c
    const/4 p1, 0x0

    .line 3466
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final synthetic lambda$new$42()Landroid/content/pm/ResolveInfo;
    .registers 1

    .line 2137
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public final synthetic lambda$new$43()Landroid/content/pm/ActivityInfo;
    .registers 1

    .line 2137
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public final synthetic lambda$new$44([ILcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 8

    .line 2479
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 2480
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_34

    .line 2483
    :cond_d
    array-length v0, p1

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_34

    aget v2, p1, v1

    .line 2484
    invoke-interface {p2, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2485
    invoke-interface {p2, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_31

    .line 2488
    :cond_28
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V

    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_34
    :goto_34
    return-void
.end method

.method public final synthetic lambda$notifyFirstLaunch$45(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    .line 3307
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 3308
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_41

    .line 3309
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    .line 3310
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v5

    if-eq v5, v4, :cond_1d

    goto :goto_3e

    .line 3313
    :cond_1d
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getNewUsers()[I

    move-result-object v4

    .line 3314
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    move v3, v1

    .line 3316
    :goto_30
    array-length v5, v4

    if-ge v3, v5, :cond_3e

    .line 3317
    aget v5, v4, v3

    if-ne p2, v5, :cond_3b

    .line 3322
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    goto :goto_64

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3327
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_39

    .line 3332
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-interface {v0, p1, p2, v2}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3334
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_55

    :cond_51
    new-array v2, v4, [I

    aput p2, v2, v1

    :goto_55
    if-eqz v0, :cond_5c

    .line 3335
    new-array v0, v4, [I

    aput p2, v0, v1

    goto :goto_5e

    :cond_5c
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 3336
    :goto_5e
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {p0, p1, p3, v2, v0}, Lcom/android/server/pm/BroadcastHelper;->sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V

    return-void

    .line 3327
    :goto_64
    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_39

    throw p0
.end method

.method public final synthetic lambda$requestChecksumsInternal$5()Landroid/content/Context;
    .registers 1

    .line 1408
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final synthetic lambda$requestChecksumsInternal$7()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 1411
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public final synthetic lambda$requestChecksumsInternal$8(Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 12

    move-object v0, p0

    move-object p0, p2

    move p2, p4

    move-object p4, p6

    .line 1407
    new-instance p6, Lcom/android/server/pm/ApkChecksums$Injector;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda51;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda51;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;

    invoke-direct {v2, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;-><init>(Landroid/os/Handler;)V

    iget-object p1, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1410
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    new-instance p1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda54;

    invoke-direct {p1, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda54;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {p6, v1, v2, v3, p1}, Lcom/android/server/pm/ApkChecksums$Injector;-><init>(Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;)V

    move p1, p3

    move-object p3, p5

    move-object p5, p7

    .line 1412
    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/ApkChecksums;->getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V

    return-void
.end method

.method public final synthetic lambda$requestFileChecksums$1()Landroid/content/Context;
    .registers 1

    .line 1351
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final synthetic lambda$requestFileChecksums$3()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 1354
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public final synthetic lambda$requestFileChecksums$4(Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 12

    move-object v0, p0

    move-object p0, p2

    move p2, p4

    move-object p4, p6

    .line 1350
    new-instance p6, Lcom/android/server/pm/ApkChecksums$Injector;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;

    invoke-direct {v2, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;-><init>(Landroid/os/Handler;)V

    iget-object p1, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1353
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda53;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    new-instance p1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda64;

    invoke-direct {p1, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda64;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {p6, v1, v2, v3, p1}, Lcom/android/server/pm/ApkChecksums$Injector;-><init>(Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;)V

    move p1, p3

    move-object p3, p5

    move-object p5, p7

    .line 1355
    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/ApkChecksums;->getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V

    return-void
.end method

.method public final synthetic lambda$setPackageStoppedState$54(Ljava/lang/String;I)V
    .registers 4

    .line 4780
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 4781
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    if-eqz p0, :cond_19

    .line 4782
    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 4783
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 4784
    invoke-virtual {p0, p1, v0}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->setHibernatingGlobally(Ljava/lang/String;Z)V

    :cond_19
    return-void
.end method

.method public final synthetic lambda$setPackageStoppedState$55(Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V
    .registers 18

    .line 4800
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v1, "android.intent.action.PACKAGE_UNSTOPPED"

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$systemReady$49(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 4453
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    .line 4454
    const-string v0, "incfs_default_timeouts"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "known_digesters_list"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    return-void

    :cond_16
    :goto_16
    const/4 p1, 0x0

    .line 4456
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPerUidReadTimeoutsCache:[Landroid/os/incremental/PerUidReadTimeouts;

    return-void
.end method

.method public markPackageAsArchivedIfNeeded(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/ArchivedPackageParcel;Landroid/util/SparseArray;[I)V
    .registers 11

    if-eqz p1, :cond_5b

    if-eqz p2, :cond_5b

    .line 1520
    iget-object v0, p2, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    if-eqz v0, :cond_5b

    if-eqz p3, :cond_5b

    if-eqz p4, :cond_5b

    array-length v0, p4

    if-nez v0, :cond_10

    goto :goto_5b

    :cond_10
    const/4 v0, 0x0

    .line 1530
    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    const/4 v1, 0x1

    .line 1532
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setPendingRestore(Z)Lcom/android/server/pm/PackageSetting;

    .line 1533
    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_2a

    aget v3, p4, v2

    .line 1536
    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v3

    .line 1537
    invoke-virtual {v3, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1540
    :cond_2a
    invoke-static {p1}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v0

    .line 1543
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1544
    const-string p0, "PackageManager"

    const-string p1, "Can\'t create archive state: responsible installer is empty"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1547
    :cond_3c
    array-length v2, p4

    :goto_3d
    if-ge v1, v2, :cond_5b

    aget v3, p4, v1

    .line 1548
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 1550
    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1548
    invoke-virtual {v4, p2, v3, v0, v5}, Lcom/android/server/pm/PackageArchiver;->createArchiveState(Landroid/content/pm/ArchivedPackageParcel;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 1553
    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v3

    .line 1554
    invoke-virtual {v3, v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setArchiveState(Lcom/android/server/pm/pkg/ArchiveState;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final maybeUpdateSystemOverlays(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)V
    .registers 6

    .line 7496
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_35

    .line 7497
    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    if-nez p2, :cond_15

    .line 7499
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 7500
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    goto :goto_31

    .line 7502
    :cond_15
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayPaths:[Ljava/lang/String;

    .line 7504
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 7507
    :goto_31
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    return-void

    .line 7510
    :cond_35
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    if-nez p2, :cond_48

    .line 7512
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 7513
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    goto :goto_64

    .line 7516
    :cond_48
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayPaths:[Ljava/lang/String;

    .line 7518
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mReplacedResolverPackageOverlayResourceDirs:[Ljava/lang/String;

    .line 7520
    :goto_64
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    :cond_67
    return-void
.end method

.method public notifyComponentUsed(Lcom/android/server/pm/Computer;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 4818
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4819
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-nez v1, :cond_15

    .line 4822
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_13
    move-exception p0

    goto :goto_4e

    .line 4824
    :cond_15
    :try_start_15
    invoke-interface {v1, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 4825
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component is quarantined+suspended but being used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", debugInfo: "

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4830
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_15 .. :try_end_46} :catchall_13

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 p4, 0x0

    .line 4832
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)V

    return-void

    .line 4830
    :goto_4e
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_13

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 3306
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda56;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda56;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V
    .registers 5

    .line 1276
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getObserver()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 1278
    :try_start_6
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->extrasForInstallResult(Lcom/android/server/pm/InstallRequest;)Landroid/os/Bundle;

    move-result-object p0

    .line 1279
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getObserver()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1280
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnMsg()Ljava/lang/String;

    move-result-object p1

    .line 1279
    invoke-interface {v0, v1, v2, p1, p0}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1d} :catch_1e

    return-void

    .line 1282
    :catch_1e
    const-string p0, "PackageManager"

    const-string p1, "Observer no longer exists."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public notifyInstallObserver(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p2, :cond_b

    .line 1267
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallRequest;

    goto :goto_13

    .line 1268
    :cond_b
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallRequest;

    :goto_13
    if-eqz p1, :cond_18

    .line 1271
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    :cond_18
    return-void
.end method

.method public notifyInstantAppPackageInstalled(Ljava/lang/String;[I)V
    .registers 4

    .line 8182
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->onPackageInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)V

    return-void
.end method

.method public notifyPackageAdded(Ljava/lang/String;I)V
    .registers 3

    .line 3165
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageObserverHelper;->notifyAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyPackageChanged(Ljava/lang/String;I)V
    .registers 3

    .line 3170
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageObserverHelper;->notifyChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyPackageRemoved(Ljava/lang/String;I)V
    .registers 3

    .line 3175
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageObserverHelper;->notifyRemoved(Ljava/lang/String;I)V

    .line 3176
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0, p1}, Landroid/content/pm/UserPackage;->removeFromCache(ILjava/lang/String;)V

    return-void
.end method

.method public final notifyPackageUseInternal(Ljava/lang/String;I)V
    .registers 6

    .line 3052
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3053
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 3054
    :try_start_a
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-nez p0, :cond_19

    .line 3056
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_17
    move-exception p0

    goto :goto_25

    .line 3058
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 3059
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_17

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_25
    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_17

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public onInstallerPackageDeleted(II)V
    .registers 3

    .line 8255
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->onInstallerPackageDeleted(II)V

    return-void
.end method

.method public onNewUserCreated(IZ)V
    .registers 4

    if-eqz p2, :cond_a

    .line 4552
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->readPermissionStateForUser(I)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_a

    :cond_9
    return-void

    .line 4553
    :cond_a
    :goto_a
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onUserCreated(I)V

    .line 4554
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {p2, p1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->grantDefaultPermissions(I)V

    .line 4555
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setDefaultPermissionGrantFingerprint(Ljava/lang/String;I)V

    .line 4557
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {p2, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearUser(I)V

    .line 4558
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->onUserAdded(I)V

    return-void
.end method

.method public final parsePerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;
    .registers 15

    .line 7791
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getDefaultTimeouts()Ljava/lang/String;

    move-result-object v0

    .line 7792
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getKnownDigestersList()Ljava/lang/String;

    move-result-object v1

    .line 7794
    invoke-static {v0, v1}, Lcom/android/server/pm/PerPackageReadTimeouts;->parseDigestersList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 7796
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    .line 7797
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->EMPTY_PER_UID_READ_TIMEOUTS_ARRAY:[Landroid/os/incremental/PerUidReadTimeouts;

    return-object p0

    .line 7800
    :cond_15
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    .line 7801
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7802
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2e
    if-ge v4, v2, :cond_ae

    .line 7803
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PerPackageReadTimeouts;

    .line 7804
    iget-object v6, v5, Lcom/android/server/pm/PerPackageReadTimeouts;->packageName:Ljava/lang/String;

    .line 7805
    invoke-interface {p1, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    if-nez v6, :cond_40

    goto/16 :goto_ab

    .line 7813
    :cond_40
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    const/16 v8, 0x2710

    if-ge v7, v8, :cond_49

    goto :goto_ab

    .line 7821
    :cond_49
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    .line 7822
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v8

    iget-object v10, v5, Lcom/android/server/pm/PerPackageReadTimeouts;->versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    iget-wide v10, v10, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->minVersionCode:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_ab

    .line 7823
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v8

    iget-object v10, v5, Lcom/android/server/pm/PerPackageReadTimeouts;->versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    iget-wide v10, v10, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->maxVersionCode:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_66

    goto :goto_ab

    .line 7830
    :cond_66
    iget-object v8, v5, Lcom/android/server/pm/PerPackageReadTimeouts;->sha256certificate:[B

    if-eqz v8, :cond_77

    .line 7831
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/pm/PerPackageReadTimeouts;->sha256certificate:[B

    invoke-virtual {v7, v8}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v7

    if-nez v7, :cond_77

    goto :goto_ab

    .line 7839
    :cond_77
    array-length v7, p0

    move v8, v3

    :goto_79
    if-ge v8, v7, :cond_ab

    aget v9, p0, v8

    .line 7840
    invoke-interface {v6, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v10

    if-nez v10, :cond_88

    goto :goto_a8

    .line 7843
    :cond_88
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v10

    invoke-static {v9, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    .line 7844
    new-instance v10, Landroid/os/incremental/PerUidReadTimeouts;

    invoke-direct {v10}, Landroid/os/incremental/PerUidReadTimeouts;-><init>()V

    .line 7845
    iput v9, v10, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    .line 7846
    iget-object v9, v5, Lcom/android/server/pm/PerPackageReadTimeouts;->timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    iget-wide v11, v9, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minTimeUs:J

    iput-wide v11, v10, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    .line 7847
    iget-wide v11, v9, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minPendingTimeUs:J

    iput-wide v11, v10, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    .line 7848
    iget-wide v11, v9, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->maxPendingTimeUs:J

    iput-wide v11, v10, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    .line 7849
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a8
    add-int/lit8 v8, v8, 0x1

    goto :goto_79

    :cond_ab
    :goto_ab
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 7852
    :cond_ae
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/os/incremental/PerUidReadTimeouts;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/incremental/PerUidReadTimeouts;

    return-object p0
.end method

.method public performFstrimIfNeeded()V
    .registers 1

    .line 3034
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mFreeStorageHelper:Lcom/android/server/pm/FreeStorageHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/FreeStorageHelper;->performFstrimIfNeeded()V

    return-void
.end method

.method public queryIntentReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 16

    .line 3013
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 3014
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    .line 3013
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final readPermissionStateForUser(I)Z
    .registers 4

    .line 4563
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4564
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->writeLegacyPermissionStateTEMP()V

    .line 4565
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->readPermissionStateForUserSyncLPr(I)V

    .line 4566
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->readLegacyPermissionStateTEMP()V

    .line 4567
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4568
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 4567
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 4570
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    :catchall_28
    move-exception p0

    .line 4571
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final rebuildSnapshot(Lcom/android/server/pm/Computer;I)Lcom/android/server/pm/Computer;
    .registers 11

    .line 1225
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    if-nez p1, :cond_9

    const/4 p1, -0x1

    :goto_7
    move v5, p1

    goto :goto_e

    .line 1226
    :cond_9
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUsed()I

    move-result p1

    goto :goto_7

    .line 1227
    :goto_e
    new-instance p1, Lcom/android/server/pm/PackageManagerService$Snapshot;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/PackageManagerService$Snapshot;-><init>(Lcom/android/server/pm/PackageManagerService;I)V

    .line 1228
    new-instance v7, Lcom/android/server/pm/ComputerEngine;

    invoke-direct {v7, p1, p2}, Lcom/android/server/pm/ComputerEngine;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V

    .line 1229
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    .line 1231
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    if-eqz v0, :cond_2c

    .line 1232
    invoke-virtual {v7}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/SnapshotStatistics;->rebuild(JJII)V

    :cond_2c
    return-object v7
.end method

.method public reconcileSdkData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIILjava/lang/String;I)V
    .registers 16

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p7

    move v6, p8

    .line 8194
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/Installer;->buildReconcileSdkDataArgs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILjava/lang/String;I)Landroid/os/ReconcileSdkDataArgs;

    move-result-object p1

    .line 8197
    iput p6, p1, Landroid/os/ReconcileSdkDataArgs;->previousAppId:I

    .line 8198
    :try_start_d
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p2
    :try_end_13
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_d .. :try_end_13} :catch_2c

    .line 8199
    :try_start_13
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Installer;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1e

    if-eqz p2, :cond_1d

    .line 8200
    :try_start_1a
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1a .. :try_end_1d} :catch_2c

    :cond_1d
    return-void

    :catchall_1e
    move-exception v0

    move-object p0, v0

    if-eqz p2, :cond_2b

    .line 8198
    :try_start_22
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2b

    :catchall_26
    move-exception v0

    move-object p1, v0

    :try_start_28
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    throw p0
    :try_end_2c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_28 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v0

    move-object p0, v0

    .line 8201
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
    .registers 2

    .line 8118
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageStateMutator:Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-virtual {p0}, Lcom/android/server/pm/ChangedPackagesTracker;->getSequenceNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->initialState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    move-result-object p0

    return-object p0
.end method

.method public final registerObservers(Z)V
    .registers 4

    .line 1810
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_9

    .line 1811
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1813
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    if-eqz v0, :cond_12

    .line 1814
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1816
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_1b

    .line 1817
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1819
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-eqz v0, :cond_24

    .line 1820
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1822
    :cond_24
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    if-eqz v0, :cond_2d

    .line 1823
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppsFilterImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1825
    :cond_2d
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    if-eqz v0, :cond_36

    .line 1826
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/InstantAppRegistry;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1828
    :cond_36
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    if-eqz v0, :cond_3f

    .line 1829
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1831
    :cond_3f
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    if-eqz v0, :cond_48

    .line 1832
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1834
    :cond_48
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    if-eqz v0, :cond_51

    .line 1835
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 1837
    :cond_51
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_5a

    .line 1838
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_5a
    if-eqz p1, :cond_6c

    .line 1843
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mWatcher:Lcom/android/server/utils/Watcher;

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsEngBuild:Z

    if-nez v0, :cond_68

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mIsUserDebugBuild:Z

    if-nez v0, :cond_68

    const/4 v0, 0x1

    goto :goto_69

    :cond_68
    const/4 v0, 0x0

    :goto_69
    invoke-static {p0, p1, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;Z)V

    :cond_6c
    return-void
.end method

.method public removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V
    .registers 4

    .line 3265
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    move-result-object v0

    .line 3266
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    return-void
.end method

.method public removeCodePath(Ljava/io/File;)V
    .registers 2

    .line 8206
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    return-void
.end method

.method public requestChecksumsInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V
    .registers 23

    .line 1365
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    invoke-static/range {p9 .. p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    invoke-static/range {p10 .. p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 1371
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move/from16 v5, p8

    .line 1370
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_86

    move/from16 v5, p8

    .line 1376
    invoke-interface {p1, p2, v5}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_36

    .line 1380
    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1381
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_34

    .line 1384
    :cond_30
    invoke-virtual {p1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_34
    move-object v9, v0

    goto :goto_37

    :cond_36
    move-object v9, p2

    .line 1390
    :goto_37
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1393
    new-instance p1, Ljava/io/File;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_6b

    .line 1396
    iget-object p1, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    if-eqz p1, :cond_6b

    .line 1397
    array-length p1, p1

    const/4 v0, 0x0

    :goto_52
    if-ge v0, p1, :cond_6b

    .line 1398
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    :cond_6b
    if-eqz p6, :cond_71

    .line 1403
    invoke-static/range {p6 .. p6}, Lcom/android/server/pm/PackageManagerService;->decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;

    move-result-object p2

    :cond_71
    move-object v10, p2

    .line 1406
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;

    move-object v4, p0

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v11, p7

    move-object/from16 v5, p10

    invoke-direct/range {v3 .. v11}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda46;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V

    move-object/from16 p0, p9

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1373
    :cond_86
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public requestFileChecksums(Ljava/io/File;Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 17

    .line 1337
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1341
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    .line 1342
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p5, :cond_1b

    .line 1343
    invoke-static {p5}, Lcom/android/server/pm/PackageManagerService;->decodeCertificates(Ljava/util/List;)[Ljava/security/cert/Certificate;

    move-result-object v3

    move-object v7, v3

    goto :goto_1c

    :cond_1b
    move-object v7, v0

    .line 1346
    :goto_1c
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1347
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;

    move-object v1, p0

    move-object v6, p2

    move v4, p3

    move v5, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1338
    :cond_38
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 22

    .line 2995
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/content/pm/InstantAppRequest;

    iget-object v11, p1, Landroid/content/pm/AuxiliaryResolveInfo;->hostDigestPrefixSecure:[I

    iget-object v12, p1, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    const/16 p1, 0x14

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3000
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final resetComponentEnabledSettingsIfNeededLPw(Ljava/lang/String;II)V
    .registers 11

    if-eqz p1, :cond_b

    .line 3524
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_bf

    .line 3525
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResetEnabledSettingsOnAppDataCleared()Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_bf

    .line 3528
    :cond_16
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-nez v1, :cond_20

    goto/16 :goto_bf

    .line 3532
    :cond_20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3533
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;

    invoke-direct {v3, v1, p2, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda61;-><init>(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;)V

    const/4 v4, 0x0

    move v5, v4

    .line 3538
    :goto_2c
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_44

    .line 3539
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_44
    move v5, v4

    .line 3541
    :goto_45
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5d

    .line 3542
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    :cond_5d
    move v5, v4

    .line 3544
    :goto_5e
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_76

    .line 3545
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    :cond_76
    move v5, v4

    .line 3547
    :goto_77
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8f

    .line 3548
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_77

    .line 3550
    :cond_8f
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_96

    goto :goto_bf

    .line 3555
    :cond_96
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 3556
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 3557
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 3559
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v0, p2, p1, v2}, Lcom/android/server/pm/PendingPackageBroadcasts;->addComponents(ILjava/lang/String;Ljava/util/List;)V

    .line 3560
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_bf

    .line 3561
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-string/jumbo p1, "reset_component_state_changed"

    .line 3562
    invoke-virtual {p0, p2, p3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x3e8

    .line 3561
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_bf
    :goto_bf
    return-void
.end method

.method public resolveUserIds(I)[I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 3089
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    return-object p0

    :cond_a
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput p1, p0, v0

    return-object p0
.end method

.method public restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V
    .registers 2

    .line 8259
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public restoreDisabledSystemPackageLIF(Lcom/android/server/pm/DeletePackageAction;[IZ)V
    .registers 4

    .line 8242
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->restoreDisabledSystemPackageLIF(Lcom/android/server/pm/DeletePackageAction;[IZ)V

    return-void
.end method

.method public restorePermissionsAndUpdateRolesForNewUserInstall(Ljava/lang/String;I)V
    .registers 5

    .line 3578
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, p1, p2}, Landroid/permission/PermissionManagerInternal;->restoreDelayedRuntimePermissions(Ljava/lang/String;I)V

    .line 3582
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 3583
    :try_start_b
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/Settings;->getPendingDefaultBrowserLPr(I)Ljava/lang/String;

    move-result-object v1

    .line 3584
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_40

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3585
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3586
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/DefaultAppProvider;->setDefaultBrowser(Ljava/lang/String;I)V

    .line 3587
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p1

    .line 3588
    :try_start_26
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/Settings;->removePendingDefaultBrowserLPw(I)Ljava/lang/String;

    .line 3589
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_36

    :catchall_30
    move-exception p0

    :try_start_31
    monitor-exit p1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 3594
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    return-void

    :catchall_40
    move-exception p0

    .line 3584
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public scheduleDeferredNoKillInstallObserver(Lcom/android/server/pm/InstallRequest;)V
    .registers 4

    .line 1288
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1289
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mNoKillInstallObservers:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1291
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public scheduleDeferredNoKillPostDelete(Lcom/android/server/pm/CleanUpArgs;)V
    .registers 7

    .line 1295
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1299
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;-><init>()V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delaying the deletion of <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/CleanUpArgs;->getCodePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> by "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms or till the next reboot"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "PackageManager"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public scheduleDeferredPendingKillInstallObserver(Lcom/android/server/pm/InstallRequest;)V
    .registers 4

    .line 1316
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1317
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPendingKillInstallObservers:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1320
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public schedulePruneUnusedStaticSharedLibraries(Z)V
    .registers 6

    .line 1310
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1311
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_10

    .line 1312
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getPruneUnusedSharedLibrariesDelay()J

    move-result-wide v2

    goto :goto_12

    :cond_10
    const-wide/16 v2, 0x0

    .line 1311
    :goto_12
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public scheduleWritePackageListLocked(I)V
    .registers 5

    const/16 v0, 0xa

    .line 1573
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    .line 1575
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateQueryIntentActivitiesCache()V

    .line 1576
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1577
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1578
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1579
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_21
    return-void
.end method

.method public scheduleWritePackageRestrictions(I)V
    .registers 7

    const/16 v0, 0xb

    .line 1589
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_29

    .line 1592
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1593
    :try_start_b
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_25

    aget v3, p1, v2

    .line 1594
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :catchall_23
    move-exception p0

    goto :goto_27

    .line 1596
    :cond_25
    monitor-exit v0

    goto :goto_3f

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_23

    throw p0

    .line 1598
    :cond_29
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_54

    .line 1601
    :cond_32
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1602
    :try_start_35
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1603
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_55

    .line 1605
    :goto_3f
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_54

    .line 1606
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 1607
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x2710

    .line 1606
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_54
    :goto_54
    return-void

    :catchall_55
    move-exception p0

    .line 1603
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public scheduleWritePackageRestrictions(Landroid/os/UserHandle;)V
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, -0x1

    goto :goto_8

    .line 1584
    :cond_4
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 1585
    :goto_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    return-void
.end method

.method public scheduleWriteSettings()V
    .registers 5

    const/16 v0, 0x9

    .line 1564
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    .line 1566
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateQueryIntentActivitiesCache()V

    .line 1567
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1568
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_19
    return-void
.end method

.method public sendPendingBroadcasts(Ljava/lang/String;I)V
    .registers 3

    .line 8218
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->sendPendingBroadcasts(Ljava/lang/String;I)V

    return-void
.end method

.method public sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V
    .registers 5

    .line 3666
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/android/server/pm/BroadcastHelper;->sendSessionCommitBroadcast(Lcom/android/server/pm/Computer;Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/lang/String;)V

    return-void
.end method

.method public setActiveLauncherPackage(Ljava/lang/String;ILjava/util/function/Consumer;)Z
    .registers 5

    .line 7947
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/android/server/pm/DefaultAppProvider;->setDefaultHome(Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public setDefaultBrowser(Ljava/lang/String;I)V
    .registers 3

    .line 7957
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/DefaultAppProvider;->setDefaultBrowser(Ljava/lang/String;I)V

    return-void
.end method

.method public setEnableRollbackCode(II)V
    .registers 5

    .line 3283
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3284
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3285
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 3286
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setEnabledOverlayPackages(ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 7357
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 7358
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 7360
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mOverlayPathsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v11

    .line 7361
    :try_start_17
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v13, 0x0

    :goto_1c
    if-ge v13, v10, :cond_12f

    .line 7363
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 7364
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/overlay/OverlayPaths;

    .line 7365
    invoke-interface {v1, v15}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-nez v3, :cond_33

    const/4 v4, 0x0

    goto :goto_37

    .line 7368
    :cond_33
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    :goto_37
    if-eqz v15, :cond_3b

    if-nez v4, :cond_3e

    :cond_3b
    move-object v2, v15

    goto/16 :goto_110

    .line 7375
    :cond_3e
    invoke-interface {v3, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    :cond_4c
    :goto_4c
    move-object/from16 v3, p4

    goto/16 :goto_12b

    .line 7380
    :cond_50
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_fa

    .line 7382
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    .line 7383
    :goto_5b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_fa

    .line 7384
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v16, v15

    const-wide/16 v14, -0x1

    .line 7387
    invoke-interface {v1, v12, v14, v15}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v14

    if-nez v14, :cond_7b

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v17, v4

    move/from16 v18, v6

    :cond_77
    :goto_77
    move-object/from16 v2, v16

    goto/16 :goto_f1

    :cond_7b
    move-object v15, v3

    move-object/from16 v17, v4

    const-wide/16 v3, 0x0

    const/16 v5, 0x3e8

    move-object/from16 v18, v14

    move-object v14, v2

    move-object/from16 v2, v18

    move/from16 v18, v6

    move/from16 v6, p1

    .line 7392
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    move-result-object v2

    move v5, v6

    .line 7394
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_97

    goto :goto_77

    :cond_97
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7398
    :goto_99
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_da

    .line 7399
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/VersionedPackage;

    move-object/from16 v19, v2

    .line 7401
    invoke-virtual {v6}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-nez v2, :cond_b2

    goto :goto_d5

    .line 7405
    :cond_b2
    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 7406
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->getSharedLibraryOverlayPaths()Ljava/util/Map;

    move-result-object v2

    .line 7407
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/overlay/OverlayPaths;

    .line 7405
    invoke-virtual {v0, v2, v14}, Lcom/android/server/pm/PackageManagerService;->canSetOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 7408
    invoke-virtual {v6}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7409
    invoke-static {v4, v2}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v4

    .line 7411
    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d5

    :catchall_d2
    move-exception v0

    goto/16 :goto_15d

    :cond_d5
    :goto_d5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v19

    goto :goto_99

    :cond_da
    if-eqz v4, :cond_77

    move-object/from16 v2, v16

    .line 7417
    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_ee

    .line 7420
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 7421
    invoke-virtual {v9, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7424
    :cond_ee
    invoke-virtual {v3, v12, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f1
    add-int/lit8 v6, v18, 0x1

    move-object v3, v15

    move-object/from16 v4, v17

    move-object v15, v2

    move-object v2, v14

    goto/16 :goto_5b

    :cond_fa
    move-object v14, v2

    move-object v2, v15

    move-object v15, v3

    .line 7429
    invoke-interface {v15, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v3

    invoke-virtual {v0, v3, v14}, Lcom/android/server/pm/PackageManagerService;->canSetOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 7431
    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4c

    .line 7370
    :goto_110
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to find package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p4

    .line 7371
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_12b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1c

    .line 7435
    :cond_12f
    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda58;

    move-object v3, v7

    move-object v4, v8

    move-object v6, v9

    move v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda58;-><init>(ILandroid/util/ArrayMap;Ljava/util/Set;ILandroid/util/ArrayMap;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 7468
    monitor-exit v11
    :try_end_13d
    .catchall {:try_start_17 .. :try_end_13d} :catchall_d2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-nez p1, :cond_157

    const/4 v12, 0x0

    :goto_143
    if-ge v12, v2, :cond_157

    .line 7474
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7475
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/overlay/OverlayPaths;

    .line 7476
    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/PackageManagerService;->maybeUpdateSystemOverlays(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_143

    :cond_157
    const/16 v0, 0xc

    .line 7480
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    return-void

    .line 7468
    :goto_15d
    :try_start_15d
    monitor-exit v11
    :try_end_15e
    .catchall {:try_start_15d .. :try_end_15e} :catchall_d2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final setEnabledSettingInternalLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageManager$ComponentEnabledSetting;ILjava/lang/String;)Z
    .registers 12

    .line 4222
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v0

    .line 4223
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4225
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_2a

    .line 4227
    invoke-virtual {p2, v0, p4, p5}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    const/4 p3, 0x3

    if-eq v0, p3, :cond_19

    if-ne v0, v3, :cond_28

    .line 4228
    :cond_19
    const-string p3, "android.permission.SUSPEND_APPS"

    .line 4230
    invoke-virtual {p0, p3, v1, p4}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_28

    const/4 p3, -0x1

    .line 4235
    invoke-virtual {p0, p1, v1, p4, p3}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)V

    .line 4236
    invoke-virtual {p0, p1, p4}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V

    :cond_28
    move p1, v4

    goto :goto_6a

    .line 4241
    :cond_2a
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_66

    if-eq v0, v4, :cond_61

    if-eq v0, v3, :cond_5c

    .line 4253
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed setComponentEnabledSetting: component "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requested an invalid new component state: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PackageManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v5

    goto :goto_6a

    .line 4247
    :cond_5c
    invoke-virtual {p2, p1, p4}, Lcom/android/server/pm/PackageSetting;->disableComponentLPw(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_6a

    .line 4244
    :cond_61
    invoke-virtual {p2, p1, p4}, Lcom/android/server/pm/PackageSetting;->enableComponentLPw(Ljava/lang/String;I)Z

    move-result p1

    goto :goto_6a

    .line 4250
    :cond_66
    invoke-virtual {p2, p1, p4}, Lcom/android/server/pm/PackageSetting;->restoreComponentLPw(Ljava/lang/String;I)Z

    move-result p1

    :goto_6a
    if-nez p1, :cond_6d

    return v5

    .line 4263
    :cond_6d
    filled-new-array {p4}, [I

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 4264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 4266
    :try_start_78
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7f

    .line 4268
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_7f
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4269
    throw p0
.end method

.method public final setEnabledSettings(Ljava/util/List;ILjava/lang/String;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 3920
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3922
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    const/4 v11, 0x1

    .line 3923
    const-string/jumbo v12, "set enabled"

    const/4 v10, 0x0

    move/from16 v9, p2

    invoke-interface/range {v7 .. v12}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move v4, v9

    .line 3926
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v1, 0x0

    :goto_1c
    const/4 v10, 0x2

    const/4 v2, 0x3

    const/4 v11, 0x1

    if-ge v1, v7, :cond_51

    .line 3928
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v3

    if-eqz v3, :cond_4e

    if-eq v3, v11, :cond_4e

    if-eq v3, v10, :cond_4e

    if-eq v3, v2, :cond_4e

    const/4 v2, 0x4

    if-ne v3, v2, :cond_37

    goto :goto_4e

    .line 3934
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid new component state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_51
    if-le v7, v11, :cond_fe

    .line 3938
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 3939
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3940
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    const/4 v12, 0x0

    :goto_63
    if-ge v12, v7, :cond_fe

    .line 3942
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 3943
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3944
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v15

    if-eqz v15, :cond_d6

    .line 3945
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    .line 3946
    invoke-virtual {v3, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_ba

    .line 3950
    invoke-virtual {v3, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3954
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-nez v15, :cond_96

    .line 3956
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v14, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_df

    .line 3957
    :cond_96
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    and-int/2addr v15, v11

    .line 3958
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v13

    and-int/2addr v13, v11

    if-ne v15, v13, :cond_a3

    goto :goto_df

    .line 3959
    :cond_a3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A conflict of the DONT_KILL_APP flag between components in the package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3947
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is duplicated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3963
    :cond_d6
    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e2

    .line 3967
    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_df
    add-int/lit8 v12, v12, 0x1

    goto :goto_63

    .line 3964
    :cond_e2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is duplicated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3972
    :cond_fe
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_10a

    move v1, v11

    goto :goto_10b

    :cond_10a
    const/4 v1, 0x0

    .line 3974
    :goto_10b
    new-array v12, v7, [Z

    .line 3975
    invoke-static {v12, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 3977
    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13, v7}, Landroid/util/ArrayMap;-><init>(I)V

    .line 3979
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 3980
    :try_start_11b
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    const/4 v14, 0x0

    :goto_120
    if-ge v14, v7, :cond_266

    .line 3983
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    move/from16 v16, v10

    .line 3984
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 3985
    invoke-interface {v13, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13b

    move/from16 v20, v1

    move v9, v2

    const/16 v17, 0x0

    goto/16 :goto_229

    :cond_13b
    const/16 v17, 0x0

    .line 3990
    invoke-interface {v5, v8}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 3989
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 3991
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v11, v10}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v11

    if-nez v9, :cond_1a5

    if-nez v1, :cond_1a5

    .line 3995
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to change component state; pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3996
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3998
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v2

    if-nez v2, :cond_185

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", package="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_19a

    :catchall_182
    move-exception v0

    goto/16 :goto_52e

    .line 3999
    :cond_185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", component="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_19a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a5
    if-eqz v11, :cond_233

    .line 4001
    invoke-interface {v5, v11, v8, v4}, Lcom/android/server/pm/Computer;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v19

    if-eqz v19, :cond_1af

    goto/16 :goto_233

    :cond_1af
    if-nez v9, :cond_1d1

    .line 4008
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 4009
    invoke-virtual {v9, v4, v10}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1ba

    goto :goto_1d1

    .line 4010
    :cond_1ba
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot disable a protected package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d1
    :goto_1d1
    const/16 v9, 0x7d0

    if-ne v8, v9, :cond_223

    .line 4014
    invoke-virtual {v11}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x100

    if-nez v9, :cond_223

    .line 4017
    invoke-virtual {v11, v4}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v9

    .line 4018
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v2

    .line 4019
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v20

    if-nez v20, :cond_200

    move/from16 v20, v1

    const/4 v1, 0x3

    if-eq v9, v1, :cond_1f7

    if-eqz v9, :cond_1f7

    const/4 v1, 0x1

    if-ne v9, v1, :cond_200

    :goto_1f5
    const/4 v9, 0x3

    goto :goto_1f9

    :cond_1f7
    const/4 v1, 0x1

    goto :goto_1f5

    :goto_1f9
    if-eq v2, v9, :cond_226

    if-eqz v2, :cond_226

    if-ne v2, v1, :cond_200

    goto :goto_226

    .line 4030
    :cond_200
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shell cannot change component state for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4032
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_223
    move/from16 v20, v1

    move v9, v2

    .line 4035
    :cond_226
    :goto_226
    invoke-interface {v13, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_229
    add-int/lit8 v14, v14, 0x1

    move v2, v9

    move/from16 v10, v16

    move/from16 v1, v20

    const/4 v11, 0x1

    goto/16 :goto_120

    .line 4003
    :cond_233
    :goto_233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v15}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v1

    if-eqz v1, :cond_251

    .line 4004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_262

    .line 4005
    :cond_251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_262
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_266
    move/from16 v20, v1

    move/from16 v16, v10

    const/16 v17, 0x0

    move/from16 v1, v17

    :goto_26e
    if-ge v1, v7, :cond_2f9

    .line 4039
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4041
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v5

    if-nez v5, :cond_27e

    goto/16 :goto_2f5

    .line 4045
    :cond_27e
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4046
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v20, :cond_299

    .line 4047
    sget-object v9, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 4048
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_291

    goto :goto_299

    .line 4049
    :cond_291
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot disable a system-generated component"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4052
    :cond_299
    :goto_299
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v9

    if-eqz v9, :cond_2ab

    .line 4053
    invoke-static {v9, v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2f5

    :cond_2ab
    if-eqz v9, :cond_2d5

    .line 4055
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v9

    const/16 v10, 0x10

    if-ge v9, v10, :cond_2b6

    goto :goto_2d5

    .line 4056
    :cond_2b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component class "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4059
    :cond_2d5
    :goto_2d5
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed setComponentEnabledSetting: component class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist in "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    aput-boolean v17, v12, v1

    :cond_2f5
    :goto_2f5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_26e

    .line 4065
    :cond_2f9
    monitor-exit v3
    :try_end_2fa
    .catchall {:try_start_11b .. :try_end_2fa} :catchall_182

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    move/from16 v1, v17

    :goto_2ff
    if-ge v1, v7, :cond_376

    .line 4069
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4071
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v3

    if-eqz v3, :cond_30e

    goto :goto_36e

    .line 4073
    :cond_30e
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4074
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v5

    .line 4075
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v9

    .line 4076
    :try_start_322
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v10

    if-ne v10, v5, :cond_331

    .line 4078
    aput-boolean v17, v12, v1

    .line 4079
    monitor-exit v9
    :try_end_32b
    .catchall {:try_start_322 .. :try_end_32b} :catchall_32f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_36e

    :catchall_32f
    move-exception v0

    goto :goto_371

    .line 4081
    :cond_331
    :try_start_331
    monitor-exit v9
    :try_end_332
    .catchall {:try_start_331 .. :try_end_332} :catchall_32f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4085
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v9

    if-eqz v9, :cond_36e

    .line 4087
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v10

    if-eqz v10, :cond_36e

    .line 4088
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v10

    if-eqz v10, :cond_36e

    if-eqz v5, :cond_34c

    const/4 v10, 0x1

    if-ne v5, v10, :cond_36e

    .line 4092
    :cond_34c
    invoke-virtual {v0, v9, v3}, Lcom/android/server/pm/PackageManagerService;->enableCompressedPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z

    move-result v3

    if-nez v3, :cond_36e

    .line 4093
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed setApplicationEnabledSetting: failed to enable commpressed package "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4094
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4093
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    aput-boolean v17, v12, v1

    :cond_36e
    :goto_36e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2ff

    .line 4081
    :goto_371
    :try_start_371
    monitor-exit v9
    :try_end_372
    .catchall {:try_start_371 .. :try_end_372} :catchall_32f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4101
    :cond_376
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9, v7}, Landroid/util/ArrayMap;-><init>(I)V

    .line 4102
    new-instance v10, Landroid/util/IntArray;

    invoke-direct {v10}, Landroid/util/IntArray;-><init>()V

    .line 4106
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 4108
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v11

    move/from16 v2, v17

    move v14, v2

    move v15, v14

    move/from16 v19, v15

    :goto_390
    if-ge v2, v7, :cond_443

    .line 4110
    :try_start_392
    aget-boolean v3, v12, v2

    if-nez v3, :cond_39f

    move-object v3, v1

    move v1, v4

    move/from16 v21, v7

    move-object/from16 v20, v12

    move v12, v2

    goto/16 :goto_439

    .line 4114
    :cond_39f
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4115
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4116
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v21, v12

    move v12, v2

    move-object/from16 v2, v20

    move-object/from16 v20, v21

    move/from16 v21, v7

    move-object v7, v5

    move-object/from16 v5, p3

    .line 4117
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->setEnabledSettingInternalLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageManager$ComponentEnabledSetting;ILjava/lang/String;)Z

    move-result v2

    move-object/from16 v22, v3

    move-object v3, v1

    move v1, v4

    move-object/from16 v4, v22

    if-nez v2, :cond_3c8

    goto :goto_439

    .line 4123
    :cond_3c8
    invoke-virtual {v10, v12}, Landroid/util/IntArray;->add(I)V

    .line 4125
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3d4

    const/4 v15, 0x1

    .line 4129
    :cond_3d4
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v2

    if-eqz v2, :cond_3e2

    .line 4130
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getClassName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3e3

    :catchall_3df
    move-exception v0

    goto/16 :goto_529

    :cond_3e2
    move-object v5, v7

    .line 4131
    :goto_3e3
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledFlags()I

    move-result v2

    const/16 v18, 0x1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_40d

    .line 4132
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_3fa

    .line 4133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4134
    :cond_3fa
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_403

    .line 4135
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4137
    :cond_403
    invoke-virtual {v9, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4140
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v2, v1, v7}, Lcom/android/server/pm/PendingPackageBroadcasts;->remove(ILjava/lang/String;)V

    const/4 v14, 0x1

    goto :goto_439

    .line 4142
    :cond_40d
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v2, v1, v7, v5}, Lcom/android/server/pm/PendingPackageBroadcasts;->addComponent(ILjava/lang/String;Ljava/lang/String;)V

    .line 4143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setEnabledSetting broadcast: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4144
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v4, 0x40000

    .line 4143
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    const/4 v14, 0x1

    const/16 v19, 0x1

    :goto_439
    add-int/lit8 v2, v12, 0x1

    move v4, v1

    move-object v1, v3

    move-object/from16 v12, v20

    move/from16 v7, v21

    goto/16 :goto_390

    :cond_443
    move-object v3, v1

    move v1, v4

    if-nez v14, :cond_44c

    .line 4150
    monitor-exit v11
    :try_end_448
    .catchall {:try_start_392 .. :try_end_448} :catchall_3df

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 4152
    :cond_44c
    :try_start_44c
    monitor-exit v11
    :try_end_44d
    .catchall {:try_start_44c .. :try_end_44d} :catchall_3df

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v15, :cond_466

    .line 4154
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4155
    :try_start_458
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V

    .line 4156
    monitor-exit v2
    :try_end_45c
    .catchall {:try_start_458 .. :try_end_45c} :catchall_460

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_469

    :catchall_460
    move-exception v0

    :try_start_461
    monitor-exit v2
    :try_end_462
    .catchall {:try_start_461 .. :try_end_462} :catchall_460

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4158
    :cond_466
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    :goto_469
    if-eqz v19, :cond_492

    .line 4161
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_492

    .line 4166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v11, v0, Lcom/android/server/pm/PackageManagerService;->mServiceStartWithDelay:J

    cmp-long v2, v4, v11

    if-lez v2, :cond_481

    const-wide/16 v4, 0x3e8

    goto :goto_483

    :cond_481
    const-wide/16 v4, 0x2710

    .line 4169
    :goto_483
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const-string v7, "component_state_changed"

    move/from16 v12, v17

    const/4 v11, 0x1

    .line 4170
    invoke-virtual {v2, v11, v8, v12, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 4169
    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_494

    :cond_492
    move/from16 v12, v17

    .line 4176
    :goto_494
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4178
    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    move-result v4

    move v5, v12

    :goto_49e
    if-ge v5, v4, :cond_4dc

    .line 4180
    invoke-virtual {v10, v5}, Landroid/util/IntArray;->get(I)I

    move-result v7

    .line 4181
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 4182
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 4183
    invoke-interface {v3, v11}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 4187
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    move-result v14

    if-eqz v14, :cond_4c1

    .line 4188
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    .line 4187
    invoke-interface {v3, v14, v8, v1}, Lcom/android/server/pm/Computer;->getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I

    move-result v14

    goto :goto_4c9

    .line 4189
    :cond_4c1
    invoke-interface {v11, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v14

    .line 4190
    :goto_4c9
    new-instance v15, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;

    .line 4192
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    invoke-static {v1, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11

    invoke-direct {v15, v7, v11, v14, v8}, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;-><init>(Landroid/content/pm/PackageManager$ComponentEnabledSetting;III)V

    .line 4194
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_49e

    .line 4198
    :cond_4dc
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/android/server/pm/PackageMetrics;->reportComponentStateChanged(Lcom/android/server/pm/Computer;Ljava/util/List;I)V

    .line 4201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4203
    :try_start_4e7
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 4204
    :goto_4eb
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v12, v3, :cond_521

    .line 4205
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4206
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 4208
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    .line 4207
    invoke-static {v1, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    move-object v6, v0

    .line 4209
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const-string v7, "component_state_changed"

    move-object v1, v2

    move-object v2, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_517
    .catchall {:try_start_4e7 .. :try_end_517} :catchall_51f

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object v2, v1

    move/from16 v1, p2

    goto :goto_4eb

    :catchall_51f
    move-exception v0

    goto :goto_525

    .line 4214
    :cond_521
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_525
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4215
    throw v0

    .line 4152
    :goto_529
    :try_start_529
    monitor-exit v11
    :try_end_52a
    .catchall {:try_start_529 .. :try_end_52a} :catchall_3df

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4065
    :goto_52e
    :try_start_52e
    monitor-exit v3
    :try_end_52f
    .catchall {:try_start_52e .. :try_end_52f} :catchall_182

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public setKeepUninstalledPackagesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;)V
    .registers 6

    .line 7856
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7857
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    monitor-enter v0

    .line 7858
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7859
    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 7861
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 7862
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const/4 p2, 0x0

    .line 7864
    :goto_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_2f

    .line 7865
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/PackageManagerService;->deletePackageIfUnused(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    :catchall_2d
    move-exception p0

    goto :goto_31

    .line 7867
    :cond_2f
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_2d

    throw p0
.end method

.method public setPackageStoppedState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)V
    .registers 14

    .line 4731
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_fd

    .line 4732
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4734
    invoke-interface {p1, v2}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_94

    .line 4735
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_29

    .line 4739
    :cond_1f
    invoke-interface {p1, v2}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    :goto_29
    const/4 v5, 0x1

    .line 4745
    const-string/jumbo v6, "stop package"

    const/4 v4, 0x1

    move-object v1, p1

    move v3, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4749
    invoke-interface {v1, p2, v2, v3}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    const/4 p4, 0x0

    if-nez p1, :cond_3c

    move-object v0, p4

    goto :goto_40

    .line 4752
    :cond_3c
    invoke-interface {p1, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    :goto_40
    if-eqz p1, :cond_95

    .line 4753
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v1

    if-eq v1, p3, :cond_95

    .line 4754
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v1

    .line 4755
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v0

    .line 4756
    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;

    invoke-direct {v2, v3, p3, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;-><init>(IZZ)V

    invoke-virtual {p0, p4, p2, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    if-eqz v1, :cond_65

    .line 4766
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    if-eqz p1, :cond_65

    .line 4768
    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4772
    :cond_65
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    goto :goto_96

    .line 4740
    :cond_69
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4742
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", uid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", package="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_94
    move v3, p4

    :cond_95
    const/4 v0, 0x0

    :goto_96
    if-nez p3, :cond_fd

    .line 4779
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;

    invoke-direct {p3, p0, p2, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v0, :cond_fd

    .line 4789
    const-string/jumbo p1, "unstoppedBroadcast"

    const-wide/32 p3, 0x40000

    invoke-static {p3, p4, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4790
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 4791
    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 4792
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v4

    .line 4794
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p2, v4}, Lcom/android/server/pm/Computer;->getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;

    move-result-object v5

    move v0, v3

    .line 4795
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v1, 0x0

    .line 4796
    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4797
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4798
    const-string p1, "android.intent.extra.TIME"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {v3, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4799
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4807
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const-string v1, "android.intent.action.PACKAGE_UNSTOPPED"

    move-object v6, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V

    .line 4810
    invoke-static {p3, p4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_fd
    :goto_fd
    return-void
.end method

.method public setPlatformPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V
    .registers 11

    .line 8010
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 8012
    :try_start_6
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 8016
    sget-object v5, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 8019
    iget-boolean p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    if-nez p2, :cond_6b

    .line 8020
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object p1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8021
    const-class p1, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 8022
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 8023
    const-string/jumbo p2, "system:ui"

    iput-object p2, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 p2, 0x0

    .line 8024
    iput p2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v0, 0x3

    .line 8025
    iput v0, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const v0, 0x11220

    .line 8026
    iput v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    const v0, 0x1030226

    .line 8030
    iput v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    const/4 v0, 0x1

    .line 8031
    iput-boolean v0, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 8032
    iput-boolean v0, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    const/4 v0, 0x2

    .line 8033
    iput v0, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/16 v0, 0xdb0

    .line 8034
    iput v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 8040
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 8041
    iput p2, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 8042
    iput p2, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 8043
    iput p2, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 8044
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    goto :goto_6b

    :catchall_68
    move-exception v0

    move-object p0, v0

    goto :goto_76

    .line 8047
    :cond_6b
    :goto_6b
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 8048
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6 .. :try_end_6f} :catchall_68

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 8049
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    return-void

    .line 8048
    :goto_76
    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_68

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public setSystemAppHiddenUntilInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    .registers 8

    .line 4619
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4620
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->isSystemOrPhone(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4622
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SUSPEND_APPS"

    const-string/jumbo v3, "setSystemAppHiddenUntilInstalled"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4626
    :cond_14
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 4627
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-nez v1, :cond_27

    goto :goto_45

    .line 4630
    :cond_27
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isCoreApp()Z

    move-result p1

    if-eqz p1, :cond_3c

    if-eqz v0, :cond_34

    goto :goto_3c

    .line 4631
    :cond_34
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system or phone callers can modify core apps"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4634
    :cond_3c
    :goto_3c
    new-instance p1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;

    invoke-direct {p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;-><init>(Ljava/lang/String;Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    :cond_45
    :goto_45
    return-void
.end method

.method public setSystemAppInstallState(Lcom/android/server/pm/Computer;Ljava/lang/String;ZI)Z
    .registers 15

    .line 4644
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4645
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->isSystemOrPhone(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4647
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SUSPEND_APPS"

    const-string/jumbo v3, "setSystemAppHiddenUntilInstalled"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4651
    :cond_14
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_80

    .line 4653
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-nez v2, :cond_28

    goto :goto_80

    .line 4656
    :cond_28
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isCoreApp()Z

    move-result v2

    if-eqz v2, :cond_3d

    if-eqz v0, :cond_35

    goto :goto_3d

    .line 4657
    :cond_35
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system or phone callers can modify core apps"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4660
    :cond_3d
    :goto_3d
    invoke-interface {p1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p1

    if-ne p1, p3, :cond_48

    return v1

    .line 4664
    :cond_48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 p1, 0x1

    if-eqz p3, :cond_62

    .line 4668
    :try_start_4f
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v6, 0x400000

    const/4 v7, 0x3

    move-object v4, p2

    move v5, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)Landroid/util/Pair;
    :try_end_5b
    .catchall {:try_start_4f .. :try_end_5b} :catchall_5f

    .line 4686
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_5f
    move-exception v0

    move-object p0, v0

    goto :goto_7c

    :cond_62
    move-object v4, p2

    move v5, p4

    .line 4679
    :try_start_64
    new-instance p2, Landroid/content/pm/VersionedPackage;

    const/4 p3, -0x1

    invoke-direct {p2, v4, p3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance p3, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    .line 4681
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p3

    const/4 p4, 0x4

    .line 4679
    invoke-virtual {p0, p2, p3, v5, p4}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    :try_end_78
    .catchall {:try_start_64 .. :try_end_78} :catchall_5f

    .line 4686
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_7c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4687
    throw p0

    :cond_80
    :goto_80
    return v1
.end method

.method public setUpCustomResolverActivity(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V
    .registers 11

    .line 7977
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    const/4 v0, 0x1

    .line 7978
    :try_start_7
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    .line 7982
    sget-object v5, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 7986
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object p1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7987
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 7988
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 7989
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 7990
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    const/4 p2, 0x0

    iput p2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const v2, 0x10320

    .line 7991
    iput v2, p1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 7995
    iput p2, p1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 7996
    iput-boolean v0, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 7997
    iput-boolean v0, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 7998
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 7999
    iput p2, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 8000
    iput p2, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 8001
    iput p2, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 8002
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 8003
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    .line 8004
    const-string p1, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Replacing default ResolverActivity with custom activity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8006
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_7 .. :try_end_6a} :catchall_6e

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_6e
    move-exception v0

    move-object p0, v0

    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6e

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final setUpInstantAppInstallerActivityLP(Landroid/content/pm/ActivityInfo;)V
    .registers 5

    .line 3093
    const-string v0, "PackageManager"

    if-nez p1, :cond_14

    .line 3094
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz p1, :cond_d

    .line 3095
    const-string p1, "Clear ephemeral installer activity"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 p1, 0x0

    .line 3097
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 3098
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    return-void

    .line 3102
    :cond_14
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_30

    .line 3103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set ephemeral installer activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3104
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3103
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    :cond_30
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 3108
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v0, v0, 0x120

    iput v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    const/4 v0, 0x1

    .line 3110
    iput-boolean v0, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3111
    iput-boolean v0, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 3112
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput-object p1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3113
    iput v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 3114
    iput v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 3115
    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    const p1, 0x588000

    .line 3116
    iput p1, p0, Landroid/content/pm/ResolveInfo;->match:I

    .line 3118
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChanged()V

    return-void
.end method

.method public shouldKeepUninstalledPackageLPr(Ljava/lang/String;)Z
    .registers 3

    .line 7871
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    monitor-enter v0

    .line 7872
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 7873
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public shutdown()V
    .registers 4

    .line 3071
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeNow()V

    .line 3076
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 3077
    :try_start_b
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/AbstractStatsBase;->writeNow(Ljava/lang/Object;)V

    .line 3079
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    .line 3080
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    .line 3081
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_37

    :catchall_35
    move-exception p0

    goto :goto_40

    :cond_37
    :goto_37
    const/4 v1, 0x1

    .line 3082
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->writeSettings(Z)V

    .line 3084
    :cond_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_35

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_40
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_35

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public snapshotComputer()Lcom/android/server/pm/Computer;
    .registers 2

    const/4 v0, 0x1

    .line 1152
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    move-result-object p0

    return-object p0
.end method

.method public snapshotComputer(Z)Lcom/android/server/pm/Computer;
    .registers 7

    .line 1167
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_d

    if-eqz v0, :cond_d

    .line 1172
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    return-object p0

    .line 1176
    :cond_d
    sget-object p1, Lcom/android/server/pm/PackageManagerService;->sSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Computer;

    .line 1177
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sSnapshotPendingVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eqz v1, :cond_28

    .line 1179
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getVersion()I

    move-result v4

    if-ne v4, v3, :cond_28

    .line 1180
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object p0

    return-object p0

    :cond_28
    if-eqz v0, :cond_36

    .line 1187
    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->rebuildSnapshot(Lcom/android/server/pm/Computer;I)Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 1188
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1189
    invoke-interface {p0}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object p0

    return-object p0

    .line 1192
    :cond_36
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSnapshotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1194
    :try_start_39
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Computer;

    .line 1195
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eqz v1, :cond_53

    .line 1201
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getVersion()I

    move-result v4

    if-ne v4, v3, :cond_53

    .line 1202
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_51
    move-exception p0

    goto :goto_8d

    .line 1205
    :cond_53
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1
    :try_end_59
    .catchall {:try_start_39 .. :try_end_59} :catchall_51

    .line 1209
    :try_start_59
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Computer;

    .line 1210
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v3, :cond_77

    .line 1211
    invoke-interface {v3}, Lcom/android/server/pm/Computer;->getVersion()I

    move-result v4

    if-ne v4, v2, :cond_77

    .line 1212
    invoke-interface {v3}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object p0

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_59 .. :try_end_70} :catchall_75

    :try_start_70
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_51

    return-object p0

    :catchall_75
    move-exception p0

    goto :goto_88

    .line 1216
    :cond_77
    :try_start_77
    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/PackageManagerService;->rebuildSnapshot(Lcom/android/server/pm/Computer;I)Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 1217
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1218
    invoke-interface {p0}, Lcom/android/server/pm/Computer;->use()Lcom/android/server/pm/Computer;

    move-result-object p0

    monitor-exit v1
    :try_end_83
    .catchall {:try_start_77 .. :try_end_83} :catchall_75

    :try_start_83
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_51

    return-object p0

    .line 1219
    :goto_88
    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_75

    :try_start_89
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 1220
    :goto_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_51

    throw p0
.end method

.method public systemReady()V
    .registers 10

    .line 4299
    const-string v0, "Only the system can claim the system is ready"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 4302
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4303
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    .line 4304
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_16
    if-ltz v1, :cond_26

    .line 4305
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 4306
    invoke-static {v0, v4}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 4308
    :cond_26
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    .line 4310
    :cond_28
    iput-boolean v3, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    .line 4311
    new-instance v1, Lcom/android/server/pm/PackageManagerService$4;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v4, v0}, Lcom/android/server/pm/PackageManagerService$4;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 4324
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "enable_ephemeral_feature"

    .line 4325
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 4324
    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4327
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "instant_apps_enabled"

    .line 4328
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 4327
    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4329
    invoke-virtual {v1, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4331
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppsFilterImpl;->onSystemReady(Landroid/content/pm/PackageManagerInternal;)V

    .line 4335
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4336
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4335
    invoke-static {v0, v5, v1}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;ILandroid/content/Context;)V

    .line 4339
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4340
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "compatibility_mode"

    .line 4339
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_7c

    move v0, v3

    goto :goto_7d

    :cond_7c
    move v0, v5

    .line 4342
    :goto_7d
    invoke-static {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setCompatibilityModeEnabled(Z)V

    .line 4348
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4349
    :try_start_86
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v1, v4}, Lcom/android/server/pm/Settings;->systemReady(Lcom/android/server/pm/resolution/ComponentResolver;)Ljava/util/ArrayList;

    move-result-object v1

    move v4, v5

    .line 4350
    :goto_8f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_aa

    .line 4351
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    :catchall_a7
    move-exception p0

    goto/16 :goto_183

    .line 4353
    :cond_aa
    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_86 .. :try_end_ab} :catchall_a7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4355
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->systemReady()V

    .line 4358
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 4359
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 4361
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->systemReady()V

    .line 4364
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->reconcileUsers(Ljava/lang/String;)V

    .line 4365
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/android/server/pm/StorageEventHelper;->reconcileApps(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    .line 4367
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onSystemReady()V

    .line 4369
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 4370
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 4372
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v5

    :goto_ed
    if-ge v4, v3, :cond_10c

    .line 4374
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 4375
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4376
    invoke-interface {v7, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 4375
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_109

    .line 4379
    invoke-static {v0, v6}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    :cond_109
    add-int/lit8 v4, v4, 0x1

    goto :goto_ed

    .line 4384
    :cond_10c
    array-length v1, v0

    move v3, v5

    :goto_10e
    if-ge v3, v1, :cond_121

    aget v4, v0, v3

    .line 4385
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {v6, v4}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->grantDefaultPermissions(I)V

    .line 4386
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setDefaultPermissionGrantFingerprint(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10e

    .line 4389
    :cond_121
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    if-ne v0, v1, :cond_12a

    .line 4393
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-interface {v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->scheduleReadDefaultPermissionExceptions()V

    .line 4396
    :cond_12a
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    if-eqz v0, :cond_13f

    .line 4397
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageManagerService$5;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4406
    :cond_13f
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4407
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4408
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$6;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PackageManagerService$6;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4440
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {v0}, Lcom/android/server/pm/ModuleInfoProvider;->systemReady()V

    .line 4445
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->restoreAndApplyStagedSessionIfNeeded()V

    .line 4447
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mExistingPackages:Landroid/util/ArraySet;

    .line 4450
    const-string/jumbo v0, "package_manager_service"

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 4451
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 4450
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 4461
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    .line 4463
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getDexUseManagerLocal()Lcom/android/server/art/DexUseManagerLocal;

    move-result-object p0

    if-eqz p0, :cond_17f

    .line 4465
    invoke-virtual {p0}, Lcom/android/server/art/DexUseManagerLocal;->systemReady()V

    .line 4468
    :cond_17f
    invoke-static {}, Lcom/android/server/pm/PackageMetrics;->logInvalidationMetrics()V

    return-void

    .line 4353
    :goto_183
    :try_start_183
    monitor-exit v0
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_a7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)V
    .registers 7

    .line 3250
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3252
    invoke-static {p3, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;

    invoke-direct {p3, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda55;-><init>(Landroid/content/pm/UserPackage;)V

    .line 3254
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public updateComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)V
    .registers 12

    if-eqz p1, :cond_11b

    .line 3857
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3858
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3860
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 3862
    invoke-interface {v2, v1, v3, v4, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 3863
    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    const-string v4, "The calling UID ("

    if-eqz v3, :cond_101

    .line 3868
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10402cd

    .line 3869
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3870
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f9

    const-wide/32 v5, 0x100000

    .line 3875
    invoke-interface {v2, v3, v5, v6, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_df

    .line 3877
    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 3881
    invoke-interface {v2, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-eqz v3, :cond_c8

    .line 3882
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-eqz v4, :cond_c8

    .line 3883
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v4

    if-nez v4, :cond_53

    .line 3884
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 3889
    :cond_53
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->componentExists(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 3893
    invoke-interface {v3, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 3894
    invoke-interface {v2, p1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_6a

    move-object v4, v3

    goto :goto_6e

    .line 3896
    :cond_6a
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    :goto_6e
    if-nez v2, :cond_72

    move-object v2, v3

    goto :goto_76

    .line 3897
    :cond_72
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 3899
    :goto_76
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 3900
    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    goto :goto_ab

    .line 3905
    :cond_83
    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p4, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda0;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 3909
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, v1, p1}, Lcom/android/server/pm/PendingPackageBroadcasts;->addComponent(ILjava/lang/String;Ljava/lang/String;)V

    .line 3911
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_ab

    .line 3912
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    const-string p3, "component_label_icon_changed"

    .line 3913
    invoke-virtual {p0, p2, v0, p1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x3e8

    .line 3912
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_ab
    :goto_ab
    return-void

    .line 3890
    :cond_ac
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Component "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3885
    :cond_c8
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Changing the label is not allowed for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3878
    :cond_df
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is not allowed to change a component\'s label or icon"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3871
    :cond_f9
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "There is no package defined as allowed to change a component\'s label or icon"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3864
    :cond_101
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") does not match the target UID"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3854
    :cond_11b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify a component"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateInstantAppInstallerLocked(Ljava/lang/String;)V
    .registers 3

    .line 2592
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_13

    .line 2593
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2594
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return-void

    .line 2597
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getInstantAppInstallerLPr()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->setUpInstantAppInstallerActivityLP(Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public updateMetricsIfNeeded()V
    .registers 3

    .line 3042
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    .line 3044
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3046
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_18
    return-void
.end method

.method public updatePackagesIfNeeded()V
    .registers 1

    .line 3038
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper;->performPackageDexOptUpgradeIfNeeded()V

    return-void
.end method

.method public updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V
    .registers 3

    .line 2964
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ChangedPackagesTracker;->updateSequenceNumber(Ljava/lang/String;[I)V

    return-void
.end method

.method public verifyHoldLockToken(Landroid/os/IBinder;)V
    .registers 4

    .line 7720
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_33

    if-eqz p1, :cond_2a

    .line 7728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holdLock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-ne p1, p0, :cond_22

    return-void

    .line 7729
    :cond_22
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid holdLock() token"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7725
    :cond_2a
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "null holdLockToken"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7721
    :cond_33
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "holdLock requires a debuggable build"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;
    .registers 5

    .line 8265
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstallPackageHelper;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public waitForAppDataPrepared()V
    .registers 3

    .line 4291
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_5

    return-void

    .line 4294
    :cond_5
    const-string/jumbo v1, "wait for prepareAppData"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4295
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPrepareAppDataFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method public writePackageList(I)V
    .registers 6

    .line 1640
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 1641
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 1642
    :try_start_c
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1643
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/Settings;->writePackageListLPr(Ljava/util/List;I)V

    .line 1644
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public writePendingRestrictions()V
    .registers 5

    .line 1614
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1615
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1616
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_1e

    .line 1617
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1618
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_20

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_41

    :catchall_20
    move-exception p0

    goto :goto_3f

    .line 1620
    :cond_22
    :try_start_22
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 1621
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 1622
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_20

    .line 1623
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_1e

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1624
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/Settings;->writePackageRestrictions([Ljava/lang/Integer;)V

    return-void

    .line 1622
    :goto_3f
    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_20

    :try_start_40
    throw p0

    .line 1623
    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_1e

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public writeSettings(Z)V
    .registers 6

    .line 1628
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 1629
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 1630
    :try_start_c
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1631
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1632
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;Z)V

    .line 1633
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter p1
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_2b

    .line 1634
    :try_start_20
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 1635
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_2d

    .line 1636
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_30

    :catchall_2d
    move-exception p0

    .line 1635
    :try_start_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw p0

    .line 1636
    :goto_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_2b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public writeSettingsLPrTEMP(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x0

    .line 7715
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;Z)V

    return-void
.end method

.method public writeSettingsLPrTEMP(Ljava/util/List;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 7708
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer(Z)Lcom/android/server/pm/Computer;

    .line 7709
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    .line 7710
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;Ljava/util/List;Z)V

    return-void
.end method
