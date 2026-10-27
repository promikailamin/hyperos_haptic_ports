.class public Lcom/android/server/pm/ShortcutService;
.super Landroid/content/pm/IShortcutService$Stub;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutService$MyShellCommand;,
        Lcom/android/server/pm/ShortcutService$CommandException;,
        Lcom/android/server/pm/ShortcutService$DumpFilter;,
        Lcom/android/server/pm/ShortcutService$LocalService;,
        Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;,
        Lcom/android/server/pm/ShortcutService$Lifecycle;,
        Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;,
        Lcom/android/server/pm/ShortcutService$ShortcutOperation;,
        Lcom/android/server/pm/ShortcutService$Stats;,
        Lcom/android/server/pm/ShortcutService$ConfigConstants;
    }
.end annotation


# static fields
.field private static ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static ACTIVITY_NOT_INSTALLED:Ljava/util/function/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final CALLBACK_DELAY:J = 0x64L

.field static final DEBUG:Z = false

.field static final DEBUG_LOAD:Z = false

.field static final DEBUG_PROCSTATE:Z = false

.field static final DEBUG_REBOOT:Z = false

.field static final DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

.field static final DEFAULT_ICON_PERSIST_QUALITY:I = 0x64

.field static final DEFAULT_MAX_ICON_DIMENSION_DP:I = 0x60

.field static final DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP:I = 0x30

.field static final DEFAULT_MAX_SHORTCUTS_PER_ACTIVITY:I = 0xf

.field static final DEFAULT_MAX_SHORTCUTS_PER_APP:I = 0x64

.field static final DEFAULT_MAX_UPDATES_PER_INTERVAL:I = 0xa

.field static final DEFAULT_RESET_INTERVAL_SEC:J = 0x15180L

.field static final DEFAULT_SAVE_DELAY_MS:I = 0xbb8

.field static final DIRECTORY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field static final DIRECTORY_DUMP:Ljava/lang/String; = "shortcut_dump"

.field static final DIRECTORY_PER_USER:Ljava/lang/String; = "shortcut_service"

.field private static final DUMMY_MAIN_ACTIVITY:Ljava/lang/String; = "android.__dummy__"

.field private static EMPTY_RESOLVE_INFO:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final FILENAME_BASE_STATE:Ljava/lang/String; = "shortcut_service.xml"

.field static final FILENAME_USER_PACKAGES:Ljava/lang/String; = "shortcuts.xml"

.field private static final KEY_ICON_SIZE:Ljava/lang/String; = "iconSize"

.field private static final KEY_LOW_RAM:Ljava/lang/String; = "lowRam"

.field private static final KEY_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final LAUNCHER_INTENT_CATEGORY:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field static final OPERATION_ADD:I = 0x1

.field static final OPERATION_SET:I = 0x0

.field static final OPERATION_UPDATE:I = 0x2

.field private static final PACKAGE_MATCH_FLAGS:I = 0xc2200

.field private static PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROCESS_STATE_FOREGROUND_THRESHOLD:I = 0x5

.field private static final SYSTEM_APP_MASK:I = 0x81

.field static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_LAST_RESET_TIME:Ljava/lang/String; = "last_reset_time"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mChooserActivity:Landroid/content/ComponentName;

.field final mContext:Landroid/content/Context;

.field private mDirtyUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mIconPersistQuality:I

.field private final mIsAppSearchEnabled:Z

.field private mLastLockedUser:I

.field private final mLastWtfStacktrace:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMaxIconDimension:I

.field private mMaxShortcuts:I

.field private mMaxShortcutsPerApp:I

.field mMaxUpdatesPerInterval:I

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNonPersistentUsersLock:Ljava/lang/Object;

.field private final mOnRoleHoldersChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mPackageMonitor:Landroid/content/BroadcastReceiver;

.field private mRawLastResetTime:J

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetInterval:J

.field private final mRoleManager:Landroid/app/role/RoleManager;

.field mSaveDelayMillis:I

.field private final mSaveDirtyInfoRunner:Ljava/lang/Runnable;

.field private final mShortcutChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/LauncherApps$ShortcutChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

.field private final mShortcutNonPersistentUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/ShortcutNonPersistentUser;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

.field private final mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatLogger:Lcom/android/internal/util/StatLogger;

.field final mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidState:Landroid/util/SparseIntArray;

.field final mUnlockedUsers:Landroid/util/SparseBooleanArray;

.field private final mUriGrantsManager:Landroid/app/IUriGrantsManager;

.field private final mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field private final mUriPermissionOwner:Landroid/os/IBinder;

.field private final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;"
        }
    .end annotation
.end field

.field private final mWtfCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic $r8$lambda$b_9Gr6LR-i79oux3LnAsLoxMukY(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/ShortcutService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/pm/ShortcutService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSaveDirtyInfoRunner(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShortcutChangeCallbacks(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutChangeCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutdown(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUriGrantsManager(Lcom/android/server/pm/ShortcutService;)Landroid/app/IUriGrantsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManager:Landroid/app/IUriGrantsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUriPermissionOwner(Lcom/android/server/pm/ShortcutService;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUriPermissionOwner:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcleanUpPackageForAllLoadedUsers(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePackageAdded(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePackageChanged(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePackageDataCleared(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageDataCleared(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePackageRemoved(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePackageUpdateFinished(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageUpdateFinished(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadConfigurationLocked(Lcom/android/server/pm/ShortcutService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprepareChangedShortcuts(Lcom/android/server/pm/ShortcutService;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutService;->prepareChangedShortcuts(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrequestPinItem(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetReturnedByServer(Lcom/android/server/pm/ShortcutService;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->setReturnedByServer(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mverifyStatesForce(Lcom/android/server/pm/ShortcutService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesForce()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smisInstalled(Landroid/content/pm/PackageInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 198
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    .line 300
    new-instance v0, Lcom/android/server/pm/ShortcutService$1;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate;

    .line 306
    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_INSTALLED:Ljava/util/function/Predicate;

    .line 310
    new-instance v0, Lcom/android/server/pm/ShortcutService$2;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 489
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 490
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "onlyForPackageManagerApis"    # Z

    .line 493
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;-><init>()V

    .line 294
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    .line 295
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mNonPersistentUsersLock:Ljava/lang/Object;

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    .line 321
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mShortcutChangeCallbacks:Ljava/util/ArrayList;

    .line 331
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 339
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    .line 386
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    .line 389
    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    .line 392
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    .line 395
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 396
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 401
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 428
    new-instance v2, Lcom/android/internal/util/StatLogger;

    const-string v4, "getHomeActivities()"

    const-string v5, "Launcher permission check"

    const-string v6, "getPackageInfo()"

    const-string v7, "getPackageInfo(SIG)"

    const-string v8, "getApplicationInfo"

    const-string v9, "cleanupDanglingBitmaps"

    const-string v10, "getActivity+metadata"

    const-string v11, "getInstalledPackages"

    const-string v12, "checkPackageChanges"

    const-string v13, "getApplicationResources"

    const-string/jumbo v14, "resourceNameLookup"

    const-string v15, "getLauncherActivity"

    const-string v16, "checkLauncherActivity"

    const-string v17, "isActivityEnabled"

    const-string/jumbo v18, "packageUpdateCheck"

    const-string v19, "asyncPreloadUserDelay"

    const-string v20, "getDefaultLauncher()"

    filled-new-array/range {v4 .. v20}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 465
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mWtfCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 470
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/util/concurrent/atomic/AtomicReference;

    .line 475
    new-instance v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 572
    new-instance v2, Lcom/android/server/pm/ShortcutService$3;

    invoke-direct {v2, v0}, Lcom/android/server/pm/ShortcutService$3;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mOnRoleHoldersChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 599
    new-instance v4, Lcom/android/server/pm/ShortcutService$4;

    invoke-direct {v4, v0}, Lcom/android/server/pm/ShortcutService$4;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1209
    new-instance v5, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda15;

    invoke-direct {v5, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v5, v0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    .line 1331
    const/4 v5, -0x1

    iput v5, v0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    .line 3687
    new-instance v7, Lcom/android/server/pm/ShortcutService$5;

    invoke-direct {v7, v0}, Lcom/android/server/pm/ShortcutService$5;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v7, v0, Lcom/android/server/pm/ShortcutService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3722
    new-instance v9, Lcom/android/server/pm/ShortcutService$6;

    invoke-direct {v9, v0}, Lcom/android/server/pm/ShortcutService$6;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v9, v0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    .line 3787
    new-instance v5, Lcom/android/server/pm/ShortcutService$7;

    invoke-direct {v5, v0}, Lcom/android/server/pm/ShortcutService$7;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v5, v0, Lcom/android/server/pm/ShortcutService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 494
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroid/content/Context;

    iput-object v14, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 495
    const-class v6, Landroid/content/pm/ShortcutServiceInternal;

    new-instance v8, Lcom/android/server/pm/ShortcutService$LocalService;

    const/4 v10, 0x0

    invoke-direct {v8, v0, v10}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$LocalService-IA;)V

    invoke-static {v6, v8}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 496
    new-instance v15, Landroid/os/Handler;

    move-object/from16 v6, p2

    invoke-direct {v15, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v15, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    .line 497
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 498
    const-class v8, Landroid/content/pm/PackageManagerInternal;

    .line 499
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    .line 498
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    iput-object v8, v0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 500
    const-class v8, Lcom/android/server/pm/UserManagerInternal;

    .line 501
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserManagerInternal;

    .line 500
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserManagerInternal;

    iput-object v8, v0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 502
    const-class v8, Landroid/app/usage/UsageStatsManagerInternal;

    .line 503
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStatsManagerInternal;

    .line 502
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v8, v0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 504
    const-class v8, Landroid/app/ActivityManagerInternal;

    .line 505
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManagerInternal;

    .line 504
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManagerInternal;

    iput-object v8, v0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 507
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/IUriGrantsManager;

    iput-object v8, v0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManager:Landroid/app/IUriGrantsManager;

    .line 508
    const-class v8, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 509
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 508
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v8, v0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 510
    const-string v10, "ShortcutService"

    invoke-interface {v8, v10}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/pm/ShortcutService;->mUriPermissionOwner:Landroid/os/IBinder;

    .line 511
    const-class v8, Landroid/app/role/RoleManager;

    invoke-virtual {v14, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/role/RoleManager;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/role/RoleManager;

    iput-object v8, v0, Lcom/android/server/pm/ShortcutService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 513
    new-instance v8, Lcom/android/server/pm/ShortcutRequestPinProcessor;

    invoke-direct {v8, v0, v1}, Lcom/android/server/pm/ShortcutRequestPinProcessor;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/Object;)V

    iput-object v8, v0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 514
    new-instance v1, Lcom/android/server/pm/ShortcutDumpFiles;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutDumpFiles;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    .line 515
    const-string/jumbo v1, "systemui"

    const-string/jumbo v8, "shortcut_appsearch_integration"

    invoke-static {v1, v8, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v1

    if-nez v1, :cond_183

    goto :goto_184

    :cond_183
    const/4 v3, 0x0

    :goto_184
    iput-boolean v3, v0, Lcom/android/server/pm/ShortcutService;->mIsAppSearchEnabled:Z

    .line 519
    if-eqz p3, :cond_189

    .line 520
    return-void

    .line 527
    :cond_189
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 528
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 533
    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 534
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    move-object v8, v14

    move-object v11, v1

    move-object v13, v15

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 537
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    move-object v13, v8

    .line 538
    .local v13, "localeFilter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v13, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v13, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 540
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    move-object v6, v14

    move-object v9, v13

    move-object v11, v15

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 543
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 544
    .local v6, "shutdownFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 546
    sget-object v12, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x0

    move-object v10, v14

    move-object v11, v5

    move-object v5, v13

    .end local v13    # "localeFilter":Landroid/content/IntentFilter;
    .local v5, "localeFilter":Landroid/content/IntentFilter;
    move-object v13, v6

    move-object v14, v3

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 549
    const/4 v3, 0x3

    invoke-virtual {v0, v4, v3}, Lcom/android/server/pm/ShortcutService;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    .line 552
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService;->injectRegisterRoleHoldersListener(Landroid/app/role/OnRoleHoldersChangedListener;)V

    .line 553
    return-void
.end method

.method private addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 5427
    .local p1, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5428
    return-void

    .line 5430
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 5431
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1e

    .line 5432
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5431
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 5434
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method private assignImplicitRanks(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1983
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 1984
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    .line 1983
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1986
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method private cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .param p3, "appStillExists"    # Z

    .line 2866
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2867
    :try_start_3
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 2870
    monitor-exit v0

    .line 2871
    return-void

    .line 2870
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private cleanupDanglingBitmapDirectoriesLocked(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 1435
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 1437
    .local v0, "start":J
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    .line 1439
    .local v2, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v3

    .line 1440
    .local v3, "bitmapDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1441
    .local v4, "children":[Ljava/io/File;
    if-nez v4, :cond_13

    .line 1442
    return-void

    .line 1444
    :cond_13
    array-length v5, v4

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v5, :cond_38

    aget-object v7, v4, v6

    .line 1445
    .local v7, "child":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_20

    .line 1446
    goto :goto_35

    .line 1448
    :cond_20
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1452
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v8}, Lcom/android/server/pm/ShortcutUser;->hasPackage(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2e

    .line 1456
    invoke-virtual {p0, p1, v8}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    goto :goto_35

    .line 1458
    :cond_2e
    invoke-virtual {v2, v8}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/server/pm/ShortcutPackage;->cleanupDanglingBitmapFiles(Ljava/io/File;)V

    .line 1444
    .end local v7    # "child":Ljava/io/File;
    .end local v8    # "packageName":Ljava/lang/String;
    :goto_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 1461
    :cond_38
    const/4 v5, 0x5

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1462
    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;Z)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "clear"    # Z

    .line 4851
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4853
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 4855
    .local v1, "users":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 4856
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/ShortcutUser;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 4855
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4859
    .end local v2    # "i":I
    :cond_23
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4861
    .local v2, "result":Lorg/json/JSONObject;
    const-string/jumbo v3, "shortcut"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4862
    const-string v3, "lowRam"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4863
    const-string v3, "iconSize"

    iget v4, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4865
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_46} :catch_49
    .catchall {:try_start_3 .. :try_end_46} :catchall_47

    .line 4868
    .end local v1    # "users":Lorg/json/JSONArray;
    .end local v2    # "result":Lorg/json/JSONObject;
    goto :goto_51

    .line 4869
    :catchall_47
    move-exception v1

    goto :goto_53

    .line 4866
    :catch_49
    move-exception v1

    .line 4867
    .local v1, "e":Lorg/json/JSONException;
    :try_start_4a
    const-string v2, "ShortcutService"

    const-string v3, "Unable to write in json"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4869
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_51
    monitor-exit v0

    .line 4870
    return-void

    .line 4869
    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_47

    throw v1
.end method

.method private dumpCurrentTime(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4841
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4842
    return-void
.end method

.method private dumpDumpFiles(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4873
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4874
    :try_start_3
    const-string v1, "** SHORTCUT MANAGER FILES (dumpsys shortcut -n -f)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4875
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->dumpAll(Ljava/io/PrintWriter;)V

    .line 4876
    monitor-exit v0

    .line 4877
    return-void

    .line 4876
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private dumpInner(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4729
    new-instance v0, Lcom/android/server/pm/ShortcutService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 4730
    return-void
.end method

.method private dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/pm/ShortcutService$DumpFilter;

    .line 4733
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4734
    :try_start_3
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 4735
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 4736
    .local v1, "now":J
    const-string v3, "Now: ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4737
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4738
    const-string v3, "] "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4739
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4741
    const-string v3, "  Raw last reset: ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4742
    iget-wide v3, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 4743
    const-string v3, "] "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4744
    iget-wide v3, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4746
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    move-result-wide v3

    .line 4747
    .local v3, "last":J
    const-string v5, "  Last reset: ["

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4748
    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 4749
    const-string v5, "] "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4750
    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4752
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J

    move-result-wide v5

    .line 4753
    .local v5, "next":J
    const-string v7, "  Next reset: ["

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4754
    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 4755
    const-string v7, "] "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4756
    invoke-static {v5, v6}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4757
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4758
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4760
    const-string v7, "  Config:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4761
    const-string v7, "    Max icon dim: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4762
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 4763
    const-string v7, "    Icon format: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4764
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4765
    const-string v7, "    Icon quality: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4766
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 4767
    const-string v7, "    saveDelayMillis: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4768
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 4769
    const-string v7, "    resetInterval: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4770
    iget-wide v7, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 4771
    const-string v7, "    maxUpdatesPerInterval: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4772
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 4773
    const-string v7, "    maxShortcutsPerActivity: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4774
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 4775
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4777
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-string v8, "  "

    invoke-virtual {v7, p1, v8}, Lcom/android/internal/util/StatLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4779
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4780
    const-string v7, "  #Failures: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4783
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 4787
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_f1

    .line 4788
    const-string v7, "  Last failure stack trace: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4791
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4794
    :cond_f1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4797
    .end local v1    # "now":J
    .end local v3    # "last":J
    .end local v5    # "next":J
    :cond_f4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f5
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_11a

    .line 4798
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutUser;

    .line 4799
    .local v2, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isUserMatch(I)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 4800
    const-string v3, "  "

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/pm/ShortcutUser;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 4801
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4797
    .end local v2    # "user":Lcom/android/server/pm/ShortcutUser;
    :cond_117
    add-int/lit8 v1, v1, 0x1

    goto :goto_f5

    .line 4805
    .end local v1    # "i":I
    :cond_11a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_11b
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_140

    .line 4806
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutNonPersistentUser;

    .line 4807
    .local v2, "user":Lcom/android/server/pm/ShortcutNonPersistentUser;
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->getUserId()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isUserMatch(I)Z

    move-result v3

    if-eqz v3, :cond_13d

    .line 4808
    const-string v3, "  "

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 4809
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4805
    .end local v2    # "user":Lcom/android/server/pm/ShortcutNonPersistentUser;
    :cond_13d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11b

    .line 4812
    .end local v1    # "i":I
    :cond_140
    monitor-exit v0

    .line 4813
    return-void

    .line 4812
    :catchall_142
    move-exception v1

    monitor-exit v0
    :try_end_144
    .catchall {:try_start_3 .. :try_end_144} :catchall_142

    throw v1
.end method

.method private dumpUid(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4816
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4817
    :try_start_3
    const-string v1, "** SHORTCUT MANAGER UID STATES (dumpsys shortcut -n -u)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4819
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 4820
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 4821
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 4822
    .local v3, "state":I
    const-string v4, "    UID="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4823
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4824
    const-string v4, " state="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4825
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4826
    invoke-direct {p0, v3}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 4827
    const-string v4, "  [FG]"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4829
    :cond_38
    const-string v4, "  last FG="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4830
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 4831
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4819
    .end local v2    # "uid":I
    .end local v3    # "state":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4833
    .end local v1    # "i":I
    :cond_4c
    monitor-exit v0

    .line 4834
    return-void

    .line 4833
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method private enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 1683
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1684
    return-void

    .line 1686
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    return-void
.end method

.method private enforceResetThrottlingPermission()V
    .registers 3

    .line 1674
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1675
    return-void

    .line 1677
    :cond_7
    const/4 v0, 0x0

    const-string v1, "android.permission.RESET_SHORTCUT_MANAGER_THROTTLING"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    return-void
.end method

.method private enforceShell()V
    .registers 3

    .line 1662
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1665
    return-void

    .line 1663
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSystem()V
    .registers 3

    .line 1668
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1671
    return-void

    .line 1669
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSystemOrShell()V
    .registers 3

    .line 1656
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 1657
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be system or shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1659
    :cond_15
    :goto_15
    return-void
.end method

.method private fillInDefaultActivity(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1967
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 1968
    .local v0, "defaultActivity":Landroid/content/ComponentName;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_49

    .line 1969
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 1970
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_46

    .line 1971
    if-nez v0, :cond_43

    .line 1972
    nop

    .line 1973
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    .line 1972
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1974
    if-eqz v0, :cond_28

    move v4, v2

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :goto_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launcher activity not found for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1975
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1974
    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1977
    :cond_43
    invoke-virtual {v3, v0}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 1968
    .end local v3    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1980
    .end local v1    # "i":I
    :cond_49
    return-void
.end method

.method private fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V
    .registers 4
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "forUpdate"    # Z

    .line 1956
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 1957
    return-void
.end method

.method private fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V
    .registers 8
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "forUpdate"    # Z
    .param p3, "forPinRequest"    # Z

    .line 1903
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isReturnedByServer()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1904
    const-string v0, "ShortcutService"

    const-string v1, "Re-publishing ShortcutInfo returned by server is not supported. Some information such as icon may lost from shortcut."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_d
    const-string v0, "Null shortcut detected"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1909
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 1910
    nop

    .line 1911
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot publish shortcut: activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1912
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " does not belong to package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1913
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1910
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1914
    nop

    .line 1915
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1916
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not main activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1914
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1920
    :cond_7c
    if-nez p2, :cond_91

    .line 1921
    invoke-virtual {p1, p3}, Landroid/content/pm/ShortcutInfo;->enforceMandatoryFields(Z)V

    .line 1922
    if-nez p3, :cond_91

    .line 1923
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_8b

    const/4 v0, 0x1

    goto :goto_8c

    :cond_8b
    const/4 v0, 0x0

    :goto_8c
    const-string v1, "Cannot publish shortcut: target activity is not set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1927
    :cond_91
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 1928
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 1929
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->validateIconURI(Landroid/content/pm/ShortcutInfo;)V

    .line 1932
    :cond_a1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->replaceFlags(I)V

    .line 1933
    return-void
.end method

.method private forUpdatedPackages(IJZLjava/util/function/Consumer;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "lastScanTime"    # J
    .param p4, "afterOta"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 4131
    .local p5, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 4132
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_22

    .line 4133
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 4138
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-nez p4, :cond_1a

    iget-wide v3, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v3, v3, p2

    if-ltz v3, :cond_1f

    .line 4143
    :cond_1a
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {p5, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4132
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 4146
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .registers 3
    .param p0, "time"    # J

    .line 4837
    invoke-static {p0, p1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBaseStateFile()Landroid/util/AtomicFile;
    .registers 4

    .line 779
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectSystemDataPath()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcut_service.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 780
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 781
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method private getCallingUserId()I
    .registers 2

    .line 5177
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private getMainActivityIntent()Landroid/content/Intent;
    .registers 3

    .line 4248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4249
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4250
    return-object v0
.end method

.method private getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "cloneFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2622
    .local p4, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2624
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2625
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v1, v0, p4, p3}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 2626
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->setReturnedByServer(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method private handlePackageAdded(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3890
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3891
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3892
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3893
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3894
    .end local v1    # "user":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 3895
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3896
    return-void

    .line 3894
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private handlePackageChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    .line 3935
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3937
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    .line 3938
    return-void

    .line 3946
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3947
    :try_start_d
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3949
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3950
    .end local v1    # "user":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    .line 3952
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3953
    return-void

    .line 3950
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private handlePackageDataCleared(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    .line 3929
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    .line 3931
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3932
    return-void
.end method

.method private handlePackageRemoved(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    .line 3919
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    .line 3921
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3922
    return-void
.end method

.method private handlePackageUpdateFinished(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3903
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3904
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3905
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3907
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3908
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3910
    .end local v1    # "user":Lcom/android/server/pm/ShortcutUser;
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 3911
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3912
    return-void

    .line 3910
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private initialize()V
    .registers 3

    .line 788
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    .line 790
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadBaseStateLocked()V

    .line 791
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isApplicationFlagSet(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 4149
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4150
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_d

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, p3

    if-ne v1, p3, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method private isCallerChooserActivity()Z
    .registers 5

    .line 1646
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1647
    .local v0, "callingUid":I
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectChooserActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 1648
    .local v1, "systemChooser":Landroid/content/ComponentName;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 1649
    return v2

    .line 1651
    :cond_c
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v3

    .line 1652
    .local v3, "uid":I
    if-ne v3, v0, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2
.end method

.method private isCallerShell()Z
    .registers 3

    .line 1631
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1632
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method private isCallerSystem()Z
    .registers 3

    .line 1626
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1627
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    return v1
.end method

.method static isClockValid(J)Z
    .registers 4
    .param p0, "time"    # J

    .line 1268
    const-wide/32 v0, 0x54a48e00

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private isEnabled(Landroid/content/pm/ActivityInfo;I)Z
    .registers 9
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .line 4156
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 4157
    return v0

    .line 4161
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v1

    .line 4163
    .local v1, "token":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 4164
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 4163
    invoke-interface {v3, v4, p2}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v3
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_23
    .catchall {:try_start_8 .. :try_end_12} :catchall_21

    .line 4170
    .local v3, "enabledFlag":I
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4171
    nop

    .line 4173
    const/4 v4, 0x1

    if-nez v3, :cond_1d

    iget-boolean v5, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v5, :cond_1f

    :cond_1d
    if-ne v3, v4, :cond_20

    .line 4175
    :cond_1f
    return v4

    .line 4177
    :cond_20
    return v0

    .line 4170
    .end local v3    # "enabledFlag":I
    :catchall_21
    move-exception v0

    goto :goto_30

    .line 4165
    :catch_23
    move-exception v3

    .line 4167
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string v4, "ShortcutService"

    const-string v5, "RemoteException"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_21

    .line 4168
    nop

    .line 4170
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4168
    return v0

    .line 4170
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_30
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4171
    throw v0
.end method

.method private static isEphemeralApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 4193
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isInstalled(Landroid/content/pm/ActivityInfo;)Z
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 4201
    if-eqz p0, :cond_c

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isInstalled(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 4189
    if-eqz p0, :cond_f

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static isInstalled(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .line 4197
    if-eqz p0, :cond_c

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 4213
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 4205
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .registers 2
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .line 4209
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private isProcessStateForeground(I)Z
    .registers 3
    .param p1, "processState"    # I

    .line 645
    const/4 v0, 0x5

    if-gt p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private static isSystem(Landroid/content/pm/ActivityInfo;)Z
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 4181
    if-eqz p0, :cond_c

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isSystem(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isSystem(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 4185
    if-eqz p0, :cond_a

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isUserLoadedLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1328
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$cleanUpPackageLocked$10(Ljava/lang/String;ILcom/android/server/pm/ShortcutLauncher;)V
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageUserId"    # I
    .param p2, "l"    # Lcom/android/server/pm/ShortcutLauncher;

    .line 2899
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/ShortcutLauncher;->cleanUpPackage(Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic lambda$cleanUpPackageLocked$11(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1
    .param p0, "p"    # Lcom/android/server/pm/ShortcutPackage;

    .line 2903
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    return-void
.end method

.method static synthetic lambda$cleanUpPackageLocked$12(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1
    .param p0, "sp"    # Lcom/android/server/pm/ShortcutPackage;

    .line 2917
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->removeShortcutPackageItem()V

    return-void
.end method

.method static synthetic lambda$getBackupPayload$17(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1
    .param p0, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    .line 4458
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->refreshPackageSignatureAndSave()V

    return-void
.end method

.method static synthetic lambda$getBackupPayload$18(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 3
    .param p0, "pkg"    # Lcom/android/server/pm/ShortcutPackage;

    .line 4461
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    return-void
.end method

.method static synthetic lambda$getBackupPayload$19(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 1
    .param p0, "launcher"    # Lcom/android/server/pm/ShortcutLauncher;

    .line 4465
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->ensurePackageInfo()V

    return-void
.end method

.method static synthetic lambda$getShareTargets$8(Ljava/util/List;Landroid/content/IntentFilter;Lcom/android/server/pm/ShortcutPackage;)V
    .registers 4
    .param p0, "shortcutInfoList"    # Ljava/util/List;
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "p"    # Lcom/android/server/pm/ShortcutPackage;

    .line 2575
    invoke-virtual {p2, p1}, Lcom/android/server/pm/ShortcutPackage;->getMatchingShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic lambda$getShortcuts$7(ILandroid/content/pm/ShortcutInfo;)Z
    .registers 3
    .param p0, "shortcutFlags"    # I
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2556
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2557
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 2556
    :goto_10
    return v0
.end method

.method static synthetic lambda$handleLocaleChanged$13(Lcom/android/server/pm/ShortcutUser;)V
    .registers 1
    .param p0, "user"    # Lcom/android/server/pm/ShortcutUser;

    .line 3712
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    return-void
.end method

.method static synthetic lambda$prepareChangedShortcuts$24(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)Z
    .registers 3
    .param p0, "resultIds"    # Landroid/util/ArraySet;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 5406
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$prepareChangedShortcuts$25(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)Z
    .registers 3
    .param p0, "resultIds"    # Landroid/util/ArraySet;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 5410
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeAllDynamicShortcuts$6(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2490
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2491
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 2490
    :goto_1b
    return v0
.end method

.method static synthetic lambda$setDynamicShortcuts$4(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2040
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2041
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 2040
    :goto_1b
    return v0
.end method

.method static synthetic lambda$static$0(Landroid/content/pm/ResolveInfo;)Z
    .registers 2
    .param p0, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 307
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$verifyStatesInner$22(Lcom/android/server/pm/ShortcutUser;)V
    .registers 2
    .param p0, "u"    # Lcom/android/server/pm/ShortcutUser;

    .line 5367
    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda26;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$waitForBitmapSavesForTest$23(Lcom/android/server/pm/ShortcutUser;)V
    .registers 2
    .param p0, "u"    # Lcom/android/server/pm/ShortcutUser;

    .line 5375
    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private loadBaseStateLocked()V
    .registers 13

    .line 1032
    const-string v0, "ShortcutService"

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 1034
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    move-result-object v3

    .line 1038
    .local v3, "file":Landroid/util/AtomicFile;
    :try_start_a
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_e} :catch_b4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_e} :catch_96

    .line 1039
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v5

    .line 1042
    .local v5, "parser":Landroid/util/TypedXmlPullParser;
    :cond_12
    :goto_12
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_84

    .line 1043
    const/4 v6, 0x2

    if-eq v7, v6, :cond_1e

    .line 1044
    goto :goto_12

    .line 1046
    :cond_1e
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    .line 1048
    .local v6, "depth":I
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1049
    .local v9, "tag":Ljava/lang/String;
    if-ne v6, v8, :cond_4d

    .line 1050
    const-string/jumbo v8, "root"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 1051
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid root tag: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_e .. :try_end_47} :catchall_8a

    .line 1066
    if-eqz v4, :cond_4c

    :try_start_49
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_4c} :catch_b4
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_4c} :catch_96

    .line 1052
    :cond_4c
    return-void

    .line 1057
    :cond_4d
    const/4 v8, -0x1

    :try_start_4e
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    packed-switch v10, :pswitch_data_ba

    :cond_55
    goto :goto_5f

    :pswitch_56
    const-string v10, "last_reset_time"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_55

    const/4 v8, 0x0

    :goto_5f
    packed-switch v8, :pswitch_data_c0

    .line 1062
    goto :goto_6d

    .line 1059
    :pswitch_63
    const-string/jumbo v8, "value"

    invoke-static {v5, v8}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 1060
    goto :goto_83

    .line 1062
    :goto_6d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid tag: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_4e .. :try_end_83} :catchall_8a

    .line 1065
    .end local v6    # "depth":I
    .end local v9    # "tag":Ljava/lang/String;
    :goto_83
    goto :goto_12

    .line 1066
    .end local v5    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v7    # "type":I
    :cond_84
    if-eqz v4, :cond_b5

    :try_start_86
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_89} :catch_b4
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_86 .. :try_end_89} :catch_96

    goto :goto_b5

    .line 1038
    :catchall_8a
    move-exception v5

    if-eqz v4, :cond_95

    :try_start_8d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_91

    goto :goto_95

    :catchall_91
    move-exception v6

    :try_start_92
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "file":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/ShortcutService;
    :cond_95
    :goto_95
    throw v5
    :try_end_96
    .catch Ljava/io/FileNotFoundException; {:try_start_92 .. :try_end_96} :catch_b4
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_96} :catch_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_92 .. :try_end_96} :catch_96

    .line 1068
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "file":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutService;
    :catch_96
    move-exception v4

    .line 1069
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1071
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_b6

    .line 1066
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_b4
    move-exception v0

    .line 1072
    :cond_b5
    :goto_b5
    nop

    .line 1074
    :goto_b6
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    .line 1075
    return-void

    :pswitch_data_ba
    .packed-switch -0x418aefa
        :pswitch_56
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_63
    .end packed-switch
.end method

.method private loadConfigurationLocked()V
    .registers 2

    .line 798
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShortcutManagerConstants()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    .line 799
    return-void
.end method

.method private loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    .line 1170
    const/4 v0, 0x0

    .line 1172
    .local v0, "ret":Lcom/android/server/pm/ShortcutUser;
    if-eqz p3, :cond_11

    .line 1173
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 1174
    .local v1, "parser":Landroid/util/TypedXmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_15

    .line 1176
    .end local v1    # "parser":Landroid/util/TypedXmlPullParser;
    :cond_11
    invoke-static {p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 1180
    .restart local v1    # "parser":Landroid/util/TypedXmlPullParser;
    :goto_15
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_3d

    .line 1181
    const/4 v2, 0x2

    if-eq v3, v2, :cond_21

    .line 1182
    goto :goto_15

    .line 1184
    :cond_21
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 1186
    .local v2, "depth":I
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1191
    .local v5, "tag":Ljava/lang/String;
    if-ne v2, v4, :cond_39

    const-string/jumbo v4, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1192
    invoke-static {p0, v1, p1, p3}, Lcom/android/server/pm/ShortcutUser;->loadFromXml(Lcom/android/server/pm/ShortcutService;Landroid/util/TypedXmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 1193
    goto :goto_15

    .line 1195
    :cond_39
    invoke-static {v2, v5}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    .line 1196
    .end local v2    # "depth":I
    .end local v5    # "tag":Ljava/lang/String;
    goto :goto_15

    .line 1197
    :cond_3d
    return-object v0
.end method

.method private loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;
    .registers 10
    .param p1, "userId"    # I

    .line 1140
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    .line 1144
    .local v0, "path":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1148
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_e} :catch_41

    .line 1154
    .local v3, "in":Ljava/io/FileInputStream;
    nop

    .line 1156
    const/4 v4, 0x0

    :try_start_10
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_14} :catch_1b
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_10 .. :try_end_14} :catch_1b
    .catchall {:try_start_10 .. :try_end_14} :catchall_19

    .line 1157
    .local v2, "ret":Lcom/android/server/pm/ShortcutUser;
    nop

    .line 1162
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1157
    return-object v2

    .line 1162
    .end local v2    # "ret":Lcom/android/server/pm/ShortcutUser;
    :catchall_19
    move-exception v2

    goto :goto_3d

    .line 1158
    :catch_1b
    move-exception v4

    .line 1159
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1c
    const-string v5, "ShortcutService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_1c .. :try_end_38} :catchall_19

    .line 1160
    nop

    .line 1162
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1160
    return-object v2

    .line 1162
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3d
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1163
    throw v2

    .line 1149
    .end local v3    # "in":Ljava/io/FileInputStream;
    :catch_41
    move-exception v3

    .line 1153
    .local v3, "e":Ljava/io/FileNotFoundException;
    return-object v2
.end method

.method private notifyListenerRunnable(Ljava/lang/String;I)Ljava/lang/Runnable;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1826
    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;)V

    return-object v0
.end method

.method private notifyListeners(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1821
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListenerRunnable(Ljava/lang/String;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 1822
    return-void
.end method

.method private notifyShortcutChangeCallbacks(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1848
    .local p3, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p4, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {p0, p3}, Lcom/android/server/pm/ShortcutService;->removeNonKeyFields(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 1849
    .local v7, "changedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {p0, p4}, Lcom/android/server/pm/ShortcutService;->removeNonKeyFields(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 1851
    .local v8, "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 1852
    .local v9, "user":Landroid/os/UserHandle;
    new-instance v10, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move-object v3, v7

    move-object v4, p1

    move-object v5, v9

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/ShortcutService;ILjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    invoke-virtual {p0, v10}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 1873
    return-void
.end method

.method static parseBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Z
    .registers 6
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 875
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static parseBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z
    .registers 7
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 879
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method static parseComponentNameAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 909
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 911
    const/4 v1, 0x0

    return-object v1

    .line 913
    :cond_c
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private static parseDumpArgs([Ljava/lang/String;)Lcom/android/server/pm/ShortcutService$DumpFilter;
    .registers 7
    .param p0, "args"    # [Ljava/lang/String;

    .line 4566
    new-instance v0, Lcom/android/server/pm/ShortcutService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;-><init>()V

    .line 4567
    .local v0, "filter":Lcom/android/server/pm/ShortcutService$DumpFilter;
    if-nez p0, :cond_8

    .line 4568
    return-object v0

    .line 4571
    :cond_8
    const/4 v1, 0x0

    .line 4572
    .local v1, "argIndex":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_103

    .line 4573
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "argIndex":I
    .local v2, "argIndex":I
    aget-object v1, p0, v1

    .line 4575
    .local v1, "arg":Ljava/lang/String;
    const-string v3, "-c"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1e

    .line 4576
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpCheckIn(Z)V

    .line 4577
    goto/16 :goto_100

    .line 4579
    :cond_1e
    const-string v3, "--checkin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 4580
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpCheckIn(Z)V

    .line 4581
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setCheckInClear(Z)V

    .line 4582
    goto/16 :goto_100

    .line 4584
    :cond_2e
    const-string v3, "-a"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f9

    const-string v3, "--all"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto/16 :goto_f9

    .line 4589
    :cond_40
    const-string v3, "-u"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f5

    const-string v3, "--uid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    goto/16 :goto_f5

    .line 4593
    :cond_52
    const-string v3, "-f"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f1

    const-string v3, "--files"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    goto/16 :goto_f1

    .line 4597
    :cond_64
    const-string v3, "-n"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_ed

    const-string v3, "--no-main"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    goto/16 :goto_ed

    .line 4601
    :cond_77
    const-string v3, "--user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 4602
    array-length v3, p0

    if-ge v2, v3, :cond_99

    .line 4606
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argIndex":I
    .local v3, "argIndex":I
    :try_start_84
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addUser(I)V
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_8d} :catch_90

    .line 4609
    move v1, v3

    goto/16 :goto_9

    .line 4607
    :catch_90
    move-exception v2

    .line 4608
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid user ID"

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4603
    .end local v3    # "argIndex":I
    .local v2, "argIndex":I
    :cond_99
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Missing user ID for --user"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4612
    :cond_a1
    const-string v3, "-p"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d5

    const-string v3, "--package"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    goto :goto_d5

    .line 4620
    :cond_b2
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bc

    move v1, v2

    goto :goto_103

    .line 4621
    :cond_bc
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4613
    :cond_d5
    :goto_d5
    array-length v3, p0

    if-ge v2, v3, :cond_e5

    .line 4616
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "argIndex":I
    .restart local v3    # "argIndex":I
    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackageRegex(Ljava/lang/String;)V

    .line 4617
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpDetails(Z)V

    .line 4618
    move v1, v3

    goto/16 :goto_9

    .line 4614
    .end local v3    # "argIndex":I
    .restart local v2    # "argIndex":I
    :cond_e5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Missing package name for --package"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4598
    :cond_ed
    :goto_ed
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpMain(Z)V

    .line 4599
    goto :goto_100

    .line 4594
    :cond_f1
    :goto_f1
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpFiles(Z)V

    .line 4595
    goto :goto_100

    .line 4590
    :cond_f5
    :goto_f5
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpUid(Z)V

    .line 4591
    goto :goto_100

    .line 4585
    :cond_f9
    :goto_f9
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpUid(Z)V

    .line 4586
    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->setDumpFiles(Z)V

    .line 4587
    nop

    .line 4572
    .end local v1    # "arg":Ljava/lang/String;
    :goto_100
    move v1, v2

    goto/16 :goto_9

    .line 4625
    .end local v2    # "argIndex":I
    .local v1, "argIndex":I
    :cond_103
    :goto_103
    array-length v2, p0

    if-ge v1, v2, :cond_10f

    .line 4626
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "argIndex":I
    .restart local v2    # "argIndex":I
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackage(Ljava/lang/String;)V

    move v1, v2

    goto :goto_103

    .line 4628
    .end local v2    # "argIndex":I
    .restart local v1    # "argIndex":I
    :cond_10f
    return-object v0
.end method

.method static parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I
    .registers 4
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 883
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I
    .registers 5
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 887
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseIntentAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 932
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 933
    .local v0, "parsed":Landroid/content/Intent;
    if-nez v0, :cond_e

    .line 935
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 937
    :cond_e
    return-object v0
.end method

.method static parseIntentAttributeNoDefault(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 918
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 920
    .local v1, "parsed":Landroid/content/Intent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 922
    const/4 v2, 0x0

    :try_start_c
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2
    :try_end_10
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_10} :catch_12

    move-object v1, v2

    .line 925
    goto :goto_1a

    .line 923
    :catch_12
    move-exception v2

    .line 924
    .local v2, "e":Ljava/net/URISyntaxException;
    const-string v3, "ShortcutService"

    const-string v4, "Error parsing intent"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :cond_1a
    :goto_1a
    return-object v1
.end method

.method static parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J
    .registers 4
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 891
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;J)J
    .registers 8
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 895
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 897
    return-wide p2

    .line 900
    :cond_b
    :try_start_b
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_f} :catch_10

    return-wide v1

    .line 901
    :catch_10
    move-exception v1

    .line 902
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-wide p2
.end method

.method static parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 871
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private prepareChangedShortcuts(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;
    .registers 9
    .param p4, "ps"    # Lcom/android/server/pm/ShortcutPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 5389
    .local p1, "changedIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p3, "deletedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    if-nez p4, :cond_4

    .line 5391
    return-object v0

    .line 5393
    :cond_4
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5394
    return-object v0

    .line 5397
    :cond_11
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 5398
    .local v0, "resultIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 5399
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 5401
    :cond_1f
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 5402
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 5405
    :cond_28
    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 5406
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {p3, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 5409
    :cond_36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5410
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;-><init>(Landroid/util/ArraySet;)V

    const/4 v3, 0x4

    invoke-virtual {p4, v1, v2, v3}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 5412
    return-object v1
.end method

.method private prepareChangedShortcuts(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;
    .registers 8
    .param p4, "ps"    # Lcom/android/server/pm/ShortcutPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 5417
    .local p1, "changedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p3, "deletedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 5418
    .local v0, "changedIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/ShortcutService;->addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V

    .line 5420
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 5421
    .local v1, "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/ShortcutService;->addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V

    .line 5423
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/pm/ShortcutService;->prepareChangedShortcuts(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private removeNonKeyFields(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1876
    .local p1, "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1877
    return-object p1

    .line 1880
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1881
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1883
    .local v1, "keyFieldOnlyShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_2e

    .line 1884
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 1885
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1886
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 1888
    :cond_23
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1883
    .end local v3    # "si":Landroid/content/pm/ShortcutInfo;
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1891
    .end local v2    # "i":I
    :cond_2e
    return-object v1
.end method

.method private requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 16
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p4, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultIntent"    # Landroid/content/IntentSender;

    .line 2320
    nop

    .line 2321
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v8

    .line 2320
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;II)Z

    move-result v0

    return v0
.end method

.method private requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;II)Z
    .registers 23
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p4, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultIntent"    # Landroid/content/IntentSender;
    .param p7, "callingPid"    # I
    .param p8, "callingUid"    # I

    .line 2327
    move-object v1, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p8

    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2328
    if-eqz v9, :cond_17

    move/from16 v11, p7

    invoke-virtual {p0, v11, v10}, Lcom/android/server/pm/ShortcutService;->injectHasAccessShortcutsPermission(II)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_19

    :cond_15
    move-object v12, p1

    goto :goto_1d

    :cond_17
    move/from16 v11, p7

    .line 2331
    :goto_19
    move-object v12, p1

    invoke-direct {p0, p1, v9}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 2335
    :goto_1d
    iget-object v13, v1, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2336
    :try_start_20
    invoke-virtual {p0, v8}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2338
    invoke-virtual {p0, v10}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v0

    const-string v2, "Calling application must have a foreground activity or a foreground service"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2345
    if-eqz v9, :cond_4b

    .line 2346
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 2347
    .local v0, "shortcutPackage":Ljava/lang/String;
    invoke-virtual {p0, v0, v8}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    .line 2349
    .local v2, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2350
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndInvisibleToPublisher(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2352
    invoke-virtual {v2, v9}, Lcom/android/server/pm/ShortcutPackage;->updateInvisibleShortcutForPinRequestWith(Landroid/content/pm/ShortcutInfo;)V

    .line 2354
    invoke-static/range {p3 .. p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2359
    .end local v0    # "shortcutPackage":Ljava/lang/String;
    .end local v2    # "ps":Lcom/android/server/pm/ShortcutPackage;
    .end local v3    # "id":Ljava/lang/String;
    :cond_4b
    iget-object v2, v1, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p2

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinItemLocked(Landroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;ILandroid/content/IntentSender;)Z

    move-result v0

    .line 2361
    .local v0, "ret":Z
    monitor-exit v13
    :try_end_5c
    .catchall {:try_start_20 .. :try_end_5c} :catchall_60

    .line 2363
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2365
    return v0

    .line 2361
    .end local v0    # "ret":Z
    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit v13
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0
.end method

.method private rescanUpdatedPackagesLocked(IJ)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "lastScanTime"    # J

    .line 3864
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 3868
    .local v0, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 3869
    .local v1, "now":J
    nop

    .line 3870
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->getLastAppScanOsFingerprint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v8, v3, 0x1

    .line 3873
    .local v8, "afterOta":Z
    new-instance v9, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda23;

    invoke-direct {v9, p0, v0, p1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;I)V

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/ShortcutService;->forUpdatedPackages(IJZLjava/util/function/Consumer;)V

    .line 3881
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutUser;->setLastAppScanTime(J)V

    .line 3882
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutUser;->setLastAppScanOsFingerprint(Ljava/lang/String;)V

    .line 3883
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 3884
    return-void
.end method

.method private saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1115
    if-eqz p3, :cond_10

    .line 1116
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 1117
    .local v0, "out":Landroid/util/TypedXmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_14

    .line 1119
    .end local v0    # "out":Landroid/util/TypedXmlSerializer;
    :cond_10
    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 1121
    .restart local v0    # "out":Landroid/util/TypedXmlSerializer;
    :goto_14
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1123
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/android/server/pm/ShortcutUser;->saveToXml(Landroid/util/TypedXmlSerializer;Z)V

    .line 1125
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1127
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 1128
    return-void
.end method

.method private saveUserLocked(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 1084
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    .line 1089
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1090
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1091
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 1093
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_11
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 1095
    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V

    .line 1097
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 1100
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->cleanupDanglingBitmapDirectoriesLocked(I)V
    :try_end_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_20} :catch_21
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_20} :catch_21

    .line 1104
    goto :goto_41

    .line 1101
    :catch_21
    move-exception v3

    .line 1102
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShortcutService"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1103
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1106
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_41
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ShortcutUser;->logSharingShortcutStats(Lcom/android/internal/logging/MetricsLogger;)V

    .line 1107
    return-void
.end method

.method private scheduleSaveBaseState()V
    .registers 2

    .line 1201
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 1202
    return-void
.end method

.method private scheduleSaveInner(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 1215
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1216
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1217
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2b

    .line 1221
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1222
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1223
    return-void

    .line 1219
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private setReturnedByServer(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1989
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 1990
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->setReturnedByServer()V

    .line 1989
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1992
    .end local v0    # "i":I
    :cond_14
    return-object p1
.end method

.method static shouldBackupApp(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .line 4436
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "in"    # Landroid/graphics/Bitmap;
    .param p1, "maxSize"    # I

    .line 1577
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1578
    .local v0, "ow":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1579
    .local v1, "oh":I
    if-gt v0, p1, :cond_d

    if-gt v1, p1, :cond_d

    .line 1583
    return-object p0

    .line 1585
    :cond_d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1588
    .local v2, "longerDimension":I
    mul-int v3, v0, p1

    div-int/2addr v3, v2

    .line 1589
    .local v3, "nw":I
    mul-int v4, v1, p1

    div-int/2addr v4, v2

    .line 1595
    .local v4, "nh":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1596
    .local v5, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1598
    .local v6, "c":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v4

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1600
    .local v7, "dst":Landroid/graphics/RectF;
    const/4 v8, 0x0

    invoke-virtual {v6, p0, v8, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1602
    return-object v5
.end method

.method static throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;
    .registers 6
    .param p0, "depth"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1131
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Invalid tag \'%s\' found at depth %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unloadUserLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 768
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->cancelAllInFlightTasks()V

    .line 771
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 774
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 775
    return-void
.end method

.method private updateTimesLocked()V
    .registers 11

    .line 1277
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    .line 1279
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 1281
    .local v2, "prevLastResetTime":J
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_11

    .line 1283
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_34

    .line 1284
    :cond_11
    cmp-long v6, v0, v4

    if-gez v6, :cond_25

    .line 1286
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1287
    const-string v4, "ShortcutService"

    const-string v5, "Clock rewound"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_34

    .line 1292
    :cond_25
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long v8, v4, v6

    cmp-long v8, v8, v0

    if-gtz v8, :cond_34

    .line 1293
    rem-long/2addr v4, v6

    .line 1294
    .local v4, "offset":J
    div-long v8, v0, v6

    mul-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 1297
    .end local v4    # "offset":J
    :cond_34
    :goto_34
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3d

    .line 1298
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    .line 1300
    :cond_3d
    return-void
.end method

.method private validateIconURI(Landroid/content/pm/ShortcutInfo;)V
    .registers 12
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1937
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v6

    .line 1938
    .local v6, "callingUid":I
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 1939
    .local v7, "icon":Landroid/graphics/drawable/Icon;
    if-nez v7, :cond_b

    .line 1941
    return-void

    .line 1943
    :cond_b
    invoke-virtual {v7}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v8

    .line 1944
    .local v8, "iconType":I
    const/4 v0, 0x4

    if-eq v8, v0, :cond_16

    const/4 v0, 0x6

    if-eq v8, v0, :cond_16

    .line 1946
    return-void

    .line 1948
    :cond_16
    invoke-virtual {v7}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 1949
    .local v9, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 1950
    invoke-static {v9}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    .line 1952
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v9, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 1949
    move v1, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 1953
    return-void
.end method

.method private verifyCaller(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1713
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 1715
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1716
    return-void

    .line 1719
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1722
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p2, :cond_31

    .line 1725
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_29

    .line 1728
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isEphemeralApp(Ljava/lang/String;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Ephemeral apps can\'t use ShortcutManager"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1730
    return-void

    .line 1726
    :cond_29
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Calling package name mismatch"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1723
    :cond_31
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Invalid user-ID"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private verifyCallerUserId(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1700
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1701
    return-void

    .line 1704
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1707
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_12

    .line 1710
    return-void

    .line 1708
    :cond_12
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Invalid user-ID"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V
    .registers 7
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1733
    if-nez p2, :cond_3

    .line 1734
    return-void

    .line 1736
    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1740
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    .line 1741
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v2

    if-ne v1, v2, :cond_1c

    .line 1744
    return-void

    .line 1742
    :cond_1c
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "User-ID in shortcut doesn\'t match the caller"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1737
    .end local v0    # "callingUid":I
    :cond_24
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "109824443"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1738
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Shortcut package name mismatch"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1748
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1749
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 1750
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 1749
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1752
    .end local v1    # "i":I
    :cond_13
    return-void
.end method

.method private final verifyStatesForce()V
    .registers 1

    .line 5362
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesInner()V

    .line 5363
    return-void
.end method

.method private verifyStatesInner()V
    .registers 3

    .line 5366
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5367
    :try_start_3
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 5368
    monitor-exit v0

    .line 5369
    return-void

    .line 5368
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method static warnForInvalidTag(ILjava/lang/String;)V
    .registers 5
    .param p0, "depth"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1135
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Invalid tag \'%s\' found at depth %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    return-void
.end method

.method static writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V
    .registers 5
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 975
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 976
    return-void
.end method

.method static writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 4
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 988
    if-nez p2, :cond_3

    return-void

    .line 989
    :cond_3
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 990
    return-void
.end method

.method static writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 993
    if-nez p2, :cond_3

    return-void

    .line 995
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 996
    return-void
.end method

.method static writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 969
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 971
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 972
    return-void
.end method

.method static writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 979
    if-eqz p2, :cond_8

    .line 980
    const-string v0, "1"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 982
    :cond_8
    const-string v0, "0"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 984
    :goto_d
    return-void
.end method

.method static writeTagExtra(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 960
    if-nez p2, :cond_3

    return-void

    .line 962
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 963
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 964
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 965
    return-void
.end method

.method static writeTagValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V
    .registers 5
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method static writeTagValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 4
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 954
    if-nez p2, :cond_3

    return-void

    .line 955
    :cond_3
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    return-void
.end method

.method static writeTagValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 941
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 943
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 944
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 945
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 946
    return-void
.end method


# virtual methods
.method public addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutInfoList"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    .line 2170
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2172
    nop

    .line 2173
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    .line 2172
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    .line 2174
    .local v0, "unlimited":Z
    nop

    .line 2175
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 2176
    .local v1, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 2177
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2179
    .local v2, "size":I
    const/4 v3, 0x0

    .line 2182
    .local v3, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2183
    :try_start_20
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2185
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v5

    .line 2187
    .local v5, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 2188
    invoke-virtual {v5, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V

    .line 2190
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    .line 2192
    invoke-virtual {v5, v1, v6}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 2195
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 2196
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 2199
    invoke-virtual {v5, v0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_43

    .line 2200
    monitor-exit v4

    return v8

    .line 2202
    :cond_43
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_44
    if-ge v7, v2, :cond_64

    .line 2203
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 2206
    .local v9, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-direct {p0, v9, v8}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 2210
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 2213
    invoke-virtual {v5, v9}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)Z

    .line 2215
    if-nez v3, :cond_5d

    .line 2216
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v10

    .line 2218
    :cond_5d
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2202
    nop

    .end local v9    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 2222
    .end local v7    # "i":I
    :cond_64
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2223
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_20 .. :try_end_68} :catchall_70

    .line 2224
    const/4 v4, 0x0

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2225
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2226
    return v6

    .line 2223
    .end local v5    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_70
    move-exception v5

    :try_start_71
    monitor-exit v4
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v5
.end method

.method public applyRestore([BI)V
    .registers 9
    .param p1, "payload"    # [B
    .param p2, "userId"    # I

    .line 4491
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 4495
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4496
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t restore: user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is locked or not running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 4498
    monitor-exit v0

    return-void

    .line 4502
    :cond_2a
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-0-start.txt"

    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 4507
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-1-payload.xml"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;[B)Z

    .line 4510
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_99

    .line 4512
    .local v1, "is":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x1

    :try_start_45
    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2
    :try_end_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_49} :catch_8f
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_8f
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_45 .. :try_end_49} :catch_8f
    .catchall {:try_start_45 .. :try_end_49} :catchall_99

    .line 4516
    .local v2, "restored":Lcom/android/server/pm/ShortcutUser;
    nop

    .line 4517
    :try_start_4a
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v4, "restore-2.txt"

    new-instance v5, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 4518
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ShortcutUser;->mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V

    .line 4519
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v4, "restore-3.txt"

    new-instance v5, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 4521
    const-wide/16 v3, 0x0

    invoke-direct {p0, p2, v3, v4}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    .line 4524
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v4, "restore-4.txt"

    new-instance v5, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 4525
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v4, "restore-5-finish.txt"

    new-instance v5, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 4530
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    .line 4531
    .end local v1    # "is":Ljava/io/ByteArrayInputStream;
    .end local v2    # "restored":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v0

    .line 4532
    return-void

    .line 4513
    .restart local v1    # "is":Ljava/io/ByteArrayInputStream;
    :catch_8f
    move-exception v2

    .line 4514
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ShortcutService"

    const-string v4, "Restoration failed."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4515
    monitor-exit v0

    return-void

    .line 4531
    .end local v1    # "is":Ljava/io/ByteArrayInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_99
    move-exception v1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_4a .. :try_end_9b} :catchall_99

    throw v1
.end method

.method canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 2771
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/ShortcutService;->injectHasAccessShortcutsPermission(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2772
    const/4 v0, 0x1

    return v0

    .line 2774
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mNonPersistentUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2775
    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutNonPersistentUser;->hasHostPackage(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2776
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v1
.end method

.method checkPackageChanges(I)V
    .registers 13
    .param p1, "ownerUserId"    # I

    .line 3818
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3819
    const-string v0, "ShortcutService"

    const-string v1, "Safe mode, skipping checkPackageChanges()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    return-void

    .line 3823
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 3825
    .local v0, "start":J
    const/16 v2, 0x8

    :try_start_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3827
    .local v3, "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_5a

    .line 3828
    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v5

    .line 3831
    .local v5, "user":Lcom/android/server/pm/ShortcutUser;
    new-instance v6, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;

    invoke-direct {v6, p0, v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 3843
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_47

    .line 3844
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_34
    if-ltz v6, :cond_47

    .line 3845
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 3846
    .local v7, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget-object v8, v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    const/4 v10, 0x0

    invoke-virtual {p0, v8, p1, v9, v10}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    .line 3844
    .end local v7    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    add-int/lit8 v6, v6, -0x1

    goto :goto_34

    .line 3851
    .end local v6    # "i":I
    :cond_47
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutUser;->getLastAppScanTime()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    .line 3852
    .end local v5    # "user":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_1c .. :try_end_4f} :catchall_57

    .line 3854
    .end local v3    # "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3855
    nop

    .line 3856
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3857
    return-void

    .line 3852
    .restart local v3    # "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    :catchall_57
    move-exception v5

    :try_start_58
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    .end local v0    # "start":J
    .end local p0    # "this":Lcom/android/server/pm/ShortcutService;
    .end local p1    # "ownerUserId":I
    :try_start_59
    throw v5
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 3854
    .end local v3    # "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    .restart local v0    # "start":J
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutService;
    .restart local p1    # "ownerUserId":I
    :catchall_5a
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 3855
    throw v3
.end method

.method cleanUpPackageLocked(Ljava/lang/String;IIZ)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "owningUserId"    # I
    .param p3, "packageUserId"    # I
    .param p4, "appStillExists"    # Z

    .line 2884
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserLoadedLocked(I)Z

    move-result v0

    .line 2886
    .local v0, "wasUserLoaded":Z
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 2887
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    const/4 v2, 0x0

    .line 2889
    .local v2, "doNotify":Z
    if-ne p3, p2, :cond_10

    .line 2890
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->removePackage(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    .line 2891
    .local v3, "sp":Lcom/android/server/pm/ShortcutPackage;
    :goto_11
    if-eqz v3, :cond_14

    .line 2892
    const/4 v2, 0x1

    .line 2896
    :cond_14
    invoke-virtual {v1, p3, p1}, Lcom/android/server/pm/ShortcutUser;->removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 2899
    new-instance v4, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;

    invoke-direct {v4, p1, p3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 2903
    new-instance v4, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;

    invoke-direct {v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {v1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 2905
    if-eqz v2, :cond_2c

    .line 2906
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListeners(Ljava/lang/String;I)V

    .line 2910
    :cond_2c
    if-eqz p4, :cond_34

    if-ne p3, p2, :cond_34

    .line 2913
    const/4 v4, 0x1

    invoke-virtual {v1, p1, v4}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 2915
    :cond_34
    if-nez p4, :cond_42

    if-ne p3, p2, :cond_42

    if-eqz v3, :cond_42

    .line 2917
    new-instance v4, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;

    invoke-direct {v4, v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 2920
    :cond_42
    if-nez v0, :cond_47

    .line 2922
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    .line 2924
    :cond_47
    return-void
.end method

.method public cleanupBitmapsForPackage(ILjava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1413
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1414
    .local v0, "packagePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1415
    return-void

    .line 1418
    :cond_10
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_34

    .line 1419
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to remove directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortcutService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_34
    return-void
.end method

.method public createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            "I",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2299
    .local p4, "ret":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2301
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2302
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 2304
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2305
    :try_start_15
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2307
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;

    move-result-object v1

    .line 2308
    .local v1, "intent":Landroid/content/Intent;
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_26

    .line 2309
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2310
    invoke-virtual {p4, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 2311
    return-void

    .line 2308
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutIds"    # Ljava/util/List;
    .param p3, "disabledMessage"    # Ljava/lang/CharSequence;
    .param p4, "disabledMessageResId"    # I
    .param p5, "userId"    # I

    .line 2371
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p5

    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2372
    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2373
    const/4 v5, 0x0

    .line 2374
    .local v5, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v6, 0x0

    .line 2376
    .local v6, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v7, v1, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2377
    :try_start_16
    invoke-virtual {v1, v4}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2378
    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 2379
    .local v0, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v15, 0x1

    invoke-virtual {v0, v3, v15}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2382
    if-nez p3, :cond_25

    const/4 v8, 0x0

    goto :goto_29

    :cond_25
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_29
    move-object v10, v8

    .line 2383
    .local v10, "disabledMessageString":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v15

    move v14, v8

    .local v14, "i":I
    :goto_30
    if-ltz v14, :cond_81

    .line 2384
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v13, v8

    .line 2385
    .local v13, "id":Ljava/lang/String;
    invoke-virtual {v0, v13}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_48

    .line 2386
    move/from16 v16, v14

    goto :goto_7e

    .line 2388
    :cond_48
    const/4 v12, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v8, v0

    move-object v9, v13

    move/from16 v11, p4

    move-object/from16 v18, v13

    .end local v13    # "id":Ljava/lang/String;
    .local v18, "id":Ljava/lang/String;
    move/from16 v13, v16

    move/from16 v16, v14

    .end local v14    # "i":I
    .local v16, "i":I
    move/from16 v14, v17

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object v8

    .line 2392
    .local v8, "deleted":Landroid/content/pm/ShortcutInfo;
    if-nez v8, :cond_71

    .line 2393
    if-nez v5, :cond_67

    .line 2394
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v9

    .line 2396
    :cond_67
    move-object/from16 v9, v18

    .end local v18    # "id":Ljava/lang/String;
    .local v9, "id":Ljava/lang/String;
    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 2398
    .end local v9    # "id":Ljava/lang/String;
    .restart local v18    # "id":Ljava/lang/String;
    :cond_71
    move-object/from16 v9, v18

    .end local v18    # "id":Ljava/lang/String;
    .restart local v9    # "id":Ljava/lang/String;
    if-nez v6, :cond_7b

    .line 2399
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v15}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v11

    .line 2401
    :cond_7b
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2383
    .end local v8    # "deleted":Landroid/content/pm/ShortcutInfo;
    .end local v9    # "id":Ljava/lang/String;
    :goto_7e
    add-int/lit8 v14, v16, -0x1

    .end local v16    # "i":I
    .restart local v14    # "i":I
    goto :goto_30

    :cond_81
    move/from16 v16, v14

    .line 2405
    .end local v14    # "i":I
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2406
    .end local v10    # "disabledMessageString":Ljava/lang/String;
    monitor-exit v7
    :try_end_87
    .catchall {:try_start_16 .. :try_end_87} :catchall_8e

    .line 2407
    invoke-virtual {v1, v0, v5, v6}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2408
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2409
    return-void

    .line 2406
    .end local v0    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_8e
    move-exception v0

    :try_start_8f
    monitor-exit v7
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4538
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v1, "ShortcutService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 4539
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4540
    return-void
.end method

.method dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4544
    invoke-static {p3}, Lcom/android/server/pm/ShortcutService;->parseDumpArgs([Ljava/lang/String;)Lcom/android/server/pm/ShortcutService$DumpFilter;

    move-result-object v0

    .line 4546
    .local v0, "filter":Lcom/android/server/pm/ShortcutService$DumpFilter;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpCheckIn()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4548
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldCheckInClear()Z

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/pm/ShortcutService;->dumpCheckin(Ljava/io/PrintWriter;Z)V

    goto :goto_36

    .line 4550
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpMain()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4551
    invoke-direct {p0, p2, v0}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 4552
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4554
    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpUid()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 4555
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->dumpUid(Ljava/io/PrintWriter;)V

    .line 4556
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4558
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpFiles()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 4559
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->dumpDumpFiles(Ljava/io/PrintWriter;)V

    .line 4560
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4563
    :cond_36
    :goto_36
    return-void
.end method

.method public enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutIds"    # Ljava/util/List;
    .param p3, "userId"    # I

    .line 2413
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2414
    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2415
    const/4 v0, 0x0

    .line 2417
    .local v0, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2418
    :try_start_d
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2419
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    .line 2420
    .local v2, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2422
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_1d
    if-ltz v4, :cond_47

    .line 2423
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2424
    .local v5, "id":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_32

    .line 2425
    goto :goto_44

    .line 2427
    :cond_32
    invoke-virtual {v2, v5}, Lcom/android/server/pm/ShortcutPackage;->enableWithId(Ljava/lang/String;)V

    .line 2428
    if-nez v0, :cond_3d

    .line 2429
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v6

    .line 2431
    :cond_3d
    invoke-virtual {v2, v5}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2422
    .end local v5    # "id":Ljava/lang/String;
    :goto_44
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .line 2433
    .end local v4    # "i":I
    :cond_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_50

    .line 2434
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2435
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2436
    return-void

    .line 2433
    .end local v2    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v2
.end method

.method enforceMaxActivityShortcuts(I)V
    .registers 4
    .param p1, "numShortcuts"    # I

    .line 1777
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    if-gt p1, v0, :cond_5

    .line 1780
    return-void

    .line 1778
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max number of dynamic shortcuts exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V
    .registers 7
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1610
    nop

    .line 1611
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    .line 1610
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 1612
    .local v0, "publisherRes":Landroid/content/res/Resources;
    if-eqz v0, :cond_25

    .line 1613
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v1

    .line 1615
    .local v1, "start":J
    const/16 v3, 0xa

    :try_start_15
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceNames(Landroid/content/res/Resources;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_20

    .line 1617
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1618
    nop

    .line 1619
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    goto :goto_25

    .line 1617
    :catchall_20
    move-exception v4

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1618
    throw v4

    .line 1621
    .end local v1    # "start":J
    :cond_25
    :goto_25
    return-void
.end method

.method forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;)V"
        }
    .end annotation

    .line 1375
    .local p1, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/ShortcutUser;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1376
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1375
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1378
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method final getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 4
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4058
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method final getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4028
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBackupPayload(I)[B
    .registers 9
    .param p1, "userId"    # I

    .line 4441
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    .line 4445
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4446
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2b

    .line 4447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t backup: user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is locked or not running"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 4448
    monitor-exit v0

    return-object v2

    .line 4451
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 4452
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    if-nez v1, :cond_49

    .line 4453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t backup: user not found: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 4454
    monitor-exit v0

    return-object v2

    .line 4458
    :cond_49
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 4461
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 4465
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 4468
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 4469
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 4475
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const v4, 0x8000

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_6f
    .catchall {:try_start_6 .. :try_end_6f} :catchall_8b

    .line 4477
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x1

    :try_start_70
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    :try_end_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_73} :catch_81
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_81
    .catchall {:try_start_70 .. :try_end_73} :catchall_8b

    .line 4482
    nop

    .line 4483
    :try_start_74
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 4484
    .local v2, "payload":[B
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string v5, "backup-1-payload.txt"

    invoke-virtual {v4, v5, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;[B)Z

    .line 4485
    monitor-exit v0

    return-object v2

    .line 4478
    .end local v2    # "payload":[B
    :catch_81
    move-exception v4

    .line 4480
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "ShortcutService"

    const-string v6, "Backup failed."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4481
    monitor-exit v0

    return-object v2

    .line 4486
    .end local v1    # "user":Lcom/android/server/pm/ShortcutUser;
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_74 .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method getDefaultLauncher(I)Ljava/lang/String;
    .registers 16
    .param p1, "userId"    # I

    .line 2819
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 2820
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 2822
    .local v2, "token":J
    const/16 v4, 0x10

    :try_start_a
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_5c

    .line 2823
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2825
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v6

    .line 2826
    .local v6, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutUser;->getCachedLauncher()Ljava/lang/String;

    move-result-object v7

    .line 2827
    .local v7, "cachedLauncher":Ljava/lang/String;
    if-eqz v7, :cond_22

    .line 2828
    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_59

    .line 2850
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2851
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2828
    return-object v7

    .line 2832
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v8

    .line 2833
    .local v8, "startGetHomeRoleHoldersAsUser":J
    nop

    .line 2834
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getParentOrSelfUserId(I)I

    move-result v10

    .line 2833
    invoke-virtual {p0, v10}, Lcom/android/server/pm/ShortcutService;->injectGetHomeRoleHolderAsUser(I)Ljava/lang/String;

    move-result-object v10

    .line 2835
    .local v10, "defaultLauncher":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {p0, v11, v8, v9}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2837
    if-eqz v10, :cond_39

    .line 2842
    invoke-virtual {v6, v10}, Lcom/android/server/pm/ShortcutUser;->setCachedLauncher(Ljava/lang/String;)V

    goto :goto_51

    .line 2844
    :cond_39
    const-string v11, "ShortcutService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Default launcher not found. user: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    :goto_51
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_22 .. :try_end_52} :catchall_59

    .line 2850
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2851
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2847
    return-object v10

    .line 2848
    .end local v6    # "user":Lcom/android/server/pm/ShortcutUser;
    .end local v7    # "cachedLauncher":Ljava/lang/String;
    .end local v8    # "startGetHomeRoleHoldersAsUser":J
    .end local v10    # "defaultLauncher":Ljava/lang/String;
    :catchall_59
    move-exception v6

    :try_start_5a
    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    .end local v0    # "start":J
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/pm/ShortcutService;
    .end local p1    # "userId":I
    :try_start_5b
    throw v6
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 2850
    .restart local v0    # "start":J
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutService;
    .restart local p1    # "userId":I
    :catchall_5c
    move-exception v5

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2851
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2852
    throw v5
.end method

.method getDummyMainActivity(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4338
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android.__dummy__"

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDumpPath()Ljava/io/File;
    .registers 4

    .line 5228
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcut_dump"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIconMaxDimensions(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2665
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2667
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2668
    :try_start_6
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    monitor-exit v0

    return v1

    .line 2669
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method getIconPersistFormatForTest()Landroid/graphics/Bitmap$CompressFormat;
    .registers 2

    .line 5289
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method getIconPersistQualityForTest()I
    .registers 2

    .line 5294
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    return v0
.end method

.method final getInstalledPackages(I)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 4091
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 4092
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 4094
    .local v2, "token":J
    const/4 v4, 0x7

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectGetPackagesWithUninstalled(I)Ljava/util/List;

    move-result-object v5

    .line 4096
    .local v5, "all":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    sget-object v6, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate;

    invoke-interface {v5, v6}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1c
    .catchall {:try_start_9 .. :try_end_12} :catchall_1a

    .line 4098
    nop

    .line 4104
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4106
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4098
    return-object v5

    .line 4104
    .end local v5    # "all":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_1a
    move-exception v5

    goto :goto_2c

    .line 4099
    :catch_1c
    move-exception v5

    .line 4101
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v6, "ShortcutService"

    const-string v7, "RemoteException"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    .line 4102
    const/4 v6, 0x0

    .line 4104
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4106
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4102
    return-object v6

    .line 4104
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2c
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4106
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4107
    throw v5
.end method

.method getLastResetTimeLocked()J
    .registers 3

    .line 1256
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 1257
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    return-wide v0
.end method

.method getLauncherShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5329
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5330
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    .line 5331
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    if-nez v1, :cond_10

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 5333
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->getAllLaunchersForTest()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutLauncher;

    monitor-exit v0

    return-object v2

    .line 5334
    .end local v1    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerUserId"    # I
    .param p3, "launcherUserId"    # I

    .line 1406
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 1407
    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/ShortcutUser;->getLauncherShortcuts(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 1406
    return-object v0
.end method

.method getMaxActivityShortcuts()I
    .registers 2

    .line 1786
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return v0
.end method

.method getMaxAppShortcuts()I
    .registers 2

    .line 1793
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcutsPerApp:I

    return v0
.end method

.method getMaxIconDimensionForTest()I
    .registers 2

    .line 5284
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    return v0
.end method

.method public getMaxShortcutCountPerActivity(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2632
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2634
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return v0
.end method

.method getMaxShortcutsForTest()I
    .registers 2

    .line 5269
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return v0
.end method

.method getMaxUpdatesPerIntervalForTest()I
    .registers 2

    .line 5274
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    return v0
.end method

.method getNextResetTimeLocked()J
    .registers 5

    .line 1263
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 1264
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;
    .registers 4
    .param p1, "userId"    # I

    .line 1365
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutNonPersistentUser;

    .line 1366
    .local v0, "ret":Lcom/android/server/pm/ShortcutNonPersistentUser;
    if-nez v0, :cond_15

    .line 1367
    new-instance v1, Lcom/android/server/pm/ShortcutNonPersistentUser;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutNonPersistentUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    move-object v0, v1

    .line 1368
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1370
    :cond_15
    return-object v0
.end method

.method final getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3970
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method final getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "getSignatures"    # Z

    .line 3993
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method final getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3962
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method getPackageShortcutForTest(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 5309
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5310
    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 5311
    .local v1, "pkg":Lcom/android/server/pm/ShortcutPackage;
    if-nez v1, :cond_c

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 5313
    :cond_c
    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 5314
    .end local v1    # "pkg":Lcom/android/server/pm/ShortcutPackage;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5299
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    .line 5301
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    if-nez v1, :cond_10

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 5303
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->getAllPackagesForTest()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutPackage;

    monitor-exit v0

    return-object v2

    .line 5304
    .end local v1    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1396
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 1397
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->getUser()Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->onCalledByPublisher(Ljava/lang/String;)V

    .line 1398
    return-object v0
.end method

.method getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1388
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    return-object v0
.end method

.method getParentOrSelfUserId(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 4414
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    return v0
.end method

.method public getRateLimitResetTime(Ljava/lang/String;I)J
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2654
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2656
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2657
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2659
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 2660
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getRemainingCallCount(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2639
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2641
    nop

    .line 2642
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    .line 2641
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    .line 2644
    .local v0, "unlimited":Z
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2645
    :try_start_13
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2647
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    .line 2648
    .local v2, "ps":Lcom/android/server/pm/ShortcutPackage;
    iget v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result v4

    sub-int/2addr v3, v4

    monitor-exit v1

    return v3

    .line 2649
    .end local v2    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_23

    throw v2
.end method

.method getResetIntervalForTest()J
    .registers 3

    .line 5279
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    return-wide v0
.end method

.method public getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "userId"    # I

    .line 2564
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2565
    const-string v0, "intentFilter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2566
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerChooserActivity()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2567
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2569
    :cond_14
    const-string v0, "android.permission.MANAGE_APP_PREDICTIONS"

    const-string v1, "getShareTargets"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2572
    :try_start_1e
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2573
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2574
    .local v1, "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    .line 2575
    .local v2, "user":Lcom/android/server/pm/ShortcutUser;
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda16;

    invoke-direct {v3, v1, p2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda16;-><init>(Ljava/util/List;Landroid/content/IntentFilter;)V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 2576
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object v3

    .line 2577
    .end local v1    # "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .end local v2    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1e .. :try_end_3b} :catchall_39

    throw v1
.end method

.method getShortcutRequestPinProcessorForTest()Lcom/android/server/pm/ShortcutRequestPinProcessor;
    .registers 2

    .line 5339
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    return-object v0
.end method

.method public getShortcuts(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "matchFlags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2542
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2543
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2544
    :try_start_6
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2545
    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    move v1, v3

    .line 2546
    .local v1, "matchDynamic":Z
    :goto_12
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_18

    move v4, v2

    goto :goto_19

    :cond_18
    move v4, v3

    .line 2547
    .local v4, "matchPinned":Z
    :goto_19
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_1f

    move v5, v2

    goto :goto_20

    :cond_1f
    move v5, v3

    .line 2548
    .local v5, "matchManifest":Z
    :goto_20
    and-int/lit8 v6, p2, 0x8

    if-eqz v6, :cond_26

    move v6, v2

    goto :goto_27

    :cond_26
    move v6, v3

    .line 2549
    .local v6, "matchCached":Z
    :goto_27
    if-eqz v1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v3

    .line 2550
    :goto_2b
    if-eqz v4, :cond_2f

    const/4 v7, 0x2

    goto :goto_30

    :cond_2f
    move v7, v3

    :goto_30
    or-int/2addr v2, v7

    .line 2551
    if-eqz v5, :cond_36

    const/16 v7, 0x20

    goto :goto_37

    :cond_36
    move v7, v3

    :goto_37
    or-int/2addr v2, v7

    .line 2552
    if-eqz v6, :cond_3d

    const v3, 0x60004000

    :cond_3d
    or-int/2addr v2, v3

    .line 2553
    .local v2, "shortcutFlags":I
    const/16 v3, 0x9

    new-instance v7, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda29;

    invoke-direct {v7, v2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda29;-><init>(I)V

    invoke-direct {p0, p1, p3, v3, v7}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 2558
    .end local v1    # "matchDynamic":Z
    .end local v2    # "shortcutFlags":I
    .end local v4    # "matchPinned":Z
    .end local v5    # "matchManifest":Z
    .end local v6    # "matchCached":Z
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_6 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method getShortcutsForTest()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;"
        }
    .end annotation

    .line 5264
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method getStatStartTime()J
    .registers 3

    .line 560
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method getUidLastForegroundElapsedTimeLocked(I)J
    .registers 4
    .param p1, "uid"    # I

    .line 666
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getUserBitmapFilePath(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 5259
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "bitmaps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final getUserFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 1079
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcuts.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;
    .registers 4
    .param p1, "userId"    # I

    .line 1337
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1339
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    if-eq p1, v0, :cond_15

    .line 1340
    const-string v0, "User still locked"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1341
    iput p1, p0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    goto :goto_15

    .line 1344
    :cond_12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    .line 1347
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutUser;

    .line 1348
    .local v0, "userPackages":Lcom/android/server/pm/ShortcutUser;
    if-nez v0, :cond_33

    .line 1349
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    .line 1350
    if-nez v0, :cond_2b

    .line 1351
    new-instance v1, Lcom/android/server/pm/ShortcutUser;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    move-object v0, v1

    .line 1353
    :cond_2b
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1356
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->checkPackageChanges(I)V

    .line 1358
    :cond_33
    return-object v0
.end method

.method handleLocaleChanged()V
    .registers 5

    .line 3707
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    .line 3709
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3710
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_1e

    .line 3712
    .local v1, "token":J
    :try_start_a
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda17;

    invoke-direct {v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda17;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_18

    .line 3714
    :try_start_12
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3715
    nop

    .line 3716
    .end local v1    # "token":J
    monitor-exit v0

    .line 3717
    return-void

    .line 3714
    .restart local v1    # "token":J
    :catchall_18
    move-exception v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3715
    nop

    .end local p0    # "this":Lcom/android/server/pm/ShortcutService;
    throw v3

    .line 3716
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutService;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method handleOnDefaultLauncherChanged(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 588
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUriPermissionOwner:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 590
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserLoadedLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 594
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutUser;->setCachedLauncher(Ljava/lang/String;)V

    .line 596
    :cond_1a
    monitor-exit v0

    .line 597
    return-void

    .line 596
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method handleOnUidStateChanged(II)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 630
    const-string/jumbo v0, "shortcutHandleOnUidStateChanged"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 637
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 638
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, p1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 640
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_25

    .line 641
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 642
    return-void

    .line 640
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method handleStopUser(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 751
    const-string/jumbo v0, "shortcutHandleStopUser"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    .line 755
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v3
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_21

    .line 756
    :try_start_12
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 757
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1e

    .line 758
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_21

    .line 759
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 760
    return-void

    .line 757
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    .end local p0    # "this":Lcom/android/server/pm/ShortcutService;
    .end local p1    # "userId":I
    :try_start_20
    throw v1

    .line 758
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutService;
    .restart local p1    # "userId":I
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_21

    throw v1
.end method

.method handleUnlockUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 724
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 725
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 726
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_17

    .line 735
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 736
    .local v0, "start":J
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/ShortcutService;JI)V

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->injectRunOnNewThread(Ljava/lang/Runnable;)V

    .line 744
    return-void

    .line 726
    .end local v0    # "start":J
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public hasShareTargets(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageToCheck"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2583
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2584
    const-string v0, "android.permission.MANAGE_APP_PREDICTIONS"

    const-string v1, "hasShareTargets"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2588
    :try_start_d
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2590
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->hasShareTargets()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2591
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method hasShortcutHostPermission(Ljava/lang/String;III)Z
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 2758
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2759
    const/4 v0, 0x1

    return v0

    .line 2761
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 2763
    .local v0, "start":J
    const/4 v2, 0x4

    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 2765
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2763
    return v3

    .line 2765
    :catchall_15
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 2766
    throw v3
.end method

.method hasShortcutHostPermissionInner(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2801
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2802
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2804
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Ljava/lang/String;

    move-result-object v1

    .line 2806
    .local v1, "defaultLauncher":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 2810
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2812
    :cond_12
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2814
    .end local v1    # "defaultLauncher":Ljava/lang/String;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4038
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 4039
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 4041
    .local v2, "token":J
    const/4 v4, 0x3

    :try_start_9
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v6, 0xc2200

    invoke-interface {v5, p1, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1b
    .catchall {:try_start_9 .. :try_end_12} :catchall_19

    .line 4047
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4049
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4041
    return-object v5

    .line 4047
    :catchall_19
    move-exception v5

    goto :goto_2b

    .line 4042
    :catch_1b
    move-exception v5

    .line 4044
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1c
    const-string v6, "ShortcutService"

    const-string v7, "RemoteException"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 4045
    const/4 v6, 0x0

    .line 4047
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4049
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4045
    return-object v6

    .line 4047
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2b
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4049
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4050
    throw v5
.end method

.method injectBinderCallingPid()I
    .registers 2

    .line 5173
    invoke-static {}, Lcom/android/server/pm/ShortcutService;->getCallingPid()I

    move-result v0

    return v0
.end method

.method injectBinderCallingUid()I
    .registers 2

    .line 5168
    invoke-static {}, Lcom/android/server/pm/ShortcutService;->getCallingUid()I

    move-result v0

    return v0
.end method

.method injectBuildFingerprint()Ljava/lang/String;
    .registers 2

    .line 5194
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method injectChooserActivity()Landroid/content/ComponentName;
    .registers 3

    .line 1637
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mChooserActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_17

    .line 1638
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 1639
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040235

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1638
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mChooserActivity:Landroid/content/ComponentName;

    .line 1641
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mChooserActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method injectClearCallingIdentity()J
    .registers 3

    .line 5183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method injectCurrentTimeMillis()J
    .registers 3

    .line 5152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method injectDipToPixel(I)I
    .registers 5
    .param p1, "dip"    # I

    .line 863
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 864
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 863
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method injectElapsedRealtime()J
    .registers 3

    .line 5157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 1696
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    return-void
.end method

.method injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 11
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4069
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 4070
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 4072
    .local v2, "token":J
    const/4 v4, 0x6

    :try_start_9
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v6, 0xc2280

    invoke-interface {v5, p1, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_1b
    .catchall {:try_start_9 .. :try_end_12} :catchall_19

    .line 4079
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4081
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4072
    return-object v5

    .line 4079
    :catchall_19
    move-exception v5

    goto :goto_2b

    .line 4074
    :catch_1b
    move-exception v5

    .line 4076
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1c
    const-string v6, "ShortcutService"

    const-string v7, "RemoteException"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 4077
    const/4 v6, 0x0

    .line 4079
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4081
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4077
    return-object v6

    .line 4079
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2b
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4081
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4082
    throw v5
.end method

.method injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4301
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 4303
    .local v0, "start":J
    nop

    .line 4304
    const/16 v2, 0xb

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v3

    .line 4305
    .local v3, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_17

    :goto_16
    goto :goto_25

    :cond_17
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_29

    goto :goto_16

    .line 4307
    :goto_25
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4305
    return-object v4

    .line 4307
    .end local v3    # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_29
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4308
    throw v3
.end method

.method injectGetHomeRoleHolderAsUser(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .line 5253
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 5254
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 5253
    const-string v2, "android.app.role.HOME"

    invoke-virtual {v0, v2, v1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 5255
    .local v0, "roleHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    goto :goto_1b

    :cond_14
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1b
    return-object v1
.end method

.method public injectGetLocaleTagsForUser(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 569
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 4351
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 4353
    .local v0, "start":J
    const/16 v2, 0xc

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    .line 4355
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4353
    return-object v3

    .line 4355
    :catchall_13
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4356
    throw v3
.end method

.method injectGetPackageUid(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3974
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 3976
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v3, 0xc2200

    invoke-interface {v2, p1, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 3982
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3976
    return v2

    .line 3982
    :catchall_11
    move-exception v2

    goto :goto_20

    .line 3977
    :catch_13
    move-exception v2

    .line 3979
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_14
    const-string v3, "ShortcutService"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 3980
    const/4 v3, -0x1

    .line 3982
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3980
    return v3

    .line 3982
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_20
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3983
    throw v2
.end method

.method injectGetPackagesWithUninstalled(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4117
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 4118
    const-wide/32 v1, 0xc2200

    invoke-interface {v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 4119
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_10

    .line 4120
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 4122
    :cond_10
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method injectGetPinConfirmationActivity(Ljava/lang/String;II)Landroid/content/ComponentName;
    .registers 9
    .param p1, "launcherPackageName"    # Ljava/lang/String;
    .param p2, "launcherUserId"    # I
    .param p3, "requestType"    # I

    .line 4382
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4383
    const/4 v0, 0x1

    if-ne p3, v0, :cond_9

    .line 4384
    const-string v0, "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

    goto :goto_b

    .line 4385
    :cond_9
    const-string v0, "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

    :goto_b
    nop

    .line 4387
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 4388
    .local v1, "confirmIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v2

    .line 4390
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 4391
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    return-object v4

    .line 4393
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_31
    const/4 v3, 0x0

    return-object v3
.end method

.method injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4231
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 4232
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 4234
    .local v2, "token":J
    const/16 v4, 0x9

    :try_start_a
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    .line 4235
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_1d} :catch_26
    .catchall {:try_start_a .. :try_end_1d} :catchall_24

    .line 4241
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4243
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4234
    return-object v5

    .line 4241
    :catchall_24
    move-exception v5

    goto :goto_57

    .line 4236
    :catch_26
    move-exception v5

    .line 4237
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_27
    const-string v6, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resources of package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_24

    .line 4239
    const/4 v6, 0x0

    .line 4241
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4243
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4239
    return-object v6

    .line 4241
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_57
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4243
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4244
    throw v5
.end method

.method injectHasAccessShortcutsPermission(II)Z
    .registers 5
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I

    .line 2784
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_SHORTCUTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method injectHasUnlimitedShortcutsApiCallsPermission(II)Z
    .registers 5
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I

    .line 2793
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UNLIMITED_SHORTCUTS_API_CALLS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4365
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 4367
    .local v0, "start":J
    const/16 v2, 0xd

    :try_start_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v3

    .line 4368
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_20

    if-lez v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    .line 4370
    :goto_1c
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4367
    return v3

    .line 4370
    :catchall_20
    move-exception v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4371
    throw v3
.end method

.method injectIsLowRamDevice()Z
    .registers 2

    .line 5233
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method injectIsMainActivity(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4315
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 4317
    .local v0, "start":J
    const/4 v2, 0x0

    const/16 v3, 0xc

    if-nez p1, :cond_14

    .line 4318
    :try_start_9
    const-string/jumbo v4, "null activity detected"

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_3e

    .line 4319
    nop

    .line 4328
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4319
    return v2

    .line 4321
    :cond_14
    :try_start_14
    const-string v4, "android.__dummy__"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_3e

    const/4 v5, 0x1

    if-eqz v4, :cond_26

    .line 4322
    nop

    .line 4328
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4322
    return v5

    .line 4324
    :cond_26
    nop

    .line 4325
    :try_start_27
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4324
    invoke-virtual {p0, v4, v6, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v4

    .line 4326
    .local v4, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_3e

    if-lez v6, :cond_3a

    move v2, v5

    .line 4328
    :cond_3a
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4326
    return v2

    .line 4328
    .end local v4    # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_3e
    move-exception v2

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4329
    throw v2
.end method

.method injectIsSafeModeEnabled()Z
    .registers 5

    .line 4397
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 4399
    .local v0, "token":J
    :try_start_4
    const-string/jumbo v2, "window"

    .line 4400
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 4401
    invoke-interface {v2}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_1c
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 4405
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4399
    return v2

    .line 4405
    :catchall_17
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4406
    throw v2

    .line 4402
    :catch_1c
    move-exception v2

    .line 4403
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 4405
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4403
    return v3
.end method

.method injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "getSignatures"    # Z

    .line 4004
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v0

    .line 4005
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 4007
    .local v2, "token":J
    const/4 v4, 0x2

    const/4 v5, 0x1

    :try_start_a
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v7, 0xc2200

    .line 4008
    if-eqz p3, :cond_14

    const/high16 v8, 0x8000000

    goto :goto_15

    :cond_14
    const/4 v8, 0x0

    :goto_15
    or-int/2addr v7, v8

    int-to-long v7, v7

    .line 4007
    invoke-interface {v6, p1, v7, v8, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1b} :catch_29
    .catchall {:try_start_a .. :try_end_1b} :catchall_27

    .line 4014
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4016
    nop

    .line 4017
    if-eqz p3, :cond_22

    goto :goto_23

    :cond_22
    move v4, v5

    .line 4016
    :goto_23
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4007
    return-object v6

    .line 4014
    :catchall_27
    move-exception v6

    goto :goto_3e

    .line 4009
    :catch_29
    move-exception v6

    .line 4011
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2a
    const-string v7, "ShortcutService"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 4012
    const/4 v7, 0x0

    .line 4014
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4016
    nop

    .line 4017
    if-eqz p3, :cond_39

    goto :goto_3a

    :cond_39
    move v4, v5

    .line 4016
    :goto_3a
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4012
    return-object v7

    .line 4014
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_3e
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4016
    nop

    .line 4017
    if-eqz p3, :cond_45

    goto :goto_46

    :cond_45
    move v4, v5

    .line 4016
    :goto_46
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 4019
    throw v6
.end method

.method injectPostToHandler(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1756
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1757
    return-void
.end method

.method injectPostToHandlerDebounced(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 1764
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1767
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1768
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, p2, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1769
    monitor-exit v0

    .line 1770
    return-void

    .line 1769
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw v1
.end method

.method injectRegisterRoleHoldersListener(Landroid/app/role/OnRoleHoldersChangedListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/role/OnRoleHoldersChangedListener;

    .line 5247
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mRoleManager:Landroid/app/role/RoleManager;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 5249
    return-void
.end method

.method injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .registers 6
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I

    .line 5239
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 5242
    goto :goto_b

    .line 5241
    :catch_a
    move-exception v0

    .line 5243
    :goto_b
    return-void
.end method

.method injectRestoreCallingIdentity(J)V
    .registers 3
    .param p1, "token"    # J

    .line 5189
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5190
    return-void
.end method

.method injectRunOnNewThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1760
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1761
    return-void
.end method

.method injectSendIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 9
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .param p2, "extras"    # Landroid/content/Intent;

    .line 4418
    if-nez p1, :cond_3

    .line 4419
    return-void

    .line 4422
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_d} :catch_e

    .line 4426
    goto :goto_17

    .line 4424
    :catch_e
    move-exception v0

    .line 4425
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "ShortcutService"

    const-string/jumbo v2, "sendIntent failed()."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4427
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_17
    return-void
.end method

.method injectShortcutManagerConstants()Ljava/lang/String;
    .registers 3

    .line 856
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 857
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 856
    const-string/jumbo v1, "shortcut_manager_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method injectShouldPerformVerification()Z
    .registers 2

    .line 5348
    const/4 v0, 0x0

    return v0
.end method

.method injectSystemDataPath()Ljava/io/File;
    .registers 2

    .line 5219
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method injectUptimeMillis()J
    .registers 3

    .line 5162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method injectUserDataPath(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 5224
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcut_service"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V
    .registers 5
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .line 1569
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1573
    return-void

    .line 1570
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Icon resource must reside in shortcut owner package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 4
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "key"    # Ljava/lang/String;

    .line 4226
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method isAppSearchEnabled()Z
    .registers 2

    .line 556
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService;->mIsAppSearchEnabled:Z

    return v0
.end method

.method isDummyMainActivity(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 4342
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.__dummy__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method isEphemeralApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4221
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isEphemeralApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method isPackageInstalled(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4217
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isRequestPinItemSupported(II)Z
    .registers 6
    .param p1, "callingUserId"    # I
    .param p2, "requestType"    # I

    .line 2695
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->verifyCallerUserId(I)V

    .line 2697
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 2699
    .local v0, "token":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 2700
    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->isRequestPinItemSupported(II)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 2702
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2699
    return v2

    .line 2702
    :catchall_11
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2703
    throw v2
.end method

.method public isSharingShortcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentFilter;)Z
    .registers 12
    .param p1, "callingUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "filter"    # Landroid/content/IntentFilter;

    .line 2597
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2598
    const-string v0, "android.permission.MANAGE_APP_PREDICTIONS"

    const-string v1, "isSharingShortcut"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2602
    :try_start_d
    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2603
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2605
    nop

    .line 2606
    invoke-virtual {p0, p3, p5}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2607
    invoke-virtual {v1, p6}, Lcom/android/server/pm/ShortcutPackage;->getMatchingShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object v1

    .line 2608
    .local v1, "matchedTargets":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2609
    .local v2, "matchedSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v2, :cond_3d

    .line 2610
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2611
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2609
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 2614
    .end local v1    # "matchedTargets":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .end local v2    # "matchedSize":I
    .end local v3    # "i":I
    :cond_3d
    monitor-exit v0

    .line 2615
    const/4 v0, 0x0

    return v0

    .line 2614
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_d .. :try_end_42} :catchall_40

    throw v1
.end method

.method isUidForegroundLocked(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 650
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_6

    .line 653
    return v0

    .line 656
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 657
    return v0

    .line 661
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v0

    return v0
.end method

.method protected isUserUnlockedL(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1305
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1306
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1307
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1309
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    .line 1315
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0

    .line 1309
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method synthetic lambda$applyRestore$20$com-android-server-pm-ShortcutService(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4503
    const-string v0, "Start time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4504
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->dumpCurrentTime(Ljava/io/PrintWriter;)V

    .line 4505
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4506
    return-void
.end method

.method synthetic lambda$applyRestore$21$com-android-server-pm-ShortcutService(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4526
    const-string v0, "Finish time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4527
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->dumpCurrentTime(Ljava/io/PrintWriter;)V

    .line 4528
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4529
    return-void
.end method

.method synthetic lambda$checkPackageChanges$14$com-android-server-pm-ShortcutService(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 5
    .param p1, "gonePackages"    # Ljava/util/ArrayList;
    .param p2, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    .line 3832
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3833
    return-void

    .line 3835
    :cond_b
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 3840
    invoke-static {p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(Lcom/android/server/pm/ShortcutPackageItem;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3842
    :cond_20
    return-void
.end method

.method synthetic lambda$cleanUpPackageForAllLoadedUsers$9$com-android-server-pm-ShortcutService(Ljava/lang/String;IZLcom/android/server/pm/ShortcutUser;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .param p3, "appStillExists"    # Z
    .param p4, "user"    # Lcom/android/server/pm/ShortcutUser;

    .line 2868
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    return-void
.end method

.method synthetic lambda$handleUnlockUser$1$com-android-server-pm-ShortcutService(JI)V
    .registers 8
    .param p1, "start"    # J
    .param p3, "userId"    # I

    .line 737
    const-string/jumbo v0, "shortcutHandleUnlockUser"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    const/16 v3, 0xf

    :try_start_e
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 740
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 741
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 742
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 743
    return-void

    .line 741
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method synthetic lambda$notifyListenerRunnable$2$com-android-server-pm-ShortcutService(ILjava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1829
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_2b

    .line 1830
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1831
    monitor-exit v0

    return-void

    .line 1834
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1835
    .local v1, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;>;"
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_28

    .line 1837
    :try_start_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_19
    if-ltz v0, :cond_27

    .line 1838
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-interface {v2, p2, p1}, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;->onShortcutChanged(Ljava/lang/String;I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_2b

    .line 1837
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 1841
    .end local v0    # "i":I
    .end local v1    # "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;>;"
    :cond_27
    goto :goto_2c

    .line 1835
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    .end local p0    # "this":Lcom/android/server/pm/ShortcutService;
    .end local p1    # "userId":I
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_2a
    throw v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2b} :catch_2b

    .line 1840
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutService;
    .restart local p1    # "userId":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_2b
    move-exception v0

    .line 1842
    :goto_2c
    return-void
.end method

.method synthetic lambda$notifyShortcutChangeCallbacks$3$com-android-server-pm-ShortcutService(ILjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "changedList"    # Ljava/util/List;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;
    .param p5, "removedList"    # Ljava/util/List;

    .line 1855
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_40

    .line 1856
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1857
    monitor-exit v0

    return-void

    .line 1860
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutChangeCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1861
    .local v1, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/LauncherApps$ShortcutChangeCallback;>;"
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_3d

    .line 1862
    :try_start_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_19
    if-ltz v0, :cond_3c

    .line 1863
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1864
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    invoke-interface {v2, p3, p2, p4}, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;->onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 1866
    :cond_2a
    invoke-static {p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 1867
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    invoke-interface {v2, p3, p5, p4}, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;->onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_39} :catch_40

    .line 1862
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 1871
    .end local v0    # "i":I
    .end local v1    # "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/LauncherApps$ShortcutChangeCallback;>;"
    :cond_3c
    goto :goto_41

    .line 1861
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    .end local p0    # "this":Lcom/android/server/pm/ShortcutService;
    .end local p1    # "userId":I
    .end local p2    # "changedList":Ljava/util/List;
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "user":Landroid/os/UserHandle;
    .end local p5    # "removedList":Ljava/util/List;
    :try_start_3f
    throw v1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_40} :catch_40

    .line 1870
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutService;
    .restart local p1    # "userId":I
    .restart local p2    # "changedList":Ljava/util/List;
    .restart local p3    # "packageName":Ljava/lang/String;
    .restart local p4    # "user":Landroid/os/UserHandle;
    .restart local p5    # "removedList":Ljava/util/List;
    :catch_40
    move-exception v0

    .line 1872
    :goto_41
    return-void
.end method

.method synthetic lambda$queryActivities$16$com-android-server-pm-ShortcutService(ILandroid/content/pm/ResolveInfo;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 4286
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4287
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isSystem(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/ShortcutService;->isEnabled(Landroid/content/pm/ActivityInfo;I)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method synthetic lambda$rescanUpdatedPackagesLocked$15$com-android-server-pm-ShortcutService(Lcom/android/server/pm/ShortcutUser;ILandroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "user"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "userId"    # I
    .param p3, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 3874
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3876
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 3877
    return-void
.end method

.method synthetic lambda$updateShortcuts$5$com-android-server-pm-ShortcutService(Landroid/content/pm/ShortcutInfo;Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Landroid/content/pm/ShortcutInfo;)V
    .registers 8
    .param p1, "source"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "ps"    # Lcom/android/server/pm/ShortcutPackage;
    .param p3, "changedShortcuts"    # Ljava/util/List;
    .param p4, "target"    # Landroid/content/pm/ShortcutInfo;

    .line 2111
    if-eqz p4, :cond_65

    invoke-virtual {p4}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_65

    .line 2115
    :cond_9
    invoke-virtual {p4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    const-string v2, "ShortcutService"

    if-eq v0, v1, :cond_1a

    .line 2116
    const-string v0, "ShortcutInfo.enabled cannot be changed with updateShortcuts()"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_1a
    invoke-virtual {p4}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v1

    if-eq v0, v1, :cond_29

    .line 2121
    const-string v0, "ShortcutInfo.longLived cannot be changed with updateShortcuts()"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_29
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasRank()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2130
    invoke-virtual {p4}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 2131
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    .line 2134
    :cond_39
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    .line 2135
    .local v0, "replacingIcon":Z
    :goto_42
    if-eqz v0, :cond_47

    .line 2136
    invoke-virtual {p2, p4}, Lcom/android/server/pm/ShortcutPackage;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 2140
    :cond_47
    invoke-virtual {p4, p1}, Landroid/content/pm/ShortcutInfo;->copyNonNullFieldsFrom(Landroid/content/pm/ShortcutInfo;)V

    .line 2141
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 2143
    if-eqz v0, :cond_56

    .line 2144
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    .line 2149
    :cond_56
    if-nez v0, :cond_5e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 2150
    :cond_5e
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 2153
    :cond_61
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2154
    return-void

    .line 2112
    .end local v0    # "replacingIcon":Z
    :cond_65
    :goto_65
    return-void
.end method

.method logDurationStat(IJ)V
    .registers 5
    .param p1, "statId"    # I
    .param p2, "start"    # J

    .line 564
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 565
    return-void
.end method

.method public onApplicationActive(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2743
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceResetThrottlingPermission()V

    .line 2744
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2745
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2747
    monitor-exit v0

    return-void

    .line 2749
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2750
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimitingForCommandLineNoSaving()V

    .line 2751
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    .line 2752
    monitor-exit v0

    .line 2753
    return-void

    .line 2752
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 709
    sparse-switch p1, :sswitch_data_10

    goto :goto_f

    .line 714
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_f

    .line 711
    :sswitch_b
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->initialize()V

    .line 712
    nop

    .line 717
    :goto_f
    return-void

    :sswitch_data_10
    .sparse-switch
        0x1e0 -> :sswitch_b
        0x3e8 -> :sswitch_4
    .end sparse-switch
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 19
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 4885
    move-object v9, p0

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceShell()V

    .line 4887
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v10

    .line 4889
    .local v10, "token":J
    :try_start_8
    new-instance v1, Lcom/android/server/pm/ShortcutService$MyShellCommand;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$MyShellCommand-IA;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    move-result v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_28

    .line 4891
    .local v1, "status":I
    move-object/from16 v2, p6

    :try_start_1e
    invoke-virtual {v2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 4893
    .end local v1    # "status":I
    invoke-virtual {p0, v10, v11}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4894
    nop

    .line 4895
    return-void

    .line 4893
    :catchall_26
    move-exception v0

    goto :goto_2b

    :catchall_28
    move-exception v0

    move-object/from16 v2, p6

    :goto_2b
    invoke-virtual {p0, v10, v11}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4894
    throw v0
.end method

.method openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1485
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v1

    .line 1486
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1487
    .local v0, "packagePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_39

    .line 1488
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1489
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1492
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    goto :goto_39

    .line 1490
    :cond_20
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1495
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1496
    .local v1, "baseName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1497
    .local v2, "suffix":I
    :goto_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_4b

    move-object v4, v1

    goto :goto_62

    :cond_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1498
    .local v3, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1499
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_81

    .line 1503
    new-instance v5, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    invoke-direct {v5, v4}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;-><init>(Ljava/io/File;)V

    return-object v5

    .line 1496
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_42
.end method

.method packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1, "sp"    # Lcom/android/server/pm/ShortcutPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutPackage;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1804
    .local p2, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p3, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1806
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    .line 1811
    .local v1, "userId":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->notifyListenerRunnable(Ljava/lang/String;I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/ShortcutService;->injectPostToHandlerDebounced(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 1812
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/pm/ShortcutService;->notifyShortcutChangeCallbacks(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 1813
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->scheduleSave()V

    .line 1814
    return-void
.end method

.method public pushDynamicShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "userId"    # I

    .line 2232
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2233
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 2235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2236
    .local v0, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v1, 0x0

    .line 2239
    .local v1, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2240
    :try_start_f
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2242
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    .line 2244
    .local v3, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;Z)V

    .line 2245
    new-array v4, v5, [Landroid/content/pm/ShortcutInfo;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    .line 2247
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasRank()Z

    move-result v4

    if-nez v4, :cond_33

    .line 2248
    invoke-virtual {p2, v5}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 2251
    :cond_33
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 2252
    invoke-virtual {p2, v5}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    .line 2255
    invoke-direct {p0, p2, v5}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 2259
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 2262
    invoke-virtual {v3, p2, v0}, Lcom/android/server/pm/ShortcutPackage;->pushDynamicShortcut(Landroid/content/pm/ShortcutInfo;Ljava/util/List;)Z

    move-result v4

    .line 2264
    .local v4, "deleted":Z
    if-eqz v4, :cond_5b

    .line 2265
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 2266
    monitor-exit v2

    return-void

    .line 2268
    :cond_4d
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 2269
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2271
    :cond_5b
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2274
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2275
    .end local v4    # "deleted":Z
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_f .. :try_end_62} :catchall_72

    .line 2277
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2279
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/ShortcutPackage;->reportShortcutUsed(Landroid/app/usage/UsageStatsManagerInternal;Ljava/lang/String;)V

    .line 2281
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2282
    return-void

    .line 2275
    .end local v3    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_72
    move-exception v3

    :try_start_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v3
.end method

.method queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "exportedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 4273
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 4275
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0xc2200

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_36

    .line 4278
    .local v2, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4279
    nop

    .line 4280
    if-eqz v2, :cond_33

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_33

    .line 4284
    :cond_1e
    sget-object v3, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_INSTALLED:Ljava/util/function/Predicate;

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 4285
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 4289
    if-eqz p3, :cond_32

    .line 4290
    sget-object v3, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate;

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 4292
    :cond_32
    return-object v2

    .line 4281
    :cond_33
    :goto_33
    sget-object v3, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    return-object v3

    .line 4278
    .end local v2    # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_36
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 4279
    throw v2
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 6
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 4262
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4263
    if-eqz p3, :cond_e

    .line 4264
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4266
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p4, v0}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAllDynamicShortcuts(Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2481
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2483
    .local v0, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v1, 0x0

    .line 2485
    .local v1, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2486
    :try_start_c
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2487
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    .line 2489
    .local v3, "ps":Lcom/android/server/pm/ShortcutPackage;
    new-instance v4, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda27;

    invoke-direct {v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda27;-><init>()V

    const/4 v5, 0x4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 2493
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts()Ljava/util/List;

    move-result-object v4

    move-object v1, v4

    .line 2494
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, v1, v3}, Lcom/android/server/pm/ShortcutService;->prepareChangedShortcuts(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    .line 2496
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_2f

    .line 2497
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2498
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2499
    return-void

    .line 2496
    .end local v3    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v3
.end method

.method public removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 2442
    .local p2, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2443
    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2444
    const/4 v0, 0x0

    .line 2445
    .local v0, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v1, 0x0

    .line 2447
    .local v1, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2448
    :try_start_e
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2449
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    .line 2450
    .local v3, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2452
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_1e
    if-ltz v5, :cond_59

    .line 2453
    nop

    .line 2454
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2453
    invoke-static {v6}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2455
    .local v6, "id":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_34

    .line 2456
    goto :goto_56

    .line 2458
    :cond_34
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v4, v7}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    .line 2460
    .local v7, "removed":Landroid/content/pm/ShortcutInfo;
    if-nez v7, :cond_4b

    .line 2461
    if-nez v0, :cond_43

    .line 2462
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v8

    .line 2464
    :cond_43
    invoke-virtual {v3, v6}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 2466
    :cond_4b
    if-nez v1, :cond_53

    .line 2467
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v8

    .line 2469
    :cond_53
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2452
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "removed":Landroid/content/pm/ShortcutInfo;
    :goto_56
    add-int/lit8 v5, v5, -0x1

    goto :goto_1e

    .line 2473
    .end local v5    # "i":I
    :cond_59
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2474
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_e .. :try_end_5d} :catchall_64

    .line 2475
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2476
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2477
    return-void

    .line 2474
    .end local v3    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_64
    move-exception v3

    :try_start_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v3
.end method

.method public removeLongLivedShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutIds"    # Ljava/util/List;
    .param p3, "userId"    # I

    .line 2504
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2505
    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2506
    const/4 v0, 0x0

    .line 2507
    .local v0, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v1, 0x0

    .line 2509
    .local v1, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2510
    :try_start_e
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2511
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    .line 2512
    .local v3, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V

    .line 2514
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_1e
    if-ltz v5, :cond_57

    .line 2515
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2516
    .local v6, "id":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_33

    .line 2517
    goto :goto_54

    .line 2519
    :cond_33
    invoke-virtual {v3, v6, v4}, Lcom/android/server/pm/ShortcutPackage;->deleteLongLivedWithId(Ljava/lang/String;Z)Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    .line 2520
    .local v7, "removed":Landroid/content/pm/ShortcutInfo;
    if-eqz v7, :cond_45

    .line 2521
    if-nez v1, :cond_41

    .line 2522
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v8

    .line 2524
    :cond_41
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 2526
    :cond_45
    if-nez v0, :cond_4d

    .line 2527
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v8

    .line 2529
    :cond_4d
    invoke-virtual {v3, v6}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2514
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "removed":Landroid/content/pm/ShortcutInfo;
    :goto_54
    add-int/lit8 v5, v5, -0x1

    goto :goto_1e

    .line 2533
    .end local v5    # "i":I
    :cond_57
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2534
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_e .. :try_end_5b} :catchall_62

    .line 2535
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2536
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2537
    return-void

    .line 2534
    .end local v3    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_62
    move-exception v3

    :try_start_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v3
.end method

.method public reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2674
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2675
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2681
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2682
    :try_start_9
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2683
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2684
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 2685
    const-string v2, "ShortcutService"

    const-string/jumbo v3, "reportShortcutUsed: package %s doesn\'t have shortcut %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    monitor-exit v0

    return-void

    .line 2689
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_34

    .line 2690
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/ShortcutPackage;->reportShortcutUsed(Landroid/app/usage/UsageStatsManagerInternal;Ljava/lang/String;)V

    .line 2691
    return-void

    .line 2689
    .end local v1    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "resultIntent"    # Landroid/content/IntentSender;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            "Landroid/content/IntentSender;",
            "I",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2287
    .local p5, "ret":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2289
    nop

    .line 2290
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v1

    xor-int/2addr v0, v1

    .line 2289
    const-string v1, "Shortcut excluded from launcher cannot be pinned"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2292
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 2294
    return-void
.end method

.method resetAllThrottlingInner()V
    .registers 4

    .line 2731
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2732
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    .line 2733
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 2734
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    .line 2735
    const-string v0, "ShortcutService"

    const-string v1, "ShortcutManager: throttling counter reset for all users"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    return-void

    .line 2733
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public resetThrottling()V
    .registers 2

    .line 2712
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystemOrShell()V

    .line 2714
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    .line 2715
    return-void
.end method

.method resetThrottlingInner(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 2718
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2719
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 2720
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is locked or not running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    monitor-exit v0

    return-void

    .line 2724
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->resetThrottling()V

    .line 2725
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_4d

    .line 2726
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 2727
    const-string v0, "ShortcutService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShortcutManager: throttling counter reset for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    return-void

    .line 2725
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method saveBaseStateLocked()V
    .registers 9

    .line 1001
    const-string/jumbo v0, "root"

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    .line 1006
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 1008
    .local v2, "outs":Ljava/io/FileOutputStream;
    :try_start_8
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 1011
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 1012
    .local v3, "out":Landroid/util/TypedXmlSerializer;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1013
    invoke-interface {v3, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1016
    const-string v4, "last_reset_time"

    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-static {v3, v4, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1019
    invoke-interface {v3, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1020
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1023
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2d} :catch_2e

    .line 1027
    .end local v3    # "out":Landroid/util/TypedXmlSerializer;
    goto :goto_4e

    .line 1024
    :catch_2e
    move-exception v0

    .line 1025
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShortcutService"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1028
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4e
    return-void
.end method

.method saveDirtyInfo()V
    .registers 7

    .line 1230
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1231
    return-void

    .line 1234
    :cond_9
    const-wide/32 v0, 0x80000

    :try_start_c
    const-string/jumbo v2, "shortcutSaveDirtyInfo"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1235
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_45
    .catchall {:try_start_c .. :try_end_15} :catchall_43

    .line 1236
    :try_start_15
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1d
    if-ltz v3, :cond_39

    .line 1237
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1238
    .local v4, "userId":I
    const/16 v5, -0x2710

    if-ne v4, v5, :cond_33

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveBaseStateLocked()V

    goto :goto_36

    .line 1241
    :cond_33
    invoke-direct {p0, v4}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V

    .line 1236
    .end local v4    # "userId":I
    :goto_36
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 1244
    .end local v3    # "i":I
    :cond_39
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1245
    monitor-exit v2

    goto :goto_4b

    :catchall_40
    move-exception v3

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_40

    .end local p0    # "this":Lcom/android/server/pm/ShortcutService;
    :try_start_42
    throw v3
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_43} :catch_45
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    .line 1249
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutService;
    :catchall_43
    move-exception v2

    goto :goto_50

    .line 1246
    :catch_45
    move-exception v2

    .line 1247
    .local v2, "e":Ljava/lang/Exception;
    :try_start_46
    const-string v3, "Exception in saveDirtyInfo"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_43

    .line 1249
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1250
    nop

    .line 1251
    return-void

    .line 1249
    :goto_50
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1250
    throw v2
.end method

.method saveIconAndFixUpShortcutLocked(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V
    .registers 12
    .param p1, "p"    # Lcom/android/server/pm/ShortcutPackage;
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 1509
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-nez v0, :cond_a3

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-nez v0, :cond_a3

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_a3

    .line 1513
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 1516
    .local v0, "token":J
    :try_start_18
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 1518
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_9e

    .line 1519
    .local v2, "icon":Landroid/graphics/drawable/Icon;
    if-nez v2, :cond_25

    .line 1561
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1520
    return-void

    .line 1522
    :cond_25
    :try_start_25
    iget v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_9e

    .line 1525
    .local v3, "maxIconDimension":I
    :try_start_27
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_a4

    .line 1553
    :pswitch_2e
    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    goto :goto_97

    .line 1538
    :pswitch_33
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/pm/ShortcutInfo;->setIconUri(Ljava/lang/String;)V

    .line 1539
    const v4, 0x8200

    invoke-virtual {p2, v4}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_98

    .line 1558
    :try_start_40
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_9e

    .line 1561
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1541
    return-void

    .line 1546
    :pswitch_47
    :try_start_47
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1547
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    int-to-float v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v8

    mul-float/2addr v8, v7

    add-float/2addr v8, v6

    mul-float/2addr v5, v8

    float-to-int v3, v5

    .line 1548
    goto :goto_87

    .line 1534
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_59
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/pm/ShortcutInfo;->setIconUri(Ljava/lang/String;)V

    .line 1535
    const v4, 0x8000

    invoke-virtual {p2, v4}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_66
    .catchall {:try_start_47 .. :try_end_66} :catchall_98

    .line 1558
    :try_start_66
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_9e

    .line 1561
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1536
    return-void

    .line 1527
    :pswitch_6d
    :try_start_6d
    invoke-virtual {p0, p2, v2}, Lcom/android/server/pm/ShortcutService;->injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V

    .line 1529
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    .line 1530
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_7b
    .catchall {:try_start_6d .. :try_end_7b} :catchall_98

    .line 1558
    :try_start_7b
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_9e

    .line 1561
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1531
    return-void

    .line 1543
    :pswitch_82
    :try_start_82
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1544
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 1555
    :goto_87
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v6, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    invoke-virtual {p1, p2, v3, v5, v6}, Lcom/android/server/pm/ShortcutPackage;->saveBitmap(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    :try_end_8e
    .catchall {:try_start_82 .. :try_end_8e} :catchall_98

    .line 1558
    :try_start_8e
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_9e

    .line 1559
    nop

    .line 1561
    .end local v2    # "icon":Landroid/graphics/drawable/Icon;
    .end local v3    # "maxIconDimension":I
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1562
    nop

    .line 1563
    return-void

    .line 1553
    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/pm/ShortcutService;
    .end local p1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local p2    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :goto_97
    :try_start_97
    throw v4
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_98

    .line 1558
    .restart local v0    # "token":J
    .restart local v2    # "icon":Landroid/graphics/drawable/Icon;
    .restart local v3    # "maxIconDimension":I
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutService;
    .restart local p1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .restart local p2    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :catchall_98
    move-exception v4

    :try_start_99
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V

    .line 1559
    nop

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/pm/ShortcutService;
    .end local p1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local p2    # "shortcut":Landroid/content/pm/ShortcutInfo;
    throw v4
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_9e

    .line 1561
    .end local v2    # "icon":Landroid/graphics/drawable/Icon;
    .end local v3    # "maxIconDimension":I
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutService;
    .restart local p1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .restart local p2    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :catchall_9e
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1562
    throw v2

    .line 1510
    .end local v0    # "token":J
    :cond_a3
    :goto_a3
    return-void

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_82
        :pswitch_6d
        :pswitch_2e
        :pswitch_59
        :pswitch_47
        :pswitch_33
    .end packed-switch
.end method

.method scheduleSaveUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 1205
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 1206
    return-void
.end method

.method public setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutInfoList"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    .line 2000
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2002
    nop

    .line 2003
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    .line 2002
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    .line 2004
    .local v0, "unlimited":Z
    nop

    .line 2005
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 2006
    .local v1, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 2007
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2009
    .local v2, "size":I
    const/4 v3, 0x0

    .line 2010
    .local v3, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v4, 0x0

    .line 2013
    .local v4, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2014
    :try_start_21
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2016
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v6

    .line 2018
    .local v6, "ps":Lcom/android/server/pm/ShortcutPackage;
    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 2019
    invoke-virtual {v6, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V

    .line 2021
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    .line 2023
    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 2026
    invoke-virtual {v6, v0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v9

    if-nez v9, :cond_3e

    .line 2027
    monitor-exit v5

    return v8

    .line 2031
    :cond_3e
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 2032
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 2034
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_45
    if-ge v9, v2, :cond_53

    .line 2035
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, v10, v8}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 2034
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    .line 2038
    .end local v9    # "i":I
    :cond_53
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2039
    .local v8, "cachedOrPinned":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v9, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;

    invoke-direct {v9}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;-><init>()V

    const/4 v10, 0x4

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 2045
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts()Ljava/util/List;

    move-result-object v9

    move-object v4, v9

    .line 2048
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_67
    if-ge v9, v2, :cond_76

    .line 2049
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ShortcutInfo;

    .line 2050
    .local v10, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v6, v10}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)Z

    .line 2048
    nop

    .end local v10    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    add-int/lit8 v9, v9, 0x1

    goto :goto_67

    .line 2054
    .end local v9    # "i":I
    :cond_76
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2056
    invoke-direct {p0, v8, v1, v4, v6}, Lcom/android/server/pm/ShortcutService;->prepareChangedShortcuts(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    move-result-object v9

    move-object v3, v9

    .line 2058
    .end local v8    # "cachedOrPinned":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    monitor-exit v5
    :try_end_7f
    .catchall {:try_start_21 .. :try_end_7f} :catchall_86

    .line 2060
    invoke-virtual {p0, v6, v3, v4}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2062
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2064
    return v7

    .line 2058
    .end local v6    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_86
    move-exception v6

    :try_start_87
    monitor-exit v5
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v6
.end method

.method public setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2857
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mNonPersistentUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2858
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getNonPersistentUserLocked(I)Lcom/android/server/pm/ShortcutNonPersistentUser;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2859
    monitor-exit v0

    .line 2860
    return-void

    .line 2859
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method shouldBackupApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4432
    const v0, 0x8000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->isApplicationFlagSet(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method throwIfUserLockedL(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1320
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1323
    return-void

    .line 1321
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is locked or not running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateConfigurationLocked(Ljava/lang/String;)Z
    .registers 12
    .param p1, "config"    # Ljava/lang/String;

    .line 806
    const/4 v0, 0x1

    .line 808
    .local v0, "result":Z
    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 810
    .local v1, "parser":Landroid/util/KeyValueListParser;
    :try_start_8
    invoke-virtual {v1, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_b} :catch_c

    .line 816
    goto :goto_15

    .line 811
    :catch_c
    move-exception v2

    .line 814
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "ShortcutService"

    const-string v4, "Bad shortcut manager settings"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    const/4 v0, 0x0

    .line 818
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_15
    const-wide/16 v2, 0xbb8

    const-string/jumbo v4, "save_delay_ms"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    .line 821
    const-wide/16 v4, 0x1

    const-wide/32 v6, 0x15180

    const-string/jumbo v2, "reset_interval_sec"

    invoke-virtual {v1, v2, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    .line 825
    const-wide/16 v4, 0xa

    const-string/jumbo v2, "max_updates_per_interval"

    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    .line 828
    const-wide/16 v4, 0xf

    const-string/jumbo v2, "max_shortcuts"

    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 831
    const-string/jumbo v2, "max_shortcuts_per_app"

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v2, v6

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcutsPerApp:I

    .line 834
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 835
    const-wide/16 v6, 0x30

    const-string/jumbo v3, "max_icon_dimension_dp_lowram"

    invoke-virtual {v1, v3, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v3, v6

    goto :goto_87

    .line 838
    :cond_7d
    const-wide/16 v6, 0x60

    const-string/jumbo v3, "max_icon_dimension_dp"

    invoke-virtual {v1, v3, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v3, v6

    .line 834
    :goto_87
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 842
    .local v2, "iconDimensionDp":I
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->injectDipToPixel(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    .line 844
    sget-object v3, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    .line 845
    const-string v6, "icon_format"

    invoke-virtual {v1, v6, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 844
    invoke-static {v3}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 847
    const-string v3, "icon_quality"

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    .line 851
    return v0
.end method

.method updatePackageShortcutForTest(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 5320
    .local p4, "cb":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5321
    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 5322
    .local v1, "pkg":Lcom/android/server/pm/ShortcutPackage;
    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    .line 5323
    :cond_b
    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5324
    .end local v1    # "pkg":Lcom/android/server/pm/ShortcutPackage;
    monitor-exit v0

    .line 5325
    return-void

    .line 5324
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutInfoList"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    .line 2070
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    .line 2072
    nop

    .line 2073
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    .line 2072
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    .line 2074
    .local v0, "unlimited":Z
    nop

    .line 2075
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 2076
    .local v1, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 2077
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2079
    .local v2, "size":I
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2082
    .local v3, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2083
    :try_start_25
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2085
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v6

    .line 2087
    .local v6, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v6, v1, v4}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V

    .line 2088
    invoke-virtual {v6, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V

    .line 2089
    invoke-virtual {v6, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureAllShortcutsVisibleToLauncher(Ljava/util/List;)V

    .line 2094
    const/4 v7, 0x2

    invoke-virtual {v6, v1, v7}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    .line 2097
    invoke-virtual {v6, v0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v7

    if-nez v7, :cond_42

    .line 2098
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2102
    :cond_42
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    .line 2103
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 2105
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_49
    const/4 v8, 0x0

    if-ge v7, v2, :cond_64

    .line 2106
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 2107
    .local v9, "source":Landroid/content/pm/ShortcutInfo;
    invoke-direct {p0, v9, v4}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    .line 2109
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;

    invoke-direct {v11, p0, v9, v6, v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;)V

    invoke-virtual {v6, v10, v8, v11}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    .line 2105
    .end local v9    # "source":Landroid/content/pm/ShortcutInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_49

    .line 2158
    .end local v7    # "i":I
    :cond_64
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 2159
    monitor-exit v5
    :try_end_68
    .catchall {:try_start_25 .. :try_end_68} :catchall_78

    .line 2160
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_70

    move-object v5, v8

    goto :goto_71

    :cond_70
    move-object v5, v3

    :goto_71
    invoke-virtual {p0, v6, v5, v8}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 2162
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2164
    return v4

    .line 2159
    .end local v6    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_78
    move-exception v4

    :try_start_79
    monitor-exit v5
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v4
.end method

.method public validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V
    .registers 4
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 1960
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 1961
    return-void
.end method

.method final verifyStates()V
    .registers 2

    .line 5356
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShouldPerformVerification()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5357
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesInner()V

    .line 5359
    :cond_9
    return-void
.end method

.method waitForBitmapSavesForTest()V
    .registers 3

    .line 5373
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5374
    :try_start_3
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 5376
    monitor-exit v0

    .line 5377
    return-void

    .line 5376
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method final wtf(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 5198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5199
    return-void
.end method

.method wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 5203
    if-nez p2, :cond_a

    .line 5204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stacktrace"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    .line 5211
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 5212
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Last failure was logged here:"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5214
    const-string v0, "ShortcutService"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5215
    return-void
.end method
