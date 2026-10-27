.class public final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;
.implements Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;


# static fields
.field public static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field public static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;


# instance fields
.field public final mAppIds:Lcom/android/server/pm/AppIdSettingMap;

.field public final mBackupStoppedPackagesFilename:Ljava/io/File;

.field public final mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

.field public final mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

.field public final mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

.field final mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap;"
        }
    .end annotation
.end field

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

.field public final mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

.field public final mKernelMappingFilename:Ljava/io/File;

.field public final mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mPackageListFilename:Ljava/io/File;

.field public final mPackageRestrictionsLock:Ljava/lang/Object;

.field final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap;"
        }
    .end annotation
.end field

.field public final mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

.field public final mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

.field public final mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

.field public final mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

.field public final mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

.field public final mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

.field public final mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

.field public final mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPreviousSettingsFilename:Ljava/io/File;

.field public final mReadMessages:Ljava/lang/StringBuilder;

.field public final mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

.field public final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field public final mSettingsFilename:Ljava/io/File;

.field public final mSettingsReserveCopyFilename:Ljava/io/File;

.field public final mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mStoppedPackagesFilename:Ljava/io/File;

.field public final mSystemDir:Ljava/io/File;

.field public mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

.field public final mVersion:Lcom/android/server/utils/WatchedArrayMap;

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public static synthetic $r8$lambda$53NmgrwLNm2y5xSEATqhfDNuHBU(Lcom/android/server/pm/Settings;Lcom/android/server/pm/SharedUserSetting;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->lambda$pruneSharedUsersLPw$0(Lcom/android/server/pm/SharedUserSetting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xF8vBosZYCuleRIdy4wr1C_PPCw(Lcom/android/server/pm/Settings;IJZ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Settings;->lambda$writePackageRestrictionsLPr$1(IJZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/Settings;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pm/Settings;)Lcom/android/server/pm/PackageManagerTracedLock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionDataProvider(Lcom/android/server/pm/Settings;)Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRuntimePermissionsPersistence(Lcom/android/server/pm/Settings;)Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWatchable(Lcom/android/server/pm/Settings;)Lcom/android/server/utils/WatchableImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 51

    const/4 v0, 0x1

    .line 5063
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    .line 5064
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x4

    .line 5065
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x8

    .line 5066
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x10

    .line 5067
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v0, 0x20

    .line 5068
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v0, 0x40

    .line 5069
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v0, 0x80

    .line 5070
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v0, 0x100

    .line 5071
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v0, 0x4000

    .line 5072
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    const v0, 0x8000

    .line 5073
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/high16 v0, 0x10000

    .line 5074
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const/high16 v0, 0x20000

    .line 5075
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/high16 v0, 0x40000

    .line 5076
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    const/high16 v0, 0x100000

    .line 5077
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v30, "LARGE_HEAP"

    const-string v2, "SYSTEM"

    const-string v4, "DEBUGGABLE"

    const-string v6, "HAS_CODE"

    const-string v8, "PERSISTENT"

    const-string v10, "FACTORY_TEST"

    const-string v12, "ALLOW_TASK_REPARENTING"

    const-string v14, "ALLOW_CLEAR_USER_DATA"

    const-string v16, "UPDATED_SYSTEM_APP"

    const-string v18, "TEST_ONLY"

    const-string v20, "VM_SAFE_MODE"

    const-string v22, "ALLOW_BACKUP"

    const-string v24, "KILL_AFTER_RESTORE"

    const-string v26, "RESTORE_ANY_VERSION"

    const-string v28, "EXTERNAL_STORAGE"

    move-object/from16 v13, v17

    move-object/from16 v9, v19

    move-object/from16 v15, v23

    move-object/from16 v17, v29

    move-object/from16 v19, v35

    move-object/from16 v27, v37

    move-object/from16 v23, v43

    move-object/from16 v29, v0

    filled-new-array/range {v1 .. v30}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v17

    move-object/from16 v19, v9

    move-object/from16 v17, v13

    move-object/from16 v23, v15

    sput-object v0, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    const/16 v0, 0x400

    .line 5081
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x1000

    .line 5082
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x800

    .line 5083
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/high16 v4, 0x8000000

    .line 5084
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/high16 v6, 0x20000000

    .line 5085
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v6, 0x2000

    .line 5086
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0x200

    .line 5097
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/high16 v8, 0x80000

    .line 5100
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    const/high16 v8, 0x200000

    .line 5101
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    const/high16 v8, 0x40000000    # 2.0f

    .line 5103
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    const/high16 v8, -0x80000000

    .line 5104
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    const/high16 v8, 0x1000000

    .line 5105
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    const-string v50, "PRIVATE_FLAG_HAS_FRAGILE_USER_DATA"

    move-object v13, v3

    move-object v3, v2

    const-string v2, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    move-object/from16 v31, v7

    move-object v7, v4

    const-string v4, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    move-object v15, v11

    move-object v11, v6

    const-string v6, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    const-string v8, "ALLOW_AUDIO_PLAYBACK_CAPTURE"

    const-string v10, "PRIVATE_FLAG_REQUEST_LEGACY_EXTERNAL_STORAGE"

    const-string v12, "BACKUP_IN_FOREGROUND"

    const-string v14, "CANT_SAVE_STATE"

    const-string v16, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    const-string v18, "DIRECT_BOOT_AWARE"

    const-string v20, "HAS_DOMAIN_URLS"

    const-string v22, "HIDDEN"

    const-string v24, "EPHEMERAL"

    const-string v26, "ISOLATED_SPLIT_LOADING"

    const-string v28, "OEM"

    const-string v30, "PARTIALLY_DIRECT_BOOT_AWARE"

    const-string v32, "PRIVILEGED"

    const-string v34, "REQUIRED_FOR_SYSTEM_USER"

    const-string v36, "STATIC_SHARED_LIBRARY"

    const-string v38, "VENDOR"

    const-string v40, "PRODUCT"

    const-string v42, "SYSTEM_EXT"

    const-string v44, "VIRTUAL_PRELOAD"

    const-string v46, "ODM"

    const-string v48, "PRIVATE_FLAG_ALLOW_NATIVE_HEAP_POINTER_TAGGING"

    move-object/from16 v27, v25

    move-object/from16 v25, v21

    move-object/from16 v21, v1

    move-object v1, v0

    filled-new-array/range {v1 .. v50}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Settings;)V
    .registers 12

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 421
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    .line 424
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 447
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 452
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 462
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 548
    new-instance v3, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 557
    new-instance v4, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v4}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 564
    new-instance v5, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v5}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 570
    new-instance v6, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v6}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 574
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 604
    new-instance v7, Lcom/android/server/pm/Settings$1;

    invoke-direct {v7, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    .line 773
    iget-object v7, p1, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v7}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 774
    new-instance v8, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v8}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 775
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v8}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 776
    new-instance v8, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v8}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 777
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v8}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/utils/WatchedArraySet;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 778
    new-instance v8, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v8}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 779
    new-instance v8, Lcom/android/server/pm/KeySetManagerService;

    iget-object v9, p1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v8, v9, v7}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    const/4 v7, 0x0

    .line 785
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 786
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 787
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 788
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 789
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    .line 790
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    .line 791
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 792
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 793
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 794
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 796
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 798
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v8}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 799
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;)V

    .line 800
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 801
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 802
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 803
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 804
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 805
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 806
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 807
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 809
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v0}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 810
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {v0}, Lcom/android/server/pm/AppIdSettingMap;->snapshot()Lcom/android/server/pm/AppIdSettingMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 812
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v0}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 813
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-virtual {v6, v0}, Lcom/android/server/utils/WatchedSparseIntArray;->snapshot(Lcom/android/server/utils/WatchedSparseIntArray;)V

    .line 814
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v5, v0}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;)V

    .line 816
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayList;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 817
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 818
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 820
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 821
    iget-object p1, p1, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 824
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/Settings-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;-><init>(Lcom/android/server/pm/Settings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V
    .registers 12

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 421
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    .line 424
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 447
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 452
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 462
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 548
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 557
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 564
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 570
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 604
    new-instance v0, Lcom/android/server/pm/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    .line 700
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 701
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "Settings.mPackages"

    invoke-direct {v2, v1, v1, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 703
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 704
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mKernelMapping"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 706
    new-instance v2, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 707
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mInstallerPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 710
    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 711
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mPreferredActivities"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 713
    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 714
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mPersistentPreferredActivities"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 717
    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 718
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mCrossProfileIntentResolvers"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 721
    new-instance v2, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 722
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mPendingPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 724
    new-instance v2, Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v2, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 726
    iput-object p5, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 727
    iput-object p6, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 728
    new-instance p5, Lcom/android/server/pm/AppIdSettingMap;

    invoke-direct {p5}, Lcom/android/server/pm/AppIdSettingMap;-><init>()V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 729
    new-instance p5, Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-direct {p5}, Lcom/android/server/pm/permission/LegacyPermissionSettings;-><init>()V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 730
    new-instance p5, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    new-instance p6, Lcom/android/server/pm/Settings$3;

    invoke-direct {p6, p0}, Lcom/android/server/pm/Settings$3;-><init>(Lcom/android/server/pm/Settings;)V

    invoke-direct {p5, p2, p6}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/permission/persistence/RuntimePermissionsPersistence;Ljava/util/function/Consumer;)V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 738
    iput-object p3, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 740
    new-instance p2, Ljava/io/File;

    const-string/jumbo p3, "system"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 741
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 742
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x1fd

    const/4 p5, -0x1

    invoke-static {p1, p3, p5, p5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 746
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 747
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages.xml.reservecopy"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    .line 748
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-backup.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    .line 749
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages.list"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 p3, 0x3e8

    const/16 p5, 0x408

    const/16 p6, 0x1a0

    .line 750
    invoke-static {p1, p6, p3, p5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 752
    new-instance p1, Ljava/io/File;

    const-string p3, "/config/sdcardfs"

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_144

    goto :goto_145

    :cond_144
    const/4 p1, 0x0

    :goto_145
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 756
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-stopped.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 757
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-stopped-backup.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 759
    iput-object p4, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 761
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->registerObservers()V

    .line 762
    invoke-static {p0, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;)V

    .line 764
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 421
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    .line 424
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 447
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 452
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 462
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 548
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 557
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 564
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 570
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 604
    new-instance v0, Lcom/android/server/pm/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    .line 645
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 646
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "Settings.mPackages"

    invoke-direct {v2, v1, v1, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 648
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 649
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mKernelMapping"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 651
    new-instance v2, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 652
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mInstallerPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 655
    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 656
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mPreferredActivities"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 658
    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 659
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mPersistentPreferredActivities"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 662
    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 663
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mCrossProfileIntentResolvers"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 666
    new-instance v2, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 667
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mPendingPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 669
    new-instance v2, Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v2, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 672
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 673
    new-instance v2, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 674
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 675
    new-instance p1, Lcom/android/server/pm/AppIdSettingMap;

    invoke-direct {p1}, Lcom/android/server/pm/AppIdSettingMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    const/4 p1, 0x0

    .line 676
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 677
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 678
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 679
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 680
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 681
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    .line 682
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    .line 683
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 684
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 685
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 686
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 687
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 689
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->registerObservers()V

    .line 690
    invoke-static {p0, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;)V

    .line 692
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public static createMimeGroups(Ljava/util/Set;)Ljava/util/Map;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1240
    :cond_4
    new-instance v0, Lcom/android/server/pm/Settings$KeySetToValueMap;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$KeySetToValueMap;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZZLcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J[Z[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;I[B)Lcom/android/server/pm/PackageSetting;
    .registers 72

    move-object/from16 v0, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move/from16 v12, p11

    move-object/from16 v15, p19

    move-object/from16 v8, p20

    move-object/from16 v9, p21

    move-object/from16 v10, p22

    move-object/from16 v11, p23

    move/from16 v13, p26

    move-object/from16 v14, p27

    if-eqz v0, :cond_76

    .line 1106
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v2, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V

    move-object/from16 v0, p5

    .line 1107
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1108
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1109
    invoke-virtual {v1, v4}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1110
    invoke-virtual {v1, v5}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v2}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    .line 1113
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->setSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1114
    invoke-virtual {v1, v6, v7}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1115
    invoke-virtual {v1, v15}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1116
    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1117
    invoke-virtual {v1, v9}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1118
    invoke-virtual {v1, v10}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1119
    invoke-virtual {v1, v11}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1121
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v1, p25

    .line 1122
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setDomainSetId(Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1123
    invoke-virtual {v0, v13}, Lcom/android/server/pm/PackageSetting;->setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1124
    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageSetting;->setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1125
    invoke-virtual {v0, v12}, Lcom/android/server/pm/SettingBase;->setFlags(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    move/from16 v2, p12

    .line 1126
    invoke-virtual {v1, v2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    return-object v0

    :cond_76
    move-object/from16 v0, p5

    const/16 v16, 0x0

    if-eqz p13, :cond_83

    .line 1128
    invoke-virtual/range {p13 .. p13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    move/from16 v0, v17

    goto :goto_85

    :cond_83
    move/from16 v0, v16

    .line 1131
    :goto_85
    new-instance v8, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v1, p20

    move-object/from16 v14, p25

    move/from16 v17, v0

    move-object v0, v9

    move-object v2, v10

    move-object v6, v11

    move v7, v13

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move/from16 v13, p12

    invoke-direct/range {v8 .. v14}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    .line 1133
    invoke-virtual {v8, v15}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    .line 1134
    invoke-virtual {v8, v1}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1135
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1136
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1137
    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1138
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1139
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1140
    invoke-virtual {v0, v5}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-wide/from16 v1, p9

    .line 1141
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1142
    invoke-static/range {p24 .. p24}, Lcom/android/server/pm/Settings;->createMimeGroups(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setMimeGroups(Ljava/util/Map;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1143
    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageSetting;->setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v14, p27

    .line 1144
    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageSetting;->setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1145
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v2, p4

    if-eqz p4, :cond_e5

    .line 1147
    iget v1, v2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    :cond_e5
    const/4 v1, 0x1

    and-int/lit8 v3, p11, 0x1

    if-nez v3, :cond_15f

    .line 1155
    invoke-static/range {p18 .. p18}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_15c

    if-eqz p14, :cond_15c

    .line 1157
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    if-eqz p13, :cond_122

    const/4 v5, -0x1

    move/from16 v6, v17

    if-ne v6, v5, :cond_118

    .line 1164
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v7, p18

    .line 1166
    invoke-static {v7, v5}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v5

    if-nez v5, :cond_11a

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v5, :cond_126

    goto :goto_11a

    :cond_118
    move-object/from16 v7, p18

    :cond_11a
    :goto_11a
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v5, :cond_11f

    goto :goto_126

    :cond_11f
    move/from16 v25, v16

    goto :goto_128

    :cond_122
    move-object/from16 v7, p18

    move/from16 v6, v17

    :cond_126
    :goto_126
    move/from16 v25, v1

    .line 1174
    :goto_128
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    move/from16 v31, p15

    move/from16 v32, p16

    move-object/from16 v18, v0

    move/from16 v19, v4

    invoke-virtual/range {v18 .. v43}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    move/from16 v17, v6

    goto :goto_f6

    :cond_15c
    move-object/from16 v7, p18

    goto :goto_16b

    :cond_15f
    move-object/from16 v7, p18

    move/from16 v6, v17

    if-eqz p17, :cond_16b

    .line 1201
    invoke-virtual {v0, v1, v6}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 1202
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setScannedAsStoppedSystemApp(Z)Lcom/android/server/pm/PackageSetting;

    :cond_16b
    :goto_16b
    if-eqz v2, :cond_173

    .line 1205
    iget v1, v2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    return-object v0

    :cond_173
    if-eqz p2, :cond_1bc

    .line 1213
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/PackageSetting;

    .line 1214
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1216
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    .line 1217
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    .line 1219
    invoke-static {v7}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1bc

    .line 1221
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1222
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v3, p2

    .line 1224
    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Lcom/android/server/utils/WatchedArraySet;

    move-result-object v4

    .line 1223
    invoke-virtual {v0, v4, v2}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V

    .line 1226
    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Lcom/android/server/utils/WatchedArraySet;

    move-result-object v4

    .line 1225
    invoke-virtual {v0, v4, v2}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V

    goto :goto_19d

    :cond_1bc
    return-object v0
.end method

.method public static dumpSplitNames(Ljava/io/PrintWriter;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 6

    if-nez p1, :cond_9

    .line 5924
    const-string/jumbo p1, "unknown"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    .line 5927
    :cond_9
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5928
    const-string v0, "base"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5929
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_25

    .line 5930
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5932
    :cond_25
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    .line 5933
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object p1

    const/4 v2, 0x0

    .line 5934
    :goto_2e
    array-length v3, v0

    if-ge v2, v3, :cond_4a

    .line 5935
    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5936
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5937
    aget v3, p1, v2

    if-eqz v3, :cond_47

    .line 5938
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 5941
    :cond_4a
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static getActiveUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    .registers 2

    const/4 v0, 0x1

    .line 5012
    invoke-static {p0, v0}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    .registers 2

    const/4 v0, 0x0

    .line 5001
    invoke-static {p0, v0}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;
    .registers 4

    .line 5024
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5026
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_8} :catch_11
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 5030
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5031
    throw p0

    .line 5030
    :catch_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 3

    .line 1415
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2

    .line 615
    new-instance v0, Lcom/android/server/pm/Settings$2;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/Settings$2;-><init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/Settings;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public static parseAppId(Lcom/android/modules/utils/TypedXmlPullParser;)I
    .registers 4

    .line 4539
    const-string/jumbo v0, "userId"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static parseArchiveActivityInfos(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .registers 12

    .line 2150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2152
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 2154
    :cond_9
    :goto_9
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a6

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    .line 2156
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_a6

    :cond_19
    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1f

    goto :goto_9

    .line 2161
    :cond_1f
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2162
    const-string v3, "archive-activity-info"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2163
    const-string v2, "activity-title"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2165
    const-string/jumbo v2, "original-component-name"

    .line 2166
    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2167
    const-string v2, "icon-path"

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_44

    move-object v10, v3

    goto :goto_4b

    .line 2169
    :cond_44
    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v2, v5}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    move-object v10, v2

    .line 2170
    :goto_4b
    const-string/jumbo v2, "monochrome-icon-path"

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_55

    goto :goto_5b

    .line 2172
    :cond_55
    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 2175
    :goto_5b
    const-string v2, "PackageSettings"

    if-eqz v6, :cond_8e

    if-eqz v8, :cond_8e

    if-nez v10, :cond_64

    goto :goto_8e

    .line 2190
    :cond_64
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_84

    .line 2193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect component name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from the attributes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2198
    :cond_84
    new-instance v2, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    invoke-direct {v2, v6, v4, v10, v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 2176
    :cond_8e
    :goto_8e
    const-string/jumbo v7, "original-component-name"

    const-string v9, "icon-path"

    const-string v4, "archive-activity-info"

    const-string v5, "activity-title"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v3

    .line 2178
    const-string v4, "Missing attributes in tag %s. %s: %s, %s: %s, %s: %s"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2176
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_a6
    return-object v0
.end method

.method public static parseArchiveState(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/pkg/ArchiveState;
    .registers 8

    .line 2129
    const-string v0, "installer-title"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2131
    const-string v2, "archive-time"

    const-wide/16 v3, 0x0

    invoke-interface {p0, v1, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 2133
    invoke-static {p0}, Lcom/android/server/pm/Settings;->parseArchiveActivityInfos(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object p0

    .line 2135
    const-string v4, "PackageSettings"

    if-nez v0, :cond_1e

    .line 2136
    const-string/jumbo p0, "parseArchiveState: installerTitle is null"

    invoke-static {v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2140
    :cond_1e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2c

    .line 2141
    const-string/jumbo p0, "parseArchiveState: activityInfos is empty"

    invoke-static {v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2145
    :cond_2c
    new-instance v1, Lcom/android/server/pm/pkg/ArchiveState;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/server/pm/pkg/ArchiveState;-><init>(Ljava/util/List;Ljava/lang/String;J)V

    return-object v1
.end method

.method public static parseSharedUserAppId(Lcom/android/modules/utils/TypedXmlPullParser;)I
    .registers 4

    .line 4547
    const-string/jumbo v0, "sharedUserId"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :cond_1
    :goto_1
    if-eqz p1, :cond_29

    if-nez v0, :cond_12

    .line 5984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5985
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5986
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const/4 v1, 0x1

    .line 5988
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    not-int v2, v1

    and-int/2addr p1, v2

    .line 5990
    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const/16 v1, 0x7c

    .line 5992
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_29
    if-eqz v0, :cond_35

    const/16 p0, 0x5d

    .line 5997
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6000
    :cond_35
    const-string p0, ""

    return-object p0
.end method

.method public static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .registers 5

    .line 5051
    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5052
    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_23

    .line 5053
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_20

    add-int/lit8 v1, v0, 0x1

    .line 5055
    aget-object v1, p2, v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5056
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_20
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 5059
    :cond_23
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static readDefaultApps(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 7

    .line 1798
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1800
    :cond_6
    :goto_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_56

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    .line 1801
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_56

    :cond_16
    if-eq v3, v4, :cond_6

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1c

    goto :goto_6

    .line 1805
    :cond_1c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1806
    const-string v4, "default-browser"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1807
    const-string/jumbo v2, "packageName"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 1808
    :cond_30
    const-string v4, "default-dialer"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_6

    .line 1811
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under default-apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    .line 1813
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1814
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    :cond_56
    return-object v2
.end method

.method public static readSuspensionParamsLPr(ILcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/Map$Entry;
    .registers 4

    .line 2103
    const-string/jumbo v0, "suspending-package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 2105
    const-string p0, "PackageSettings"

    const-string p1, "No suspendingPackage found inside tag suspend-params"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2123
    :cond_12
    invoke-static {p0, v0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    .line 2124
    invoke-static {p1}, Lcom/android/server/pm/pkg/SuspendParams;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/pkg/SuspendParams;

    move-result-object p1

    .line 2122
    invoke-static {p0, p1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method private registerObservers()V
    .registers 3

    .line 625
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 626
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 627
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 628
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 629
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 630
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 631
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 632
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 633
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 634
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 635
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppIdSettingMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 636
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 637
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 638
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 639
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/WatchedArrayList;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public static removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/List;)V
    .registers 4

    .line 3773
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_6
    if-ltz p1, :cond_14

    .line 3774
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredActivity;

    .line 3779
    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public static updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J[Z[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;I[BZ)V
    .registers 35

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p9

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1262
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v10

    .line 1263
    const-string v11, " to "

    if-eqz v1, :cond_74

    .line 1264
    invoke-static/range {p2 .. p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6e

    .line 1265
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shared user changed from "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3b

    .line 1268
    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_3d

    :cond_3b
    const-string v0, "<nothing>"

    :goto_3d
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    .line 1265
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1270
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating application package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x18

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1273
    :cond_6e
    iget v0, v1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    goto :goto_78

    :cond_74
    const/4 v0, -0x1

    .line 1276
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1279
    :goto_78
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_fa

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    .line 1281
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Update"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_92

    .line 1282
    const-string v13, " system"

    goto :goto_94

    :cond_92
    const-string v13, ""

    :goto_94
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " code path from "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; Retain data and using new"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1281
    const-string v11, "PackageManager"

    invoke-static {v11, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_f2

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_ed

    if-nez p1, :cond_ed

    .line 1292
    invoke-static/range {p10 .. p10}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ed

    .line 1294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ed

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 1295
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    const/4 v11, 0x0

    .line 1296
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v11, v9}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    goto :goto_d5

    :cond_ed
    move-object/from16 v0, p5

    .line 1304
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1306
    :cond_f2
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    if-eqz p20, :cond_fa

    .line 1310
    invoke-virtual {p0, v10}, Lcom/android/server/pm/PackageSetting;->addOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    :cond_fa
    move-object/from16 v0, p6

    .line 1314
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v2, p7

    .line 1315
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v2, p16

    .line 1316
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v2, p17

    .line 1317
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setDomainSetId(Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move/from16 v2, p18

    .line 1318
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v2, p19

    .line 1319
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;

    const/4 v0, 0x0

    if-eqz v4, :cond_138

    if-eqz v5, :cond_138

    if-eqz v6, :cond_138

    .line 1321
    array-length v2, v4

    array-length v9, v5

    if-ne v2, v9, :cond_138

    array-length v2, v4

    array-length v9, v6

    if-ne v2, v9, :cond_138

    .line 1325
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1326
    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1327
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;

    goto :goto_143

    .line 1329
    :cond_138
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1330
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1331
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;

    :goto_143
    if-eqz v7, :cond_153

    if-eqz v8, :cond_153

    .line 1336
    array-length v2, v7

    array-length v4, v8

    if-ne v2, v4, :cond_153

    .line 1338
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1339
    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    goto :goto_15a

    .line 1341
    :cond_153
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1342
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    .line 1348
    :goto_15a
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    and-int/lit8 v1, p8, 0x1

    or-int/2addr v0, v1

    .line 1352
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingBase;->setFlags(I)Lcom/android/server/pm/SettingBase;

    .line 1354
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_171

    or-int/lit16 v0, v3, 0x200

    goto :goto_173

    :cond_171
    and-int/lit16 v0, v3, -0x201

    .line 1361
    :goto_173
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    return-void
.end method

.method public static writeDefaultApps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 2319
    const-string v1, "default-apps"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2321
    const-string v2, "default-browser"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2322
    const-string/jumbo v3, "packageName"

    invoke-interface {p0, v0, v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2323
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2325
    :cond_1a
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V
    .registers 4

    .line 4551
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 4552
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 4554
    :cond_9
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 4555
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 4557
    :cond_12
    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    if-eqz p1, :cond_1b

    .line 4558
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public addOemSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .registers 8

    .line 1014
    const-string v0, "android.uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-nez v0, :cond_1f

    .line 1015
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to add oem defined shared user because of invalid name: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v1

    :cond_1f
    const/16 v0, 0xb54

    if-lt p2, v0, :cond_2d

    const/16 v0, 0xbb7

    if-le p2, v0, :cond_28

    goto :goto_2d

    .line 1025
    :cond_28
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p0

    return-object p0

    .line 1021
    :cond_2d
    :goto_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to add oem defined shared user because of invalid uid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v1
.end method

.method public addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IIILjava/util/UUID;ZZ)Lcom/android/server/pm/PackageSetting;
    .registers 19

    .line 993
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 995
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p0

    if-ne p0, p4, :cond_12

    return-object v0

    .line 998
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding duplicate package, keeping first: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v1

    .line 1002
    :cond_28
    new-instance v2, Lcom/android/server/pm/PackageSetting;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    .line 1003
    invoke-virtual {v2, p4}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    move-result-object p2

    .line 1004
    iget-object p3, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 1005
    invoke-virtual {p3, p4, p2, p1}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_44

    if-eqz p9, :cond_43

    goto :goto_44

    :cond_43
    return-object v1

    .line 1007
    :cond_44
    :goto_44
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .registers 8

    .line 1442
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_97

    .line 1444
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    .line 1445
    const-string v1, "; I am not changing its files so it will probably fail!"

    const-string v2, "Package "

    const/4 v3, 0x6

    if-eqz v0, :cond_45

    if-eq v0, p2, :cond_45

    .line 1446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but is now "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1446
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1450
    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    goto :goto_8a

    .line 1451
    :cond_45
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    if-eqz v0, :cond_8a

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    iget v4, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    if-eq v0, v4, :cond_8a

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was app id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but is now user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with app id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1452
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1459
    :cond_8a
    :goto_8a
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1460
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1461
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1466
    :cond_97
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    if-nez p2, :cond_af

    if-eqz v0, :cond_bc

    if-eq v0, p1, :cond_bc

    .line 1469
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/AppIdSettingMap;->replaceSetting(ILcom/android/server/pm/SettingBase;)V

    return-void

    :cond_af
    if-eqz v0, :cond_bc

    if-eq v0, p2, :cond_bc

    .line 1473
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AppIdSettingMap;->replaceSetting(ILcom/android/server/pm/SettingBase;)V

    :cond_bc
    return-void
.end method

.method public addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 862
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .registers 7

    .line 1029
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 1031
    iget p0, v0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    if-ne p0, p2, :cond_10

    return-object v0

    .line 1034
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding duplicate shared user, keeping first: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v1

    .line 1038
    :cond_26
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    .line 1039
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 1040
    iget-object p3, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p3, p2, v0, p1}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 1041
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3b
    return-object v1
.end method

.method public final applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .registers 28

    move/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 3905
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v6, p9

    .line 3904
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1f

    const/4 v3, 0x0

    goto :goto_23

    .line 3911
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 3912
    :goto_23
    const-string v4, "PackageSettings"

    const/4 v5, 0x1

    if-ge v3, v5, :cond_49

    .line 3913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No potential matches found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " while setting preferred "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3914
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3913
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3919
    :cond_49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v11, v6, [Landroid/content/ComponentName;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_52
    if-ge v12, v3, :cond_ab

    .line 3921
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move/from16 v16, v5

    .line 3922
    new-instance v5, Landroid/content/ComponentName;

    iget-object v15, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v17, v3

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v15, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v11, v12

    .line 3923
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_82

    .line 3924
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget v2, v2, Landroid/content/pm/ResolveInfo;->match:I

    if-ltz v2, :cond_a4

    .line 3931
    aget-object v0, v11, v12

    goto :goto_ac

    .line 3934
    :cond_82
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 3935
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 3940
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget v13, v2, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v14, v16

    :cond_a4
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v16

    move/from16 v3, v17

    goto :goto_52

    :cond_ab
    const/4 v0, 0x0

    :goto_ac
    if-eqz v0, :cond_b1

    if-lez v13, :cond_b1

    const/4 v0, 0x0

    :cond_b1
    if-eqz v14, :cond_163

    if-nez v0, :cond_163

    .line 3955
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 3956
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c7

    .line 3957
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 3959
    :cond_c7
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_e5

    .line 3960
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3961
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_d5

    :cond_e5
    const/high16 v2, 0x10000

    and-int/2addr v2, v7

    if-eqz v2, :cond_ef

    .line 3965
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    :cond_ef
    if-eqz v8, :cond_f4

    .line 3968
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_f4
    if-eqz p6, :cond_101

    .line 3971
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_101
    if-eqz v9, :cond_106

    .line 3974
    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    :cond_106
    if-eqz v10, :cond_10b

    .line 3977
    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 3979
    :cond_10b
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_144

    .line 3981
    :try_start_111
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_118
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_111 .. :try_end_118} :catch_11f

    move-object/from16 v2, p0

    move-object/from16 v1, p4

    :goto_11c
    move/from16 v6, p9

    goto :goto_147

    .line 3983
    :catch_11f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed mimetype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_141
    move-object/from16 v2, p0

    goto :goto_11c

    :cond_144
    move-object/from16 v1, p4

    goto :goto_141

    .line 3986
    :goto_147
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    .line 3987
    invoke-virtual {v2, v0}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_154

    .line 3989
    invoke-static {v2, v0, v3}, Lcom/android/server/pm/Settings;->removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/List;)V

    .line 3991
    :cond_154
    new-instance v7, Lcom/android/server/pm/PreferredActivity;

    const/4 v12, 0x1

    move-object v8, v0

    move-object v10, v11

    move v9, v13

    move-object v11, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    const/4 v0, 0x0

    .line 3992
    invoke-virtual {v2, v0, v7}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void

    :cond_163
    move-object v10, v11

    if-nez v0, :cond_1a2

    .line 3994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3995
    const-string v2, "No component "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3996
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3997
    const-string v2, " found setting preferred "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3998
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3999
    const-string v1, "; possible matches are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_185
    if-ge v2, v6, :cond_19a

    if-lez v2, :cond_18e

    .line 4001
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4002
    :cond_18e
    aget-object v1, v10, v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_185

    .line 4004
    :cond_19a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4006
    :cond_1a2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not setting preferred "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; found third party match "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4007
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4006
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .registers 26

    move-object/from16 v0, p2

    .line 3793
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 3796
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0xc0000

    move v7, v3

    move v3, v1

    .line 3797
    :goto_13
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 3798
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    .line 3799
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const/high16 v4, 0xd0000

    move v7, v4

    goto :goto_2c

    .line 3802
    :cond_29
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 3809
    :cond_2f
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    const/4 v14, 0x1

    move v15, v1

    move/from16 v16, v15

    move v4, v14

    :goto_38
    if-ge v15, v3, :cond_14b

    .line 3812
    invoke-virtual {v0, v15}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_48

    .line 3813
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_48

    move/from16 v16, v14

    .line 3816
    :cond_48
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v4

    move v5, v1

    move v6, v14

    :goto_4e
    if-ge v5, v4, :cond_87

    .line 3818
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 3819
    invoke-virtual {v6, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3820
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v10

    .line 3821
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object v8, v6

    .line 3822
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3823
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p3

    move/from16 v13, p4

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 3824
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    add-int/lit8 v5, v18, 0x1

    move v6, v1

    move/from16 v4, v17

    goto :goto_4e

    .line 3828
    :cond_87
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    move v5, v1

    :goto_8c
    if-ge v5, v4, :cond_122

    .line 3831
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v11

    .line 3832
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v8

    move v10, v1

    move v12, v14

    :goto_98
    if-ge v10, v8, :cond_e7

    .line 3834
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 3835
    invoke-virtual {v6, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3836
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_af

    .line 3837
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3839
    :cond_af
    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v12

    .line 3840
    invoke-virtual {v12}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object v13, v6

    .line 3841
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3842
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move v13, v10

    const/4 v10, 0x0

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v13

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move/from16 v13, p4

    .line 3843
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    add-int/lit8 v10, v20, 0x1

    move v6, v1

    move v12, v6

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v8, v19

    goto :goto_98

    :cond_e7
    move/from16 v17, v4

    move/from16 v18, v5

    if-eqz v12, :cond_11c

    .line 3848
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3849
    invoke-virtual {v4, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3850
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_102

    .line 3851
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3853
    :cond_102
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3854
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move/from16 v13, p4

    .line 3855
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    move v6, v1

    :cond_11c
    add-int/lit8 v5, v18, 0x1

    move/from16 v4, v17

    goto/16 :goto_8c

    :cond_122
    if-eqz v6, :cond_146

    .line 3861
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3862
    invoke-virtual {v4, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3863
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3864
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move/from16 v13, p4

    .line 3865
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_146
    add-int/lit8 v15, v15, 0x1

    move v4, v1

    goto/16 :goto_38

    :cond_14b
    move v3, v1

    .line 3871
    :goto_14c
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v5

    if-ge v3, v5, :cond_1b0

    .line 3872
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v16, :cond_195

    .line 3874
    new-instance v15, Landroid/net/Uri$Builder;

    invoke-direct {v15}, Landroid/net/Uri$Builder;-><init>()V

    move v4, v1

    .line 3875
    :goto_15e
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v5

    if-ge v4, v5, :cond_1ac

    .line 3876
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_190

    .line 3877
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_190

    .line 3878
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3879
    invoke-virtual {v15, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3880
    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v6, v5, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move/from16 v13, p4

    move/from16 v17, v4

    move-object/from16 v4, p0

    .line 3881
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    goto :goto_192

    :cond_190
    move/from16 v17, v4

    :goto_192
    add-int/lit8 v4, v17, 0x1

    goto :goto_15e

    .line 3886
    :cond_195
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3887
    invoke-virtual {v6, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move/from16 v13, p4

    .line 3888
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_1ac
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    goto :goto_14c

    :cond_1b0
    if-eqz v4, :cond_1c2

    move v3, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move/from16 v9, p4

    .line 3895
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_1c2
    return-void
.end method

.method public applyDefaultPreferredAppsLPw(I)V
    .registers 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 3688
    const-string v3, "Error reading apps file "

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3689
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3690
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_70

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 3691
    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_18

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 3692
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPreferredActivityFilters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_18

    .line 3694
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPreferredActivityFilters()Ljava/util/List;

    move-result-object v7

    const/4 v6, 0x0

    .line 3695
    :goto_49
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_18

    .line 3696
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 3697
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 3698
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v9

    new-instance v10, Landroid/content/ComponentName;

    .line 3699
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-direct {v10, v11, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3697
    invoke-virtual {v1, v0, v9, v10, v2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 3705
    :cond_70
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_77
    if-ge v5, v4, :cond_1cd

    .line 3707
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ScanPartition;

    .line 3709
    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v0

    const-string v9, "etc/preferred-apps"

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3710
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_9c

    :cond_98
    :goto_98
    move/from16 v16, v4

    goto/16 :goto_1c6

    .line 3714
    :cond_9c
    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v9, " cannot be read"

    const-string v10, "PackageSettings"

    if-nez v0, :cond_be

    .line 3715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Directory "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 3720
    :cond_be
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 3721
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    goto :goto_98

    .line 3725
    :cond_c9
    array-length v12, v11

    const/4 v13, 0x0

    :goto_cb
    if-ge v13, v12, :cond_98

    aget-object v14, v11, v13

    .line 3726
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v15, ".xml"

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 3727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Non-xml file "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " in "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " directory, ignoring"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_fc
    move/from16 v16, v4

    goto/16 :goto_1bf

    .line 3731
    :cond_100
    invoke-virtual {v14}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v15, "Preferred apps file "

    if-nez v0, :cond_11e

    .line 3732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fc

    .line 3739
    :cond_11e
    :try_start_11e
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_123
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11e .. :try_end_123} :catch_196
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_123} :catch_192

    .line 3740
    :try_start_123
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 3743
    :goto_127
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7
    :try_end_12b
    .catchall {:try_start_123 .. :try_end_12b} :catchall_185

    move/from16 v16, v4

    const/4 v4, 0x2

    if-eq v7, v4, :cond_137

    const/4 v4, 0x1

    if-eq v7, v4, :cond_136

    move/from16 v4, v16

    goto :goto_127

    :cond_136
    const/4 v4, 0x2

    :cond_137
    if-eq v7, v4, :cond_15c

    .line 3749
    :try_start_139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not have start tag"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catchall {:try_start_139 .. :try_end_150} :catchall_159

    .line 3758
    :goto_150
    :try_start_150
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_153
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_150 .. :try_end_153} :catch_157
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_155

    goto/16 :goto_1bf

    :catch_155
    move-exception v0

    goto :goto_19a

    :catch_157
    move-exception v0

    goto :goto_1ad

    :catchall_159
    move-exception v0

    :goto_15a
    move-object v4, v0

    goto :goto_189

    .line 3752
    :cond_15c
    :try_start_15c
    const-string/jumbo v4, "preferred-activities"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_181

    .line 3753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not start with \'preferred-activities\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_150

    .line 3757
    :cond_181
    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V
    :try_end_184
    .catchall {:try_start_15c .. :try_end_184} :catchall_159

    goto :goto_150

    :catchall_185
    move-exception v0

    move/from16 v16, v4

    goto :goto_15a

    .line 3739
    :goto_189
    :try_start_189
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_18c
    .catchall {:try_start_189 .. :try_end_18c} :catchall_18d

    goto :goto_191

    :catchall_18d
    move-exception v0

    :try_start_18e
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_191
    throw v4
    :try_end_192
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18e .. :try_end_192} :catch_157
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_192} :catch_155

    :catch_192
    move-exception v0

    move/from16 v16, v4

    goto :goto_19a

    :catch_196
    move-exception v0

    move/from16 v16, v4

    goto :goto_1ad

    .line 3761
    :goto_19a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1bf

    .line 3759
    :goto_1ad
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1bf
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    const/4 v7, 0x1

    goto/16 :goto_cb

    :goto_1c6
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v16

    const/4 v7, 0x1

    goto/16 :goto_77

    :cond_1cd
    return-void
.end method

.method public checkAndConvertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V
    .registers 4

    .line 1558
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->isSingleUser()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_28

    .line 1559
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1560
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x2

    .line 1561
    invoke-static {v0}, Lcom/android/server/pm/SharedUidMigration;->applyStrategy(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1562
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->convertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z
    .registers 4

    if-nez p2, :cond_16

    .line 1479
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_27

    .line 1480
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getDisabledPackageStates()Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_27

    .line 1481
    :cond_16
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_27

    .line 1482
    iget p1, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public clearPackagePersistentPreferredActivities(Ljava/lang/String;I)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 6764
    :goto_4
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_5d

    .line 6765
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v4

    .line 6766
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v5, v2}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-eq p2, v4, :cond_1d

    goto :goto_5a

    .line 6770
    :cond_1d
    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 6771
    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 6772
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 6774
    iget-object v7, v6, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    if-nez v0, :cond_40

    .line 6776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6778
    :cond_40
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_44
    if-eqz v0, :cond_5a

    move v3, v1

    .line 6782
    :goto_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_59

    .line 6783
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 6784
    invoke-virtual {v5, v4}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_59
    const/4 v3, 0x1

    :cond_5a
    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5d
    if-eqz v3, :cond_62

    .line 6790
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    :cond_62
    return v3
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    .line 6727
    :goto_4
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_6d

    .line 6728
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v4

    .line 6729
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v5, v2}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PreferredIntentResolver;

    const/4 v6, -0x1

    if-eq p3, v6, :cond_20

    if-eq p3, v4, :cond_20

    goto :goto_6a

    .line 6733
    :cond_20
    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v6

    .line 6734
    :cond_24
    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 6735
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PreferredActivity;

    if-eqz p1, :cond_46

    .line 6738
    iget-object v8, v7, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v8, v8, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 6739
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    iget-object v8, v7, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v8, v8, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v8, :cond_24

    :cond_46
    if-nez v1, :cond_4d

    .line 6742
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6744
    :cond_4d
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_51
    if-eqz v1, :cond_6a

    move v3, v0

    .line 6748
    :goto_54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_66

    .line 6749
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PreferredActivity;

    .line 6750
    invoke-virtual {v5, v6}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_66
    const/4 v3, 0x1

    .line 6752
    invoke-virtual {p2, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_6a
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6d
    if-eqz v3, :cond_72

    .line 6757
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    :cond_72
    return-void
.end method

.method public clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)Z
    .registers 7

    .line 6797
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 6798
    invoke-virtual {p2}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 6800
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 6801
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 6802
    invoke-virtual {v2}, Lcom/android/server/pm/PersistentPreferredActivity;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/content/IntentFilter;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez v1, :cond_2a

    .line 6804
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6806
    :cond_2a
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2e
    const/4 p1, 0x0

    if-eqz v1, :cond_44

    .line 6810
    :goto_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_43

    .line 6811
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 6812
    invoke-virtual {p2, v0}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_31

    :cond_43
    const/4 p1, 0x1

    :cond_44
    if-eqz p1, :cond_49

    .line 6817
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    :cond_49
    return p1
.end method

.method public convertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V
    .registers 6

    .line 1542
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1543
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getAppId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/AppIdSettingMap;->replaceSetting(ILcom/android/server/pm/SettingBase;)V

    const/4 v2, -0x1

    .line 1546
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1547
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getDisabledPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1548
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getDisabledPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1549
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1551
    :cond_2f
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/util/Set;[Ljava/lang/String;)V
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v4, p3

    move-object/from16 v10, p4

    .line 4777
    new-instance v11, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v2, "PackageSettingsTiming"

    const-wide/32 v5, 0x40000

    invoke-direct {v11, v2, v5, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    .line 4779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNewUser-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4780
    new-instance v12, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v12}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    const/4 v14, 0x0

    if-nez v10, :cond_30

    const/4 v15, 0x1

    goto :goto_31

    :cond_30
    move v15, v14

    .line 4783
    :goto_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4784
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 4785
    :try_start_3b
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v6

    move v7, v14

    :goto_42
    if-ge v7, v6, :cond_15b

    .line 4787
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v8, v7}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 4788
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v9

    if-nez v9, :cond_69

    .line 4790
    invoke-virtual {v8, v14, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4792
    invoke-virtual {v1, v8}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    move-object/from16 v13, p5

    move-wide/from16 v17, v2

    move-object/from16 v19, v5

    move v0, v6

    move v14, v7

    const/16 v16, 0x1

    goto/16 :goto_14f

    :catchall_64
    move-exception v0

    move-object/from16 v19, v5

    goto/16 :goto_18e

    .line 4795
    :cond_69
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 4796
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v13, p5

    const/16 v16, 0x1

    invoke-static {v13, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8e

    .line 4797
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v9

    if-nez v9, :cond_8e

    move/from16 v9, v16

    goto :goto_8f

    :cond_8a
    move-object/from16 v13, p5

    const/16 v16, 0x1

    :cond_8e
    move v9, v14

    :goto_8f
    if-eqz v9, :cond_a0

    if-nez v15, :cond_9d

    .line 4800
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4799
    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a0

    :cond_9d
    move/from16 v14, v16

    goto :goto_a1

    :cond_a0
    const/4 v14, 0x0

    .line 4802
    :goto_a1
    invoke-virtual {v8, v14, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    if-eqz v14, :cond_a9

    .line 4804
    invoke-virtual {v8, v2, v3, v4}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    :cond_a9
    move-wide/from16 v17, v2

    .line 4809
    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    if-eqz v2, :cond_ca

    .line 4810
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 4811
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->isApex()Z

    move-result v2

    if-nez v2, :cond_ca

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 4812
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ca

    move/from16 v2, v16

    goto :goto_cb

    :cond_ca
    const/4 v2, 0x0

    :goto_cb
    if-eqz v2, :cond_f8

    .line 4814
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4815
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4816
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4818
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v19

    const-wide/32 v22, 0xc0000

    const/16 v24, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v3

    invoke-interface/range {v19 .. v24}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    .line 4822
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f8

    const/4 v2, 0x0

    .line 4826
    :cond_f8
    invoke-virtual {v8, v2, v4}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    if-eqz v9, :cond_102

    if-nez v14, :cond_102

    move/from16 v0, v16

    goto :goto_103

    :cond_102
    const/4 v0, 0x0

    .line 4833
    :goto_103
    invoke-virtual {v8, v0, v4}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    if-eqz v14, :cond_148

    .line 4835
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    if-gez v0, :cond_113

    move-object/from16 v19, v5

    move v0, v6

    move v14, v7

    goto :goto_14f

    :cond_113
    move v14, v7

    .line 4844
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    move-result-object v7

    .line 4845
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    .line 4847
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move v0, v6

    .line 4848
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v6

    .line 4849
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v8
    :try_end_13b
    .catchall {:try_start_3b .. :try_end_13b} :catchall_64

    move-object/from16 v19, v5

    const/4 v5, 0x1

    .line 4846
    :try_start_13e
    invoke-static/range {v2 .. v9}, Lcom/android/server/pm/Installer;->buildCreateAppDataArgs(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZ)Landroid/os/CreateAppDataArgs;

    move-result-object v2

    .line 4850
    invoke-virtual {v12, v2}, Lcom/android/server/pm/Installer$Batch;->createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_14f

    :catchall_146
    move-exception v0

    goto :goto_18e

    :cond_148
    move-object/from16 v19, v5

    move v0, v6

    move v14, v7

    .line 4853
    invoke-virtual {v1, v8}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    :goto_14f
    add-int/lit8 v7, v14, 0x1

    move v6, v0

    move-wide/from16 v2, v17

    move-object/from16 v5, v19

    const/4 v14, 0x0

    move-object/from16 v0, p1

    goto/16 :goto_42

    :cond_15b
    move-object/from16 v19, v5

    .line 4856
    monitor-exit v19
    :try_end_15e
    .catchall {:try_start_13e .. :try_end_15e} :catchall_146

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4857
    const-string v0, "createAppData"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v0, p2

    .line 4859
    :try_start_168
    invoke-virtual {v12, v0}, Lcom/android/server/pm/Installer$Batch;->execute(Lcom/android/server/pm/Installer;)V
    :try_end_16b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_168 .. :try_end_16b} :catch_16c

    goto :goto_174

    :catch_16c
    move-exception v0

    .line 4861
    const-string v2, "PackageSettings"

    const-string v3, "Failed to prepare app data"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4863
    :goto_174
    invoke-virtual {v11}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4864
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4865
    :try_start_17d
    invoke-virtual {v1, v4}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    .line 4866
    monitor-exit v2
    :try_end_181
    .catchall {:try_start_17d .. :try_end_181} :catchall_188

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4867
    invoke-virtual {v11}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_188
    move-exception v0

    .line 4866
    :try_start_189
    monitor-exit v2
    :try_end_18a
    .catchall {:try_start_189 .. :try_end_18a} :catchall_188

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4856
    :goto_18e
    :try_start_18e
    monitor-exit v19
    :try_end_18f
    .catchall {:try_start_18e .. :try_end_18f} :catchall_146

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public disableSystemPackageLPw(Ljava/lang/String;Z)Z
    .registers 6

    .line 905
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 907
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an installed package"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 910
    :cond_27
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_64

    .line 912
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 913
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v2

    if-nez v2, :cond_64

    if-eqz p2, :cond_4b

    .line 920
    new-instance p2, Lcom/android/server/pm/PackageSetting;

    invoke-direct {p2, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_4c

    :cond_4b
    move-object p2, v0

    .line 924
    :goto_4c
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 925
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 928
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    :cond_64
    return v1
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .registers 6

    .line 6058
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getActivities()Ljava/util/List;

    move-result-object v0

    const-string v1, "activities:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 6059
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getServices()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "services:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 6060
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getReceivers()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "receivers:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 6061
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProviders()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "providers:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 6062
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getInstrumentations()Ljava/util/List;

    move-result-object p3

    const-string v0, "instrumentations:"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7

    .line 6067
    invoke-static {p4}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2c

    .line 6071
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    :goto_e
    if-ge p3, p0, :cond_2c

    .line 6073
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    .line 6074
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6075
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_e

    :cond_2c
    :goto_2c
    return-void
.end method

.method public dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .registers 4

    .line 5946
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result p0

    if-nez p0, :cond_15

    .line 5947
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5948
    const-string p0, "gids="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5949
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->arrayToString([I)Ljava/lang/String;

    move-result-object p0

    .line 5948
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V
    .registers 14

    .line 6007
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 6008
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 6009
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 6010
    invoke-virtual {p4, v1}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v1

    .line 6012
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 6013
    invoke-virtual {v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isRuntime()Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_1f

    .line 6016
    :cond_32
    invoke-virtual {v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_3f

    .line 6018
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto :goto_1f

    .line 6021
    :cond_3f
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 6025
    :cond_43
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p3, 0x0

    move v0, p3

    :cond_49
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6026
    invoke-virtual {p4, v1, p3}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    move-result-object v2

    .line 6028
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 6029
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_6f

    move-object v5, v2

    goto :goto_7a

    .line 6034
    :cond_6f
    invoke-virtual {p4, v1, v4}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    move-result-object v5

    .line 6035
    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    goto :goto_5d

    :cond_7a
    :goto_7a
    const/4 v6, 0x1

    if-nez v0, :cond_86

    .line 6040
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "install permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v6

    .line 6043
    :cond_86
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6044
    const-string v7, ": granted="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v5, :cond_9f

    .line 6045
    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v7

    if-eqz v7, :cond_9f

    goto :goto_a0

    :cond_9f
    move v6, p3

    .line 6044
    :goto_a0
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    if-eqz v5, :cond_aa

    .line 6047
    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result v5

    goto :goto_ab

    :cond_aa
    move v5, p3

    .line 6046
    :goto_ab
    const-string v6, ", flags="

    invoke-static {v6, v5}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v4, :cond_ba

    .line 6049
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_5d

    .line 6051
    :cond_ba
    const-string v5, ", userId="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_5d

    :cond_c3
    return-void
.end method

.method public dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/permission/LegacyPermissionState;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p8

    .line 5138
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-eqz v2, :cond_1dd

    .line 5140
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5141
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5142
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2b

    :cond_27
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_2b
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5143
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5144
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5145
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5146
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 5147
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5148
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 5149
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5150
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    const-string v5, "?"

    if-eqz v3, :cond_60

    .line 5151
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    goto :goto_61

    :cond_60
    move-object v3, v5

    .line 5150
    :goto_61
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5152
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5153
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-eqz v3, :cond_7c

    .line 5154
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    goto :goto_7d

    :cond_7c
    move-object v3, v5

    .line 5153
    :goto_7d
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5155
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    if-eqz v3, :cond_a5

    .line 5156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a7

    :cond_a5
    const-string v3, ""

    .line 5155
    :goto_a7
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5157
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5158
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget v3, v3, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5159
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5160
    const-string v3, "-"

    if-eqz v4, :cond_fe

    .line 5161
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "splt,"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5162
    const-string v8, "base,"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5163
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 5164
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v8

    const/4 v9, 0x0

    .line 5165
    :goto_da
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_fe

    .line 5166
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5167
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5168
    aget v10, v8, v9

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_da

    .line 5171
    :cond_fe
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_102
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_dbf

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 5172
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v7, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 5173
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5174
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5175
    const-string/jumbo v9, "usr"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5176
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5177
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 5178
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5179
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v9

    if-eqz v9, :cond_134

    const-string v9, "I"

    goto :goto_136

    :cond_134
    const-string v9, "i"

    :goto_136
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5180
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v9

    if-eqz v9, :cond_142

    const-string v9, "B"

    goto :goto_144

    :cond_142
    const-string v9, "b"

    :goto_144
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5181
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v9

    if-eqz v9, :cond_150

    const-string v9, "SU"

    goto :goto_153

    :cond_150
    const-string/jumbo v9, "su"

    :goto_153
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5182
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v9

    if-eqz v9, :cond_15f

    const-string v9, "S"

    goto :goto_162

    :cond_15f
    const-string/jumbo v9, "s"

    :goto_162
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5183
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v9

    if-eqz v9, :cond_16e

    const-string v9, "l"

    goto :goto_170

    :cond_16e
    const-string v9, "L"

    :goto_170
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5184
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v9

    if-eqz v9, :cond_17c

    const-string v9, "IA"

    goto :goto_17e

    :cond_17c
    const-string v9, "ia"

    :goto_17e
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5185
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v9

    if-eqz v9, :cond_18a

    const-string v9, "VPI"

    goto :goto_18d

    :cond_18a
    const-string/jumbo v9, "vpi"

    :goto_18d
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5186
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result v9

    if-eqz v9, :cond_199

    const-string v9, "Q"

    goto :goto_19c

    :cond_199
    const-string/jumbo v9, "q"

    :goto_19c
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5187
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1a8

    .line 5188
    const-string v9, "HA"

    goto :goto_1aa

    :cond_1a8
    const-string v9, "ha"

    :goto_1aa
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5189
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5190
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 5191
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v8

    .line 5192
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v8, :cond_1c1

    goto :goto_1c2

    :cond_1c1
    move-object v8, v5

    .line 5193
    :goto_1c2
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5194
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5195
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v6}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 5196
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5197
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_102

    .line 5202
    :cond_1dd
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Package ["

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5203
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f0

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1f4

    :cond_1f0
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_1f4
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5204
    const-string v2, "] ("

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5205
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5206
    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5208
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_221

    .line 5209
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  compat name="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5210
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5213
    :cond_221
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  appId="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5215
    invoke-virtual {v0, v7}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    if-eqz v2, :cond_241

    .line 5217
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  sharedUser="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5219
    :cond_241
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  pkg="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5220
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  codePath="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5221
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getOldPaths()Ljava/util/LinkedHashSet;

    move-result-object v2

    if-eqz v2, :cond_29b

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getOldPaths()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    if-lez v2, :cond_29b

    .line 5222
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getOldPaths()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_273
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 5223
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    oldCodePath="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_273

    :cond_29b
    if-nez v3, :cond_302

    .line 5227
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  resourcePath="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5228
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  legacyNativeLibraryDir="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5229
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5230
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  extractNativeLibs="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5231
    invoke-virtual {v7}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v2

    const/high16 v5, 0x10000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_2d0

    .line 5232
    const-string/jumbo v2, "true"

    goto :goto_2d2

    :cond_2d0
    const-string v2, "false"

    .line 5231
    :goto_2d2
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5233
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  primaryCpuAbi="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5234
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  secondaryCpuAbi="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5235
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  cpuAbiOverride="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5237
    :cond_302
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  versionCode="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    if-eqz v4, :cond_31f

    .line 5239
    const-string v2, " minSdk="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5240
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getMinSdkVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5242
    :cond_31f
    const-string v2, " targetSdk="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5243
    const-string v2, "]"

    const-string v5, ", "

    if-eqz v4, :cond_377

    .line 5244
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getMinExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v10

    .line 5246
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  minExtensionVersions=["

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v10, :cond_374

    .line 5248
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5249
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_349
    if-ge v13, v12, :cond_36d

    .line 5251
    invoke-virtual {v10, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .line 5252
    invoke-virtual {v10, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    .line 5253
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_349

    .line 5256
    :cond_36d
    invoke-static {v5, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5258
    :cond_374
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5260
    :cond_377
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5261
    const-string v9, "  pendingRestore=true"

    const-string v11, "    "

    if-eqz v4, :cond_797

    .line 5262
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  versionName="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5263
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  hiddenApiEnforcementPolicy="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5264
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getHiddenApiEnforcementPolicy()I

    move-result v12

    .line 5263
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(I)V

    .line 5265
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  usesNonSdkApi="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isNonSdkApiRequested()Z

    move-result v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 5266
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  splits="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Lcom/android/server/pm/pkg/AndroidPackage;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5267
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v12

    .line 5268
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "  apkSigningVersion="

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(I)V

    .line 5269
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  flags="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5270
    invoke-static {v4, v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v12

    sget-object v13, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v1, v12, v13}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5271
    invoke-static {v4, v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v12

    if-eqz v12, :cond_3f8

    .line 5273
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "  privateFlags="

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v13, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v1, v12, v13}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 5274
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5276
    :cond_3f8
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v12

    if-eqz v12, :cond_407

    .line 5277
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5278
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5280
    :cond_407
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isUpdatableSystem()Z

    move-result v12

    if-nez v12, :cond_418

    .line 5281
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  updatableSystem=false"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5282
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5284
    :cond_418
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getEmergencyInstaller()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_42d

    .line 5285
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  emergencyInstaller="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5286
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getEmergencyInstaller()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5288
    :cond_42d
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->hasPreserveLegacyExternalStorage()Z

    move-result v12

    if-eqz v12, :cond_43e

    .line 5289
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  hasPreserveLegacyExternalStorage=true"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5290
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5292
    :cond_43e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  forceQueryable="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5293
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isForceQueryable()Z

    move-result v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Z)V

    .line 5294
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isForceQueryableOverride()Z

    move-result v12

    if-eqz v12, :cond_45c

    .line 5295
    const-string v12, " (override=true)"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5297
    :cond_45c
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5298
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5299
    const-string v12, "  pageSizeCompat="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5300
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPageSizeAppCompatFlags()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 5301
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5302
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getDeveloperVerificationStatusInternal()Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v12

    if-eqz v12, :cond_490

    .line 5303
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5304
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5305
    const-string v12, "  developerVerificationStatus="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5306
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getDeveloperVerificationStatusInternal()Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5307
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5309
    :cond_490
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesPackages()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4b3

    .line 5310
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v12

    const-string v13, "  queriesPackages="

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v12

    .line 5311
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesPackages()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5313
    :cond_4b3
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesIntents()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4d6

    .line 5314
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v12

    const-string v13, "  queriesIntents="

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v12

    .line 5315
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesIntents()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5317
    :cond_4d6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  scannedAsStoppedSystemApp="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5318
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isScannedAsStoppedSystemApp()Z

    move-result v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 5319
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  supportsScreens=["

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5321
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isSmallScreensSupported()Z

    move-result v12

    if-eqz v12, :cond_4fb

    .line 5325
    const-string/jumbo v12, "small"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_4fc

    :cond_4fb
    const/4 v12, 0x1

    .line 5327
    :goto_4fc
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isNormalScreensSupported()Z

    move-result v13

    if-eqz v13, :cond_50e

    if-nez v12, :cond_507

    .line 5329
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5331
    :cond_507
    const-string/jumbo v12, "medium"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 5333
    :cond_50e
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeScreensSupported()Z

    move-result v13

    if-eqz v13, :cond_51f

    if-nez v12, :cond_519

    .line 5335
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5337
    :cond_519
    const-string v12, "large"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 5339
    :cond_51f
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtraLargeScreensSupported()Z

    move-result v13

    if-eqz v13, :cond_531

    if-nez v12, :cond_52a

    .line 5341
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5343
    :cond_52a
    const-string/jumbo v12, "xlarge"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 5345
    :cond_531
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeable()Z

    move-result v13

    if-eqz v13, :cond_543

    if-nez v12, :cond_53c

    .line 5347
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5349
    :cond_53c
    const-string/jumbo v12, "resizeable"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 5351
    :cond_543
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isAnyDensity()Z

    move-result v13

    if-eqz v13, :cond_553

    if-nez v12, :cond_54e

    .line 5353
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5355
    :cond_54e
    const-string v5, "anyDensity"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5357
    :cond_553
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5358
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_583

    .line 5359
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_583

    .line 5360
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  dynamic libraries:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 5361
    :goto_56b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_583

    .line 5362
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5363
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_56b

    .line 5366
    :cond_583
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "name:"

    const-string v12, " version:"

    if-eqz v2, :cond_5b0

    .line 5367
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  static library:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5368
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5369
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5370
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Ljava/io/PrintWriter;->println(J)V

    .line 5373
    :cond_5b0
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5da

    .line 5374
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  SDK library:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5375
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5376
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5377
    const-string v2, " versionMajor:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5380
    :cond_5da
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v2

    .line 5381
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_605

    .line 5382
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  usesLibraries:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 5383
    :goto_5ed
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_605

    .line 5384
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5ed

    .line 5388
    :cond_605
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v2

    .line 5389
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v5

    .line 5390
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_63c

    .line 5391
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "  usesStaticLibraries:"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 5392
    :goto_61c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_63c

    .line 5393
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5394
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5395
    aget-wide v14, v5, v13

    invoke-virtual {v1, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_61c

    .line 5399
    :cond_63c
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v2

    .line 5400
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v5

    .line 5401
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibrariesOptional()[Z

    move-result-object v13

    .line 5402
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_68b

    .line 5403
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "  usesSdkLibraries:"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5404
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_65b
    if-ge v15, v14, :cond_68b

    .line 5405
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5406
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    const/16 p3, 0x1

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v10, v4

    move-object/from16 v16, v5

    .line 5407
    aget-wide v4, v16, v15

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    const-string v4, " optional:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5408
    aget-boolean v4, v13, v15

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v15, v15, 0x1

    move-object v4, v10

    move-object/from16 v5, v16

    goto :goto_65b

    :cond_68b
    move-object v10, v4

    const/16 p3, 0x1

    .line 5412
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v2

    .line 5413
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6b9

    .line 5414
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesOptionalLibraries:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5415
    :goto_6a1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6b9

    .line 5416
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5417
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6a1

    .line 5421
    :cond_6b9
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v2

    .line 5422
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6e4

    .line 5423
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesNativeLibraries:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5424
    :goto_6cc
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6e4

    .line 5425
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6cc

    .line 5429
    :cond_6e4
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalNativeLibraries()Ljava/util/List;

    move-result-object v2

    .line 5430
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_70f

    .line 5431
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesOptionalNativeLibraries:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5432
    :goto_6f7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_70f

    .line 5433
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5434
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6f7

    .line 5438
    :cond_70f
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v2

    .line 5439
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_73e

    .line 5440
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesLibraryFiles:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5441
    :goto_726
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_73e

    .line 5442
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_726

    .line 5445
    :cond_73e
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v2

    .line 5446
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_79a

    .line 5447
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  processes:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5448
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_758
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    .line 5449
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5450
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_758

    .line 5451
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_77f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_758

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5452
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "      deny: "

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5453
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_77f

    :cond_797
    move-object v10, v4

    const/16 p3, 0x1

    .line 5459
    :cond_79a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  timeStamp="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5460
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 5461
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5462
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  lastUpdateTime="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5463
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 5464
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5465
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  installerPackageName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5466
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5467
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  installerPackageUid="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5468
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5469
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  initiatingPackageName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5470
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5471
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  originatingPackageName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5472
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5474
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_823

    .line 5475
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  updateOwnerPackageName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5476
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5478
    :cond_823
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    if-eqz v2, :cond_83c

    .line 5479
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  installerAttributionTag="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5480
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5482
    :cond_83c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  packageSource="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5483
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget v2, v2, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5484
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isIncremental()Z

    move-result v2

    if-eqz v2, :cond_899

    .line 5485
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  loadingProgress="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5486
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getLoadingProgress()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5485
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5487
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getLoadingCompletedTime()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 5488
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  loadingCompletedTime="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5490
    :cond_899
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  appMetadataFilePath="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5491
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5492
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  appMetadataSource="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5493
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAppMetadataSource()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5494
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8cc

    .line 5495
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  volumeUuid="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5496
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5498
    :cond_8cc
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  signatures="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5499
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  installPermissionsFixed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5500
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isInstallPermissionsFixed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 5501
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5502
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  pkgFlags="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v2

    sget-object v4, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 5503
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5504
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  privatePkgFlags="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v2

    sget-object v4, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 5506
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5507
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v2

    if-eqz v2, :cond_921

    .line 5508
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5510
    :cond_921
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  apexModuleName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getApexModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v10, :cond_956

    .line 5512
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_956

    .line 5513
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  overlayTarget="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5514
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  overlayCategory="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_956
    if-eqz v10, :cond_9d3

    .line 5517
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9d3

    .line 5518
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    .line 5519
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  declared permissions:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5520
    :goto_96f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9d3

    .line 5521
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    if-eqz v3, :cond_988

    .line 5523
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_988

    goto :goto_9d0

    .line 5526
    :cond_988
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5527
    const-string v9, ": prot="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5528
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v9

    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5529
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_9b2

    .line 5530
    const-string v9, ", COSTS_MONEY"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5532
    :cond_9b2
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_9bf

    .line 5533
    const-string v9, ", HIDDEN"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5535
    :cond_9bf
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v5

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v5, v9

    if-eqz v5, :cond_9cd

    .line 5536
    const-string v5, ", INSTALLED"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5538
    :cond_9cd
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :goto_9d0
    add-int/lit8 v4, v4, 0x1

    goto :goto_96f

    :cond_9d3
    if-nez v3, :cond_9d7

    if-eqz p10, :cond_a18

    :cond_9d7
    if-eqz v10, :cond_a18

    .line 5543
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_a18

    .line 5544
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_a18

    .line 5545
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    .line 5546
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  requested permissions:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5547
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9f9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_a0e

    .line 5549
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a0e

    goto :goto_9f9

    .line 5552
    :cond_a0e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9f9

    .line 5556
    :cond_a18
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v2

    const-string v9, "  "

    if-eqz v2, :cond_a24

    if-nez v3, :cond_a24

    if-eqz p10, :cond_a3a

    .line 5557
    :cond_a24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    :cond_a3a
    if-eqz p11, :cond_a4e

    .line 5561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 5564
    :cond_a4e
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a52
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_dbf

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 5565
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v7, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    .line 5566
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  User "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5567
    const-string v3, "ceDataInode="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5568
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 5569
    const-string v3, " deDataInode="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5570
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 5571
    const-string v3, " installed="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5572
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5573
    const-string v3, " hidden="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5574
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5575
    const-string v3, " suspended="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5576
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5577
    const-string v3, " distractionFlags="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5578
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5579
    const-string v3, " stopped="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5580
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5581
    const-string v3, " notLaunched="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5582
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5583
    const-string v3, " enabled="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5584
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5585
    const-string v3, " instant="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5586
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5587
    const-string v3, " virtual="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5588
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5589
    const-string v3, " quarantined="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5590
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 5593
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5594
    const-string v4, "      installReason="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5595
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 5597
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDataDir(Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/io/File;

    move-result-object v4

    .line 5598
    const-string v5, "      dataDir="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v4, :cond_b26

    .line 5599
    const-string/jumbo v4, "null"

    goto :goto_b2a

    :cond_b26
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    :goto_b2a
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5601
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 5602
    const-string v5, "      firstInstallTime="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5603
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/util/Date;->setTime(J)V

    .line 5604
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5606
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v5

    if-eqz v5, :cond_b90

    .line 5607
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v4

    .line 5608
    const-string v5, "      archiveTime="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5609
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/ArchiveState;->getArchiveTimeMillis()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/util/Date;->setTime(J)V

    .line 5610
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5611
    const-string v5, "      unarchiveInstallerTitle="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5612
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/ArchiveState;->getInstallerTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5613
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/ArchiveState;->getActivityInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b90

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 5614
    const-string v12, "        archiveActivityInfo="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5615
    invoke-virtual {v5}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b77

    .line 5619
    :cond_b90
    const-string v4, "      uninstallReason="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5620
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 5622
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v4

    if-eqz v4, :cond_bf0

    .line 5623
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5624
    const-string v4, "  Suspend params:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5625
    :goto_bab
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_bf0

    .line 5626
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5627
    const-string v5, "    suspendingPackage="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5628
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5629
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz v5, :cond_bea

    .line 5631
    const-string v12, " dialogInfo="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5632
    invoke-virtual {v5}, Lcom/android/server/pm/pkg/SuspendParams;->getDialogInfo()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5633
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5634
    invoke-virtual {v5}, Lcom/android/server/pm/pkg/SuspendParams;->isQuarantined()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 5636
    :cond_bea
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_bab

    .line 5640
    :cond_bf0
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v3

    .line 5641
    const-string v12, "      "

    if-eqz v3, :cond_c58

    .line 5642
    invoke-virtual {v3}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c28

    .line 5643
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5644
    const-string v4, "    overlay paths:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5645
    invoke-virtual {v3}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5646
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5647
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5648
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c12

    .line 5651
    :cond_c28
    invoke-virtual {v3}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c58

    .line 5652
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5653
    const-string v4, "    legacy overlay paths:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5654
    invoke-virtual {v3}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5655
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5656
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5657
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c42

    .line 5663
    :cond_c58
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getSharedLibraryOverlayPaths()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_cf3

    .line 5666
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c66
    :goto_c66
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cf3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5667
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/overlay/OverlayPaths;

    if-nez v5, :cond_c7b

    goto :goto_c66

    .line 5671
    :cond_c7b
    invoke-virtual {v5}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_cb7

    .line 5672
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5673
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5674
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5675
    const-string v13, " overlay paths:"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5676
    invoke-virtual {v5}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_ca1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_cb7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 5677
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5678
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5679
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ca1

    .line 5682
    :cond_cb7
    invoke-virtual {v5}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c66

    .line 5683
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5684
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5685
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5686
    const-string v4, " legacy overlay paths:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5687
    invoke-virtual {v5}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_cdd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5688
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5689
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5690
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_cdd

    .line 5696
    :cond_cf3
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d04

    .line 5698
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    lastDisabledCaller: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5699
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5702
    :cond_d04
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v3

    if-nez v3, :cond_d4c

    .line 5703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 5704
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v13

    invoke-static {v5, v13}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 5703
    invoke-interface {v4, v5}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v13, p6

    .line 5706
    invoke-virtual {v13, v2}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v4

    move/from16 v5, p10

    move-object v2, v3

    move-object/from16 v3, p4

    .line 5705
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V

    goto :goto_d4e

    :cond_d4c
    move-object/from16 v13, p6

    .line 5709
    :goto_d4e
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d5f

    .line 5711
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "      harmfulAppWarning: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5712
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d5f
    if-nez p4, :cond_dbb

    .line 5716
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-eqz v0, :cond_d8e

    .line 5717
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    if-lez v2, :cond_d8e

    .line 5718
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    disabledComponents:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5719
    :goto_d76
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_d8e

    .line 5720
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d76

    .line 5723
    :cond_d8e
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-eqz v0, :cond_dbb

    .line 5724
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    if-lez v2, :cond_dbb

    .line 5725
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    enabledComponents:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5726
    :goto_da3
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_dbb

    .line 5727
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_da3

    :cond_dbb
    move-object/from16 v0, p0

    goto/16 :goto_a52

    :cond_dbf
    return-void
.end method

.method public dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move-object/from16 v4, p3

    move-object/from16 v13, p4

    .line 5736
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5737
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x2

    .line 5740
    invoke-virtual {v13, v2}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v11

    .line 5741
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v9

    .line 5742
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    move v2, v15

    :goto_30
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v16, 0x0

    const/16 v5, 0x8

    const/16 v17, 0x1

    if-eqz v3, :cond_be

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v12, :cond_59

    .line 5743
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_59

    .line 5744
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_59

    goto :goto_30

    .line 5747
    :cond_59
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    if-eqz v6, :cond_70

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 5748
    invoke-virtual {v13, v5}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    if-nez v5, :cond_70

    goto :goto_30

    .line 5752
    :cond_70
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 5753
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v6

    if-eqz v4, :cond_83

    .line 5755
    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/LegacyPermissionState;->hasPermissionState(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_83

    goto :goto_30

    :cond_83
    if-nez p5, :cond_8e

    if-eqz v12, :cond_8e

    .line 5760
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/android/server/pm/DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    :cond_8e
    if-nez p5, :cond_a3

    if-nez v2, :cond_a3

    .line 5764
    invoke-virtual {v13}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 5765
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5766
    :cond_9b
    const-string v2, "Packages:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v18, v17

    goto :goto_a5

    :cond_a3
    move/from16 v18, v2

    :goto_a5
    if-eqz p5, :cond_aa

    .line 5769
    const-string/jumbo v16, "pkg"

    :cond_aa
    if-eqz v12, :cond_af

    move/from16 v10, v17

    goto :goto_b0

    :cond_af
    move v10, v15

    :goto_b0
    const-string v2, "  "

    move-object v5, v3

    move-object/from16 v3, v16

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    move-object/from16 v4, p3

    move/from16 v2, v18

    goto/16 :goto_30

    .line 5774
    :cond_be
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_133

    if-nez p3, :cond_133

    .line 5775
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v15

    :goto_d3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_133

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v12, :cond_f6

    .line 5776
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f6

    .line 5777
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f6

    goto :goto_d3

    :cond_f6
    if-nez p5, :cond_110

    if-nez v3, :cond_10a

    .line 5782
    invoke-virtual {v13}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_103

    .line 5783
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5784
    :cond_103
    const-string v3, "Renamed packages:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v3, v17

    .line 5787
    :cond_10a
    const-string v6, "  "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_116

    .line 5789
    :cond_110
    const-string/jumbo v6, "ren,"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5791
    :goto_116
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_124

    .line 5792
    const-string v6, " -> "

    goto :goto_126

    :cond_124
    const-string v6, ","

    :goto_126
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5793
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d3

    .line 5798
    :cond_133
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_1c6

    if-nez p3, :cond_1c6

    .line 5799
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v2, v15

    :goto_148
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v12, :cond_16b

    .line 5800
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16b

    .line 5801
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16b

    goto :goto_148

    .line 5804
    :cond_16b
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-eqz v4, :cond_182

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v4

    if-eqz v4, :cond_182

    .line 5805
    invoke-virtual {v13, v5}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v4

    if-nez v4, :cond_182

    goto :goto_148

    :cond_182
    if-nez p5, :cond_197

    if-nez v2, :cond_197

    .line 5810
    invoke-virtual {v13}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 5811
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5812
    :cond_18f
    const-string v2, "Hidden system packages:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v18, v17

    goto :goto_199

    :cond_197
    move/from16 v18, v2

    .line 5815
    :goto_199
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 5816
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v6

    if-eqz p5, :cond_1a8

    .line 5817
    const-string v2, "dis"

    goto :goto_1aa

    :cond_1a8
    move-object/from16 v2, v16

    :goto_1aa
    if-eqz v12, :cond_1b2

    move/from16 v10, v17

    :goto_1ae
    move v4, v5

    move-object v5, v3

    move-object v3, v2

    goto :goto_1b4

    :cond_1b2
    move v10, v15

    goto :goto_1ae

    :goto_1b4
    const-string v2, "  "

    move/from16 v19, v4

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v5, v19

    goto :goto_148

    :cond_1c6
    return-void
.end method

.method public dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 10

    .line 5824
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v5

    .line 5826
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v7, v1

    :goto_10
    if-ge v7, v0, :cond_28

    .line 5828
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v7}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    const-wide v3, 0x20b00000005L

    .line 5829
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageSetting;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_28
    return-void
.end method

.method public dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .registers 13

    .line 5835
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 5836
    invoke-interface {v0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissions()Ljava/util/List;

    move-result-object v4

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 5837
    invoke-interface {p0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getAllAppOpPermissionPackages()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    .line 5835
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Ljava/util/Map;ZLcom/android/server/pm/DumpState;)V

    return-void
.end method

.method public dumpPreferred(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .registers 13

    const/4 v0, 0x0

    .line 6856
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 6857
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 6858
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v1

    .line 6860
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v3

    const-string v4, ":"

    if-eqz v3, :cond_36

    .line 6861
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nPreferred Activities User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_34
    move-object v4, v1

    goto :goto_4b

    .line 6862
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preferred Activities User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_34

    :goto_4b
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6859
    const-string v5, "  "

    move-object v3, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_5b

    const/4 p1, 0x1

    .line 6864
    invoke-virtual {p2, p1}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    :cond_5b
    add-int/lit8 v0, v0, 0x1

    move-object p1, v3

    move-object p3, v6

    goto :goto_1

    :cond_60
    return-void
.end method

.method public dumpReadMessages(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 3

    .line 5918
    const-string p2, "Settings parse messages:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5919
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V
    .registers 7

    .line 5956
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5957
    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_19

    :cond_17
    if-eqz p5, :cond_6f

    .line 5963
    :goto_19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "runtime permissions:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5964
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5965
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isRuntime()Z

    move-result p5

    if-nez p5, :cond_39

    goto :goto_26

    :cond_39
    if-eqz p3, :cond_46

    .line 5969
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_46

    goto :goto_26

    .line 5972
    :cond_46
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p5, "  "

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5973
    const-string p5, ": granted="

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result p5

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Z)V

    .line 5974
    const-string p5, ", flags="

    .line 5975
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result p4

    .line 5974
    invoke-static {p5, p4}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    :cond_6f
    return-void
.end method

.method public dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    .line 5843
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move v2, v7

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p2, :cond_28

    .line 5844
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v4

    if-eq v8, v4, :cond_28

    goto :goto_12

    .line 5847
    :cond_28
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v5, v8, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 5848
    invoke-interface {v4, v5}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    if-eqz v3, :cond_39

    .line 5850
    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/LegacyPermissionState;->hasPermissionState(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_12

    :cond_39
    if-nez p5, :cond_152

    const/4 v9, 0x1

    if-nez v2, :cond_4e

    .line 5855
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 5856
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5857
    :cond_47
    const-string v2, "Shared users:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v10, v9

    goto :goto_4f

    :cond_4e
    move v10, v2

    .line 5861
    :goto_4f
    const-string v2, "  SharedUser ["

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5862
    iget-object v2, v8, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5863
    const-string v2, "] ("

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5864
    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5865
    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5868
    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "appId="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v8, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 5870
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Packages"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5872
    invoke-virtual {v8}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v5

    .line 5873
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v11

    move v12, v7

    .line 5874
    :goto_8e
    const-string v13, "  "

    if-ge v12, v11, :cond_ca

    .line 5875
    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v14, :cond_b0

    .line 5877
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_c7

    .line 5879
    :cond_b0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "NULL?!"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_c7
    add-int/lit8 v12, v12, 0x1

    goto :goto_8e

    :cond_ca
    const/4 v5, 0x4

    move-object/from16 v11, p4

    .line 5883
    invoke-virtual {v11, v5}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_d6

    move v2, v10

    goto/16 :goto_12

    .line 5887
    :cond_d6
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v5

    .line 5889
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    move-object v14, v2

    move-object v12, v4

    .line 5891
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_e7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_150

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 5892
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 5893
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v4, v8, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-static {v2, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v3

    .line 5896
    invoke-virtual {v12, v2}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v4

    .line 5897
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v5

    if-eqz v5, :cond_111

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14d

    .line 5898
    :cond_111
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "User "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_148

    move v5, v9

    :goto_145
    move-object/from16 v3, p3

    goto :goto_14a

    :cond_148
    move v5, v7

    goto :goto_145

    :goto_14a
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V

    :cond_14d
    move-object/from16 v0, p0

    goto :goto_e7

    :cond_150
    move v2, v10

    goto :goto_169

    :cond_152
    move-object/from16 v11, p4

    .line 5905
    const-string/jumbo v0, "suid,"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v8, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_169
    move-object/from16 v0, p0

    move-object/from16 v3, p3

    goto/16 :goto_12

    :cond_16f
    return-void
.end method

.method public dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 5911
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1c

    .line 5913
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    const-wide v3, 0x20b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/SharedUserSetting;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-void
.end method

.method public dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 5109
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 5110
    :goto_4
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_93

    .line 5111
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5112
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    .line 5113
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 5114
    const-string v1, "Internal:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    .line 5115
    :cond_2a
    const-string/jumbo v3, "primary_physical"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 5116
    const-string v1, "External:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    .line 5118
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5120
    :goto_52
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5121
    iget v1, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "sdkVersion"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 5122
    iget v1, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersionFull:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "sdkVersionFull"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 5123
    iget v1, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "databaseVersion"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 5124
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5125
    const-string v1, "buildFingerprint"

    iget-object v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 5126
    const-string v1, "fingerprint"

    iget-object v2, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 5127
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5128
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 5130
    :cond_93
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .registers 3

    .line 1585
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    if-nez v0, :cond_14

    .line 1587
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    invoke-direct {v0}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    .line 1588
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .registers 3

    .line 1576
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-nez v0, :cond_14

    .line 1578
    new-instance v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    .line 1579
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 3

    .line 1567
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    if-nez v0, :cond_14

    .line 1569
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-direct {v0}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    .line 1570
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 15

    .line 936
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_27

    .line 938
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not disabled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 941
    :cond_27
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 943
    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 945
    :cond_32
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 946
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    .line 947
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v7

    .line 948
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v8

    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v9

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->generateNewId()Ljava/util/UUID;

    move-result-object v10

    if-nez v1, :cond_5c

    move v11, v2

    goto :goto_61

    .line 949
    :cond_5c
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isSdkLibrary()Z

    move-result v1

    move v11, v1

    :goto_61
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v12

    move-object v3, p0

    move-object v4, p1

    .line 947
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IIILjava/util/UUID;ZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_f2

    .line 951
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 952
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 953
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 954
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 955
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    .line 956
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 957
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    .line 958
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;

    .line 959
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 960
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    .line 961
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getMimeGroups()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setMimeGroups(Ljava/util/Map;)Lcom/android/server/pm/PackageSetting;

    .line 962
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 963
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppMetadataSource()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    .line 964
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 965
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;

    .line 966
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;

    .line 967
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isScannedAsStoppedSystemApp()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setScannedAsStoppedSystemApp(Z)Lcom/android/server/pm/PackageSetting;

    .line 968
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;

    .line 969
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 971
    :cond_f2
    iget-object p1, v3, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, v4}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    .line 1681
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    if-nez v0, :cond_14

    .line 1683
    new-instance v0, Lcom/android/server/pm/Settings$VersionInfo;

    invoke-direct {v0}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    .line 1684
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method public getAllSharedUsersLPw()Ljava/util/Collection;
    .registers 1

    .line 901
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .registers 3

    .line 4963
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p0, :cond_f

    .line 4967
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result p0

    return p0

    .line 4965
    :cond_f
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBlockUninstallLPr(ILjava/lang/String;)Z
    .registers 3

    .line 2230
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 2234
    :cond_c
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .registers 4

    .line 4972
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4973
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p0, :cond_17

    .line 4977
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 4978
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 4975
    :cond_17
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCrossProfileIntentResolver(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .registers 2

    .line 6719
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentResolver;

    return-object p0
.end method

.method public getDefaultRuntimePermissionsVersion(I)I
    .registers 2

    .line 1669
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getVersion(I)I

    move-result p0

    return p0
.end method

.method public getDisabledSystemPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1

    .line 850
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 4958
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 4945
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 2

    .line 1694
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    const-string/jumbo v0, "primary_physical"

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object p0
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 2

    .line 1690
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object p0
.end method

.method public getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;
    .registers 1

    .line 854
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    return-object p0
.end method

.method public getLegacyPermissionsState(I)Lcom/android/permission/persistence/RuntimePermissionsState;
    .registers 4

    .line 3682
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getLegacyPermissionsState(ILcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)Lcom/android/permission/persistence/RuntimePermissionsState;

    move-result-object p0

    return-object p0
.end method

.method public getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 842
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1

    .line 846
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getPendingDefaultBrowserLPr(I)Ljava/lang/String;
    .registers 2

    .line 1594
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .registers 2

    .line 6710
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    return-object p0
.end method

.method public getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 2

    .line 6714
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PreferredIntentResolver;

    return-object p0
.end method

.method public getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 858
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSettingLPr(I)Lcom/android/server/pm/SettingBase;
    .registers 2

    .line 1530
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppIdSettingMap;->getSetting(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    return-object p0
.end method

.method public final getSettingsFile()Lcom/android/server/pm/ResilientAtomicFile;
    .registers 8

    .line 1622
    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    const/16 v4, 0x1b0

    const-string/jumbo v5, "package manager settings"

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    return-object v0
.end method

.method public getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .registers 6

    .line 881
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_5e

    if-eqz p4, :cond_5e

    .line 883
    new-instance p4, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    .line 884
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p2, p4}, Lcom/android/server/pm/AppIdSettingMap;->acquireAndRegisterNewAppId(Lcom/android/server/pm/SettingBase;)I

    move-result p2

    iput p2, p4, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    if-ltz p2, :cond_41

    .line 890
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "New shared user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p4, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PackageManager"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, p4}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p4

    .line 887
    :cond_41
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Creating shared user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x4

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5e
    return-object v0
.end method

.method public getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;
    .registers 3

    if-eqz p1, :cond_14

    .line 4988
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_14

    .line 4991
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSharedUserSettingLPr(Ljava/lang/String;)Lcom/android/server/pm/SharedUserSetting;
    .registers 3

    .line 4982
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4983
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUsersLocked()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1

    .line 897
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public final getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;
    .registers 9

    .line 1611
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1612
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v3, "package-restrictions-backup.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1614
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v0, "package-restrictions.xml.reservecopy"

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1616
    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    const/16 v4, 0x1b0

    const-string/jumbo v5, "package restrictions"

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    return-object v0
.end method

.method public final getUserRuntimePermissionsFile(I)Ljava/io/File;
    .registers 3

    .line 1629
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p1, "runtime-permissions.xml"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUserSystemDirectory(I)Ljava/io/File;
    .registers 5

    .line 1607
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "users"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getVerifierDeviceIdentityLPw(Lcom/android/server/pm/Computer;Ljava/util/List;)Landroid/content/pm/VerifierDeviceIdentity;
    .registers 4

    .line 4930
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_e

    .line 4931
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    const/4 v0, 0x0

    .line 4933
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;Ljava/util/List;Z)V

    .line 4936
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object p0
.end method

.method public getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 6

    .line 5040
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 5041
    :goto_6
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 5042
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 5043
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 5044
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    return-object v0
.end method

.method public insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 5

    .line 1423
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1424
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;

    .line 1428
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1430
    iget-object v1, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    if-nez v1, :cond_29

    .line 1431
    iget-object v1, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    iput-object p2, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 1434
    :cond_29
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    return-void
.end method

.method public final invalidatePackageCache(I)V
    .registers 2

    .line 835
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateQueryIntentActivitiesCache()V

    .line 836
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    .line 837
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 838
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    return-void
.end method

.method public isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .registers 2

    .line 976
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isInstallerPackage(Ljava/lang/String;)Z
    .registers 2

    .line 6870
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPermissionUpgradeNeeded(I)Z
    .registers 2

    .line 1661
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->isPermissionUpgradeNeeded(I)Z

    move-result p0

    return p0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 2

    .line 220
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$pruneSharedUsersLPw$0(Lcom/android/server/pm/SharedUserSetting;)V
    .registers 3

    const/4 v0, 0x1

    .line 1084
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    return-void
.end method

.method public final synthetic lambda$writePackageRestrictionsLPr$1(IJZ)V
    .registers 5

    .line 2363
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Settings;->writePackageRestrictions(IJZ)V

    return-void
.end method

.method public logEvent(ILjava/lang/String;)V
    .registers 5

    .line 1850
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-void
.end method

.method public onChanged()V
    .registers 1

    .line 237
    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 2

    .line 1698
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pruneRenamedPackagesLPw()V
    .registers 4

    .line 870
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 871
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-nez v1, :cond_1f

    .line 873
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    return-void
.end method

.method public pruneSharedUsersLPw()V
    .registers 12

    .line 1048
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1049
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1051
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    if-nez v4, :cond_32

    .line 1053
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1058
    :cond_32
    invoke-virtual {v4}, Lcom/android/server/pm/SharedUserSetting;->getPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v3

    .line 1059
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    :goto_3d
    if-ltz v5, :cond_58

    .line 1060
    invoke-virtual {v3, v5}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 1061
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_55

    .line 1062
    invoke-virtual {v3, v5}, Lcom/android/server/utils/WatchedArraySet;->removeAt(I)Ljava/lang/Object;

    move v7, v6

    :cond_55
    add-int/lit8 v5, v5, -0x1

    goto :goto_3d

    .line 1067
    :cond_58
    invoke-virtual {v4}, Lcom/android/server/pm/SharedUserSetting;->getDisabledPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v5

    .line 1068
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_61
    if-ltz v8, :cond_7c

    .line 1069
    invoke-virtual {v5, v8}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 1070
    iget-object v10, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_79

    .line 1071
    invoke-virtual {v5, v8}, Lcom/android/server/utils/WatchedArraySet;->removeAt(I)Ljava/lang/Object;

    move v7, v6

    :cond_79
    add-int/lit8 v8, v8, -0x1

    goto :goto_61

    :cond_7c
    if-eqz v7, :cond_81

    .line 1076
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1078
    :cond_81
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1079
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1080
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1083
    :cond_91
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1084
    new-instance v0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/Settings;)V

    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public readBlockUninstallPackagesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .registers 8

    .line 1822
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1824
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1825
    :cond_9
    :goto_9
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_54

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    .line 1826
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_54

    :cond_19
    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1f

    goto :goto_9

    .line 1830
    :cond_1f
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1831
    const-string v3, "block-uninstall"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x0

    .line 1832
    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1833
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1835
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under block-uninstall-packages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 1837
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1838
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 1841
    :cond_54
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 1842
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    return-void

    .line 1844
    :cond_60
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final readComponentsLPr(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/ArraySet;
    .registers 7

    .line 2241
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    .line 2243
    :cond_6
    :goto_6
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3c

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    .line 2245
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, p0, :cond_3c

    :cond_16
    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    goto :goto_6

    .line 2250
    :cond_1c
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2251
    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2252
    const-string/jumbo v2, "name"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    if-nez v1, :cond_38

    .line 2255
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2257
    :cond_38
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_3c
    return-object v1
.end method

.method public final readCrossProfileIntentFiltersLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .registers 7

    .line 1763
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1765
    :cond_4
    :goto_4
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4d

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1766
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4d

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    .line 1770
    :cond_1a
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1771
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1772
    new-instance v1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v1, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 1773
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_4

    .line 1775
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 1777
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1778
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_4d
    return-void
.end method

.method public readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 3

    .line 1785
    invoke-static {p1}, Lcom/android/server/pm/Settings;->readDefaultApps(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1787
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public final readDefaultPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .registers 9

    .line 4013
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 4014
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4015
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 4017
    :cond_c
    :goto_c
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8b

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    .line 4018
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_8b

    :cond_1c
    if-eq v2, v3, :cond_c

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    goto :goto_c

    .line 4023
    :cond_22
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4024
    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_6f

    .line 4025
    new-instance v2, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v2, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 4026
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v4}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_48

    .line 4028
    invoke-virtual {v2}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v2, v2, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 4027
    invoke-virtual {p0, v0, v3, v2, p2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_c

    .line 4030
    :cond_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 4032
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4033
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4030
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_c

    .line 4036
    :cond_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <preferred-activities>: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4037
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4036
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4038
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    :cond_8b
    return-void
.end method

.method public final readDisabledComponentsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .registers 7

    .line 4663
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 4665
    :cond_4
    :goto_4
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 4666
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p0, :cond_6e

    :cond_14
    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    goto :goto_4

    .line 4671
    :cond_1a
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4672
    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    .line 4673
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 4675
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/android/server/pm/PackageSetting;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_6a

    .line 4677
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4679
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4677
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6a

    .line 4682
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <disabled-components>: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4683
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4682
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4685
    :goto_6a
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_6e
    return-void
.end method

.method public final readDisabledSysPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/List;)V
    .registers 22

    move-object/from16 v1, p1

    .line 4045
    const-string/jumbo v2, "name"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4046
    const-string/jumbo v2, "realName"

    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4047
    const-string v2, "codePath"

    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4049
    const-string/jumbo v4, "requiredCpuAbi"

    invoke-interface {v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4050
    const-string/jumbo v7, "nativeLibraryPath"

    invoke-interface {v1, v3, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4052
    const-string/jumbo v7, "primaryCpuAbi"

    invoke-interface {v1, v3, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4053
    const-string/jumbo v8, "secondaryCpuAbi"

    invoke-interface {v1, v3, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4054
    const-string v8, "cpuAbiOverride"

    invoke-interface {v1, v3, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v7, :cond_3f

    if-eqz v4, :cond_3f

    move-object v14, v4

    goto :goto_40

    :cond_3f
    move-object v14, v7

    .line 4060
    :goto_40
    const-string/jumbo v4, "version"

    const-wide/16 v7, 0x0

    invoke-interface {v1, v3, v4, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    .line 4061
    const-string/jumbo v4, "targetSdkVersion"

    const/4 v15, 0x0

    invoke-interface {v1, v3, v4, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 4062
    const-string/jumbo v7, "restrictUpdateHash"

    invoke-interface {v1, v3, v7, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v7

    .line 4064
    const-string/jumbo v8, "scannedAsStoppedSystemApp"

    invoke-interface {v1, v3, v8, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 4070
    const-string v15, "/priv-app/"

    invoke-virtual {v2, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6c

    const/16 v15, 0x8

    :goto_69
    move-wide/from16 v16, v9

    goto :goto_6e

    :cond_6c
    const/4 v15, 0x0

    goto :goto_69

    .line 4077
    :goto_6e
    sget-object v10, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->DISABLED_ID:Ljava/util/UUID;

    move v9, v4

    .line 4078
    new-instance v4, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v18, v7

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v2, v8

    const/4 v8, 0x1

    move v3, v2

    move v2, v9

    move v9, v15

    move-wide/from16 v0, v16

    move-object/from16 v15, v18

    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    .line 4080
    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 4081
    invoke-virtual {v4, v14}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 4082
    invoke-virtual {v4, v12}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 4083
    invoke-virtual {v4, v13}, Lcom/android/server/pm/PackageSetting;->setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 4084
    invoke-virtual {v4, v0, v1}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4085
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4086
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4087
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->setScannedAsStoppedSystemApp(Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4088
    const-string v1, "ft"

    move-object/from16 v2, p1

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v6, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v1, v7, v3

    if-nez v1, :cond_bc

    .line 4090
    const-string/jumbo v1, "ts"

    invoke-interface {v2, v6, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    .line 4092
    :cond_bc
    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    .line 4093
    const-string/jumbo v1, "ut"

    invoke-interface {v2, v6, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    .line 4094
    invoke-static {v2}, Lcom/android/server/pm/Settings;->parseAppId(Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 4095
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    if-gtz v1, :cond_e0

    .line 4096
    invoke-static {v2}, Lcom/android/server/pm/Settings;->parseSharedUserAppId(Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v1

    .line 4097
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 4098
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 4101
    :cond_e0
    const-string v1, "appMetadataFilePath"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4102
    const-string v1, "appMetadataSource"

    const/4 v3, 0x0

    invoke-interface {v2, v6, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    .line 4105
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 4107
    :cond_f8
    :goto_f8
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_109

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10d

    .line 4108
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_109

    goto :goto_10d

    :cond_109
    move-object/from16 v4, p0

    goto/16 :goto_191

    :cond_10d
    :goto_10d
    if-eq v3, v4, :cond_18b

    const/4 v4, 0x4

    if-ne v3, v4, :cond_113

    goto :goto_f8

    .line 4113
    :cond_113
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "perms"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_147

    .line 4115
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v3

    if-eqz v3, :cond_139

    .line 4117
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result v3

    move-object/from16 v4, p0

    .line 4116
    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    if-eqz v3, :cond_137

    .line 4119
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v3

    goto :goto_13f

    :cond_137
    move-object v3, v6

    goto :goto_13f

    :cond_139
    move-object/from16 v4, p0

    .line 4121
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v3

    :goto_13f
    move-object/from16 v7, p2

    if-eqz v3, :cond_f8

    .line 4124
    invoke-virtual {v4, v2, v3, v7}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    goto :goto_f8

    :cond_147
    move-object/from16 v4, p0

    move-object/from16 v7, p2

    .line 4126
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "uses-static-lib"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15c

    .line 4127
    invoke-virtual {v4, v2, v0}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_f8

    .line 4128
    :cond_15c
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "uses-sdk-lib"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16d

    .line 4129
    invoke-virtual {v4, v2, v0}, Lcom/android/server/pm/Settings;->readUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_f8

    .line 4131
    :cond_16d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <updated-package>: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4132
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x5

    .line 4131
    invoke-static {v8, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4133
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f8

    :cond_18b
    move-object/from16 v4, p0

    move-object/from16 v7, p2

    goto/16 :goto_f8

    .line 4137
    :goto_191
    iget-object v1, v4, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v5, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final readEnabledComponentsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .registers 7

    .line 4691
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 4693
    :cond_4
    :goto_4
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 4694
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p0, :cond_6e

    :cond_14
    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    goto :goto_4

    .line 4699
    :cond_1a
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4700
    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    .line 4701
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 4703
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/android/server/pm/PackageSetting;->addEnabledComponent(Ljava/lang/String;I)V

    goto :goto_6a

    .line 4705
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4707
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4705
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6a

    .line 4710
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <enabled-components>: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4711
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4710
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4713
    :goto_6a
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_6e
    return-void
.end method

.method public readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V
    .registers 11

    .line 2603
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 2605
    :cond_4
    :goto_4
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_74

    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    .line 2607
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, p0, :cond_74

    :cond_14
    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1a

    goto :goto_4

    .line 2612
    :cond_1a
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2613
    const-string v2, "item"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2614
    const-string/jumbo v0, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2615
    const-string v3, "granted"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 2616
    const-string v3, "flags"

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 2617
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2618
    new-instance v6, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    invoke-direct {v6, v0, v4, v1, v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v6, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    goto :goto_3f

    .line 2622
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <permissions>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2623
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2622
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_74
    return-void
.end method

.method public readLPw(Lcom/android/server/pm/Computer;Ljava/util/List;)Z
    .registers 12

    .line 3591
    const-string v1, "No external VersionInfo found in settings, using current."

    const-string v2, "No internal VersionInfo found in settings, using current."

    const-string/jumbo v3, "primary_physical"

    const-string v4, "PackageManager"

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3594
    :try_start_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/Settings;->readSettingsLPw(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/util/ArrayMap;)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_198

    const/4 v5, 0x0

    if-nez p1, :cond_3c

    .line 3598
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object p2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 3599
    invoke-static {v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3603
    :cond_29
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, v3}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 3604
    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    :cond_3b
    return v5

    .line 3598
    :cond_3c
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v6, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    .line 3599
    invoke-static {v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    invoke-virtual {p0, v6}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3603
    :cond_50
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, v3}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    .line 3604
    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3610
    :cond_62
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result p1

    move v1, v5

    :goto_69
    if-ge v1, p1, :cond_df

    .line 3613
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 3614
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result v3

    if-gtz v3, :cond_7a

    goto :goto_dc

    .line 3618
    :cond_7a
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 3619
    instance-of v6, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_88

    .line 3620
    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 3621
    invoke-virtual {p0, v2, v4}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    goto :goto_dc

    :cond_88
    const/4 v6, 0x6

    .line 3622
    const-string v7, " has shared uid "

    const-string v8, "Bad package setting: package "

    if-eqz v4, :cond_b6

    .line 3623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that is not a shared uid\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3625
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3626
    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_dc

    .line 3628
    :cond_b6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that is not defined\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3630
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3631
    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_dc
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 3634
    :cond_df
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 3636
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_10c

    iget-object p1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 3637
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_f6

    goto :goto_10c

    .line 3645
    :cond_f6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_fa
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 3646
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(ILandroid/util/ArrayMap;)V

    goto :goto_fa

    .line 3639
    :cond_10c
    :goto_10c
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 3640
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 3641
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 3643
    invoke-virtual {p0, v5, v1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    .line 3650
    :cond_11c
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_120
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_142

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    .line 3651
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 3652
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v7

    .line 3651
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSync(ILcom/android/server/pm/Settings$VersionInfo;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Ljava/io/File;)V

    goto :goto_120

    .line 3659
    :cond_142
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14c
    :goto_14c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_171

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    .line 3660
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 3661
    instance-of v2, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_14c

    .line 3662
    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 3663
    iget-object v2, v0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2, p2}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 3664
    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    goto :goto_14c

    .line 3668
    :cond_171
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string p2, "Read completed successfully: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " packages, "

    .line 3669
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " shared uids\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3671
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    return v1

    :catchall_198
    move-exception v0

    move-object p1, v0

    .line 3598
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b0

    .line 3599
    invoke-static {v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    sget-object p2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3603
    :cond_1b0
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, v3}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c2

    .line 3604
    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3608
    :cond_1c2
    throw p1
.end method

.method public final readMimeGroupLPw(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/Pair;
    .registers 8

    .line 4565
    const-string/jumbo p0, "name"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_e

    .line 4567
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0

    .line 4571
    :cond_e
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 4572
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 4574
    :cond_17
    :goto_17
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_64

    const/4 v4, 0x3

    if-ne v3, v4, :cond_27

    .line 4575
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_64

    :cond_27
    if-eq v3, v4, :cond_17

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2d

    goto :goto_17

    .line 4580
    :cond_2d
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4581
    const-string/jumbo v4, "mime-type"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 4582
    const-string/jumbo v3, "value"

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 4584
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 4587
    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <mime-group>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4588
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    .line 4587
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4589
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_17

    .line 4593
    :cond_64
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final readPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/List;Landroid/util/ArrayMap;)V
    .registers 84

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 4148
    const-string v13, " has bad appId "

    const-string/jumbo v14, "true"

    const-string v15, " at "

    const-string v1, "Error in package manager settings: package "

    const/4 v2, 0x1

    .line 4477
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4195
    :try_start_14
    const-string/jumbo v4, "name"

    invoke-interface {v10, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1b} :catch_8f1

    .line 4196
    :try_start_1b
    const-string/jumbo v7, "realName"

    invoke-interface {v10, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4197
    invoke-static {v10}, Lcom/android/server/pm/Settings;->parseAppId(Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v8
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_26} :catch_8d7

    .line 4198
    :try_start_26
    const-string v9, "isSdkLibrary"

    invoke-interface {v10, v5, v9, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 4199
    invoke-static {v10}, Lcom/android/server/pm/Settings;->parseSharedUserAppId(Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v2

    .line 4200
    const-string v6, "codePath"

    invoke-interface {v10, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_36} :catch_8cc

    move-object/from16 v23, v3

    .line 4202
    :try_start_38
    const-string/jumbo v3, "requiredCpuAbi"

    invoke-interface {v10, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    .line 4204
    const-string/jumbo v3, "nativeLibraryPath"

    invoke-interface {v10, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_48} :catch_8b0

    move-object/from16 v25, v7

    .line 4205
    :try_start_4a
    const-string/jumbo v7, "primaryCpuAbi"

    invoke-interface {v10, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_51} :catch_893

    move-object/from16 v26, v7

    .line 4206
    :try_start_53
    const-string/jumbo v7, "secondaryCpuAbi"

    invoke-interface {v10, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_5a} :catch_874

    move/from16 v27, v9

    .line 4207
    :try_start_5c
    const-string v9, "cpuAbiOverride"

    invoke-interface {v10, v5, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4208
    const-string/jumbo v12, "updateAvailable"

    const/4 v11, 0x0

    invoke-interface {v10, v5, v12, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_6a} :catch_851

    move/from16 v28, v12

    .line 4209
    :try_start_6c
    const-string v12, "forceQueryable"

    invoke-interface {v10, v5, v12, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12
    :try_end_72
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_72} :catch_82e

    move/from16 v29, v12

    .line 4210
    :try_start_74
    const-string/jumbo v12, "pendingRestore"

    invoke-interface {v10, v5, v12, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_7b} :catch_80b

    move/from16 v30, v12

    .line 4211
    :try_start_7d
    const-string v12, "debuggable"

    invoke-interface {v10, v5, v12, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_83} :catch_7e7

    .line 4212
    :try_start_83
    const-string v11, "loadingProgress"
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_83 .. :try_end_85} :catch_7d7

    move/from16 v31, v12

    const/4 v12, 0x0

    :try_start_88
    invoke-interface {v10, v5, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v11
    :try_end_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_8c} :catch_7bc

    .line 4213
    :try_start_8c
    const-string v12, "loadingCompletedTime"
    :try_end_8e
    .catch Ljava/lang/NumberFormatException; {:try_start_8c .. :try_end_8e} :catch_7aa

    move-object/from16 v21, v1

    move/from16 v32, v2

    const-wide/16 v1, 0x0

    :try_start_94
    invoke-interface {v10, v5, v12, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v33
    :try_end_98
    .catch Ljava/lang/NumberFormatException; {:try_start_94 .. :try_end_98} :catch_789

    if-nez v26, :cond_a1

    if-eqz v24, :cond_a1

    move-object/from16 v12, v24

    :goto_9e
    move/from16 v24, v11

    goto :goto_a4

    :cond_a1
    move-object/from16 v12, v26

    goto :goto_9e

    .line 4219
    :goto_a4
    :try_start_a4
    const-string/jumbo v11, "version"
    :try_end_a7
    .catch Ljava/lang/NumberFormatException; {:try_start_a4 .. :try_end_a7} :catch_77c

    move/from16 v35, v8

    move-object/from16 v36, v9

    :try_start_ab
    invoke-interface {v10, v5, v11, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8
    :try_end_af
    .catch Ljava/lang/NumberFormatException; {:try_start_ab .. :try_end_af} :catch_76a

    .line 4220
    :try_start_af
    const-string/jumbo v1, "targetSdkVersion"

    const/4 v11, 0x0

    invoke-interface {v10, v5, v1, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26
    :try_end_b7
    .catch Ljava/lang/NumberFormatException; {:try_start_af .. :try_end_b7} :catch_74b

    .line 4221
    :try_start_b7
    const-string/jumbo v1, "restrictUpdateHash"

    invoke-interface {v10, v5, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v11
    :try_end_be
    .catch Ljava/lang/NumberFormatException; {:try_start_b7 .. :try_end_be} :catch_70d

    .line 4222
    :try_start_be
    const-string v1, "installer"

    invoke-interface {v10, v5, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37
    :try_end_c4
    .catch Ljava/lang/NumberFormatException; {:try_start_be .. :try_end_c4} :catch_6ec

    .line 4223
    :try_start_c4
    const-string v1, "installerUid"
    :try_end_c6
    .catch Ljava/lang/NumberFormatException; {:try_start_c4 .. :try_end_c6} :catch_6dc

    const/4 v2, -0x1

    :try_start_c7
    invoke-interface {v10, v5, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v38
    :try_end_cb
    .catch Ljava/lang/NumberFormatException; {:try_start_c7 .. :try_end_cb} :catch_6bf

    .line 4224
    :try_start_cb
    const-string/jumbo v1, "updateOwner"

    invoke-interface {v10, v5, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39
    :try_end_d2
    .catch Ljava/lang/NumberFormatException; {:try_start_cb .. :try_end_d2} :catch_69d

    .line 4225
    :try_start_d2
    const-string v1, "installerAttributionTag"

    invoke-interface {v10, v5, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40
    :try_end_d8
    .catch Ljava/lang/NumberFormatException; {:try_start_d2 .. :try_end_d8} :catch_67b

    .line 4226
    :try_start_d8
    const-string/jumbo v1, "packageSource"

    const/4 v2, 0x0

    invoke-interface {v10, v5, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v41
    :try_end_e0
    .catch Ljava/lang/NumberFormatException; {:try_start_d8 .. :try_end_e0} :catch_659

    .line 4228
    :try_start_e0
    const-string v1, "isOrphaned"

    invoke-interface {v10, v5, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v42
    :try_end_e6
    .catch Ljava/lang/NumberFormatException; {:try_start_e0 .. :try_end_e6} :catch_637

    .line 4229
    :try_start_e6
    const-string v1, "installInitiator"

    invoke-interface {v10, v5, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43
    :try_end_ec
    .catch Ljava/lang/NumberFormatException; {:try_start_e6 .. :try_end_ec} :catch_615

    .line 4230
    :try_start_ec
    const-string v1, "installOriginator"

    invoke-interface {v10, v5, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44
    :try_end_f2
    .catch Ljava/lang/NumberFormatException; {:try_start_ec .. :try_end_f2} :catch_5f3

    .line 4231
    :try_start_f2
    const-string v1, "installInitiatorUninstalled"

    const/4 v2, 0x0

    invoke-interface {v10, v5, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v45
    :try_end_f9
    .catch Ljava/lang/NumberFormatException; {:try_start_f2 .. :try_end_f9} :catch_5d1

    .line 4233
    :try_start_f9
    const-string/jumbo v1, "volumeUuid"

    invoke-interface {v10, v5, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46
    :try_end_100
    .catch Ljava/lang/NumberFormatException; {:try_start_f9 .. :try_end_100} :catch_5af

    .line 4234
    :try_start_100
    const-string v1, "categoryHint"
    :try_end_102
    .catch Ljava/lang/NumberFormatException; {:try_start_100 .. :try_end_102} :catch_59f

    const/4 v2, -0x1

    :try_start_103
    invoke-interface {v10, v5, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18
    :try_end_107
    .catch Ljava/lang/NumberFormatException; {:try_start_103 .. :try_end_107} :catch_58a

    .line 4236
    :try_start_107
    const-string v1, "appMetadataFilePath"

    invoke-interface {v10, v5, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47
    :try_end_10d
    .catch Ljava/lang/NumberFormatException; {:try_start_107 .. :try_end_10d} :catch_56b

    .line 4237
    :try_start_10d
    const-string v1, "appMetadataSource"

    const/4 v2, 0x0

    invoke-interface {v10, v5, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v48
    :try_end_114
    .catch Ljava/lang/NumberFormatException; {:try_start_10d .. :try_end_114} :catch_54c

    .line 4239
    :try_start_114
    const-string v1, "baseRevisionCode"

    invoke-interface {v10, v5, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v49
    :try_end_11a
    .catch Ljava/lang/NumberFormatException; {:try_start_114 .. :try_end_11a} :catch_52d

    .line 4240
    :try_start_11a
    const-string/jumbo v1, "pageSizeCompat"

    invoke-interface {v10, v5, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v50
    :try_end_121
    .catch Ljava/lang/NumberFormatException; {:try_start_11a .. :try_end_121} :catch_50e

    .line 4243
    :try_start_121
    const-string/jumbo v1, "scannedAsStoppedSystemApp"

    invoke-interface {v10, v5, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v51
    :try_end_128
    .catch Ljava/lang/NumberFormatException; {:try_start_121 .. :try_end_128} :catch_4ef

    .line 4246
    :try_start_128
    const-string v1, "domainSetId"

    invoke-interface {v10, v5, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v52, v1

    .line 4248
    const-string v1, "has-developer-verification-status"

    invoke-interface {v10, v5, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1
    :try_end_136
    .catch Ljava/lang/NumberFormatException; {:try_start_128 .. :try_end_136} :catch_4cf

    if-eqz v1, :cond_185

    .line 4251
    :try_start_138
    const-string v1, "developer-verification-status"

    invoke-interface {v10, v5, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 4253
    const-string v2, "app-metadata-verification-status"

    invoke-interface {v10, v5, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_144
    .catch Ljava/lang/NumberFormatException; {:try_start_138 .. :try_end_144} :catch_182

    move-object/from16 v53, v11

    .line 4255
    :try_start_146
    const-string v11, "is_lite_verification"
    :try_end_148
    .catch Ljava/lang/NumberFormatException; {:try_start_146 .. :try_end_148} :catch_171

    move-object/from16 v54, v13

    const/4 v13, 0x0

    :try_start_14b
    invoke-interface {v10, v5, v11, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 4257
    new-instance v13, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    invoke-direct {v13, v1, v2, v11}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;-><init>(IIZ)V
    :try_end_154
    .catch Ljava/lang/NumberFormatException; {:try_start_14b .. :try_end_154} :catch_155

    goto :goto_18a

    :catch_155
    move-object v11, v3

    move-object v1, v5

    move-object/from16 v52, v1

    :goto_159
    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v2, v24

    move/from16 v6, v35

    move-object/from16 v13, v54

    :goto_167
    const-wide/16 v8, 0x0

    const-wide/16 v20, 0x0

    :goto_16b
    move-object v5, v4

    :goto_16c
    move-object v14, v7

    move/from16 v7, v38

    goto/16 :goto_907

    :catch_171
    :goto_171
    move-object v11, v3

    move-object v1, v5

    move-object/from16 v52, v1

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v2, v24

    move/from16 v6, v35

    goto :goto_167

    :catch_182
    move-object/from16 v53, v11

    goto :goto_171

    :cond_185
    move-object/from16 v53, v11

    move-object/from16 v54, v13

    move-object v13, v5

    .line 4262
    :goto_18a
    :try_start_18a
    invoke-static/range {v52 .. v52}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_18e
    .catch Ljava/lang/NumberFormatException; {:try_start_18a .. :try_end_18e} :catch_4bb

    if-eqz v1, :cond_19e

    .line 4264
    :try_start_190
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->generateNewId()Ljava/util/UUID;

    move-result-object v1
    :try_end_196
    .catch Ljava/lang/NumberFormatException; {:try_start_190 .. :try_end_196} :catch_199

    :goto_196
    move-object/from16 v61, v1

    goto :goto_1a3

    :catch_199
    move-object v11, v3

    move-object v1, v5

    move-object/from16 v52, v13

    goto :goto_159

    .line 4266
    :cond_19e
    :try_start_19e
    invoke-static/range {v52 .. v52}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    goto :goto_196

    .line 4269
    :goto_1a3
    const-string/jumbo v1, "publicFlags"

    invoke-interface {v10, v5, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1aa
    .catch Ljava/lang/NumberFormatException; {:try_start_19e .. :try_end_1aa} :catch_4bb

    if-eqz v1, :cond_1c9

    .line 4272
    :try_start_1ac
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_1b0
    .catch Ljava/lang/NumberFormatException; {:try_start_1ac .. :try_end_1b0} :catch_1b1

    goto :goto_1b2

    :catch_1b1
    const/4 v11, 0x0

    .line 4275
    :goto_1b2
    :try_start_1b2
    const-string/jumbo v1, "privateFlags"

    invoke-interface {v10, v5, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1b9
    .catch Ljava/lang/NumberFormatException; {:try_start_1b2 .. :try_end_1b9} :catch_199

    if-eqz v1, :cond_1c4

    .line 4278
    :try_start_1bb
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1bf
    .catch Ljava/lang/NumberFormatException; {:try_start_1bb .. :try_end_1bf} :catch_1c4

    :goto_1bf
    move/from16 v60, v1

    move/from16 v59, v11

    goto :goto_203

    :catch_1c4
    :cond_1c4
    :goto_1c4
    move/from16 v59, v11

    :goto_1c6
    const/16 v60, 0x0

    goto :goto_203

    .line 4284
    :cond_1c9
    :try_start_1c9
    const-string v1, "flags"

    invoke-interface {v10, v5, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1cf
    .catch Ljava/lang/NumberFormatException; {:try_start_1c9 .. :try_end_1cf} :catch_4bb

    if-eqz v1, :cond_1f2

    .line 4287
    :try_start_1d1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_1d5
    .catch Ljava/lang/NumberFormatException; {:try_start_1d1 .. :try_end_1d5} :catch_1d6

    goto :goto_1d7

    :catch_1d6
    const/4 v11, 0x0

    :goto_1d7
    const/high16 v1, 0x8000000

    and-int/2addr v1, v11

    if-eqz v1, :cond_1de

    const/4 v1, 0x1

    goto :goto_1df

    :cond_1de
    const/4 v1, 0x0

    :goto_1df
    const/high16 v2, 0x10000000

    and-int/2addr v2, v11

    if-eqz v2, :cond_1e6

    or-int/lit8 v1, v1, 0x2

    :cond_1e6
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v11

    if-eqz v2, :cond_1ed

    or-int/lit8 v1, v1, 0x8

    :cond_1ed
    const v2, -0x58000001

    and-int/2addr v11, v2

    goto :goto_1bf

    .line 4304
    :cond_1f2
    :try_start_1f2
    const-string/jumbo v1, "system"

    invoke-interface {v10, v5, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1f9
    .catch Ljava/lang/NumberFormatException; {:try_start_1f2 .. :try_end_1f9} :catch_4bb

    if-eqz v1, :cond_200

    .line 4306
    :try_start_1fb
    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11
    :try_end_1ff
    .catch Ljava/lang/NumberFormatException; {:try_start_1fb .. :try_end_1ff} :catch_199

    goto :goto_1c4

    :cond_200
    const/16 v59, 0x1

    goto :goto_1c6

    .line 4315
    :goto_203
    :try_start_203
    const-string v1, "ft"
    :try_end_205
    .catch Ljava/lang/NumberFormatException; {:try_start_203 .. :try_end_205} :catch_4bb

    move-object/from16 v52, v13

    move-object v11, v14

    const-wide/16 v13, 0x0

    :try_start_20a
    invoke-interface {v10, v5, v1, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_20e
    .catch Ljava/lang/NumberFormatException; {:try_start_20a .. :try_end_20e} :catch_4ad

    cmp-long v19, v1, v13

    if-nez v19, :cond_219

    .line 4317
    :try_start_212
    const-string/jumbo v1, "ts"

    invoke-interface {v10, v5, v1, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_219
    .catch Ljava/lang/NumberFormatException; {:try_start_212 .. :try_end_219} :catch_21c

    :cond_219
    move-object/from16 v19, v11

    goto :goto_235

    :catch_21c
    move-object v1, v5

    move-object/from16 v19, v11

    move-wide v8, v13

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v2, v24

    move/from16 v6, v35

    move-object v11, v3

    move-object v5, v4

    move-object v14, v7

    move-wide/from16 v20, v8

    move/from16 v7, v38

    move-object/from16 v13, v54

    goto/16 :goto_907

    .line 4319
    :goto_235
    :try_start_235
    const-string v11, "it"

    invoke-interface {v10, v5, v11, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v62
    :try_end_23b
    .catch Ljava/lang/NumberFormatException; {:try_start_235 .. :try_end_23b} :catch_493

    .line 4320
    :try_start_23b
    const-string/jumbo v11, "ut"

    move-wide/from16 v64, v1

    invoke-interface {v10, v5, v11, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_244
    .catch Ljava/lang/NumberFormatException; {:try_start_23b .. :try_end_244} :catch_483

    if-eqz v25, :cond_260

    .line 4325
    :try_start_246
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_262

    :catch_24b
    :goto_24b
    move-object v11, v3

    move-object v1, v5

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v2, v24

    move/from16 v6, v35

    move-wide/from16 v8, v62

    move-object v5, v4

    :goto_25a
    move-wide/from16 v20, v13

    move-object/from16 v13, v54

    goto/16 :goto_16c

    :cond_260
    move-object/from16 v2, v25

    :goto_262
    if-nez v4, :cond_284

    .line 4328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4330
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    .line 4328
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_27d
    move-object/from16 v2, p0

    move-object/from16 v1, v21

    :goto_281
    const/4 v9, 0x5

    goto/16 :goto_376

    :cond_284
    if-nez v6, :cond_2a0

    .line 4332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4334
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    .line 4332
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_29f
    .catch Ljava/lang/NumberFormatException; {:try_start_246 .. :try_end_29f} :catch_24b

    goto :goto_27d

    :cond_2a0
    if-gtz v35, :cond_3a9

    if-eqz v32, :cond_34b

    if-lez v32, :cond_30b

    .line 4358
    :try_start_2a6
    new-instance v55, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v56

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v57, v2

    move-object/from16 v58, v11

    invoke-direct/range {v55 .. v61}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    move-object/from16 v2, v55

    .line 4360
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4361
    invoke-virtual {v2, v12}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4362
    invoke-virtual {v2, v7}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    move-object/from16 v11, v36

    .line 4363
    invoke-virtual {v2, v11}, Lcom/android/server/pm/PackageSetting;->setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4364
    invoke-virtual {v2, v8, v9}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    move/from16 v6, v32

    .line 4365
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    move-wide/from16 v8, v64

    .line 4366
    invoke-virtual {v2, v8, v9}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4367
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0
    :try_end_2e0
    .catch Ljava/lang/NumberFormatException; {:try_start_2a6 .. :try_end_2e0} :catch_307

    move-object/from16 v2, p0

    .line 4368
    :try_start_2e2
    iget-object v1, v2, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e7
    .catch Ljava/lang/NumberFormatException; {:try_start_2e2 .. :try_end_2e7} :catch_2f6

    move-object v5, v0

    move-object v11, v3

    move-object/from16 v16, v4

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move-wide/from16 v20, v13

    :goto_2f3
    move-object v14, v7

    goto/16 :goto_42e

    :catch_2f6
    move-object v1, v0

    move-object v11, v3

    move-object v5, v4

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v2, v24

    move/from16 v6, v35

    move-wide/from16 v8, v62

    goto/16 :goto_25a

    :catch_307
    move-object/from16 v2, p0

    goto/16 :goto_24b

    :cond_30b
    move-object/from16 v2, p0

    move/from16 v6, v32

    .line 4374
    :try_start_30f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_314
    .catch Ljava/lang/NumberFormatException; {:try_start_30f .. :try_end_314} :catch_24b

    move-object/from16 v1, v21

    :try_start_316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has bad sharedUserAppId "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4377
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x5

    .line 4374
    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_336
    .catch Ljava/lang/NumberFormatException; {:try_start_316 .. :try_end_336} :catch_338

    goto/16 :goto_281

    :catch_338
    move-object v10, v1

    move-object v11, v3

    move-object v1, v5

    move-wide/from16 v20, v13

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    move/from16 v2, v24

    move/from16 v6, v35

    :goto_345
    move-object/from16 v13, v54

    move-wide/from16 v8, v62

    goto/16 :goto_16b

    :cond_34b
    move-object/from16 v2, p0

    move-object/from16 v1, v21

    .line 4380
    :try_start_34f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_35a
    .catch Ljava/lang/NumberFormatException; {:try_start_34f .. :try_end_35a} :catch_39a

    move-object/from16 v6, v54

    :try_start_35c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_35f
    .catch Ljava/lang/NumberFormatException; {:try_start_35c .. :try_end_35f} :catch_397

    move/from16 v8, v35

    :try_start_361
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4382
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x5

    .line 4380
    invoke-static {v9, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_376
    .catch Ljava/lang/NumberFormatException; {:try_start_361 .. :try_end_376} :catch_382

    :goto_376
    move-object v10, v1

    move-object v11, v3

    move-object/from16 v16, v4

    move-wide/from16 v20, v13

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    goto/16 :goto_2f3

    :catch_382
    :goto_382
    move-object v10, v1

    move-object v11, v3

    move-object v1, v5

    move-wide/from16 v20, v13

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    move/from16 v2, v24

    move-object v5, v4

    move-object v13, v6

    move-object v14, v7

    move v6, v8

    :goto_391
    move/from16 v7, v38

    move-wide/from16 v8, v62

    goto/16 :goto_907

    :catch_397
    move/from16 v8, v35

    goto :goto_382

    :catch_39a
    move/from16 v8, v35

    move-object v10, v1

    move-object v11, v3

    move-object v1, v5

    move v6, v8

    move-wide/from16 v20, v13

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    move/from16 v2, v24

    goto :goto_345

    :cond_3a9
    move-object/from16 v57, v2

    move-object/from16 v14, v21

    move-object/from16 v11, v36

    move-object/from16 v13, v54

    const/16 v17, 0x5

    move-object/from16 v2, p0

    move-wide/from16 v54, v0

    .line 4337
    :try_start_3b7
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1
    :try_end_3bb
    .catch Ljava/lang/NumberFormatException; {:try_start_3b7 .. :try_end_3bb} :catch_481

    move-object v0, v3

    :try_start_3bc
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3c1
    .catch Ljava/lang/NumberFormatException; {:try_start_3bc .. :try_end_3c1} :catch_473

    move-wide/from16 v66, v8

    const/4 v9, 0x0

    move-object/from16 v16, v4

    move-object v10, v14

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    move/from16 v8, v27

    move/from16 v4, v35

    move-wide/from16 v73, v54

    move/from16 v5, v59

    move/from16 v6, v60

    move-wide/from16 v71, v64

    move-wide/from16 v69, v66

    const-wide/16 v20, 0x0

    move-object v14, v7

    move-object v15, v11

    move-object/from16 v7, v61

    move-object v11, v0

    move-object v0, v2

    move-object/from16 v2, v57

    :try_start_3e3
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IIILjava/util/UUID;ZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v5
    :try_end_3e7
    .catch Ljava/lang/NumberFormatException; {:try_start_3e3 .. :try_end_3e7} :catch_467

    if-nez v5, :cond_413

    .line 4344
    :try_start_3e9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure adding appId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " while parsing settings at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4346
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 4344
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_42e

    :catch_40b
    move v6, v4

    move-object v1, v5

    move-object/from16 v5, v16

    move/from16 v2, v24

    goto/16 :goto_391

    .line 4348
    :cond_413
    invoke-virtual {v5, v11}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4349
    invoke-virtual {v5, v12}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4350
    invoke-virtual {v5, v14}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4351
    invoke-virtual {v5, v15}, Lcom/android/server/pm/PackageSetting;->setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-wide/from16 v1, v69

    .line 4352
    invoke-virtual {v5, v1, v2}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    move-wide/from16 v8, v71

    .line 4353
    invoke-virtual {v5, v8, v9}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    move-wide/from16 v1, v73

    .line 4354
    invoke-virtual {v5, v1, v2}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;
    :try_end_42e
    .catch Ljava/lang/NumberFormatException; {:try_start_3e9 .. :try_end_42e} :catch_40b

    :goto_42e
    move-object v1, v5

    move-object v3, v11

    move/from16 v11, v24

    move/from16 v0, v26

    move/from16 v26, v38

    move-object v7, v14

    move/from16 v6, v18

    move/from16 v8, v28

    move/from16 v9, v29

    move/from16 v13, v30

    move/from16 v14, v31

    move-wide/from16 v4, v33

    move-object/from16 v25, v37

    move-object/from16 v27, v39

    move-object/from16 v28, v40

    move/from16 v29, v41

    move/from16 v30, v42

    move-object/from16 v23, v43

    move-object/from16 v24, v44

    move/from16 v31, v45

    move-object/from16 v15, v47

    move/from16 v2, v48

    move/from16 v75, v49

    move/from16 v76, v50

    move/from16 v77, v51

    move-object/from16 v32, v52

    move-object/from16 v33, v53

    move-object/from16 v18, v10

    move-object/from16 v10, v46

    goto/16 :goto_965

    :catch_467
    :goto_467
    move v6, v4

    move-object/from16 v5, v16

    move/from16 v2, v24

    move/from16 v7, v38

    move-wide/from16 v8, v62

    :goto_470
    const/4 v1, 0x0

    goto/16 :goto_907

    :catch_473
    move-object v11, v0

    :goto_474
    move-object/from16 v16, v4

    move-object v10, v14

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    move/from16 v4, v35

    const-wide/16 v20, 0x0

    :goto_47f
    move-object v14, v7

    goto :goto_467

    :catch_481
    move-object v11, v3

    goto :goto_474

    :catch_483
    move-object v11, v3

    move-object/from16 v16, v4

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    move-wide/from16 v20, v13

    move-object/from16 v13, v54

    goto :goto_47f

    :catch_493
    move-object v11, v3

    move-object/from16 v16, v4

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    :goto_49e
    move-wide/from16 v20, v13

    move-object/from16 v13, v54

    :goto_4a2
    move-object v14, v7

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    goto :goto_470

    :catch_4ad
    move-object/from16 v16, v4

    move-object/from16 v19, v11

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    move-object v11, v3

    goto :goto_49e

    :catch_4bb
    move-object v11, v3

    move-object/from16 v16, v4

    move-object/from16 v52, v13

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    move-object/from16 v13, v54

    const-wide/16 v20, 0x0

    goto :goto_4a2

    :catch_4cf
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    const/4 v1, 0x0

    :goto_4eb
    const/16 v52, 0x0

    goto/16 :goto_907

    :catch_4ef
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    const/4 v1, 0x0

    :goto_50b
    const/16 v51, 0x0

    goto :goto_4eb

    :catch_50e
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    const/4 v1, 0x0

    :goto_52a
    const/16 v50, 0x0

    goto :goto_50b

    :catch_52d
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    const/4 v1, 0x0

    :goto_549
    const/16 v49, 0x0

    goto :goto_52a

    :catch_54c
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    const/4 v1, 0x0

    :goto_568
    const/16 v48, 0x0

    goto :goto_549

    :catch_56b
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    :goto_57d
    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    const/4 v1, 0x0

    :goto_587
    const/16 v47, 0x0

    goto :goto_568

    :catch_58a
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    :goto_598
    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move/from16 v18, v2

    goto :goto_57d

    :catch_59f
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const/4 v2, -0x1

    goto :goto_598

    :catch_5af
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const/4 v2, -0x1

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move/from16 v18, v2

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    const/4 v1, 0x0

    :goto_5ce
    const/16 v46, 0x0

    goto :goto_587

    :catch_5d1
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const/4 v2, -0x1

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move/from16 v18, v2

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    const/4 v1, 0x0

    :goto_5f0
    const/16 v45, 0x0

    goto :goto_5ce

    :catch_5f3
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const/4 v2, -0x1

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move/from16 v18, v2

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    const/4 v1, 0x0

    :goto_612
    const/16 v44, 0x0

    goto :goto_5f0

    :catch_615
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const/4 v2, -0x1

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move/from16 v18, v2

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    const/4 v1, 0x0

    :goto_634
    const/16 v43, 0x0

    goto :goto_612

    :catch_637
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const/4 v2, -0x1

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move/from16 v18, v2

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    const/4 v1, 0x0

    :goto_656
    const/16 v42, 0x0

    goto :goto_634

    :catch_659
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const/4 v2, -0x1

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move/from16 v18, v2

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    const/4 v1, 0x0

    :goto_678
    const/16 v41, 0x0

    goto :goto_656

    :catch_67b
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const/4 v2, -0x1

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move/from16 v18, v2

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    const/4 v1, 0x0

    :goto_69a
    const/16 v40, 0x0

    goto :goto_678

    :catch_69d
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const/4 v2, -0x1

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move/from16 v18, v2

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    move/from16 v7, v38

    :goto_6bb
    const/4 v1, 0x0

    :goto_6bc
    const/16 v39, 0x0

    goto :goto_69a

    :catch_6bf
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    :goto_6cd
    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move v7, v2

    move/from16 v18, v7

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    goto :goto_6bb

    :catch_6dc
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const/4 v2, -0x1

    goto :goto_6cd

    :catch_6ec
    move-object/from16 v16, v4

    move-object/from16 v53, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const/4 v2, -0x1

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    move v7, v2

    move/from16 v18, v7

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    const/4 v1, 0x0

    const/16 v37, 0x0

    goto :goto_6bc

    :catch_70d
    move-object v11, v3

    move-object/from16 v16, v4

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const/4 v2, -0x1

    const-wide/16 v20, 0x0

    move-object v14, v7

    move v7, v2

    move/from16 v18, v7

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    const/4 v1, 0x0

    :goto_729
    const/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    goto/16 :goto_907

    :catch_74b
    move-object v11, v3

    move-object/from16 v16, v4

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    const/4 v2, -0x1

    const-wide/16 v20, 0x0

    move-object v14, v7

    :goto_75c
    move v7, v2

    move/from16 v18, v7

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move/from16 v2, v24

    :goto_766
    const/4 v1, 0x0

    const/16 v26, 0x0

    goto :goto_729

    :catch_76a
    move-object v11, v3

    move-object/from16 v16, v4

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move/from16 v4, v35

    :goto_777
    move-wide/from16 v20, v1

    move-object v14, v7

    const/4 v2, -0x1

    goto :goto_75c

    :catch_77c
    move-object v11, v3

    move-object/from16 v16, v4

    move v4, v8

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    goto :goto_777

    :catch_789
    move-object/from16 v16, v4

    move v4, v8

    move/from16 v24, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v10, v21

    move-object/from16 v68, v23

    move-wide/from16 v20, v1

    move-object v11, v3

    move-object v14, v7

    const/4 v2, -0x1

    :goto_79b
    move v7, v2

    move/from16 v18, v7

    move v6, v4

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move-wide/from16 v33, v8

    move/from16 v2, v24

    :goto_7a7
    move-object/from16 v12, v26

    goto :goto_766

    :catch_7aa
    move-object v10, v1

    move-object/from16 v16, v4

    move v4, v8

    move/from16 v24, v11

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    const/4 v2, -0x1

    const-wide/16 v20, 0x0

    move-object v11, v3

    move-object v14, v7

    goto :goto_79b

    :catch_7bc
    move-object v10, v1

    move-object v11, v3

    move-object/from16 v16, v4

    move v4, v8

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    const/4 v2, -0x1

    :goto_7c8
    const-wide/16 v20, 0x0

    move-object v14, v7

    move v7, v2

    move/from16 v18, v7

    move v6, v4

    move v2, v12

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move-wide/from16 v33, v8

    goto :goto_7a7

    :catch_7d7
    move-object v10, v1

    move-object v11, v3

    move-object/from16 v16, v4

    move v4, v8

    move/from16 v31, v12

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    const/4 v2, -0x1

    const/4 v12, 0x0

    goto :goto_7c8

    :catch_7e7
    move-object v10, v1

    move-object v11, v3

    move-object/from16 v16, v4

    move v4, v8

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    const/4 v2, -0x1

    const/4 v12, 0x0

    const-wide/16 v20, 0x0

    move-object v14, v7

    move v7, v2

    move/from16 v18, v7

    move v6, v4

    move v2, v12

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move-wide/from16 v33, v8

    move-object/from16 v12, v26

    const/4 v1, 0x0

    const/16 v26, 0x0

    :goto_807
    const/16 v31, 0x0

    goto/16 :goto_729

    :catch_80b
    move-object v10, v1

    move-object v11, v3

    move-object/from16 v16, v4

    move v4, v8

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    const/4 v2, -0x1

    const/4 v12, 0x0

    const-wide/16 v20, 0x0

    move-object v14, v7

    move v7, v2

    move/from16 v18, v7

    move v6, v4

    move v2, v12

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move-wide/from16 v33, v8

    move-object/from16 v12, v26

    const/4 v1, 0x0

    const/16 v26, 0x0

    :goto_82b
    const/16 v30, 0x0

    goto :goto_807

    :catch_82e
    move-object v10, v1

    move-object v11, v3

    move-object/from16 v16, v4

    move v4, v8

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    const/4 v2, -0x1

    const/4 v12, 0x0

    const-wide/16 v20, 0x0

    move-object v14, v7

    move v7, v2

    move/from16 v18, v7

    move v6, v4

    move v2, v12

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move-wide/from16 v33, v8

    move-object/from16 v12, v26

    const/4 v1, 0x0

    const/16 v26, 0x0

    :goto_84e
    const/16 v29, 0x0

    goto :goto_82b

    :catch_851
    move-object v10, v1

    move-object v11, v3

    move-object/from16 v16, v4

    move v4, v8

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    const/4 v2, -0x1

    const/4 v12, 0x0

    const-wide/16 v20, 0x0

    move-object v14, v7

    move v7, v2

    move/from16 v18, v7

    move v6, v4

    move v2, v12

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move-wide/from16 v33, v8

    move-object/from16 v12, v26

    const/4 v1, 0x0

    :goto_86f
    const/16 v26, 0x0

    const/16 v28, 0x0

    goto :goto_84e

    :catch_874
    move-object v10, v1

    move-object v11, v3

    move-object/from16 v16, v4

    move v4, v8

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    const/4 v2, -0x1

    const/4 v12, 0x0

    const-wide/16 v20, 0x0

    move v7, v2

    move/from16 v18, v7

    move v6, v4

    move v2, v12

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move-wide/from16 v33, v8

    move-object/from16 v12, v26

    const/4 v1, 0x0

    :goto_891
    const/4 v14, 0x0

    goto :goto_86f

    :catch_893
    move-object v10, v1

    move-object v11, v3

    move-object/from16 v16, v4

    move v4, v8

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    const/4 v2, -0x1

    const/4 v12, 0x0

    const-wide/16 v20, 0x0

    move v7, v2

    move/from16 v18, v7

    move v6, v4

    move v2, v12

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move-wide/from16 v33, v8

    const/4 v1, 0x0

    :goto_8ae
    const/4 v12, 0x0

    goto :goto_891

    :catch_8b0
    move-object v10, v1

    move-object/from16 v16, v4

    move v4, v8

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move-object/from16 v68, v23

    :goto_8ba
    const/4 v2, -0x1

    const/4 v12, 0x0

    const-wide/16 v20, 0x0

    move v7, v2

    move/from16 v18, v7

    move v6, v4

    move v2, v12

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move-wide/from16 v33, v8

    const/4 v1, 0x0

    :goto_8ca
    const/4 v11, 0x0

    goto :goto_8ae

    :catch_8cc
    move-object v10, v1

    move-object/from16 v68, v3

    move-object/from16 v16, v4

    move v4, v8

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    goto :goto_8ba

    :catch_8d7
    move-object v10, v1

    move-object/from16 v68, v3

    move-object/from16 v16, v4

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    const/4 v2, -0x1

    const/4 v12, 0x0

    const-wide/16 v20, 0x0

    move v7, v2

    move/from16 v18, v7

    move v2, v12

    move-object/from16 v5, v16

    move-wide/from16 v8, v20

    move-wide/from16 v33, v8

    const/4 v1, 0x0

    :goto_8ef
    const/4 v6, 0x0

    goto :goto_8ca

    :catch_8f1
    move-object v10, v1

    move-object/from16 v68, v3

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    const/4 v2, -0x1

    const/4 v12, 0x0

    const-wide/16 v20, 0x0

    move v7, v2

    move/from16 v18, v7

    move v2, v12

    move-wide/from16 v8, v20

    move-wide/from16 v33, v8

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_8ef

    .line 4385
    :goto_907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4387
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x5

    .line 4385
    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v16, v5

    move-wide/from16 v62, v8

    move-object v3, v11

    move/from16 v0, v26

    move v11, v2

    move/from16 v26, v7

    move/from16 v6, v18

    move/from16 v8, v28

    move/from16 v9, v29

    move/from16 v13, v30

    move-wide/from16 v4, v33

    move-object/from16 v25, v37

    move-object/from16 v27, v39

    move-object/from16 v28, v40

    move/from16 v29, v41

    move/from16 v30, v42

    move-object/from16 v23, v43

    move-object/from16 v24, v44

    move-object/from16 v15, v47

    move/from16 v75, v49

    move/from16 v76, v50

    move/from16 v77, v51

    move-object/from16 v32, v52

    move-object/from16 v33, v53

    move-object/from16 v18, v10

    move-object v7, v14

    move/from16 v14, v31

    move/from16 v31, v45

    move-object/from16 v10, v46

    move/from16 v2, v48

    :goto_965
    if-eqz v1, :cond_c29

    move/from16 v34, v0

    .line 4390
    invoke-static/range {v23 .. v31}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    move/from16 v23, v2

    .line 4395
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageSetting;->setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4396
    invoke-virtual {v2, v10}, Lcom/android/server/pm/PackageSetting;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4397
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->setCategoryOverride(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4398
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4399
    invoke-virtual {v2, v12}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4400
    invoke-virtual {v2, v7}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4401
    invoke-virtual {v2, v8}, Lcom/android/server/pm/PackageSetting;->setUpdateAvailable(Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4402
    invoke-virtual {v2, v9}, Lcom/android/server/pm/PackageSetting;->setForceQueryableOverride(Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4403
    invoke-virtual {v2, v13}, Lcom/android/server/pm/PackageSetting;->setPendingRestore(Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4404
    invoke-virtual {v2, v14}, Lcom/android/server/pm/PackageSetting;->setDebuggable(Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4405
    invoke-virtual {v2, v11}, Lcom/android/server/pm/PackageSetting;->setLoadingProgress(F)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4406
    invoke-virtual {v2, v4, v5}, Lcom/android/server/pm/PackageSetting;->setLoadingCompletedTime(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4407
    invoke-virtual {v2, v15}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    move/from16 v3, v23

    .line 4408
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    move/from16 v3, v34

    .line 4409
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    move/from16 v3, v75

    .line 4410
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setBaseRevisionCode(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    move-object/from16 v3, v33

    .line 4411
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    move/from16 v3, v77

    .line 4412
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setScannedAsStoppedSystemApp(Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    move/from16 v3, v76

    .line 4413
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setPageSizeAppCompatFlags(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    move-object/from16 v3, v32

    .line 4414
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setDeveloperVerificationStatusInternal(Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;)V

    .line 4416
    const-string v2, "enabled"

    move-object/from16 v10, p1

    const/4 v3, 0x0

    invoke-interface {v10, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4417
    const-string/jumbo v3, "settings"

    if-eqz v2, :cond_a3c

    .line 4419
    :try_start_9da
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_9de
    .catch Ljava/lang/NumberFormatException; {:try_start_9da .. :try_end_9de} :catch_9e9

    const/4 v11, 0x0

    :try_start_9df
    invoke-virtual {v1, v4, v11, v3}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_9e2
    .catch Ljava/lang/NumberFormatException; {:try_start_9df .. :try_end_9e2} :catch_9e6

    const/4 v4, 0x1

    :goto_9e3
    move-object/from16 v2, p0

    goto :goto_a42

    :catch_9e6
    :goto_9e6
    move-object/from16 v4, v19

    goto :goto_9eb

    :catch_9e9
    const/4 v11, 0x0

    goto :goto_9e6

    .line 4422
    :goto_9eb
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9f6

    const/4 v4, 0x1

    .line 4423
    invoke-virtual {v1, v4, v11, v3}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_9e3

    :cond_9f6
    const/4 v4, 0x1

    .line 4424
    const-string v5, "false"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a04

    const/4 v2, 0x2

    .line 4425
    invoke-virtual {v1, v2, v11, v3}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_9e3

    .line 4426
    :cond_a04
    const-string v5, "default"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a10

    .line 4427
    invoke-virtual {v1, v11, v11, v3}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_9e3

    .line 4429
    :cond_a10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v18

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has bad enabled value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4432
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    .line 4429
    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_9e3

    :cond_a3c
    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 4436
    invoke-virtual {v1, v11, v11, v3}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_9e3

    .line 4439
    :goto_a42
    invoke-virtual {v2, v0}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 4441
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 4443
    :goto_a49
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    if-eq v3, v4, :cond_c17

    const/4 v5, 0x3

    if-ne v3, v5, :cond_a58

    .line 4444
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_c17

    :cond_a58
    if-eq v3, v5, :cond_c0f

    const/4 v5, 0x4

    if-ne v3, v5, :cond_a5e

    goto :goto_a49

    .line 4449
    :cond_a5e
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4451
    const-string v5, "disabled-components"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a79

    .line 4452
    invoke-virtual {v2, v1, v10, v11}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/modules/utils/TypedXmlPullParser;I)V

    :goto_a6d
    move-object/from16 v5, p2

    :goto_a6f
    move-object/from16 v12, p3

    move-object/from16 v6, p4

    :goto_a73
    move-object/from16 v7, v68

    :goto_a75
    const/4 v8, 0x5

    const/4 v9, 0x0

    goto/16 :goto_c0b

    .line 4453
    :cond_a79
    const-string v5, "enabled-components"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a85

    .line 4454
    invoke-virtual {v2, v1, v10, v11}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_a6d

    .line 4455
    :cond_a85
    const-string/jumbo v5, "sigs"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a98

    .line 4456
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v3

    move-object/from16 v5, p2

    invoke-virtual {v3, v10, v5}, Lcom/android/server/pm/PackageSignatures;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_a6f

    :cond_a98
    move-object/from16 v5, p2

    .line 4457
    const-string/jumbo v6, "perms"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_acb

    .line 4459
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v3

    if-eqz v3, :cond_aba

    .line 4461
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result v3

    .line 4460
    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    if-eqz v3, :cond_ab8

    .line 4463
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v3

    goto :goto_abe

    :cond_ab8
    const/4 v3, 0x0

    goto :goto_abe

    .line 4465
    :cond_aba
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v3

    :goto_abe
    move-object/from16 v6, p4

    if-eqz v3, :cond_ac8

    .line 4468
    invoke-virtual {v2, v10, v3, v6}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    .line 4469
    invoke-virtual {v1, v4}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;

    :cond_ac8
    move-object/from16 v12, p3

    goto :goto_a73

    :cond_acb
    move-object/from16 v6, p4

    .line 4471
    const-string/jumbo v7, "proper-signing-keyset"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "identifier"

    if-eqz v7, :cond_b10

    const/4 v7, 0x0

    .line 4472
    invoke-interface {v10, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 4473
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v12, p3

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_afe

    .line 4475
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v68

    goto :goto_b07

    .line 4477
    :cond_afe
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v7, v68

    invoke-virtual {v12, v3, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4479
    :goto_b07
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    goto/16 :goto_a75

    :cond_b10
    move-object/from16 v12, p3

    move-object/from16 v7, v68

    .line 4480
    const-string/jumbo v9, "signing-keyset"

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b1f

    goto/16 :goto_a75

    .line 4482
    :cond_b1f
    const-string/jumbo v9, "upgrade-keyset"

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b37

    const/4 v9, 0x0

    .line 4483
    invoke-interface {v10, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    .line 4484
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    :cond_b34
    :goto_b34
    const/4 v8, 0x5

    goto/16 :goto_c0b

    :cond_b37
    const/4 v9, 0x0

    .line 4485
    const-string v13, "defined-keyset"

    invoke-virtual {v3, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b76

    .line 4486
    invoke-interface {v10, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    .line 4487
    const-string v3, "alias"

    invoke-interface {v10, v9, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4488
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_b67

    .line 4490
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v15, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b6e

    .line 4492
    :cond_b67
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4494
    :goto_b6e
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v8

    invoke-virtual {v8, v13, v14, v3}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    goto :goto_b34

    .line 4495
    :cond_b76
    const-string v8, "install-initiator-sigs"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b92

    .line 4496
    new-instance v3, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v3}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    .line 4497
    invoke-virtual {v3, v10, v5}, Lcom/android/server/pm/PackageSignatures;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)V

    .line 4499
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v8

    .line 4500
    invoke-virtual {v8, v3}, Lcom/android/server/pm/InstallSource;->setInitiatingPackageSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v3

    .line 4498
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;

    goto :goto_b34

    .line 4501
    :cond_b92
    const-string v8, "domain-verification"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ba9

    .line 4502
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, v10}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 4503
    iget-object v8, v2, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->addLegacySetting(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V

    goto :goto_b34

    .line 4508
    :cond_ba9
    const-string/jumbo v8, "mime-group"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc5

    .line 4509
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->readMimeGroupLPw(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_b34

    .line 4511
    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v1, v8, v3}, Lcom/android/server/pm/PackageSetting;->addMimeTypes(Ljava/lang/String;Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;

    goto/16 :goto_b34

    .line 4514
    :cond_bc5
    const-string/jumbo v8, "uses-static-lib"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bd3

    .line 4515
    invoke-virtual {v2, v10, v1}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto/16 :goto_b34

    .line 4516
    :cond_bd3
    const-string/jumbo v8, "uses-sdk-lib"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_be1

    .line 4517
    invoke-virtual {v2, v10, v1}, Lcom/android/server/pm/Settings;->readUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto/16 :goto_b34

    .line 4518
    :cond_be1
    const-string/jumbo v8, "split-version"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bef

    .line 4519
    invoke-virtual {v2, v10, v1}, Lcom/android/server/pm/Settings;->readSplitVersionsLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto/16 :goto_b34

    .line 4521
    :cond_bef
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <package>: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4522
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x5

    .line 4521
    invoke-static {v8, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4523
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_c0b
    move-object/from16 v68, v7

    goto/16 :goto_a49

    :cond_c0f
    move-object/from16 v5, p2

    move-object/from16 v12, p3

    move-object/from16 v6, p4

    goto/16 :goto_a49

    :cond_c17
    cmp-long v0, v62, v20

    if-eqz v0, :cond_c2e

    .line 4527
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c2e

    :cond_c29
    move-object/from16 v10, p1

    .line 4530
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_c2e
    :goto_c2e
    return-void
.end method

.method public readPackageRestrictionsLPr(ILandroid/util/ArrayMap;)V
    .registers 58

    move-object/from16 v1, p0

    move/from16 v3, p1

    .line 1861
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v2

    const/4 v4, 0x0

    .line 1864
    :try_start_9
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_3e4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_c} :catch_3e4
    .catchall {:try_start_9 .. :try_end_c} :catchall_3df

    .line 1865
    :try_start_c
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v28
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_3d1

    if-nez v28, :cond_91

    .line 1871
    :try_start_12
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 1872
    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v6

    move-wide v8, v6

    .line 1873
    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageSetting;->getDeDataInode(I)J

    move-result-wide v6
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_82

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v10, v2

    move-object v2, v4

    move-wide/from16 v53, v8

    move-object v9, v5

    move-wide/from16 v4, v53

    const/4 v8, 0x0

    move-object v11, v9

    const/4 v9, 0x1

    move-object v12, v10

    const/4 v10, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move-object v15, v13

    const/4 v13, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v20, v18

    const/16 v18, 0x0

    move-object/from16 v21, v19

    const/16 v19, 0x0

    move-object/from16 v22, v20

    const/16 v20, 0x0

    move-object/from16 v23, v21

    const/16 v21, 0x0

    move-object/from16 v24, v22

    const/16 v22, 0x0

    move-object/from16 v25, v23

    const/16 v23, 0x0

    move-object/from16 v29, v24

    move-object/from16 v30, v25

    const-wide/16 v24, 0x0

    move-object/from16 v31, v29

    .line 1872
    :try_start_75
    invoke-virtual/range {v2 .. v27}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    move-object/from16 v5, v30

    move-object/from16 v2, v31

    goto :goto_1c

    :catchall_7d
    move-exception v0

    :goto_7e
    move-object/from16 v4, v28

    goto/16 :goto_3d8

    :catchall_82
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v30, v5

    goto :goto_7e

    :cond_88
    move-object/from16 v31, v2

    move-object/from16 v30, v5

    .line 1894
    monitor-exit v30
    :try_end_8d
    .catchall {:try_start_75 .. :try_end_8d} :catchall_7d

    .line 2097
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :cond_91
    move-object/from16 v31, v2

    move-object/from16 v30, v5

    .line 1896
    :try_start_95
    monitor-exit v30
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_7d

    .line 1898
    :try_start_96
    invoke-static/range {v28 .. v28}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 1901
    :goto_9a
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_a5

    if-eq v2, v6, :cond_a5

    goto :goto_9a

    :cond_a5
    if-eq v2, v5, :cond_c5

    .line 1907
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No start tag found in package restrictions file\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    const-string v0, "No start tag found in package manager package restrictions file"

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_b4} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_96 .. :try_end_b4} :catch_be
    .catchall {:try_start_96 .. :try_end_b4} :catchall_b8

    .line 2097
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catchall_b8
    move-exception v0

    :goto_b9
    move-object v1, v0

    move-object/from16 v14, v31

    goto/16 :goto_3f9

    :catch_be
    move-exception v0

    move-object/from16 v4, v28

    :goto_c1
    move-object/from16 v14, v31

    goto/16 :goto_3eb

    .line 1913
    :cond_c5
    :try_start_c5
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 1915
    :cond_c9
    :goto_c9
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    if-eq v5, v6, :cond_3ce

    const/4 v7, 0x3

    if-ne v5, v7, :cond_d8

    .line 1917
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_3ce

    :cond_d8
    if-eq v5, v7, :cond_c9

    const/4 v8, 0x4

    if-ne v5, v8, :cond_de

    goto :goto_c9

    .line 1923
    :cond_de
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1924
    const-string/jumbo v9, "pkg"

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_365

    .line 1925
    const-string/jumbo v5, "name"

    invoke-interface {v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1926
    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v9, v5}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    if-nez v9, :cond_116

    .line 1928
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No package known for package restrictions "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c9

    .line 1934
    :cond_116
    const-string v10, "ceDataInode"

    const-wide/16 v11, 0x0

    .line 1935
    invoke-interface {v0, v4, v10, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v13

    .line 1936
    const-string v10, "deDataInode"

    .line 1937
    invoke-interface {v0, v4, v10, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v15

    .line 1938
    const-string v10, "inst"

    .line 1939
    invoke-interface {v0, v4, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 1940
    const-string/jumbo v8, "stopped"

    const/4 v7, 0x0

    .line 1941
    invoke-interface {v0, v4, v8, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 1942
    const-string/jumbo v6, "nl"

    .line 1943
    invoke-interface {v0, v4, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 1947
    const-string v11, "hidden"

    invoke-interface {v0, v4, v11, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_147

    .line 1949
    const-string v11, "blocked"

    invoke-interface {v0, v4, v11, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    :cond_147
    move v12, v11

    .line 1952
    const-string v11, "distraction_flags"

    invoke-interface {v0, v4, v11, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    move/from16 v22, v2

    .line 1954
    const-string/jumbo v2, "suspended"

    invoke-interface {v0, v4, v2, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1956
    const-string/jumbo v7, "suspending-package"

    invoke-interface {v0, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move/from16 v24, v2

    .line 1958
    const-string/jumbo v2, "suspend_dialog_message"

    invoke-interface {v0, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v24, :cond_16d

    if-nez v7, :cond_16d

    .line 1961
    const-string v7, "android"

    :cond_16d
    move/from16 v25, v6

    .line 1964
    const-string v6, "blockUninstall"

    move/from16 v26, v8

    const/4 v8, 0x0

    .line 1965
    invoke-interface {v0, v4, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    move/from16 v27, v6

    .line 1966
    const-string v6, "instant-app"

    .line 1967
    invoke-interface {v0, v4, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    move/from16 v29, v6

    .line 1968
    const-string/jumbo v6, "virtual-preload"

    .line 1969
    invoke-interface {v0, v4, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    move/from16 v30, v6

    .line 1970
    const-string v6, "enabled"

    invoke-interface {v0, v4, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 1972
    const-string v8, "enabledCaller"

    invoke-interface {v0, v4, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v32, v6

    .line 1974
    const-string v6, "harmful-app-warning"

    .line 1975
    invoke-interface {v0, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v33, v6

    .line 1976
    const-string v6, "domainVerificationStatus"

    move-object/from16 v34, v8

    const/4 v8, 0x0

    invoke-interface {v0, v4, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    move/from16 v35, v6

    .line 1979
    const-string v6, "install-reason"

    invoke-interface {v0, v4, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    move/from16 v36, v6

    .line 1981
    const-string/jumbo v6, "uninstall-reason"

    invoke-interface {v0, v4, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 1984
    const-string/jumbo v8, "splash-screen-theme"

    invoke-interface {v0, v4, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v37, v6

    .line 1986
    const-string v6, "first-install-time"

    move-object/from16 v39, v8

    move-object/from16 v38, v9

    const-wide/16 v8, 0x0

    invoke-interface {v0, v4, v6, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v40

    .line 1988
    const-string/jumbo v6, "min-aspect-ratio"

    const/4 v8, 0x0

    invoke-interface {v0, v4, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 1999
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v8

    move-object/from16 v44, v4

    move-object/from16 v45, v44

    move-object/from16 v46, v45

    move-object/from16 v48, v46

    move/from16 v43, v6

    move/from16 v47, v27

    move-object/from16 v6, v48

    move-object/from16 v27, v6

    .line 2001
    :goto_1ec
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v9

    move/from16 v49, v10

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2d8

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1ff

    .line 2003
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v8, :cond_2d8

    const/4 v10, 0x3

    :cond_1ff
    if-eq v9, v10, :cond_204

    const/4 v10, 0x4

    if-ne v9, v10, :cond_208

    :cond_204
    :goto_204
    move/from16 v50, v8

    goto/16 :goto_2d2

    .line 2008
    :cond_208
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_404

    :cond_213
    move/from16 v50, v8

    goto/16 :goto_2ad

    :sswitch_217
    const-string/jumbo v10, "suspended-dialog-info"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_213

    .line 2016
    invoke-static {v0}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v9

    move/from16 v50, v8

    move-object/from16 v48, v9

    goto/16 :goto_2d2

    .line 2008
    :sswitch_22a
    const-string/jumbo v10, "suspend-params"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_213

    .line 2028
    invoke-static {v3, v0}, Lcom/android/server/pm/Settings;->readSuspensionParamsLPr(ILcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/Map$Entry;

    move-result-object v9

    if-nez v9, :cond_23a

    goto :goto_204

    :cond_23a
    if-nez v44, :cond_241

    .line 2033
    new-instance v44, Landroid/util/ArrayMap;

    invoke-direct/range {v44 .. v44}, Landroid/util/ArrayMap;-><init>()V

    :cond_241
    move-object/from16 v10, v44

    .line 2035
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v44

    move/from16 v50, v8

    move-object/from16 v8, v44

    check-cast v8, Landroid/content/pm/UserPackage;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/SuspendParams;

    invoke-virtual {v10, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v44, v10

    goto/16 :goto_2d2

    :sswitch_25a
    move/from16 v50, v8

    .line 2008
    const-string/jumbo v8, "suspended-launcher-extras"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2ad

    .line 2023
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v6

    goto :goto_2d2

    :sswitch_26a
    move/from16 v50, v8

    .line 2008
    const-string/jumbo v8, "suspended-app-extras"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2ad

    .line 2019
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v4

    goto :goto_2d2

    :sswitch_27a
    move/from16 v50, v8

    .line 2008
    const-string v8, "enabled-components"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2ad

    .line 2010
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/ArraySet;

    move-result-object v8

    move-object/from16 v45, v8

    goto :goto_2d2

    :sswitch_28b
    move/from16 v50, v8

    .line 2008
    const-string v8, "disabled-components"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2ad

    .line 2013
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/ArraySet;

    move-result-object v8

    move-object/from16 v46, v8

    goto :goto_2d2

    :sswitch_29c
    move/from16 v50, v8

    .line 2008
    const-string v8, "archive-state"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2ad

    .line 2038
    invoke-static {v0}, Lcom/android/server/pm/Settings;->parseArchiveState(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v8

    move-object/from16 v27, v8

    goto :goto_2d2

    .line 2041
    :cond_2ad
    :goto_2ad
    const-string v8, "PackageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " under tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "pkg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d2
    move/from16 v10, v49

    move/from16 v8, v50

    goto/16 :goto_1ec

    :cond_2d8
    if-nez v48, :cond_2ee

    .line 2045
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2ee

    .line 2046
    new-instance v8, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v8}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 2047
    invoke-virtual {v8, v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v2

    .line 2048
    invoke-virtual {v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v9

    goto :goto_2f0

    :cond_2ee
    move-object/from16 v9, v48

    :goto_2f0
    if-eqz v24, :cond_308

    if-nez v44, :cond_308

    .line 2051
    new-instance v2, Lcom/android/server/pm/pkg/SuspendParams;

    const/4 v8, 0x0

    invoke-direct {v2, v9, v4, v6, v8}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V

    .line 2056
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 2058
    invoke-static {v3, v7}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v6

    .line 2057
    invoke-virtual {v4, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v44, v4

    :cond_308
    if-eqz v47, :cond_311

    const/4 v10, 0x1

    .line 2062
    invoke-virtual {v1, v3, v5, v10}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V

    :goto_30e
    const-wide/16 v20, 0x0

    goto :goto_313

    :cond_311
    const/4 v10, 0x1

    goto :goto_30e

    :goto_313
    cmp-long v2, v40, v20

    if-eqz v2, :cond_347

    :goto_317
    move-object/from16 v51, v5

    move-wide v4, v13

    move-wide v6, v15

    move/from16 v15, v29

    move/from16 v16, v30

    move/from16 v8, v32

    move-object/from16 v17, v34

    move/from16 v52, v35

    move/from16 v20, v36

    move/from16 v21, v37

    move-object/from16 v2, v38

    move-object/from16 v23, v39

    move-object/from16 v14, v44

    move-object/from16 v18, v45

    move-object/from16 v19, v46

    move/from16 v9, v49

    const/16 v42, 0x0

    move/from16 v30, v10

    move v13, v11

    move/from16 v29, v22

    move/from16 v11, v25

    move/from16 v10, v26

    move-object/from16 v22, v33

    move-wide/from16 v24, v40

    move/from16 v26, v43

    goto :goto_358

    .line 2071
    :cond_347
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v4, p2

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    goto :goto_317

    .line 2064
    :goto_358
    invoke-virtual/range {v2 .. v27}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    .line 2073
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object/from16 v4, v51

    move/from16 v5, v52

    invoke-interface {v2, v4, v3, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setLegacyUserState(Ljava/lang/String;II)Z

    goto :goto_3c6

    :cond_365
    move/from16 v29, v2

    move-object/from16 v42, v4

    move/from16 v30, v6

    .line 2074
    const-string/jumbo v2, "preferred-activities"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_378

    .line 2075
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_3c6

    .line 2076
    :cond_378
    const-string/jumbo v2, "persistent-preferred-activities"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_385

    .line 2077
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_3c6

    .line 2078
    :cond_385
    const-string v2, "crossProfile-intent-filters"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_391

    .line 2079
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_3c6

    .line 2080
    :cond_391
    const-string v2, "default-apps"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39d

    .line 2081
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_3c6

    .line 2082
    :cond_39d
    const-string v2, "block-uninstall-packages"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a9

    .line 2083
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_3c6

    .line 2085
    :cond_3a9
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <stopped-packages>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2085
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3c6
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_3c6} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c5 .. :try_end_3c6} :catch_be
    .catchall {:try_start_c5 .. :try_end_3c6} :catchall_b8

    :goto_3c6
    move/from16 v2, v29

    move/from16 v6, v30

    move-object/from16 v4, v42

    goto/16 :goto_c9

    :cond_3ce
    move-object/from16 v14, v31

    goto :goto_3f1

    :catchall_3d1
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v42, v4

    move-object/from16 v30, v5

    .line 1896
    :goto_3d8
    :try_start_3d8
    monitor-exit v30
    :try_end_3d9
    .catchall {:try_start_3d8 .. :try_end_3d9} :catchall_3dd

    :try_start_3d9
    throw v0
    :try_end_3da
    .catch Ljava/io/IOException; {:try_start_3d9 .. :try_end_3da} :catch_3da
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d9 .. :try_end_3da} :catch_3da
    .catchall {:try_start_3d9 .. :try_end_3da} :catchall_b8

    :catch_3da
    move-exception v0

    goto/16 :goto_c1

    :catchall_3dd
    move-exception v0

    goto :goto_3d8

    :catchall_3df
    move-exception v0

    move-object/from16 v31, v2

    goto/16 :goto_b9

    :catch_3e4
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v42, v4

    goto/16 :goto_c1

    .line 2093
    :goto_3eb
    :try_start_3eb
    invoke-virtual {v14, v4, v0}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 2095
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(ILandroid/util/ArrayMap;)V
    :try_end_3f1
    .catchall {:try_start_3eb .. :try_end_3f1} :catchall_3f7

    :goto_3f1
    if-eqz v14, :cond_3f6

    .line 2097
    invoke-virtual {v14}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    :cond_3f6
    return-void

    :catchall_3f7
    move-exception v0

    move-object v1, v0

    :goto_3f9
    if-eqz v14, :cond_403

    .line 1861
    :try_start_3fb
    invoke-virtual {v14}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_3fe
    .catchall {:try_start_3fb .. :try_end_3fe} :catchall_3ff

    goto :goto_403

    :catchall_3ff
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_403
    :goto_403
    throw v1

    :sswitch_data_404
    .sparse-switch
        -0x7cf1603a -> :sswitch_29c
        -0x78da70f9 -> :sswitch_28b
        -0x75017ede -> :sswitch_27a
        -0x5ee8613f -> :sswitch_26a
        -0x54ce12c2 -> :sswitch_25a
        -0x3326b7c9 -> :sswitch_22a
        0x62ff4521 -> :sswitch_217
    .end sparse-switch
.end method

.method public readPermissionStateForUserSyncLPr(I)V
    .registers 8

    .line 3677
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 3678
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v5

    move v1, p1

    .line 3677
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSync(ILcom/android/server/pm/Settings$VersionInfo;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Ljava/io/File;)V

    return-void
.end method

.method public final readPersistentPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .registers 7

    .line 1741
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1743
    :cond_4
    :goto_4
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_51

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1744
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_51

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    .line 1748
    :cond_1a
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1749
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1750
    new-instance v1, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 1751
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_4

    .line 1753
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 1753
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1756
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_51
    return-void
.end method

.method public readPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .registers 8

    .line 1709
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1711
    :cond_4
    :goto_4
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_87

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1712
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_87

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    .line 1717
    :cond_1a
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1718
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_6a

    .line 1719
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 1720
    iget-object v3, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v3}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_43

    .line 1721
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    .line 1722
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PreferredIntentResolver;->shouldAddPreferredActivity(Lcom/android/server/pm/PreferredActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 1723
    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_4

    .line 1726
    :cond_43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 1728
    invoke-virtual {v1}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1726
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_4

    .line 1732
    :cond_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <preferred-activities>: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1733
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1732
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1734
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :cond_87
    return-void
.end method

.method public readSettingsLPw(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/util/ArrayMap;)Z
    .registers 22

    move-object/from16 v1, p0

    .line 3438
    const-string v0, "No start tag found in package manager settings"

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 3439
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 3440
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->clear()V

    .line 3442
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 3443
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3445
    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->getSettingsFile()Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3448
    :try_start_21
    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_274
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_25} :catch_274
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_21 .. :try_end_25} :catch_274
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_25} :catch_274
    .catchall {:try_start_21 .. :try_end_25} :catchall_3f

    .line 3449
    const-string/jumbo v11, "primary_physical"

    const/4 v12, 0x0

    if-nez v10, :cond_4b

    .line 3451
    :try_start_2b
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3452
    invoke-virtual {v1, v11}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3b} :catch_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_3b} :catch_43
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2b .. :try_end_3b} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_3b} :catch_43
    .catchall {:try_start_2b .. :try_end_3b} :catchall_3f

    .line 3579
    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return v12

    :catchall_3f
    move-exception v0

    move-object v1, v0

    goto/16 :goto_285

    :catch_43
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v16, v8

    :goto_48
    move-object v9, v10

    goto/16 :goto_279

    .line 3455
    :cond_4b
    :try_start_4b
    invoke-static {v10}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 3458
    :goto_4f
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_53} :catch_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b .. :try_end_53} :catch_43
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4b .. :try_end_53} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_53} :catch_43
    .catchall {:try_start_4b .. :try_end_53} :catchall_3f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_59

    if-eq v5, v8, :cond_59

    goto :goto_4f

    .line 3463
    :cond_59
    const-string v13, "PackageManager"

    if-eq v5, v6, :cond_6f

    .line 3464
    :try_start_5d
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in settings file\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 3465
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3467
    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6b} :catch_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5d .. :try_end_6b} :catch_43
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5d .. :try_end_6b} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_6b} :catch_43
    .catchall {:try_start_5d .. :try_end_6b} :catchall_3f

    .line 3579
    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return v12

    .line 3472
    :cond_6f
    :try_start_6f
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 3473
    :goto_73
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    if-eq v5, v8, :cond_83

    const/4 v6, 0x3

    if-ne v5, v6, :cond_89

    .line 3474
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v0, :cond_83

    goto :goto_89

    :cond_83
    move-object/from16 v5, p1

    move/from16 v16, v8

    goto/16 :goto_270

    :cond_89
    :goto_89
    if-eq v5, v6, :cond_26c

    const/4 v6, 0x4

    if-ne v5, v6, :cond_8f

    goto :goto_73

    .line 3479
    :cond_8f
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 3480
    const-string/jumbo v5, "package"

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ac

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 3481
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->readPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/List;Landroid/util/ArrayMap;)V

    :cond_a3
    :goto_a3
    move-object/from16 v5, p1

    move-object/from16 v17, v3

    move/from16 v16, v8

    move v6, v12

    goto/16 :goto_265

    :cond_ac
    move-object/from16 v5, p2

    .line 3483
    const-string/jumbo v6, "permissions"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 3484
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissions(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_a3

    .line 3485
    :cond_bd
    const-string/jumbo v6, "permission-trees"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 3486
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissionTrees(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_a3

    .line 3487
    :cond_cc
    const-string/jumbo v6, "shared-user"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 3488
    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/List;)V

    goto :goto_a3

    .line 3489
    :cond_d9
    const-string/jumbo v6, "preferred-packages"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e3

    goto :goto_a3

    .line 3491
    :cond_e3
    const-string/jumbo v6, "preferred-activities"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f0

    .line 3494
    invoke-virtual {v1, v2, v12}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_a3

    .line 3495
    :cond_f0
    const-string/jumbo v6, "persistent-preferred-activities"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fd

    .line 3498
    invoke-virtual {v1, v2, v12}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_a3

    .line 3499
    :cond_fd
    const-string v6, "crossProfile-intent-filters"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_109

    .line 3502
    invoke-virtual {v1, v2, v12}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_a3

    .line 3503
    :cond_109
    const-string v6, "default-browser"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_115

    .line 3504
    invoke-virtual {v1, v2, v12}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_a3

    .line 3505
    :cond_115
    const-string/jumbo v6, "updated-package"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_122

    .line 3506
    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/List;)V

    goto :goto_a3

    .line 3507
    :cond_122
    const-string/jumbo v6, "renamed-package"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_144

    .line 3508
    const-string/jumbo v6, "new"

    invoke-interface {v2, v9, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3509
    const-string/jumbo v14, "old"

    invoke-interface {v2, v9, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v6, :cond_a3

    if-eqz v14, :cond_a3

    .line 3511
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v15, v6, v14}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a3

    .line 3513
    :cond_144
    const-string v6, "last-platform-version"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_14a} :catch_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_14a} :catch_43
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6f .. :try_end_14a} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6f .. :try_end_14a} :catch_43
    .catchall {:try_start_6f .. :try_end_14a} :catchall_3f

    const-string v15, "fingerprint"

    move/from16 v16, v8

    const-string v8, "buildFingerprint"

    const-string v9, "external"

    const-string v12, "internal"

    if-eqz v6, :cond_18b

    .line 3515
    :try_start_156
    sget-object v6, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v6

    .line 3517
    invoke-virtual {v1, v11}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v14

    move-object/from16 v17, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 3520
    invoke-interface {v2, v5, v12, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    iput v12, v6, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3521
    invoke-interface {v2, v5, v9, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v14, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3523
    invoke-static {v2, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v14, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    .line 3525
    invoke-static {v2, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v14, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    move-object/from16 v5, p1

    const/4 v6, 0x0

    :goto_183
    const/4 v9, 0x0

    goto/16 :goto_265

    :catch_186
    move-exception v0

    move-object/from16 v5, p1

    goto/16 :goto_48

    :cond_18b
    move-object/from16 v17, v3

    .line 3527
    const-string v3, "database-version"

    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    .line 3529
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v3

    .line 3531
    invoke-virtual {v1, v11}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 3534
    invoke-interface {v2, v8, v12, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    iput v12, v3, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3535
    invoke-interface {v2, v8, v9, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v5, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    :goto_1ad
    move-object/from16 v5, p1

    goto :goto_183

    :cond_1b0
    const/4 v6, 0x0

    .line 3537
    const-string/jumbo v3, "verifier"

    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c8

    .line 3538
    const-string v3, "device"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3539
    invoke-static {v3}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    goto :goto_1ad

    .line 3540
    :cond_1c8
    const-string/jumbo v3, "read-external-storage"

    invoke-virtual {v3, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d2

    goto :goto_1ad

    .line 3542
    :cond_1d2
    const-string v3, "keyset-settings"

    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e0

    .line 3543
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/ArrayMap;)V

    goto :goto_1ad

    .line 3544
    :cond_1e0
    const-string/jumbo v3, "version"

    invoke-virtual {v3, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_226

    .line 3545
    const-string/jumbo v3, "volumeUuid"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3547
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v3

    .line 3548
    const-string/jumbo v5, "sdkVersion"

    const/4 v9, 0x0

    invoke-interface {v2, v9, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3550
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Build;->parseFullVersion(Ljava/lang/String;)I

    move-result v5

    .line 3551
    const-string/jumbo v12, "sdkVersionFull"

    invoke-interface {v2, v9, v12, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersionFull:I

    .line 3553
    const-string v5, "databaseVersion"

    invoke-interface {v2, v9, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3554
    invoke-static {v2, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    .line 3556
    invoke-static {v2, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    move-object/from16 v5, p1

    goto :goto_265

    :cond_226
    const/4 v9, 0x0

    .line 3557
    const-string v3, "domain-verifications"

    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23a

    .line 3559
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    :try_end_231
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_231} :catch_186
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_156 .. :try_end_231} :catch_186
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_156 .. :try_end_231} :catch_186
    .catch Ljava/lang/IllegalArgumentException; {:try_start_156 .. :try_end_231} :catch_186
    .catchall {:try_start_156 .. :try_end_231} :catchall_3f

    move-object/from16 v5, p1

    :try_start_233
    invoke-interface {v3, v5, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->readSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_265

    :catch_237
    move-exception v0

    goto/16 :goto_48

    :cond_23a
    move-object/from16 v5, p1

    .line 3560
    const-string v3, "domain-verifications-legacy"

    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24a

    .line 3562
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->readLegacySettings(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_265

    .line 3564
    :cond_24a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <packages>: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3565
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3564
    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_265
    move v12, v6

    move/from16 v8, v16

    move-object/from16 v3, v17

    goto/16 :goto_73

    :cond_26c
    move-object/from16 v5, p1

    goto/16 :goto_73

    .line 3570
    :goto_270
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_273
    .catch Ljava/io/IOException; {:try_start_233 .. :try_end_273} :catch_237
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_233 .. :try_end_273} :catch_237
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_233 .. :try_end_273} :catch_237
    .catch Ljava/lang/IllegalArgumentException; {:try_start_233 .. :try_end_273} :catch_237
    .catchall {:try_start_233 .. :try_end_273} :catchall_3f

    goto :goto_27f

    :catch_274
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v16, v8

    .line 3574
    :goto_279
    :try_start_279
    invoke-virtual {v7, v9, v0}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 3577
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/Settings;->readSettingsLPw(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/util/ArrayMap;)Z
    :try_end_27f
    .catchall {:try_start_279 .. :try_end_27f} :catchall_3f

    :goto_27f
    if-eqz v7, :cond_284

    .line 3579
    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    :cond_284
    return v16

    :goto_285
    if-eqz v7, :cond_28f

    .line 3445
    :try_start_287
    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_28a
    .catchall {:try_start_287 .. :try_end_28a} :catchall_28b

    goto :goto_28f

    :catchall_28b
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_28f
    :goto_28f
    throw v1
.end method

.method public final readSharedUserLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/List;)V
    .registers 10

    .line 4725
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4726
    invoke-static {p1}, Lcom/android/server/pm/Settings;->parseAppId(Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v2

    .line 4727
    const-string/jumbo v3, "system"

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x5

    if-nez v0, :cond_30

    .line 4731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4733
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4731
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_7e

    :cond_30
    if-nez v2, :cond_5b

    .line 4735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: shared-user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has bad appId "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4738
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4735
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_7e

    .line 4740
    :cond_5b
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-nez v1, :cond_7e

    .line 4742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Occurred while parsing settings at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4744
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    .line 4743
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :cond_7e
    :goto_7e
    if-eqz v1, :cond_db

    .line 4750
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 4752
    :cond_84
    :goto_84
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_da

    const/4 v3, 0x3

    if-ne v2, v3, :cond_94

    .line 4753
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_da

    :cond_94
    if-eq v2, v3, :cond_84

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9a

    goto :goto_84

    .line 4758
    :cond_9a
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4759
    const-string/jumbo v3, "sigs"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 4760
    iget-object v2, v1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/PackageSignatures;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_84

    .line 4761
    :cond_ad
    const-string/jumbo v3, "perms"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 4762
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    goto :goto_84

    .line 4764
    :cond_be
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <shared-user>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4765
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4764
    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4766
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_84

    :cond_da
    return-void

    .line 4770
    :cond_db
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public final readSplitVersionsLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .registers 7

    .line 4618
    const-string/jumbo p0, "name"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4619
    const-string/jumbo v1, "version"

    const/4 v2, -0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz p0, :cond_4d

    if-ltz v0, :cond_4d

    .line 4621
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 4624
    const-class v2, Ljava/lang/String;

    .line 4625
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    .line 4624
    invoke-static {v2, v3, p0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/android/server/pm/PackageSetting;->setSplitNames([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4629
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ne v1, v2, :cond_41

    .line 4631
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    .line 4632
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitRevisionCodes()[I

    move-result-object v1

    .line 4633
    aput v0, v1, p0

    .line 4634
    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageSetting;->setSplitRevisionCodes([I)Lcom/android/server/pm/PackageSetting;

    goto :goto_4d

    .line 4637
    :cond_41
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitRevisionCodes()[I

    move-result-object p0

    const/4 v1, 0x1

    .line 4636
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([IIZ)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/pm/PackageSetting;->setSplitRevisionCodes([I)Lcom/android/server/pm/PackageSetting;

    .line 4641
    :cond_4d
    :goto_4d
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public readStoppedLPw()V
    .registers 16

    .line 2735
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x4

    const-string v2, "PackageManager"

    const/4 v3, 0x0

    if-eqz v0, :cond_43

    .line 2737
    :try_start_c
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_43

    .line 2738
    :try_start_13
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "Reading from backup stopped packages file\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2739
    const-string v4, "Need to read from backup stopped packages file"

    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2741
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up stopped packages file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_42} :catch_44

    goto :goto_44

    :catch_43
    :cond_43
    move-object v0, v3

    .line 2755
    :catch_44
    :cond_44
    :goto_44
    const-string v4, "Error reading package manager stopped packages"

    const-string v5, "Error reading stopped packages: "

    const/4 v6, 0x6

    const-string v7, "Error reading: "

    const/4 v8, 0x0

    if-nez v0, :cond_8c

    .line 2756
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_85

    .line 2757
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No stopped packages file found\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2758
    const-string v0, "No stopped packages file file; assuming all started"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2763
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 2764
    invoke-virtual {v1, v8, v8}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2765
    invoke-virtual {v1, v8, v8}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_6c

    :catch_7f
    move-exception v0

    goto/16 :goto_130

    :catch_82
    move-exception v0

    goto/16 :goto_15e

    .line 2769
    :cond_85
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2771
    :cond_8c
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v9

    .line 2774
    :goto_90
    invoke-interface {v9}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v10, v11, :cond_9b

    if-eq v10, v12, :cond_9b

    goto :goto_90

    :cond_9b
    if-eq v10, v11, :cond_ac

    .line 2780
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v1, "No start tag found in stopped packages file\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2781
    const-string v0, "No start tag found in package manager stopped packages"

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_18b

    .line 2786
    :cond_ac
    invoke-interface {v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v10

    .line 2787
    :cond_b0
    :goto_b0
    invoke-interface {v9}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v11

    if-eq v11, v12, :cond_12c

    const/4 v13, 0x3

    if-ne v11, v13, :cond_bf

    .line 2789
    invoke-interface {v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v10, :cond_12c

    :cond_bf
    if-eq v11, v13, :cond_b0

    if-ne v11, v1, :cond_c4

    goto :goto_b0

    .line 2795
    :cond_c4
    invoke-interface {v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 2796
    const-string/jumbo v13, "pkg"

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_110

    .line 2797
    const-string/jumbo v11, "name"

    invoke-interface {v9, v3, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2798
    iget-object v13, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v13, v11}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    if-eqz v13, :cond_f8

    .line 2800
    invoke-virtual {v13, v12, v8}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2801
    const-string v11, "1"

    const-string/jumbo v14, "nl"

    invoke-interface {v9, v3, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10c

    .line 2802
    invoke-virtual {v13, v12, v8}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_10c

    .line 2805
    :cond_f8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No package known for stopped package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    :cond_10c
    :goto_10c
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_b0

    .line 2810
    :cond_110
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <stopped-packages>: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2811
    invoke-interface {v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2810
    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_b0

    .line 2816
    :cond_12c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_12f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_12f} :catch_82
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_12f} :catch_7f

    goto :goto_18b

    .line 2826
    :goto_130
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2827
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2829
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18b

    .line 2819
    :goto_15e
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2822
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18b
    :goto_18b
    return-void
.end method

.method public readUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .registers 10

    .line 2631
    const-string/jumbo p0, "name"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2632
    const-string/jumbo v1, "version"

    const-wide/16 v2, -0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 2633
    const-string/jumbo v3, "optional"

    const/4 v4, 0x1

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz p0, :cond_6d

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-ltz v3, :cond_6d

    .line 2636
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    .line 2639
    const-class v5, Ljava/lang/String;

    .line 2640
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v6

    .line 2639
    invoke-static {v5, v6, p0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2643
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ne v3, v5, :cond_57

    .line 2645
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    .line 2647
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v3

    .line 2648
    aput-wide v1, v3, p0

    .line 2649
    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    .line 2651
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object v1

    .line 2652
    aput-boolean v0, v1, p0

    .line 2653
    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;

    goto :goto_6d

    .line 2656
    :cond_57
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object p0

    .line 2655
    invoke-static {p0, v1, v2, v4}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    .line 2659
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object p0

    .line 2658
    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->appendBooleanDuplicatesAllowed([ZZ)[Z

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;

    .line 2663
    :cond_6d
    :goto_6d
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public readUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .registers 8

    .line 2668
    const-string/jumbo p0, "name"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2669
    const-string/jumbo v1, "version"

    const-wide/16 v2, -0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    if-eqz p0, :cond_52

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_52

    .line 2672
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    .line 2675
    const-class v3, Ljava/lang/String;

    .line 2676
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v4

    .line 2675
    invoke-static {v3, v4, p0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2679
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ne v2, v3, :cond_46

    .line 2681
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    .line 2682
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object v2

    .line 2683
    aput-wide v0, v2, p0

    .line 2684
    invoke-virtual {p2, v2}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    goto :goto_52

    .line 2687
    :cond_46
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object p0

    const/4 v2, 0x1

    .line 2686
    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    .line 2692
    :cond_52
    :goto_52
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public registerAppIdLPw(Lcom/android/server/pm/PackageSetting;Z)Z
    .registers 5

    .line 1373
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p2, :cond_9

    goto :goto_18

    .line 1379
    :cond_9
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_22

    .line 1375
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppIdSettingMap;->acquireAndRegisterNewAppId(Lcom/android/server/pm/SettingBase;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    const/4 p0, 0x1

    .line 1381
    :goto_22
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p2

    if-ltz p2, :cond_29

    return p0

    .line 1382
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " could not be assigned a valid UID"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x5

    .line 1382
    invoke-static {v1, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1384
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x4

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 200
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public removeAppIdLPw(I)V
    .registers 2

    .line 1535
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppIdSettingMap;->removeSetting(I)V

    return-void
.end method

.method public removeCrossProfileIntentFiltersLPw(I)V
    .registers 12

    .line 4901
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    monitor-enter v0

    .line 4903
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 4904
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 4905
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_5d

    .line 4908
    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1e
    if-ge v3, v1, :cond_5b

    .line 4910
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v4

    .line 4911
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 4913
    new-instance v6, Landroid/util/ArraySet;

    .line 4914
    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4915
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :cond_3c
    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 4916
    invoke-virtual {v8}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v9

    if-ne v9, p1, :cond_3c

    .line 4918
    invoke-virtual {v5, v8}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v7, 0x1

    goto :goto_3c

    :cond_53
    if-eqz v7, :cond_58

    .line 4922
    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 4925
    :cond_5b
    monitor-exit v0

    return-void

    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_14

    throw p0
.end method

.method public removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .registers 4

    .line 980
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_19

    .line 982
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 984
    iget-object v1, v0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 985
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    :cond_19
    return-void
.end method

.method public final removeInstallerPackageStatus(Ljava/lang/String;)V
    .registers 4

    .line 1519
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 1522
    :goto_a
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1523
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1525
    :cond_20
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePackageAndAppIdLPw(Ljava/lang/String;)Z
    .registers 4

    .line 1498
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 1500
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeInstallerPackageStatus(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 1503
    invoke-virtual {p1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    .line 1504
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    move-result p0

    return p0

    .line 1506
    :cond_1c
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    const/4 p0, 0x1

    return p0

    :cond_25
    return v1
.end method

.method public removePendingDefaultBrowserLPw(I)Ljava/lang/String;
    .registers 2

    .line 1602
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public removeRenamedPackageLPw(Ljava/lang/String;)V
    .registers 2

    .line 866
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeUserLPw(Ljava/util/List;I)V
    .registers 5

    .line 4877
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4878
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4879
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    goto :goto_a

    .line 4881
    :cond_20
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 4883
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4884
    :try_start_28
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->delete()V

    .line 4885
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4886
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_49

    .line 4888
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    .line 4890
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {v0, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->-$$Nest$monUserRemoved(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 4891
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearUser(I)V

    .line 4893
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageListLPr(Ljava/util/List;)V

    .line 4897
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->writeKernelRemoveUserLPr(I)V

    return-void

    :catchall_49
    move-exception p0

    .line 4886
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public setBlockUninstallLPw(ILjava/lang/String;Z)V
    .registers 5

    .line 2210
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz p3, :cond_1a

    if-nez v0, :cond_16

    .line 2213
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2214
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 2216
    :cond_16
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1a
    if-eqz v0, :cond_2a

    .line 2218
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2219
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 2220
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    :cond_2a
    return-void
.end method

.method public setDefaultRuntimePermissionsVersion(II)V
    .registers 3

    .line 1673
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setVersion(II)V

    return-void
.end method

.method public setPendingDefaultBrowserLPw(Ljava/lang/String;I)V
    .registers 3

    .line 1598
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setPermissionControllerVersion(J)V
    .registers 3

    .line 1677
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setPermissionControllerVersion(J)V

    return-void
.end method

.method public snapshot()Lcom/android/server/pm/Settings;
    .registers 1

    .line 831
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Settings;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 185
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->snapshot()Lcom/android/server/pm/Settings;

    move-result-object p0

    return-object p0
.end method

.method public systemReady(Lcom/android/server/pm/resolution/ComponentResolver;)Ljava/util/ArrayList;
    .registers 11

    .line 6831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6832
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 6833
    :goto_c
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_84

    .line 6834
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreferredIntentResolver;

    .line 6835
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6836
    invoke-virtual {v4}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PreferredActivity;

    .line 6837
    iget-object v7, v6, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v7, v7, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v7}, Lcom/android/server/pm/resolution/ComponentResolverLocked;->isActivityDefined(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 6838
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 6841
    :cond_41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_81

    move v5, v2

    .line 6842
    :goto_48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_74

    .line 6843
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PreferredActivity;

    .line 6844
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing dangling preferred activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v8, v8, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageSettings"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6846
    invoke-virtual {v4, v6}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 6848
    :cond_74
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 6851
    :cond_84
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    return-object v0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public updateRuntimePermissionsFingerprint(I)V
    .registers 2

    .line 1665
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->updateRuntimePermissionsFingerprint(I)V

    return-void
.end method

.method public writeAllRuntimePermissionsLPr()V
    .registers 6

    .line 1655
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget v3, v0, v2

    .line 1656
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    return-void
.end method

.method public writeAllUsersPackageRestrictionsLPr()V
    .registers 2

    const/4 v0, 0x0

    .line 1634
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr(Z)V

    return-void
.end method

.method public writeAllUsersPackageRestrictionsLPr(Z)V
    .registers 5

    .line 1638
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_37

    :cond_b
    if-eqz p1, :cond_21

    .line 1643
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1644
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 1645
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1e

    .line 1646
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_21

    :catchall_1e
    move-exception p0

    .line 1645
    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0

    .line 1649
    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1650
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    goto :goto_25

    :cond_37
    :goto_37
    return-void
.end method

.method public final writeArchiveStateLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/pkg/ArchiveState;)V
    .registers 8

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 2577
    const-string v0, "archive-state"

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2578
    const-string v1, "installer-title"

    invoke-virtual {p2}, Lcom/android/server/pm/pkg/ArchiveState;->getInstallerTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2579
    const-string v1, "archive-time"

    invoke-virtual {p2}, Lcom/android/server/pm/pkg/ArchiveState;->getArchiveTimeMillis()J

    move-result-wide v2

    invoke-interface {p1, p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2580
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/ArchiveState;->getActivityInfos()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_23
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 2581
    const-string v2, "archive-activity-info"

    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2582
    const-string v3, "activity-title"

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2586
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getOriginalComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 2583
    const-string/jumbo v4, "original-component-name"

    invoke-interface {p1, p0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2587
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getIconBitmap()Ljava/nio/file/Path;

    move-result-object v3

    if-eqz v3, :cond_62

    .line 2589
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getIconBitmap()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2588
    const-string v4, "icon-path"

    invoke-interface {p1, p0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2591
    :cond_62
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getMonochromeIconBitmap()Ljava/nio/file/Path;

    move-result-object v3

    if-eqz v3, :cond_7a

    .line 2593
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getMonochromeIconBitmap()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2592
    const-string/jumbo v3, "monochrome-icon-path"

    invoke-interface {p1, p0, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2595
    :cond_7a
    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_23

    .line 2597
    :cond_7e
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeBlockUninstallPackagesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .registers 8

    .line 2330
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_31

    const/4 p2, 0x0

    .line 2332
    const-string v0, "block-uninstall-packages"

    invoke-interface {p1, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    .line 2333
    :goto_11
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 2334
    const-string v2, "block-uninstall"

    invoke-interface {p1, p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2335
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "packageName"

    invoke-interface {p1, p2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2336
    invoke-interface {p1, p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2338
    :cond_2e
    invoke-interface {p1, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_31
    return-void
.end method

.method public writeCrossProfileIntentFiltersLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .registers 6

    const/4 v0, 0x0

    .line 2299
    const-string v1, "crossProfile-intent-filters"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2300
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentResolver;

    if-eqz p0, :cond_30

    .line 2302
    invoke-virtual {p0}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 2303
    const-string v2, "item"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2304
    invoke-virtual {p2, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2305
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_18

    .line 2308
    :cond_30
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 3

    .line 2313
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2314
    invoke-static {p1, p0}, Lcom/android/server/pm/Settings;->writeDefaultApps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method public writeDisabledSysPackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 8

    const/4 v0, 0x0

    .line 3205
    const-string/jumbo v1, "updated-package"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3206
    const-string/jumbo v2, "name"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3207
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 3208
    const-string/jumbo v2, "realName"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3210
    :cond_21
    const-string v2, "codePath"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3211
    const-string v2, "ft"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v3

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3212
    const-string/jumbo v2, "ut"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v3

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3213
    const-string/jumbo v2, "version"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3214
    const-string/jumbo v2, "targetSdkVersion"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3215
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v2

    if-eqz v2, :cond_61

    .line 3216
    const-string/jumbo v2, "restrictUpdateHash"

    .line 3217
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v3

    .line 3216
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    .line 3219
    :cond_61
    const-string/jumbo v2, "scannedAsStoppedSystemApp"

    .line 3220
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->isScannedAsStoppedSystemApp()Z

    move-result v3

    .line 3219
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3221
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 3222
    const-string/jumbo v2, "nativeLibraryPath"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3224
    :cond_7b
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8b

    .line 3225
    const-string/jumbo v2, "primaryCpuAbi"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3227
    :cond_8b
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9b

    .line 3228
    const-string/jumbo v2, "secondaryCpuAbi"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3230
    :cond_9b
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_aa

    .line 3231
    const-string v2, "cpuAbiOverride"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3234
    :cond_aa
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v2

    if-nez v2, :cond_bb

    .line 3235
    const-string/jumbo v2, "userId"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c5

    .line 3237
    :cond_bb
    const-string/jumbo v2, "sharedUserId"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3239
    :goto_c5
    const-string v2, "loadingProgress"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLoadingProgress()F

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 3240
    const-string v2, "loadingCompletedTime"

    .line 3241
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLoadingCompletedTime()J

    move-result-wide v3

    .line 3240
    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3243
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 3244
    const-string v2, "appMetadataFilePath"

    .line 3245
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v3

    .line 3244
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3248
    :cond_e6
    const-string v2, "appMetadataSource"

    .line 3249
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppMetadataSource()I

    move-result v3

    .line 3248
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3251
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v2

    .line 3252
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object v4

    .line 3251
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/server/pm/Settings;->writeUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J[Z)V

    .line 3255
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v2

    .line 3256
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object p2

    .line 3255
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J)V

    .line 3258
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeIntToFile(Ljava/io/File;I)V
    .registers 5

    .line 3053
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 3054
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 3053
    invoke-static {p0, v0}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    .line 3056
    :catch_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t write "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageSettings"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public writeKernelMappingLPr()V
    .registers 7

    .line 2972
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    goto :goto_5b

    .line 2974
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2975
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 2976
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_1c

    aget-object v5, v0, v4

    .line 2977
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 2980
    :cond_1c
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 2982
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2983
    invoke-virtual {p0, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_26

    .line 2987
    :cond_3d
    :goto_3d
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_5b

    .line 2988
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2991
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2992
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_5b
    :goto_5b
    return-void
.end method

.method public writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .registers 4

    .line 2997
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_1c

    .line 2999
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Ljava/lang/String;I[I)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public writeKernelMappingLPr(Ljava/lang/String;I[I)V
    .registers 10

    .line 3003
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_e

    move v3, v2

    goto :goto_f

    :cond_e
    move v3, v1

    :goto_f
    if-nez v3, :cond_1b

    .line 3005
    iget-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 3006
    invoke-static {p3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v1

    .line 3009
    :cond_1b
    :goto_1b
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v3, :cond_32

    .line 3012
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 3014
    new-instance v0, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>(Lcom/android/server/pm/Settings-IA;)V

    .line 3015
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3019
    :cond_32
    iget p1, v0, Lcom/android/server/pm/Settings$KernelPackageState;->appId:I

    if-eq p1, p2, :cond_40

    .line 3020
    new-instance p1, Ljava/io/File;

    const-string v3, "appid"

    invoke-direct {p1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3021
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_40
    if-eqz v2, :cond_85

    move p1, v1

    .line 3027
    :goto_43
    array-length p2, p3

    if-ge p1, p2, :cond_61

    .line 3028
    iget-object p2, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz p2, :cond_52

    aget v2, p3, p1

    invoke-static {p2, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p2

    if-nez p2, :cond_5e

    .line 3030
    :cond_52
    new-instance p2, Ljava/io/File;

    const-string v2, "excluded_userids"

    invoke-direct {p2, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v2, p3, p1

    invoke-virtual {p0, p2, v2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_5e
    add-int/lit8 p1, p1, 0x1

    goto :goto_43

    .line 3036
    :cond_61
    iget-object p1, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz p1, :cond_83

    .line 3037
    :goto_65
    iget-object p1, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length p2, p1

    if-ge v1, p2, :cond_83

    .line 3038
    aget p1, p1, v1

    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-nez p1, :cond_80

    .line 3039
    new-instance p1, Ljava/io/File;

    const-string p2, "clear_userid"

    invoke-direct {p1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p2, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 3047
    :cond_83
    iput-object p3, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    :cond_85
    return-void
.end method

.method public final writeKernelRemoveUserLPr(I)V
    .registers 5

    .line 2963
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    .line 2965
    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    const-string/jumbo v2, "remove_userid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2968
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    return-void
.end method

.method public writeKeySetAliasesLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 7

    .line 3428
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    const/4 v0, 0x0

    .line 3429
    const-string v1, "defined-keyset"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3430
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "alias"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3431
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string p2, "identifier"

    invoke-interface {p1, v0, p2, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3432
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c

    :cond_3c
    return-void
.end method

.method public writeLPr(Lcom/android/server/pm/Computer;Ljava/util/List;Z)V
    .registers 23

    move-object/from16 v0, p0

    .line 2844
    const-string/jumbo v1, "renamed-package"

    const-string/jumbo v2, "shared-user"

    const-string/jumbo v3, "permissions"

    const-string/jumbo v4, "permission-trees"

    const-string/jumbo v5, "verifier"

    const-string/jumbo v6, "version"

    const-string/jumbo v7, "packages"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x6

    .line 2850
    invoke-virtual {v0, v10}, Lcom/android/server/pm/Settings;->invalidatePackageCache(I)V

    .line 2853
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2855
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getSettingsFile()Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v11

    const/4 v12, 0x0

    .line 2858
    :try_start_29
    invoke-virtual {v11}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v13
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_1cf
    .catchall {:try_start_29 .. :try_end_2d} :catchall_96

    .line 2860
    :try_start_2d
    invoke-static {v13}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v14

    .line 2861
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v14, v12, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2862
    const-string v15, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v12, 0x1

    invoke-interface {v14, v15, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v12, 0x0

    .line 2865
    invoke-interface {v14, v12, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    .line 2867
    :goto_41
    iget-object v12, v0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v12}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v12

    if-ge v15, v12, :cond_9e

    .line 2868
    iget-object v12, v0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v12, v15}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-wide/from16 v16, v8

    .line 2869
    iget-object v8, v0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v8, v15}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/Settings$VersionInfo;

    const/4 v9, 0x0

    .line 2871
    invoke-interface {v14, v9, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2872
    const-string/jumbo v9, "volumeUuid"

    invoke-static {v14, v9, v12}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2873
    const-string/jumbo v9, "sdkVersion"

    iget v12, v8, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    move/from16 v18, v15

    const/4 v15, 0x0

    invoke-interface {v14, v15, v9, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2874
    const-string/jumbo v9, "sdkVersionFull"

    iget v12, v8, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersionFull:I

    invoke-interface {v14, v15, v9, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2875
    const-string v9, "databaseVersion"

    iget v12, v8, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-interface {v14, v15, v9, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2876
    const-string v9, "buildFingerprint"

    iget-object v12, v8, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    invoke-static {v14, v9, v12}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2878
    const-string v9, "fingerprint"

    iget-object v8, v8, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v14, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v12, 0x0

    .line 2879
    invoke-interface {v14, v12, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v15, v18, 0x1

    move-wide/from16 v8, v16

    goto :goto_41

    :catchall_96
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1e2

    :catch_9a
    move-exception v0

    move-object v12, v13

    goto/16 :goto_1d0

    :cond_9e
    move-wide/from16 v16, v8

    .line 2882
    iget-object v6, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-eqz v6, :cond_b6

    const/4 v12, 0x0

    .line 2883
    invoke-interface {v14, v12, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2884
    const-string v6, "device"

    iget-object v8, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v8}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v14, v12, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2885
    invoke-interface {v14, v12, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b6
    const/4 v12, 0x0

    .line 2888
    invoke-interface {v14, v12, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2889
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v5, v14}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->writePermissionTrees(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2890
    invoke-interface {v14, v12, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2892
    invoke-interface {v14, v12, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2893
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->writePermissions(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2894
    invoke-interface {v14, v12, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2896
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2897
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-eqz v5, :cond_f4

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v5

    if-eqz v5, :cond_f4

    goto :goto_d7

    .line 2902
    :cond_f4
    invoke-virtual {v0, v14, v10, v4}, Lcom/android/server/pm/Settings;->writePackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/ArrayList;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_d7

    .line 2905
    :cond_f8
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_102
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_123

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2906
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-eqz v5, :cond_11f

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v5

    if-eqz v5, :cond_11f

    goto :goto_102

    .line 2911
    :cond_11f
    invoke-virtual {v0, v14, v4}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_102

    .line 2914
    :cond_123
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_159

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    const/4 v12, 0x0

    .line 2915
    invoke-interface {v14, v12, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2916
    const-string/jumbo v5, "name"

    iget-object v6, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {v14, v12, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2917
    const-string/jumbo v5, "userId"

    iget v6, v4, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-interface {v14, v12, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2918
    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v5, "sigs"

    invoke-virtual {v4, v14, v5, v10}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2919
    invoke-interface {v14, v12, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12d

    .line 2922
    :cond_159
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_197

    .line 2923
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_197

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v12, 0x0

    .line 2924
    invoke-interface {v14, v12, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2925
    const-string/jumbo v4, "new"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v14, v12, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2926
    const-string/jumbo v4, "old"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v14, v12, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2927
    invoke-interface {v14, v12, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_16b

    .line 2931
    :cond_197
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    const/4 v2, -0x1

    move-object/from16 v3, p1

    const/4 v4, 0x0

    invoke-interface {v1, v3, v14, v4, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->writeSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlSerializer;ZI)V

    .line 2934
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v1, v14}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lcom/android/modules/utils/TypedXmlSerializer;)V

    const/4 v12, 0x0

    .line 2936
    invoke-interface {v14, v12, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2938
    invoke-interface {v14}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 2940
    invoke-virtual {v11, v13}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2942
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    move-object/from16 v1, p2

    .line 2943
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->writePackageListLPr(Ljava/util/List;)V

    move/from16 v1, p3

    .line 2944
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr(Z)V

    .line 2945
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V

    .line 2946
    const-string/jumbo v0, "package"

    .line 2947
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    .line 2946
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_1cb} :catch_9a
    .catchall {:try_start_2d .. :try_end_1cb} :catchall_96

    .line 2957
    invoke-virtual {v11}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catch_1cf
    move-exception v0

    .line 2951
    :goto_1d0
    :try_start_1d0
    const-string v1, "PackageManager"

    const-string v2, "Unable to write package manager settings, current changes will be lost at reboot"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v12, :cond_1dc

    .line 2954
    invoke-virtual {v11, v12}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1dc
    .catchall {:try_start_1d0 .. :try_end_1dc} :catchall_96

    :cond_1dc
    if-eqz v11, :cond_1e1

    .line 2957
    invoke-virtual {v11}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    :cond_1e1
    return-void

    :goto_1e2
    if-eqz v11, :cond_1ec

    .line 2855
    :try_start_1e4
    invoke-virtual {v11}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_1e7
    .catchall {:try_start_1e4 .. :try_end_1e7} :catchall_1e8

    goto :goto_1ec

    :catchall_1e8
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1ec
    :goto_1ec
    throw v1
.end method

.method public final writeMimeGroupLPr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/Map;)V
    .registers 9

    if-nez p2, :cond_3

    goto :goto_4e

    .line 4602
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 4603
    const-string/jumbo v2, "mime-group"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4604
    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4606
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4607
    const-string/jumbo v4, "mime-type"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4608
    const-string/jumbo v5, "value"

    invoke-interface {p1, v1, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4609
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2e

    .line 4612
    :cond_4a
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b

    :cond_4e
    :goto_4e
    return-void
.end method

.method public writePackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/ArrayList;Lcom/android/server/pm/PackageSetting;)V
    .registers 11

    const/4 v0, 0x0

    .line 3264
    const-string/jumbo v1, "package"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3265
    const-string/jumbo v2, "name"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3266
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 3267
    const-string/jumbo v2, "realName"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3269
    :cond_21
    const-string v2, "codePath"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3271
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 3272
    const-string/jumbo v2, "nativeLibraryPath"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3274
    :cond_3a
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 3275
    const-string/jumbo v2, "primaryCpuAbi"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3277
    :cond_4a
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 3278
    const-string/jumbo v2, "secondaryCpuAbi"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3280
    :cond_5a
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 3281
    const-string v2, "cpuAbiOverride"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3284
    :cond_69
    const-string/jumbo v2, "publicFlags"

    invoke-virtual {p3}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3285
    const-string/jumbo v2, "privateFlags"

    invoke-virtual {p3}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3286
    const-string v2, "ft"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v3

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3287
    const-string/jumbo v2, "ut"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v3

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3288
    const-string/jumbo v2, "version"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3289
    const-string/jumbo v2, "targetSdkVersion"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3290
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v2

    if-eqz v2, :cond_b4

    .line 3291
    const-string/jumbo v2, "restrictUpdateHash"

    .line 3292
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v3

    .line 3291
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    .line 3294
    :cond_b4
    const-string/jumbo v2, "scannedAsStoppedSystemApp"

    .line 3295
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isScannedAsStoppedSystemApp()Z

    move-result v3

    .line 3294
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3296
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_e8

    .line 3297
    const-string/jumbo v2, "userId"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-interface {p1, v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3300
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_e1

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isSdkLibrary()Z

    move-result v2

    if-eqz v2, :cond_e1

    move v2, v3

    goto :goto_e2

    :cond_e1
    const/4 v2, 0x0

    .line 3299
    :goto_e2
    const-string v4, "isSdkLibrary"

    invoke-interface {p1, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f2

    .line 3302
    :cond_e8
    const-string/jumbo v2, "sharedUserId"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-interface {p1, v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3304
    :goto_f2
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    .line 3305
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_ff

    .line 3306
    const-string v5, "installer"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3308
    :cond_ff
    iget v4, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_109

    .line 3309
    const-string v6, "installerUid"

    invoke-interface {p1, v0, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3311
    :cond_109
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_113

    .line 3312
    const-string/jumbo v6, "updateOwner"

    invoke-interface {p1, v0, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3314
    :cond_113
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    if-eqz v4, :cond_11c

    .line 3315
    const-string v6, "installerAttributionTag"

    invoke-interface {p1, v0, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3318
    :cond_11c
    const-string/jumbo v4, "packageSource"

    iget v6, v2, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    invoke-interface {p1, v0, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3320
    iget-boolean v4, v2, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    if-eqz v4, :cond_12d

    .line 3321
    const-string v4, "isOrphaned"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3323
    :cond_12d
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_136

    .line 3324
    const-string v6, "installInitiator"

    invoke-interface {p1, v0, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3326
    :cond_136
    iget-boolean v4, v2, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    if-eqz v4, :cond_13f

    .line 3327
    const-string v4, "installInitiatorUninstalled"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3329
    :cond_13f
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_148

    .line 3330
    const-string v6, "installOriginator"

    invoke-interface {p1, v0, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3332
    :cond_148
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_158

    .line 3333
    const-string/jumbo v4, "volumeUuid"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v0, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3335
    :cond_158
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getCategoryOverride()I

    move-result v4

    if-eq v4, v5, :cond_167

    .line 3336
    const-string v4, "categoryHint"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getCategoryOverride()I

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3338
    :cond_167
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isUpdateAvailable()Z

    move-result v4

    if-eqz v4, :cond_173

    .line 3339
    const-string/jumbo v4, "updateAvailable"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3341
    :cond_173
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isForceQueryableOverride()Z

    move-result v4

    if-eqz v4, :cond_17e

    .line 3342
    const-string v4, "forceQueryable"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3344
    :cond_17e
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v4

    if-eqz v4, :cond_18a

    .line 3345
    const-string/jumbo v4, "pendingRestore"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3347
    :cond_18a
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_195

    .line 3348
    const-string v4, "debuggable"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3350
    :cond_195
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_1a0

    .line 3351
    const-string v4, "isLoading"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3353
    :cond_1a0
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getBaseRevisionCode()I

    move-result v4

    if-eqz v4, :cond_1af

    .line 3354
    const-string v4, "baseRevisionCode"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getBaseRevisionCode()I

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3356
    :cond_1af
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPageSizeAppCompatFlags()I

    move-result v4

    if-eqz v4, :cond_1bf

    .line 3358
    const-string/jumbo v4, "pageSizeCompat"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPageSizeAppCompatFlags()I

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3360
    :cond_1bf
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getDeveloperVerificationStatusInternal()Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v4

    if-eqz v4, :cond_1e9

    .line 3362
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getDeveloperVerificationStatusInternal()Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v4

    .line 3363
    const-string v5, "has-developer-verification-status"

    invoke-interface {p1, v0, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3364
    const-string v3, "developer-verification-status"

    .line 3365
    invoke-virtual {v4}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->getInternalStatus()I

    move-result v5

    .line 3364
    invoke-interface {p1, v0, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3366
    const-string v3, "app-metadata-verification-status"

    .line 3367
    invoke-virtual {v4}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->getAppMetadataVerificationStatus()I

    move-result v5

    .line 3366
    invoke-interface {p1, v0, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3368
    const-string v3, "is_lite_verification"

    .line 3369
    invoke-virtual {v4}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->isLiteVerification()Z

    move-result v4

    .line 3368
    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3371
    :cond_1e9
    const-string v3, "loadingProgress"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getLoadingProgress()F

    move-result v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 3372
    const-string v3, "loadingCompletedTime"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getLoadingCompletedTime()J

    move-result-wide v4

    invoke-interface {p1, v0, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3374
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getDomainSetId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "domainSetId"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3376
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_217

    .line 3377
    const-string v3, "appMetadataFilePath"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3379
    :cond_217
    const-string v3, "appMetadataSource"

    .line 3380
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getAppMetadataSource()I

    move-result v4

    .line 3379
    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3382
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v3

    .line 3383
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object v5

    .line 3382
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/pm/Settings;->writeUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J[Z)V

    .line 3385
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v3

    .line 3386
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object v4

    .line 3385
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J)V

    .line 3388
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v3

    const-string/jumbo v4, "sigs"

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3390
    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-eqz v2, :cond_24d

    .line 3391
    const-string v3, "install-initiator-sigs"

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3395
    :cond_24d
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3396
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3397
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3398
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getMimeGroups()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeMimeGroupLPr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/Map;)V

    .line 3402
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p2

    if-nez p2, :cond_27a

    .line 3403
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getSplitRevisionCodes()[I

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/Settings;->writeSplitVersionsLPr(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[I)V

    .line 3405
    :cond_27a
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writePackageListLPr(Ljava/util/List;)V
    .registers 3

    const/4 v0, -0x1

    .line 3061
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(Ljava/util/List;I)V

    return-void
.end method

.method public writePackageListLPr(Ljava/util/List;I)V
    .registers 7

    .line 3065
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3066
    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3067
    const-string v1, "PackageSettings"

    if-nez v0, :cond_28

    .line 3068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get SELinux context for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 3069
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3068
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    :cond_28
    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 3073
    const-string v0, "Failed to set packages.list SELinux context"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 v0, 0x0

    .line 3076
    :try_start_34
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writePackageListLPrInternal(Ljava/util/List;I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    .line 3078
    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    return-void

    :catchall_3b
    move-exception p0

    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 3079
    throw p0
.end method

.method public final writePackageListLPrInternal(Ljava/util/List;I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 3084
    const-string v2, "PackageSettings"

    const-string v3, " "

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [I

    const/4 v6, 0x0

    move v7, v6

    :goto_10
    if-ge v7, v4, :cond_21

    move-object/from16 v8, p1

    .line 3086
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    aput v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_21
    const/4 v4, -0x1

    if-eq v1, v4, :cond_28

    .line 3089
    invoke-static {v5, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 3093
    :cond_28
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3094
    new-instance v4, Lcom/android/internal/util/JournaledFile;

    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-direct {v4, v7, v1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 3096
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v1

    const/4 v7, 0x0

    .line 3100
    :try_start_50
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3101
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_63} :catch_211

    .line 3102
    :try_start_63
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    const/16 v9, 0x3e8

    const/16 v10, 0x408

    const/16 v11, 0x1a0

    invoke-static {v7, v11, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 3104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3105
    iget-object v9, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7f
    :goto_7f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_202

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 3106
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_8f} :catch_108

    if-nez v11, :cond_bd

    .line 3107
    :try_start_91
    const-string v11, "android"

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7f

    .line 3108
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " due to missing metadata"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_b6} :catch_b7

    goto :goto_7f

    :catch_b7
    move-exception v0

    move-object v7, v1

    :goto_b9
    move-object/from16 p1, v4

    goto/16 :goto_214

    .line 3112
    :cond_bd
    :try_start_bd
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v11

    if-eqz v11, :cond_c8

    goto :goto_7f

    .line 3119
    :cond_c8
    invoke-static {v10, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDataDir(Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/io/File;

    move-result-object v11
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_cc} :catch_108

    if-nez v11, :cond_d2

    .line 3120
    :try_start_ce
    const-string/jumbo v11, "null"
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_b7

    goto :goto_d6

    :cond_d2
    :try_start_d2
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 3122
    :goto_d6
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isDebuggable()Z

    move-result v12

    .line 3123
    new-instance v13, Landroid/util/IntArray;

    invoke-direct {v13}, Landroid/util/IntArray;-><init>()V

    .line 3124
    array-length v14, v5

    move v15, v6

    :goto_e5
    if-ge v15, v14, :cond_10c

    aget v6, v5, v15
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e9} :catch_108

    move-object/from16 p1, v4

    .line 3125
    :try_start_eb
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 3126
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    .line 3125
    invoke-static {v6, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    invoke-interface {v4, v0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/util/IntArray;->addAll([I)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    const/4 v6, 0x0

    goto :goto_e5

    :catch_104
    move-exception v0

    :goto_105
    move-object v7, v1

    goto/16 :goto_214

    :catch_108
    move-exception v0

    move-object/from16 p1, v4

    goto :goto_105

    :cond_10c
    move-object/from16 p1, v4

    const/16 v0, 0x20

    .line 3130
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_11d

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    const/4 v6, 0x0

    goto/16 :goto_7f

    :cond_11d
    const/4 v0, 0x0

    .line 3153
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3154
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3155
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3156
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUid()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_13f

    .line 3157
    const-string v0, " 1 "

    goto :goto_141

    :cond_13f
    const-string v0, " 0 "

    :goto_141
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3158
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3159
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3160
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3161
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3162
    invoke-virtual {v13}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 3163
    invoke-virtual {v13}, Landroid/util/IntArray;->size()I

    move-result v4

    if-lez v4, :cond_178

    const/4 v4, 0x0

    .line 3164
    invoke-virtual {v13, v4}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    :goto_167
    if-ge v6, v0, :cond_17f

    .line 3166
    const-string v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3167
    invoke-virtual {v13, v6}, Landroid/util/IntArray;->get(I)I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_167

    :cond_178
    const/4 v4, 0x0

    .line 3170
    const-string/jumbo v0, "none"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3172
    :cond_17f
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3173
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isProfileableByShell()Z

    move-result v0
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_18a} :catch_104

    const-string v6, "0"

    const-string v11, "1"

    if-eqz v0, :cond_192

    move-object v0, v11

    goto :goto_193

    :cond_192
    move-object v0, v6

    :goto_193
    :try_start_193
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3174
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3175
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getLongVersionCode()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3176
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3177
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_1b2

    move-object v6, v11

    :cond_1b2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3178
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3179
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 3180
    const-string v0, "@system"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f3

    .line 3181
    :cond_1c4
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isProduct()Z

    move-result v0

    if-eqz v0, :cond_1d0

    .line 3182
    const-string v0, "@product"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f3

    .line 3183
    :cond_1d0
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1ee

    .line 3184
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ee

    .line 3185
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f3

    .line 3187
    :cond_1ee
    const-string v0, "@null"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3189
    :goto_1f3
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3190
    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-object/from16 v0, p0

    move v6, v4

    move-object/from16 v4, p1

    goto/16 :goto_7f

    :cond_202
    move-object/from16 p1, v4

    .line 3192
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 3193
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3194
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 3195
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_210} :catch_104

    return-void

    :catch_211
    move-exception v0

    goto/16 :goto_b9

    .line 3197
    :goto_214
    const-string v1, "Failed to write packages.list"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3198
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3199
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    return-void
.end method

.method public writePackageRestrictions(IJZ)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2383
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v2

    const/4 v3, 0x0

    .line 2385
    :try_start_9
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_29d
    .catchall {:try_start_9 .. :try_end_c} :catchall_27e

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p4, :cond_3e

    .line 2387
    :try_start_10
    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    sub-int/2addr v7, v6

    if-gez v7, :cond_39

    .line 2389
    const-string v0, "PackageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cancel writing package restrictions for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_36

    if-eqz v2, :cond_2ad

    .line 2568
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catchall_36
    move-exception v0

    goto/16 :goto_29b

    .line 2392
    :cond_39
    :try_start_39
    iget-object v8, v0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1, v7}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_36

    .line 2396
    :cond_3e
    :try_start_3e
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_28c
    .catchall {:try_start_3e .. :try_end_42} :catchall_36

    .line 2403
    :try_start_42
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_289

    .line 2405
    :try_start_43
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_49} :catch_281
    .catchall {:try_start_43 .. :try_end_49} :catchall_27e

    .line 2406
    :try_start_49
    invoke-static {v7}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v8

    .line 2407
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v3, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2408
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v8, v9, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2411
    const-string/jumbo v9, "package-restrictions"

    invoke-interface {v8, v3, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2417
    iget-object v9, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_67
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_240

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 2418
    invoke-virtual {v10, v1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    .line 2425
    const-string/jumbo v12, "pkg"

    invoke-interface {v8, v3, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2426
    const-string/jumbo v12, "name"

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2427
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_9e

    .line 2428
    const-string v10, "ceDataInode"

    .line 2429
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v12

    .line 2428
    invoke-interface {v8, v3, v10, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9e

    :catchall_9b
    move-exception v0

    goto/16 :goto_284

    .line 2431
    :cond_9e
    :goto_9e
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide v12

    cmp-long v10, v12, v14

    if-eqz v10, :cond_af

    .line 2432
    const-string v10, "deDataInode"

    .line 2433
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide v12

    .line 2432
    invoke-interface {v8, v3, v10, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2435
    :cond_af
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v10

    if-nez v10, :cond_ba

    .line 2436
    const-string v10, "inst"

    invoke-interface {v8, v3, v10, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2438
    :cond_ba
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v10

    if-eqz v10, :cond_c6

    .line 2439
    const-string/jumbo v10, "stopped"

    invoke-interface {v8, v3, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2441
    :cond_c6
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v10

    if-eqz v10, :cond_d2

    .line 2442
    const-string/jumbo v10, "nl"

    invoke-interface {v8, v3, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2444
    :cond_d2
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v10

    if-eqz v10, :cond_dd

    .line 2445
    const-string v10, "hidden"

    invoke-interface {v8, v3, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2447
    :cond_dd
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v10

    if-eqz v10, :cond_ec

    .line 2448
    const-string v10, "distraction_flags"

    .line 2449
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v12

    .line 2448
    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2451
    :cond_ec
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v10

    if-eqz v10, :cond_f8

    .line 2452
    const-string/jumbo v10, "suspended"

    invoke-interface {v8, v3, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2454
    :cond_f8
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v10

    if-eqz v10, :cond_103

    .line 2455
    const-string v10, "instant-app"

    invoke-interface {v8, v3, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2457
    :cond_103
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v10

    if-eqz v10, :cond_10f

    .line 2458
    const-string/jumbo v10, "virtual-preload"

    invoke-interface {v8, v3, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2460
    :cond_10f
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v10

    if-eqz v10, :cond_11e

    .line 2461
    const-string v10, "enabled"

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v12

    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2463
    :cond_11e
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_12d

    .line 2464
    const-string v10, "enabledCaller"

    .line 2465
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v12

    .line 2464
    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2467
    :cond_12d
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v10

    if-eqz v10, :cond_13c

    .line 2468
    const-string v10, "install-reason"

    .line 2469
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v12

    .line 2468
    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2471
    :cond_13c
    const-string v10, "first-install-time"

    .line 2472
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v12

    .line 2471
    invoke-interface {v8, v3, v10, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2473
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v10

    if-eqz v10, :cond_155

    .line 2475
    const-string/jumbo v10, "uninstall-reason"

    .line 2476
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v12

    .line 2475
    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2478
    :cond_155
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_164

    .line 2479
    const-string v10, "harmful-app-warning"

    .line 2480
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v12

    .line 2479
    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2482
    :cond_164
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_174

    .line 2483
    const-string/jumbo v10, "splash-screen-theme"

    .line 2484
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v12

    .line 2483
    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2486
    :cond_174
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getMinAspectRatio()I

    move-result v10

    if-eqz v10, :cond_184

    .line 2488
    const-string/jumbo v10, "min-aspect-ratio"

    .line 2489
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getMinAspectRatio()I

    move-result v12

    .line 2488
    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2491
    :cond_184
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v10

    if-eqz v10, :cond_1c5

    move v10, v5

    .line 2492
    :goto_18b
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v12

    if-ge v10, v12, :cond_1c5

    .line 2494
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserPackage;

    .line 2495
    const-string/jumbo v13, "suspend-params"

    invoke-interface {v8, v3, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2496
    const-string/jumbo v13, "suspending-package"

    iget-object v12, v12, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-interface {v8, v3, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2503
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz v12, :cond_1bc

    .line 2505
    invoke-virtual {v12, v8}, Lcom/android/server/pm/pkg/SuspendParams;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2507
    :cond_1bc
    const-string/jumbo v12, "suspend-params"

    invoke-interface {v8, v3, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_18b

    .line 2510
    :cond_1c5
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object v10

    if-eqz v10, :cond_1fb

    .line 2511
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v12

    if-lez v12, :cond_1fb

    .line 2512
    const-string v12, "enabled-components"

    invoke-interface {v8, v3, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v12, v5

    .line 2513
    :goto_1d7
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_1f6

    .line 2514
    const-string v13, "item"

    invoke-interface {v8, v3, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2515
    const-string/jumbo v13, "name"

    .line 2516
    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2515
    invoke-interface {v8, v3, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2517
    const-string v13, "item"

    invoke-interface {v8, v3, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1d7

    .line 2519
    :cond_1f6
    const-string v10, "enabled-components"

    invoke-interface {v8, v3, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2521
    :cond_1fb
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object v10

    if-eqz v10, :cond_231

    .line 2522
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v12

    if-lez v12, :cond_231

    .line 2523
    const-string v12, "disabled-components"

    invoke-interface {v8, v3, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v12, v5

    .line 2524
    :goto_20d
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_22c

    .line 2525
    const-string v13, "item"

    invoke-interface {v8, v3, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2526
    const-string/jumbo v13, "name"

    .line 2527
    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2526
    invoke-interface {v8, v3, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2528
    const-string v13, "item"

    invoke-interface {v8, v3, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_20d

    .line 2530
    :cond_22c
    const-string v10, "disabled-components"

    invoke-interface {v8, v3, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2532
    :cond_231
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Lcom/android/server/pm/Settings;->writeArchiveStateLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/pkg/ArchiveState;)V

    .line 2534
    const-string/jumbo v10, "pkg"

    invoke-interface {v8, v3, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_67

    .line 2537
    :cond_240
    invoke-virtual {v0, v8, v1, v6}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;IZ)V

    .line 2538
    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    .line 2539
    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    .line 2540
    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2541
    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    .line 2543
    const-string/jumbo v0, "package-restrictions"

    invoke-interface {v8, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2545
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 2546
    monitor-exit v4
    :try_end_259
    .catchall {:try_start_49 .. :try_end_259} :catchall_9b

    :try_start_259
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2548
    invoke-virtual {v2, v7}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package-user-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2556
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, p2

    .line 2555
    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_27a
    .catch Ljava/io/IOException; {:try_start_259 .. :try_end_27a} :catch_281
    .catchall {:try_start_259 .. :try_end_27a} :catchall_27e

    .line 2568
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catchall_27e
    move-exception v0

    move-object v1, v0

    goto :goto_2ae

    :catch_281
    move-exception v0

    move-object v3, v7

    goto :goto_29e

    .line 2546
    :goto_284
    :try_start_284
    monitor-exit v4
    :try_end_285
    .catchall {:try_start_284 .. :try_end_285} :catchall_9b

    :try_start_285
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_289
    .catch Ljava/io/IOException; {:try_start_285 .. :try_end_289} :catch_281
    .catchall {:try_start_285 .. :try_end_289} :catchall_27e

    :catchall_289
    move-exception v0

    move-object v3, v7

    goto :goto_29b

    :catch_28c
    move-exception v0

    .line 2398
    :try_start_28d
    const-string v1, "PackageManager"

    const-string v5, "Unable to write package manager package restrictions,  current changes will be lost at reboot"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2401
    monitor-exit v4
    :try_end_295
    .catchall {:try_start_28d .. :try_end_295} :catchall_36

    if-eqz v2, :cond_2ad

    .line 2568
    :goto_297
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    goto :goto_2ad

    .line 2403
    :goto_29b
    :try_start_29b
    monitor-exit v4
    :try_end_29c
    .catchall {:try_start_29b .. :try_end_29c} :catchall_36

    :try_start_29c
    throw v0
    :try_end_29d
    .catch Ljava/io/IOException; {:try_start_29c .. :try_end_29d} :catch_29d
    .catchall {:try_start_29c .. :try_end_29d} :catchall_27e

    :catch_29d
    move-exception v0

    .line 2561
    :goto_29e
    :try_start_29e
    const-string v1, "PackageManager"

    const-string v4, "Unable to write package manager package restrictions,  current changes will be lost at reboot"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_2aa

    .line 2565
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2aa
    .catchall {:try_start_29e .. :try_end_2aa} :catchall_27e

    :cond_2aa
    if-eqz v2, :cond_2ad

    goto :goto_297

    :cond_2ad
    :goto_2ad
    return-void

    :goto_2ae
    if-eqz v2, :cond_2b8

    .line 2383
    :try_start_2b0
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_2b3
    .catchall {:try_start_2b0 .. :try_end_2b3} :catchall_2b4

    goto :goto_2b8

    :catchall_2b4
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2b8
    :goto_2b8
    throw v1
.end method

.method public writePackageRestrictions([Ljava/lang/Integer;)V
    .registers 8

    const/4 v0, 0x5

    .line 2369
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->invalidatePackageCache(I)V

    .line 2371
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2372
    array-length v2, p1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_19

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    .line 2373
    invoke-virtual {p0, v4, v0, v1, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictions(IJZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_19
    return-void
.end method

.method public writePackageRestrictionsLPr(I)V
    .registers 3

    const/4 v0, 0x0

    .line 2344
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    return-void
.end method

.method public writePackageRestrictionsLPr(IZ)V
    .registers 10

    const/4 v0, 0x5

    .line 2348
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->invalidatePackageCache(I)V

    .line 2351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    if-eqz p2, :cond_e

    .line 2354
    invoke-virtual {p0, p1, v4, v5, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictions(IJZ)V

    return-void

    .line 2359
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2360
    :try_start_11
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2361
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2362
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_34

    .line 2363
    new-instance v1, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v3, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Settings;IJZ)V

    .line 2364
    iget-object p0, v2, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_34
    move-exception v0

    move-object p0, v0

    .line 2362
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_34

    throw p0
.end method

.method public writePermissionStateForUserLPr(IZ)V
    .registers 11

    if-eqz p2, :cond_13

    .line 6081
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    const/4 v7, 0x1

    const/4 v5, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUser(ILcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;Z)V

    return-void

    :cond_13
    move v1, p1

    .line 6084
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    return-void
.end method

.method public writePersistentPreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .registers 6

    const/4 v0, 0x0

    .line 2285
    const-string/jumbo v1, "persistent-preferred-activities"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2286
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-eqz p0, :cond_31

    .line 2288
    invoke-virtual {p0}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 2289
    const-string v2, "item"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2290
    invoke-virtual {p2, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2291
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_19

    .line 2294
    :cond_31
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writePreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;IZ)V
    .registers 7

    const/4 v0, 0x0

    .line 2271
    const-string/jumbo v1, "preferred-activities"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2272
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PreferredIntentResolver;

    if-eqz p0, :cond_31

    .line 2274
    invoke-virtual {p0}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PreferredActivity;

    .line 2275
    const-string v2, "item"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2276
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 2277
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_19

    .line 2280
    :cond_31
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeSigningKeySetLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 7

    const/4 p0, 0x0

    .line 3410
    const-string/jumbo v0, "proper-signing-keyset"

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3411
    const-string v1, "identifier"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-interface {p1, p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3412
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeSplitVersionsLPr(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[I)V
    .registers 10

    .line 4646
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result p0

    if-nez p0, :cond_32

    array-length p0, p2

    array-length v0, p3

    if-eq p0, v0, :cond_11

    goto :goto_32

    .line 4650
    :cond_11
    array-length p0, p2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, p0, :cond_32

    .line 4652
    aget-object v1, p2, v0

    .line 4653
    aget v2, p3, v0

    const/4 v3, 0x0

    .line 4654
    const-string/jumbo v4, "split-version"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4655
    const-string/jumbo v5, "name"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4656
    const-string/jumbo v1, "version"

    invoke-interface {p1, v3, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4657
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_32
    :goto_32
    return-void
.end method

.method public writeUpgradeKeySetsLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 9

    .line 3417
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 3418
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object p0

    array-length p2, p0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, p2, :cond_22

    aget-wide v1, p0, v0

    const/4 v3, 0x0

    .line 3419
    const-string/jumbo v4, "upgrade-keyset"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3420
    const-string v5, "identifier"

    invoke-interface {p1, v3, v5, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3421
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_22
    return-void
.end method

.method public writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .registers 7

    .line 1396
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_43

    .line 1400
    :cond_b
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_43

    .line 1404
    :cond_16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    if-nez p2, :cond_2b

    .line 1406
    sget-object v2, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    goto :goto_31

    .line 1407
    :cond_2b
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 1408
    :goto_31
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1409
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_1a

    :cond_43
    :goto_43
    return-void
.end method

.method public writeUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J[Z)V
    .registers 13

    .line 2697
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result p0

    if-nez p0, :cond_3a

    array-length p0, p2

    array-length v0, p3

    if-eq p0, v0, :cond_11

    goto :goto_3a

    .line 2701
    :cond_11
    array-length p0, p2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, p0, :cond_3a

    .line 2703
    aget-object v1, p2, v0

    .line 2704
    aget-wide v2, p3, v0

    .line 2705
    aget-boolean v4, p4, v0

    const/4 v5, 0x0

    .line 2706
    const-string/jumbo v6, "uses-sdk-lib"

    invoke-interface {p1, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2707
    const-string/jumbo v7, "name"

    invoke-interface {p1, v5, v7, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2708
    const-string/jumbo v1, "version"

    invoke-interface {p1, v5, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2709
    const-string/jumbo v1, "optional"

    invoke-interface {p1, v5, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2710
    invoke-interface {p1, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_3a
    :goto_3a
    return-void
.end method

.method public writeUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J)V
    .registers 11

    .line 2716
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result p0

    if-nez p0, :cond_32

    array-length p0, p2

    array-length v0, p3

    if-eq p0, v0, :cond_11

    goto :goto_32

    .line 2720
    :cond_11
    array-length p0, p2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, p0, :cond_32

    .line 2722
    aget-object v1, p2, v0

    .line 2723
    aget-wide v2, p3, v0

    const/4 v4, 0x0

    .line 2724
    const-string/jumbo v5, "uses-static-lib"

    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2725
    const-string/jumbo v6, "name"

    invoke-interface {p1, v4, v6, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2726
    const-string/jumbo v1, "version"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2727
    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_32
    :goto_32
    return-void
.end method
