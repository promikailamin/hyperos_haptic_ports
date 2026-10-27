.class public Landroid/content/pm/ApplicationInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "ApplicationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ApplicationInfo$RawExternalStorage;,
        Landroid/content/pm/ApplicationInfo$DisplayNameComparator;,
        Landroid/content/pm/ApplicationInfo$HiddenApiEnforcementPolicy;,
        Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;,
        Landroid/content/pm/ApplicationInfo$MemtagMode;,
        Landroid/content/pm/ApplicationInfo$GwpAsanMode;,
        Landroid/content/pm/ApplicationInfo$PageSizeAppCompatFlags;,
        Landroid/content/pm/ApplicationInfo$Category;,
        Landroid/content/pm/ApplicationInfo$ApplicationInfoPrivateFlagsExt;,
        Landroid/content/pm/ApplicationInfo$ApplicationInfoPrivateFlags;
    }
.end annotation


# static fields
.field public static final blacklist AUTO_REVOKE_ALLOWED:I = 0x0

.field public static final blacklist AUTO_REVOKE_DISALLOWED:I = 0x2

.field public static final blacklist AUTO_REVOKE_DISCOURAGED:I = 0x1

.field public static final whitelist CATEGORY_ACCESSIBILITY:I = 0x8

.field public static final whitelist CATEGORY_AUDIO:I = 0x1

.field public static final whitelist CATEGORY_GAME:I = 0x0

.field public static final whitelist CATEGORY_IMAGE:I = 0x3

.field public static final whitelist CATEGORY_MAPS:I = 0x6

.field public static final whitelist CATEGORY_NEWS:I = 0x5

.field public static final whitelist CATEGORY_PRODUCTIVITY:I = 0x7

.field public static final whitelist CATEGORY_SOCIAL:I = 0x4

.field public static final whitelist CATEGORY_UNDEFINED:I = -0x1

.field public static final whitelist CATEGORY_VIDEO:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_ALLOW_BACKUP:I = 0x8000

.field public static final whitelist FLAG_ALLOW_CLEAR_USER_DATA:I = 0x40

.field public static final whitelist FLAG_ALLOW_TASK_REPARENTING:I = 0x20

.field public static final whitelist FLAG_DEBUGGABLE:I = 0x2

.field public static final whitelist FLAG_EXTERNAL_STORAGE:I = 0x40000

.field public static final whitelist FLAG_EXTRACT_NATIVE_LIBS:I = 0x10000000

.field public static final whitelist FLAG_FACTORY_TEST:I = 0x10

.field public static final whitelist FLAG_FULL_BACKUP_ONLY:I = 0x4000000

.field public static final whitelist FLAG_HARDWARE_ACCELERATED:I = 0x20000000

.field public static final whitelist FLAG_HAS_CODE:I = 0x4

.field public static final whitelist FLAG_INSTALLED:I = 0x800000

.field public static final whitelist FLAG_IS_DATA_ONLY:I = 0x1000000

.field public static final whitelist FLAG_IS_GAME:I = 0x2000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_KILL_AFTER_RESTORE:I = 0x10000

.field public static final whitelist FLAG_LARGE_HEAP:I = 0x100000

.field public static final whitelist FLAG_MULTIARCH:I = -0x80000000

.field public static final whitelist FLAG_PERSISTENT:I = 0x8

.field public static final whitelist FLAG_RESIZEABLE_FOR_SCREENS:I = 0x1000

.field public static final whitelist FLAG_RESTORE_ANY_VERSION:I = 0x20000

.field public static final whitelist FLAG_STOPPED:I = 0x200000

.field public static final whitelist FLAG_SUPPORTS_LARGE_SCREENS:I = 0x800

.field public static final whitelist FLAG_SUPPORTS_NORMAL_SCREENS:I = 0x400

.field public static final whitelist FLAG_SUPPORTS_RTL:I = 0x400000

.field public static final whitelist FLAG_SUPPORTS_SCREEN_DENSITIES:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_SUPPORTS_SMALL_SCREENS:I = 0x200

.field public static final whitelist FLAG_SUPPORTS_XLARGE_SCREENS:I = 0x80000

.field public static final whitelist FLAG_SUSPENDED:I = 0x40000000

.field public static final whitelist FLAG_SYSTEM:I = 0x1

.field public static final whitelist FLAG_TEST_ONLY:I = 0x100

.field public static final whitelist FLAG_UPDATED_SYSTEM_APP:I = 0x80

.field public static final whitelist FLAG_USES_CLEARTEXT_TRAFFIC:I = 0x8000000

.field public static final whitelist FLAG_VM_SAFE_MODE:I = 0x4000

.field public static final whitelist GWP_ASAN_ALWAYS:I = 0x1

.field public static final whitelist GWP_ASAN_DEFAULT:I = -0x1

.field public static final whitelist GWP_ASAN_NEVER:I = 0x0

.field public static final greylist-max-o HIDDEN_API_ENFORCEMENT_DEFAULT:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist HIDDEN_API_ENFORCEMENT_DISABLED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist HIDDEN_API_ENFORCEMENT_ENABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o HIDDEN_API_ENFORCEMENT_JUST_WARN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field private static final greylist-max-o HIDDEN_API_ENFORCEMENT_MAX:I = 0x2

.field private static final blacklist HIDDEN_API_ENFORCEMENT_MIN:I = -0x1

.field public static final whitelist MEMTAG_ASYNC:I = 0x1

.field public static final whitelist MEMTAG_DEFAULT:I = -0x1

.field public static final whitelist MEMTAG_OFF:I = 0x0

.field public static final whitelist MEMTAG_SYNC:I = 0x2

.field public static final greylist-max-o METADATA_PRELOADED_FONTS:Ljava/lang/String; = "preloaded_fonts"

.field public static final blacklist PAGE_SIZE_APP_COMPAT_FLAG_ELF_NOT_ALIGNED:I = 0x4

.field public static final blacklist PAGE_SIZE_APP_COMPAT_FLAG_ERROR:I = -0x1

.field public static final blacklist PAGE_SIZE_APP_COMPAT_FLAG_MANIFEST_OVERRIDE_DISABLED:I = 0x40

.field public static final blacklist PAGE_SIZE_APP_COMPAT_FLAG_MANIFEST_OVERRIDE_ENABLED:I = 0x20

.field public static final blacklist PAGE_SIZE_APP_COMPAT_FLAG_MAX:I = 0x80

.field public static final blacklist PAGE_SIZE_APP_COMPAT_FLAG_SETTINGS_OVERRIDE_DISABLED:I = 0x10

.field public static final blacklist PAGE_SIZE_APP_COMPAT_FLAG_SETTINGS_OVERRIDE_ENABLED:I = 0x8

.field public static final blacklist PAGE_SIZE_APP_COMPAT_FLAG_UNCOMPRESSED_LIBS_NOT_ALIGNED:I = 0x2

.field public static final blacklist PAGE_SIZE_APP_COMPAT_FLAG_UNDEFINED:I = 0x0

.field public static final greylist-max-o PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE:I = 0x400

.field public static final greylist-max-o PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION:I = 0x1000

.field public static final greylist-max-o PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE:I = 0x800

.field public static final blacklist PRIVATE_FLAG_ALLOW_AUDIO_PLAYBACK_CAPTURE:I = 0x8000000

.field public static final blacklist PRIVATE_FLAG_ALLOW_CLEAR_USER_DATA_ON_FAILED_RESTORE:I = 0x4000000

.field public static final blacklist PRIVATE_FLAG_ALLOW_NATIVE_HEAP_POINTER_TAGGING:I = -0x80000000

.field public static final greylist-max-o PRIVATE_FLAG_BACKUP_IN_FOREGROUND:I = 0x2000

.field public static final greylist-max-o PRIVATE_FLAG_CANT_SAVE_STATE:I = 0x2

.field public static final greylist-max-o PRIVATE_FLAG_DEFAULT_TO_DEVICE_PROTECTED_STORAGE:I = 0x20

.field public static final greylist-max-o PRIVATE_FLAG_DIRECT_BOOT_AWARE:I = 0x40

.field public static final blacklist PRIVATE_FLAG_EXT_ALLOWLISTED_FOR_HIDDEN_APIS:I = 0x10

.field public static final blacklist PRIVATE_FLAG_EXT_ATTRIBUTIONS_ARE_USER_VISIBLE:I = 0x4

.field public static final blacklist PRIVATE_FLAG_EXT_CPU_OVERRIDE:I = 0x20

.field public static final blacklist PRIVATE_FLAG_EXT_ENABLE_ON_BACK_INVOKED_CALLBACK:I = 0x8

.field public static final blacklist PRIVATE_FLAG_EXT_NOT_LAUNCHED:I = 0x40

.field public static final blacklist PRIVATE_FLAG_EXT_PROFILEABLE:I = 0x1

.field public static final blacklist PRIVATE_FLAG_EXT_REQUEST_FOREGROUND_SERVICE_EXEMPTION:I = 0x2

.field public static final blacklist PRIVATE_FLAG_EXT_RUN_IN_PCC_SANDBOX:I = 0x80

.field public static final greylist-max-o PRIVATE_FLAG_HAS_DOMAIN_URLS:I = 0x10

.field public static final blacklist PRIVATE_FLAG_HAS_FRAGILE_USER_DATA:I = 0x1000000

.field public static final greylist-max-o PRIVATE_FLAG_HIDDEN:I = 0x1

.field public static final greylist-max-o PRIVATE_FLAG_INSTANT:I = 0x80

.field public static final greylist-max-o PRIVATE_FLAG_ISOLATED_SPLIT_LOADING:I = 0x8000

.field public static final blacklist PRIVATE_FLAG_IS_RESOURCE_OVERLAY:I = 0x10000000

.field public static final blacklist PRIVATE_FLAG_ODM:I = 0x40000000

.field public static final greylist-max-o PRIVATE_FLAG_OEM:I = 0x20000

.field public static final greylist-max-o PRIVATE_FLAG_PARTIALLY_DIRECT_BOOT_AWARE:I = 0x100

.field public static final greylist PRIVATE_FLAG_PRIVILEGED:I = 0x8

.field public static final greylist-max-o PRIVATE_FLAG_PRODUCT:I = 0x80000

.field public static final blacklist PRIVATE_FLAG_PROFILEABLE_BY_SHELL:I = 0x800000

.field public static final blacklist PRIVATE_FLAG_REQUEST_LEGACY_EXTERNAL_STORAGE:I = 0x20000000

.field public static final greylist-max-o PRIVATE_FLAG_REQUIRED_FOR_SYSTEM_USER:I = 0x200

.field public static final greylist-max-o PRIVATE_FLAG_SIGNED_WITH_PLATFORM_KEY:I = 0x100000

.field public static final greylist-max-o PRIVATE_FLAG_STATIC_SHARED_LIBRARY:I = 0x4000

.field public static final blacklist PRIVATE_FLAG_SYSTEM_EXT:I = 0x200000

.field public static final blacklist PRIVATE_FLAG_USES_NON_SDK_API:I = 0x400000

.field public static final blacklist PRIVATE_FLAG_USE_EMBEDDED_DEX:I = 0x2000000

.field public static final greylist-max-o PRIVATE_FLAG_VENDOR:I = 0x40000

.field public static final greylist-max-o PRIVATE_FLAG_VIRTUAL_PRELOAD:I = 0x10000

.field public static final whitelist RAW_EXTERNAL_STORAGE_ACCESS_DEFAULT:I = 0x0

.field public static final whitelist RAW_EXTERNAL_STORAGE_ACCESS_NOT_REQUESTED:I = 0x2

.field public static final whitelist RAW_EXTERNAL_STORAGE_ACCESS_REQUESTED:I = 0x1

.field public static final whitelist ZEROINIT_DEFAULT:I = -0x1

.field public static final whitelist ZEROINIT_DISABLED:I = 0x0

.field public static final whitelist ZEROINIT_ENABLED:I = 0x1

.field private static final blacklist sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

.field private static final blacklist sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field public blacklist allowCrossUidActivitySwitchFromBelow:Z

.field public whitelist appComponentFactory:Ljava/lang/String;

.field public whitelist backupAgentName:Ljava/lang/String;

.field public whitelist category:I

.field public greylist-max-o classLoaderName:Ljava/lang/String;

.field public whitelist className:Ljava/lang/String;

.field public whitelist compatibleWidthLimitDp:I

.field public whitelist compileSdkVersion:I

.field public whitelist compileSdkVersionCodename:Ljava/lang/String;

.field public blacklist createTimestamp:J

.field public whitelist credentialProtectedDataDir:Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public blacklist crossProfile:Z

.field public whitelist dataDir:Ljava/lang/String;

.field public blacklist dataExtractionRulesRes:I

.field public whitelist descriptionRes:I

.field public whitelist deviceProtectedDataDir:Ljava/lang/String;

.field public whitelist enabled:Z

.field public greylist enabledSetting:I

.field public whitelist flags:I

.field public greylist-max-r fullBackupContent:I

.field private blacklist gwpAsanMode:I

.field public blacklist hiddenUntilInstalled:Z

.field public blacklist iconRes:I

.field public greylist installLocation:I

.field public whitelist largestWidthLimitDp:I

.field private blacklist localeConfigRes:I

.field public greylist-max-o longVersionCode:J

.field private blacklist mAppClassNamesByProcess:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHiddenApiPolicy:I

.field private blacklist mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPageSizeAppCompatFlags:I

.field public whitelist manageSpaceActivityName:Ljava/lang/String;

.field public greylist-max-o maxAspectRatio:F

.field private blacklist memtagMode:I

.field public blacklist minAspectRatio:F

.field public whitelist minSdkVersion:I

.field private blacklist nativeHeapZeroInitialized:I

.field public whitelist nativeLibraryDir:Ljava/lang/String;

.field public greylist nativeLibraryRootDir:Ljava/lang/String;

.field public greylist-max-o nativeLibraryRootRequiresIsa:Z

.field public greylist-max-o networkSecurityConfigRes:I

.field public blacklist optionalSharedLibraryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist overlayPaths:[Ljava/lang/String;

.field public whitelist permission:Ljava/lang/String;

.field public greylist primaryCpuAbi:Ljava/lang/String;

.field public greylist privateFlags:I

.field public blacklist privateFlagsExt:I

.field public whitelist processName:Ljava/lang/String;

.field public whitelist publicSourceDir:Ljava/lang/String;

.field private blacklist requestRawExternalStorageAccess:Ljava/lang/Boolean;

.field public whitelist requiresSmallestWidthDp:I

.field public greylist resourceDirs:[Ljava/lang/String;

.field public blacklist roundIconRes:I

.field public greylist scanPublicSourceDir:Ljava/lang/String;

.field public greylist scanSourceDir:Ljava/lang/String;

.field public greylist-max-o seInfo:Ljava/lang/String;

.field public greylist-max-o seInfoUser:Ljava/lang/String;

.field public greylist secondaryCpuAbi:Ljava/lang/String;

.field public greylist secondaryNativeLibraryDir:Ljava/lang/String;

.field public whitelist sharedLibraryFiles:[Ljava/lang/String;

.field public blacklist sharedLibraryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist sourceDir:Ljava/lang/String;

.field public greylist-max-o splitClassLoaderNames:[Ljava/lang/String;

.field public greylist-max-o splitDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field public whitelist splitNames:[Ljava/lang/String;

.field public whitelist splitPublicSourceDirs:[Ljava/lang/String;

.field public whitelist splitSourceDirs:[Ljava/lang/String;

.field public whitelist storageUuid:Ljava/util/UUID;

.field public whitelist targetSandboxVersion:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist targetSdkVersion:I

.field public whitelist taskAffinity:Ljava/lang/String;

.field public whitelist theme:I

.field public whitelist uiOptions:I

.field public whitelist uid:I

.field public blacklist unalignedNativeLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

.field public greylist versionCode:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist volumeUuid:Ljava/lang/String;

.field public blacklist zygotePreloadName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    sput-object v0, Landroid/content/pm/ApplicationInfo;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    .line 77
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 78
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Landroid/content/pm/ApplicationInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 2252
    new-instance v0, Landroid/content/pm/ApplicationInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 2062
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 165
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 179
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 508
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 930
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 938
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 946
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1276
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1282
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 1289
    const/4 v2, -0x1

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1335
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1534
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->mPageSizeAppCompatFlags:I

    .line 1604
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    .line 1643
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    .line 1674
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    .line 1689
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    .line 1742
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 2063
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    .line 2064
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/ApplicationInfo;)V
    .registers 5

    .line 2067
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 165
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 179
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 508
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 930
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 938
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 946
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1276
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1282
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 1289
    const/4 v2, -0x1

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1335
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1534
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->mPageSizeAppCompatFlags:I

    .line 1604
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    .line 1643
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    .line 1674
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    .line 1689
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    .line 1742
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 2068
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 2069
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 2070
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 2071
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2072
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2073
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->theme:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 2074
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2075
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 2076
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 2077
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 2078
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 2079
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 2080
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 2081
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 2082
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    .line 2083
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    .line 2084
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2085
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 2086
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 2087
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 2088
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 2089
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 2090
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 2091
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 2092
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 2093
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 2094
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 2095
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 2096
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 2097
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 2098
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 2099
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 2100
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 2101
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 2102
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->optionalSharedLibraryInfos:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->optionalSharedLibraryInfos:Ljava/util/List;

    .line 2103
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2104
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 2105
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 2106
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2107
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 2108
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2109
    iget-wide v0, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 2110
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 2111
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 2112
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 2113
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 2114
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 2115
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 2116
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 2117
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 2118
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 2119
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    .line 2120
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 2121
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->category:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2122
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 2123
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 2124
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 2125
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 2126
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->iconRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 2127
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    .line 2128
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 2129
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 2130
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 2131
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    .line 2132
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    .line 2133
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    .line 2134
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    .line 2135
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    .line 2136
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    .line 2137
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    .line 2138
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    .line 2139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    .line 2140
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->mPageSizeAppCompatFlags:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->mPageSizeAppCompatFlags:I

    .line 2141
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->unalignedNativeLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->unalignedNativeLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    .line 2142
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 10

    .line 2267
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 165
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 179
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 508
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 930
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 938
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 946
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1276
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1282
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 1289
    const/4 v2, -0x1

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1335
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1534
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->mPageSizeAppCompatFlags:I

    .line 1604
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    .line 1643
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    .line 1674
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    .line 1689
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    .line 1742
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 2268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 2269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 2270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 2273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 2275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 2276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 2277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 2278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 2279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_87

    .line 2280
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 2281
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    invoke-static {v2}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 2283
    :cond_87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    .line 2284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    .line 2285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 2287
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 2288
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 2289
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 2290
    const-class v2, [I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 2291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 2292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 2293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 2294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d4

    move v2, v1

    goto :goto_d5

    :cond_d4
    move v2, v0

    :goto_d5
    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 2295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 2296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 2297
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 2298
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 2299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 2300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 2301
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 2302
    sget-object v2, Landroid/content/pm/SharedLibraryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 2303
    sget-object v2, Landroid/content/pm/SharedLibraryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->optionalSharedLibraryInfos:Ljava/util/List;

    .line 2304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 2306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 2307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 2309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2310
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 2311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_144

    move v2, v1

    goto :goto_145

    :cond_144
    move v2, v0

    :goto_145
    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 2312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 2313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 2314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 2315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 2316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 2317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 2318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 2319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 2320
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    .line 2321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 2322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 2324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 2325
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 2326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 2327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 2328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 2329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 2330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    .line 2331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 2332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c7

    move v2, v1

    goto :goto_1c8

    :cond_1c7
    move v2, v0

    :goto_1c8
    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    .line 2333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    .line 2334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    .line 2335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    .line 2336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    .line 2337
    sget-object v2, Landroid/content/pm/ApplicationInfo;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    .line 2338
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    .line 2339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2340
    if-lez v2, :cond_210

    .line 2341
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    .line 2342
    move v4, v0

    :goto_1fe
    if-ge v4, v2, :cond_210

    .line 2343
    iget-object v5, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2342
    add-int/lit8 v4, v4, 0x1

    goto :goto_1fe

    .line 2346
    :cond_210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    .line 2347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_21d

    move v0, v1

    :cond_21d
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    .line 2348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->mPageSizeAppCompatFlags:I

    .line 2349
    sget-object v0, Lcom/android/internal/content/LibraryAlignmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/content/LibraryAlignmentInfo;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->unalignedNativeLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    .line 2351
    sget-object v0, Landroid/content/pm/ApplicationInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 2352
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_241

    .line 2353
    iput-object v3, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 2355
    :cond_241
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist getCategoryTitle(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .registers 2

    .line 1439
    packed-switch p1, :pswitch_data_4e

    .line 1459
    const/4 p0, 0x0

    return-object p0

    .line 1457
    :pswitch_5
    const p1, 0x104016e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1455
    :pswitch_d
    const p1, 0x1040174

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1453
    :pswitch_15
    const p1, 0x1040172

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1451
    :pswitch_1d
    const p1, 0x1040173

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1449
    :pswitch_25
    const p1, 0x1040175

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1447
    :pswitch_2d
    const p1, 0x1040171

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1445
    :pswitch_35
    const p1, 0x1040176

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1443
    :pswitch_3d
    const p1, 0x104016f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1441
    :pswitch_45
    const p1, 0x1040170

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_45
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_25
        :pswitch_1d
        :pswitch_15
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o isAllowedToUseHiddenApis()Z
    .registers 4

    .line 2535
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2536
    return v1

    .line 2537
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    .line 2540
    :cond_16
    return v2

    .line 2538
    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->usesNonSdkApi()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-direct {p0}, Landroid/content/pm/ApplicationInfo;->isPackageWhitelistedForHiddenApis()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :cond_25
    :goto_25
    return v1
.end method

.method private greylist-max-p isPackageUnavailable(Landroid/content/pm/PackageManager;)Z
    .registers 5

    .line 2622
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_8} :catch_d

    if-nez p1, :cond_b

    goto :goto_c

    :cond_b
    move v0, v2

    :goto_c
    return v0

    .line 2623
    :catch_d
    move-exception p1

    .line 2624
    return v0
.end method

.method private greylist-max-o isPackageWhitelistedForHiddenApis()Z
    .registers 2

    .line 2429
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static greylist-max-o isValidHiddenApiEnforcementPolicy(I)Z
    .registers 2

    .line 1739
    const/4 v0, -0x1

    if-lt p0, v0, :cond_8

    const/4 v0, 0x2

    if-gt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public blacklist allowsNativeHeapPointerTagging()Z
    .registers 3

    .line 2531
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist areAttributionsUserVisible()Z
    .registers 2

    .line 2783
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2151
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-p disableCompatibilityMode()V
    .registers 3

    .line 2386
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x83e00

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2389
    return-void
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4

    .line 1766
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 1767
    return-void
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .registers 8

    .line 1771
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1772
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_67

    .line 1773
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1776
    :cond_27
    const/4 v0, 0x0

    :goto_28
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Map;)I

    move-result v1

    if-ge v0, v1, :cond_67

    .line 1777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  process="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " className="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    .line 1778
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1777
    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1776
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1781
    :cond_67
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_88

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1784
    :cond_88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1785
    if-eqz p3, :cond_c4

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "taskAffinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1788
    :cond_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " privateFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1789
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " theme=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 1790
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1788
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1791
    if-eqz p3, :cond_148

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "requiresSmallestWidthDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " compatibleWidthLimitDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " largestWidthLimitDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1796
    :cond_148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sourceDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18c

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "publicSourceDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1800
    :cond_18c
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b5

    .line 1801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "splitSourceDirs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1803
    :cond_1b5
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e8

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 1804
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e8

    .line 1805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "splitPublicSourceDirs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1807
    :cond_1e8
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    if-eqz v0, :cond_20d

    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "resourceDirs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1810
    :cond_20d
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    if-eqz v0, :cond_232

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "overlayPaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1813
    :cond_232
    if-eqz p3, :cond_272

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-eqz v0, :cond_272

    .line 1814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "seinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "seinfoUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1817
    :cond_272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dataDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1818
    if-eqz p3, :cond_2ed

    .line 1819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deviceProtectedDataDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "credentialProtectedDataDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1821
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz v0, :cond_2ed

    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sharedLibraryFiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1825
    :cond_2ed
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    if-eqz v0, :cond_30d

    .line 1826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "classLoaderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1828
    :cond_30d
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_336

    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "splitClassLoaderNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1832
    :cond_336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetSandboxVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1837
    if-eqz p3, :cond_63e

    .line 1838
    iget-object p3, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz p3, :cond_3a5

    .line 1839
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v0, "manageSpaceActivityName="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1841
    :cond_3a5
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    if-eqz p3, :cond_3c9

    .line 1842
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "description=0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1844
    :cond_3c9
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    if-eqz p3, :cond_3ee

    .line 1845
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v0, "uiOptions=0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1847
    :cond_3ee
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v0, "supportsRtl="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    const-string/jumbo v1, "true"

    const-string v2, "false"

    if-eqz v0, :cond_40b

    move-object v0, v1

    goto :goto_40c

    :cond_40b
    move-object v0, v2

    :goto_40c
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1848
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-lez p3, :cond_438

    .line 1849
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "fullBackupContent=@xml/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_459

    .line 1851
    :cond_438
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "fullBackupContent="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1852
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-gez v0, :cond_44d

    move-object v0, v2

    goto :goto_44e

    :cond_44d
    move-object v0, v1

    :goto_44e
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1851
    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1854
    :goto_459
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    if-eqz p3, :cond_479

    .line 1855
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "dataExtractionRules=@xml/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1857
    :cond_479
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "crossProfile="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    if-eqz v0, :cond_48e

    move-object v0, v1

    goto :goto_48f

    :cond_48e
    move-object v0, v2

    :goto_48f
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1858
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    if-eqz p3, :cond_4bf

    .line 1859
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v0, "networkSecurityConfigRes=0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 1860
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1859
    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1862
    :cond_4bf
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_4e0

    .line 1863
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v3, "category="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v3, p0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1865
    :cond_4e0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v3, "HiddenApiEnforcementPolicy="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1866
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v3, "usesNonSdkApi="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->usesNonSdkApi()Z

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1867
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v3, "allowsPlaybackCapture="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1868
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isAudioPlaybackCaptureAllowed()Z

    move-result v3

    if-eqz v3, :cond_533

    goto :goto_534

    :cond_533
    move-object v1, v2

    :goto_534
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1867
    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1869
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    if-eq p3, v0, :cond_55f

    .line 1870
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, "gwpAsanMode="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1872
    :cond_55f
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    if-eq p3, v0, :cond_580

    .line 1873
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v1, "memtagMode="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1875
    :cond_580
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    if-eq p3, v0, :cond_5a1

    .line 1876
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v0, "nativeHeapZeroInitialized="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1878
    :cond_5a1
    iget-object p3, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    if-eqz p3, :cond_5c2

    .line 1879
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v0, "requestRawExternalStorageAccess="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1882
    :cond_5c2
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    if-eqz p3, :cond_5e7

    .line 1883
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v0, "localeConfigRes=0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    .line 1884
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1883
    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1886
    :cond_5e7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "enableOnBackInvokedCallback="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1887
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "allowCrossUidActivitySwitchFromBelow="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1889
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v0, "mPageSizeAppCompatFlags="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->mPageSizeAppCompatFlags:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1891
    :cond_63e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "createTimestamp="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-wide v0, p0, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1892
    iget-object p3, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-eqz p3, :cond_67b

    .line 1893
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v0, "knownActivityEmbeddingCerts="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1895
    :cond_67b
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1896
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 22

    .line 1900
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1901
    const-wide v5, 0x10b00000001L

    invoke-super {v0, v1, v5, v6, v2}, Landroid/content/pm/PackageItemInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1902
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    const-wide v6, 0x10900000002L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1903
    const-wide v8, 0x10900000003L

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1904
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide v8, 0x10500000004L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1905
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const-wide v10, 0x10500000005L

    invoke-virtual {v1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1906
    const-wide v12, 0x10500000006L

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-virtual {v1, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1907
    const-wide v12, 0x10500000007L

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {v1, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1908
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-wide v12, 0x10900000008L

    invoke-virtual {v1, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1909
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v5, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-wide v14, 0x10900000009L

    if-nez v5, :cond_6c

    .line 1910
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v14, v15, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1912
    :cond_6c
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    const-wide v14, 0x2090000000aL

    const/16 v16, 0x0

    if-nez v5, :cond_8f

    .line 1913
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v12, v5

    move/from16 v13, v16

    :goto_80
    if-ge v13, v12, :cond_8f

    aget-object v6, v5, v13

    .line 1914
    invoke-virtual {v1, v14, v15, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1913
    add-int/lit8 v13, v13, 0x1

    const-wide v6, 0x10900000002L

    goto :goto_80

    .line 1917
    :cond_8f
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ba

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 1918
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ba

    .line 1919
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    array-length v6, v5

    move/from16 v7, v16

    :goto_a6
    if-ge v7, v6, :cond_ba

    aget-object v12, v5, v7

    .line 1920
    const-wide v14, 0x2090000000bL

    invoke-virtual {v1, v14, v15, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1919
    add-int/lit8 v7, v7, 0x1

    const-wide v14, 0x2090000000aL

    goto :goto_a6

    .line 1923
    :cond_ba
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    if-eqz v5, :cond_d2

    .line 1924
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    array-length v6, v5

    move/from16 v7, v16

    :goto_c3
    if-ge v7, v6, :cond_d2

    aget-object v12, v5, v7

    .line 1925
    const-wide v13, 0x2090000000cL

    invoke-virtual {v1, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1924
    add-int/lit8 v7, v7, 0x1

    goto :goto_c3

    .line 1928
    :cond_d2
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    if-eqz v5, :cond_ea

    .line 1929
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    array-length v6, v5

    move/from16 v7, v16

    :goto_db
    if-ge v7, v6, :cond_ea

    aget-object v12, v5, v7

    .line 1930
    const-wide v13, 0x20900000012L

    invoke-virtual {v1, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1929
    add-int/lit8 v7, v7, 0x1

    goto :goto_db

    .line 1933
    :cond_ea
    const-wide v5, 0x1090000000dL

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1934
    const-wide v5, 0x1090000000eL

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1935
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11a

    .line 1936
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    array-length v6, v5

    move/from16 v7, v16

    :goto_10b
    if-ge v7, v6, :cond_11a

    aget-object v12, v5, v7

    .line 1937
    const-wide v13, 0x2090000000fL

    invoke-virtual {v1, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1936
    add-int/lit8 v7, v7, 0x1

    goto :goto_10b

    .line 1941
    :cond_11a
    const-wide v5, 0x10b00000010L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 1942
    const-wide v12, 0x10800000001L

    iget-boolean v7, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1943
    const-wide v12, 0x10500000002L

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1944
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const-wide v12, 0x10500000003L

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1945
    iget-wide v14, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v1, v8, v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1946
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1947
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1949
    const/4 v5, 0x1

    and-int/2addr v2, v5

    if-eqz v2, :cond_28b

    .line 1950
    const-wide v6, 0x10b00000011L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1951
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v2, :cond_169

    .line 1952
    const-wide v14, 0x10900000001L

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v1, v14, v15, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1954
    :cond_169
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    const-wide v14, 0x10900000002L

    invoke-virtual {v1, v14, v15, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1955
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    invoke-virtual {v1, v12, v13, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1957
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1959
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    invoke-virtual {v1, v10, v11, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1961
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-eqz v2, :cond_19a

    .line 1962
    const-wide v8, 0x10900000006L

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1963
    const-wide v8, 0x10900000007L

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1965
    :cond_19a
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const-wide v8, 0x10900000008L

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1967
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    const-wide v8, 0x10900000009L

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1969
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz v2, :cond_1c6

    .line 1970
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    array-length v8, v2

    move/from16 v9, v16

    :goto_1b7
    if-ge v9, v8, :cond_1c6

    aget-object v10, v2, v9

    .line 1971
    const-wide v11, 0x2090000000aL

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1970
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b7

    .line 1974
    :cond_1c6
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v2, :cond_1d4

    .line 1975
    const-wide v8, 0x1090000000bL

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1978
    :cond_1d4
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    if-eqz v2, :cond_1e2

    .line 1979
    const-wide v8, 0x1050000000cL

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1981
    :cond_1e2
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    if-eqz v2, :cond_1f0

    .line 1982
    const-wide v8, 0x1050000000dL

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1984
    :cond_1f0
    const-wide v8, 0x1080000000eL

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v2

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1985
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-lez v2, :cond_21e

    .line 1986
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@xml/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v8, 0x1090000000fL

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_22d

    .line 1988
    :cond_21e
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-nez v2, :cond_223

    goto :goto_225

    :cond_223
    move/from16 v5, v16

    :goto_225
    const-wide v8, 0x10800000010L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1990
    :goto_22d
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    if-eqz v2, :cond_23b

    .line 1991
    const-wide v8, 0x10500000011L

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1994
    :cond_23b
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_24a

    .line 1995
    const-wide v8, 0x10500000012L

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1997
    :cond_24a
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    if-eq v2, v5, :cond_258

    .line 1998
    const-wide v8, 0x10500000013L

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2000
    :cond_258
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    if-eq v2, v5, :cond_266

    .line 2001
    const-wide v8, 0x10500000014L

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2003
    :cond_266
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    if-eq v2, v5, :cond_274

    .line 2004
    const-wide v8, 0x10800000015L

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2007
    :cond_274
    const-wide v8, 0x10800000016L

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2010
    const-wide v8, 0x10500000017L

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->mPageSizeAppCompatFlags:I

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2013
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2015
    :cond_28b
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2ae

    .line 2016
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_299
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2017
    const-wide v5, 0x20900000013L

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2018
    goto :goto_299

    .line 2020
    :cond_2ae
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2021
    return-void
.end method

.method public blacklist getAllApkPaths()[Ljava/lang/String;
    .registers 9

    .line 2875
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [[Ljava/lang/String;

    move-result-object v0

    .line 2878
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2879
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 2880
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2882
    :cond_1c
    const/4 v2, 0x0

    move v3, v2

    :goto_1e
    const/4 v4, 0x4

    if-ge v3, v4, :cond_34

    aget-object v4, v0, v3

    .line 2883
    if-eqz v4, :cond_31

    .line 2884
    array-length v5, v4

    move v6, v2

    :goto_27
    if-ge v6, v5, :cond_31

    aget-object v7, v4, v6

    .line 2885
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2884
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 2882
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 2889
    :cond_34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 1

    .line 2866
    return-object p0
.end method

.method public greylist-max-o getBaseCodePath()Ljava/lang/String;
    .registers 2

    .line 2929
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getBaseResourcePath()Ljava/lang/String;
    .registers 2

    .line 2934
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getCodePath()Ljava/lang/String;
    .registers 2

    .line 2928
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCustomApplicationClassNameForProcess(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2966
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    if-eqz v0, :cond_f

    .line 2967
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2968
    if-eqz p1, :cond_f

    .line 2969
    return-object p1

    .line 2972
    :cond_f
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    return-object p1
.end method

.method public whitelist getGwpAsanMode()I
    .registers 2

    .line 2937
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    return v0
.end method

.method public greylist-max-o getHiddenApiEnforcementPolicy()I
    .registers 3

    .line 2548
    invoke-direct {p0}, Landroid/content/pm/ApplicationInfo;->isAllowedToUseHiddenApis()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2549
    const/4 v0, 0x0

    return v0

    .line 2551
    :cond_8
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 2552
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    return v0

    .line 2554
    :cond_10
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3029
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_b

    .line 3030
    :cond_9
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 3029
    :goto_b
    return-object v0
.end method

.method public blacklist getLocaleConfigRes()I
    .registers 2

    .line 2984
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    return v0
.end method

.method public whitelist getMemtagMode()I
    .registers 2

    .line 2945
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    return v0
.end method

.method public whitelist getNativeHeapZeroInitialized()I
    .registers 2

    .line 2954
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    return v0
.end method

.method public blacklist getNetworkSecurityConfigResourceId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2566
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    return v0
.end method

.method public blacklist getOptionalSharedLibraryInfos()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 3016
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->optionalSharedLibraryInfos:Ljava/util/List;

    if-nez v0, :cond_7

    .line 3017
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 3019
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->optionalSharedLibraryInfos:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getRequestRawExternalStorageAccess()I
    .registers 2

    .line 2518
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 2519
    const/4 v0, 0x0

    return v0

    .line 2521
    :cond_6
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    .line 2522
    :cond_10
    const/4 v0, 0x2

    .line 2521
    :goto_11
    return v0
.end method

.method public greylist-max-o getResourcePath()Ljava/lang/String;
    .registers 2

    .line 2931
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSharedLibraryInfos()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 2999
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    if-nez v0, :cond_7

    .line 3000
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 3002
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getSplitCodePaths()[Ljava/lang/String;
    .registers 2

    .line 2930
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSplitResourcePaths()[Ljava/lang/String;
    .registers 2

    .line 2935
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o hasCode()Z
    .registers 2

    .line 2034
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist hasFragileUserData()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2449
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist hasRequestForegroundServiceExemption()Z
    .registers 2

    .line 2846
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasRequestedLegacyExternalStorage()Z
    .registers 3

    .line 2468
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist hasRtlSupport()Z
    .registers 3

    .line 2029
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o initForUser(I)V
    .registers 4

    .line 2406
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2408
    const-string v0, "android"

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2409
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2410
    return-void

    .line 2413
    :cond_21
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2414
    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2415
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 2416
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2417
    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2418
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 2420
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_48

    .line 2422
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_4c

    .line 2424
    :cond_48
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2426
    :goto_4c
    return-void
.end method

.method public blacklist isAudioPlaybackCaptureAllowed()Z
    .registers 3

    .line 2459
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isChangeEnabled(J)Z
    .registers 5

    .line 2835
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2836
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2835
    invoke-static {p1, p2, v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o isDefaultToDeviceProtectedStorage()Z
    .registers 2

    .line 2630
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isDirectBootAware()Z
    .registers 2

    .line 2636
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isEmbeddedDexUsed()Z
    .registers 3

    .line 2752
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isEncryptionAware()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2649
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isDirectBootAware()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isPartiallyDirectBootAware()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public greylist-max-o isExternal()Z
    .registers 3

    .line 2654
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isInstantApp()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2663
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isInternal()Z
    .registers 3

    .line 2668
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isNotLaunched()Z
    .registers 2

    .line 2816
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isOdm()Z
    .registers 3

    .line 2682
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isOem()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2677
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isOnBackInvokedCallbackEnabled()Z
    .registers 2

    .line 2859
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isPartiallyDirectBootAware()Z
    .registers 2

    .line 2687
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isPrivilegedApp()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2703
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isProduct()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2742
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isProfileable()Z
    .registers 3

    .line 2774
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist isProfileableByShell()Z
    .registers 3

    .line 2767
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o isRequiredForSystemUser()Z
    .registers 2

    .line 2708
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isResourceOverlay()Z
    .registers 3

    .line 2800
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o isSignedWithPlatformKey()Z
    .registers 3

    .line 2692
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o isStaticSharedLibrary()Z
    .registers 2

    .line 2713
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isStopped()Z
    .registers 3

    .line 2808
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist isSystemApp()Z
    .registers 3

    .line 2719
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist isSystemExt()Z
    .registers 3

    .line 2747
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o isUpdatedSystemApp()Z
    .registers 2

    .line 2724
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isVendor()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2733
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isVirtualPreload()Z
    .registers 3

    .line 2759
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 2610
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 2611
    invoke-direct {p0, p1}, Landroid/content/pm/ApplicationInfo;->isPackageUnavailable(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2612
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1080a33

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 2615
    :cond_19
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public whitelist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 4

    .line 2370
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    if-eqz v0, :cond_f

    .line 2371
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2372
    if-eqz p1, :cond_f

    .line 2373
    return-object p1

    .line 2376
    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist maybeUpdateHiddenApiEnforcementPolicy(I)V
    .registers 3

    .line 2590
    invoke-direct {p0}, Landroid/content/pm/ApplicationInfo;->isPackageWhitelistedForHiddenApis()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2591
    return-void

    .line 2593
    :cond_7
    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->setHiddenApiEnforcementPolicy(I)V

    .line 2594
    return-void
.end method

.method public greylist-max-o requestsIsolatedSplitLoading()Z
    .registers 3

    .line 2792
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist setAppClassNamesByProcess(Landroid/util/ArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2919
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_a

    .line 2920
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    goto :goto_c

    .line 2922
    :cond_a
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    .line 2924
    :goto_c
    return-void
.end method

.method public greylist-max-o setBaseCodePath(Ljava/lang/String;)V
    .registers 2

    .line 2893
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setBaseResourcePath(Ljava/lang/String;)V
    .registers 2

    .line 2896
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setCodePath(Ljava/lang/String;)V
    .registers 2

    .line 2892
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    return-void
.end method

.method public blacklist setEnableOnBackInvokedCallback(Z)V
    .registers 2

    .line 3058
    if-eqz p1, :cond_9

    .line 3059
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    goto :goto_f

    .line 3061
    :cond_9
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 3063
    :goto_f
    return-void
.end method

.method public blacklist setGwpAsanMode(I)V
    .registers 2

    .line 2898
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    return-void
.end method

.method public greylist-max-o setHiddenApiEnforcementPolicy(I)V
    .registers 5

    .line 2573
    invoke-static {p1}, Landroid/content/pm/ApplicationInfo;->isValidHiddenApiEnforcementPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2576
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    .line 2577
    return-void

    .line 2574
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid API enforcement policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setKnownActivityEmbeddingCerts(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3042
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 3043
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3044
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3045
    goto :goto_b

    .line 3046
    :cond_23
    return-void
.end method

.method public blacklist setLocaleConfigRes(I)V
    .registers 2

    .line 2975
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    return-void
.end method

.method public blacklist setMemtagMode(I)V
    .registers 2

    .line 2899
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    return-void
.end method

.method public blacklist setNativeHeapZeroInitialized(I)V
    .registers 2

    .line 2901
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    .line 2902
    return-void
.end method

.method public blacklist setPageSizeAppCompatFlags(I)V
    .registers 3

    .line 2910
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->mPageSizeAppCompatFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/content/pm/ApplicationInfo;->mPageSizeAppCompatFlags:I

    .line 2911
    return-void
.end method

.method public blacklist setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)V
    .registers 2

    .line 2905
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    .line 2906
    return-void
.end method

.method public greylist-max-o setResourcePath(Ljava/lang/String;)V
    .registers 2

    .line 2895
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setSplitCodePaths([Ljava/lang/String;)V
    .registers 2

    .line 2894
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setSplitResourcePaths([Ljava/lang/String;)V
    .registers 2

    .line 2897
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setVersionCode(J)V
    .registers 3

    .line 2600
    iput-wide p1, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 2601
    long-to-int p1, p1

    iput p1, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    .line 2602
    return-void
.end method

.method public blacklist shouldRunInPccSandbox()Z
    .registers 2

    .line 2825
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2146
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2145
    return-object v0
.end method

.method public greylist-max-o usesCompatibilityMode()Z
    .registers 3

    .line 2397
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_10

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x83e00

    and-int/2addr v0, v1

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public blacklist usesNonSdkApi()Z
    .registers 3

    .line 2436
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 2156
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->maybeWriteSquashed(Landroid/os/Parcelable;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2157
    return-void

    .line 2159
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2160
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2161
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2162
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2163
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2164
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2165
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2166
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2167
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2168
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2169
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2170
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2171
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    .line 2172
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2173
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2174
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_60

    .line 2176
    :cond_5d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2178
    :goto_60
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2179
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2180
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2181
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2182
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 2183
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 2184
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 2185
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 2186
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2187
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2188
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2189
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2190
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2191
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2192
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 2193
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 2194
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2195
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2196
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 2197
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2198
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->optionalSharedLibraryInfos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2199
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2200
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2201
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2202
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2203
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2204
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2205
    iget-wide v2, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2206
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2207
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2208
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2209
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2210
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2211
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2212
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2213
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2214
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2215
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2216
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2217
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2218
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2219
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2220
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 2221
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2222
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2223
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2224
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2225
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2226
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->mHiddenApiPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2227
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2228
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2229
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->gwpAsanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2230
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->memtagMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2231
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2232
    sget-object v0, Landroid/content/pm/ApplicationInfo;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 2233
    iget-wide v2, p0, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2234
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    if-nez v0, :cond_182

    .line 2235
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a7

    .line 2237
    :cond_182
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2238
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2239
    nop

    :goto_18c
    if-ge v1, v0, :cond_1a7

    .line 2240
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2241
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->mAppClassNamesByProcess:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2239
    add-int/lit8 v1, v1, 0x1

    goto :goto_18c

    .line 2244
    :cond_1a7
    :goto_1a7
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->localeConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2245
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2246
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->mPageSizeAppCompatFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2247
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->unalignedNativeLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2249
    sget-object p2, Landroid/content/pm/ApplicationInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 2250
    return-void
.end method
