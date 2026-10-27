.class public final Lcom/android/server/am/AppRestrictionController;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppRestrictionController$Injector;,
        Lcom/android/server/am/AppRestrictionController$BgHandler;,
        Lcom/android/server/am/AppRestrictionController$NotificationHelper;,
        Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;,
        Lcom/android/server/am/AppRestrictionController$TrackerInfo;,
        Lcom/android/server/am/AppRestrictionController$ConstantsObserver;,
        Lcom/android/server/am/AppRestrictionController$RestrictionSettings;,
        Lcom/android/server/am/AppRestrictionController$TrackerType;
    }
.end annotation


# static fields
.field private static final APP_RESTRICTION_SETTINGS_DIRNAME:Ljava/lang/String; = "apprestriction"

.field private static final APP_RESTRICTION_SETTINGS_FILENAME:Ljava/lang/String; = "settings.xml"

.field private static final ATTR_CUR_LEVEL:Ljava/lang/String; = "curlevel"

.field private static final ATTR_LEVEL_TS:Ljava/lang/String; = "levelts"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_REASON:Ljava/lang/String; = "reason"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field static final DEBUG_BG_RESTRICTION_CONTROLLER:Z = false

.field static final DEVICE_CONFIG_SUBNAMESPACE_PREFIX:Ljava/lang/String; = "bg_"

.field private static final ENABLE_SHOW_FGS_MANAGER_ACTION_ON_BG_RESTRICTION:Z = false

.field private static final ENABLE_SHOW_FOREGROUND_SERVICE_MANAGER:Z = true

.field private static final ROLES_IN_INTEREST:[Ljava/lang/String;

.field static final STOCK_PM_FLAGS:I = 0xc8000

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SETTINGS:Ljava/lang/String; = "settings"

.field static final TRACKER_TYPE_BATTERY:I = 0x1

.field static final TRACKER_TYPE_BATTERY_EXEMPTION:I = 0x2

.field static final TRACKER_TYPE_BIND_SERVICE_EVENTS:I = 0x7

.field static final TRACKER_TYPE_BROADCAST_EVENTS:I = 0x6

.field static final TRACKER_TYPE_FGS:I = 0x3

.field static final TRACKER_TYPE_MEDIA_SESSION:I = 0x4

.field static final TRACKER_TYPE_PERMISSION:I = 0x5

.field static final TRACKER_TYPE_UNKNOWN:I


# instance fields
.field private final mActiveUids:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private final mAppIdleStateChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

.field private final mAppStateTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BaseAppStateTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundRestrictionListener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

.field private final mBgExecutor:Landroid/os/HandlerExecutor;

.field private final mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

.field private final mBgHandlerThread:Landroid/os/HandlerThread;

.field mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBootReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierPrivilegedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarrierPrivilegedLock:Ljava/lang/Object;

.field private final mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdleAllowlist:[I

.field private mDeviceIdleExceptIdleAllowlist:[I

.field private final mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

.field private final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

.field private final mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;",
            ">;"
        }
    .end annotation
.end field

.field final mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

.field private final mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

.field private final mSettingsLock:Ljava/lang/Object;

.field private final mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemModulesCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUidRolesMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$mhD3Z9W6qq77PhQ6TE6pGfjAr3g(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConstantsObserver(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$ConstantsObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/am/AppRestrictionController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmptyTrackerInfo(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationHelper(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$NotificationHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplyRestrictionLevel(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCarrierPrivilegedApps(Lcom/android/server/am/AppRestrictionController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->clearCarrierPrivilegedApps()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchAppRestrictionLevelChanges(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->dispatchAppRestrictionLevelChanges(ILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/am/AppRestrictionController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->dispatchAutoRestrictedBucketFeatureFlagChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAppStandbyBucketChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->handleAppStandbyBucketChanged(ILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleBackgroundRestrictionChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController;->handleBackgroundRestrictionChanged(ILjava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monLockedBootCompleted(Lcom/android/server/am/AppRestrictionController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->onLockedBootCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPackageRemoved(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->onPackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPropertiesChanged(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onPropertiesChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUidAdded(Lcom/android/server/am/AppRestrictionController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUidAdded(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUidRemoved(Lcom/android/server/am/AppRestrictionController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUidRemoved(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserAdded(Lcom/android/server/am/AppRestrictionController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserAdded(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserInteractionStarted(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->onUserInteractionStarted(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/am/AppRestrictionController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserRemoved(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserStarted(Lcom/android/server/am/AppRestrictionController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserStarted(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/am/AppRestrictionController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController;->onUserStopped(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 229
    const-string v0, "android.app.role.DIALER"

    const-string v1, "android.app.role.EMERGENCY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppRestrictionController;->ROLES_IN_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 1510
    new-instance v0, Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppRestrictionController$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/AppRestrictionController;-><init>(Lcom/android/server/am/AppRestrictionController$Injector;Lcom/android/server/am/ActivityManagerService;)V

    .line 1511
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/AppRestrictionController$Injector;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "injector"    # Lcom/android/server/am/AppRestrictionController$Injector;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 242
    new-instance v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 246
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 253
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mTmpRunnables:Ljava/util/ArrayList;

    .line 262
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    .line 267
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    .line 274
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    .line 281
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    .line 284
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 288
    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 294
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    .line 313
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    .line 324
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 348
    new-instance v0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$TrackerInfo;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 350
    new-instance v0, Lcom/android/server/am/AppRestrictionController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$1;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 421
    new-instance v0, Lcom/android/server/am/AppRestrictionController$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$2;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 1440
    new-instance v0, Lcom/android/server/am/AppRestrictionController$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$3;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBackgroundRestrictionListener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    .line 1450
    new-instance v0, Lcom/android/server/am/AppRestrictionController$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$4;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppIdleStateChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 1466
    new-instance v0, Lcom/android/server/am/AppRestrictionController$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$5;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Landroid/app/IUidObserver;

    .line 1514
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 1515
    invoke-virtual {p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    .line 1516
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1517
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "bgres-controller"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandlerThread:Landroid/os/HandlerThread;

    .line 1518
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1519
    new-instance v2, Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Lcom/android/server/am/AppRestrictionController$BgHandler;-><init>(Landroid/os/Looper;Lcom/android/server/am/AppRestrictionController$Injector;)V

    iput-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 1520
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgExecutor:Landroid/os/HandlerExecutor;

    .line 1521
    new-instance v1, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;-><init>(Lcom/android/server/am/AppRestrictionController;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 1522
    new-instance v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    .line 1523
    invoke-virtual {p1, p0}, Lcom/android/server/am/AppRestrictionController$Injector;->initAppStateTrackers(Lcom/android/server/am/AppRestrictionController;)V

    .line 1524
    return-void
.end method

.method private applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V
    .registers 30
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "level"    # I
    .param p4, "trackerInfo"    # Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .param p5, "curBucket"    # I
    .param p6, "allowUpdateBucket"    # Z
    .param p7, "reason"    # I
    .param p8, "subReason"    # I

    .line 2159
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p5

    iget-object v0, v11, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v9

    .line 2160
    .local v9, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    if-nez p4, :cond_17

    .line 2161
    iget-object v0, v11, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move-object/from16 v16, v0

    .end local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .local v0, "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    goto :goto_19

    .line 2160
    .end local v0    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .restart local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    :cond_17
    move-object/from16 v16, p4

    .line 2163
    .end local p4    # "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .local v16, "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    :goto_19
    iget-object v7, v11, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2164
    :try_start_1c
    invoke-virtual {v11, v13, v12}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(ILjava/lang/String;)I

    move-result v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1b1

    move v8, v0

    .line 2165
    .local v8, "curLevel":I
    if-ne v8, v14, :cond_2e

    .line 2167
    :try_start_23
    monitor-exit v7
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_25

    return-void

    .line 2188
    .end local v8    # "curLevel":I
    :catchall_25
    move-exception v0

    move/from16 v8, p7

    move-object/from16 v18, v9

    move/from16 v9, p8

    goto/16 :goto_1b8

    .line 2169
    .restart local v8    # "curLevel":I
    :cond_2e
    :try_start_2e
    invoke-static/range {p5 .. p5}, Lcom/android/server/am/AppRestrictionController;->standbyBucketToRestrictionLevel(I)I

    move-result v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_1b1

    .line 2170
    .local v0, "levelOfBucket":I
    const v10, 0xff00

    if-ne v0, v14, :cond_4d

    .line 2172
    nop

    .line 2173
    :try_start_38
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2172
    invoke-interface {v9, v12, v1, v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucketReason(Ljava/lang/String;IJ)I

    move-result v1
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_25

    .line 2174
    .local v1, "bucketReason":I
    if-eqz v1, :cond_4d

    .line 2175
    and-int v2, v1, v10

    .line 2176
    .end local p7    # "reason":I
    .local v2, "reason":I
    and-int/lit16 v3, v1, 0xff

    move v6, v2

    move v5, v3

    .end local p8    # "subReason":I
    .local v3, "subReason":I
    goto :goto_51

    .line 2186
    .end local v1    # "bucketReason":I
    .end local v2    # "reason":I
    .end local v3    # "subReason":I
    .restart local p7    # "reason":I
    .restart local p8    # "subReason":I
    :cond_4d
    move/from16 v6, p7

    move/from16 v5, p8

    .end local p7    # "reason":I
    .end local p8    # "subReason":I
    .local v5, "subReason":I
    .local v6, "reason":I
    :goto_51
    :try_start_51
    iget-object v1, v11, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1, v12, v13}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getReason(Ljava/lang/String;I)I

    move-result v1

    move v4, v1

    .line 2187
    .local v4, "prevReason":I
    iget-object v1, v11, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_1ab

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v17, v4

    .end local v4    # "prevReason":I
    .local v17, "prevReason":I
    move/from16 v4, p3

    move/from16 p4, v5

    .end local v5    # "subReason":I
    .local p4, "subReason":I
    move v5, v6

    move/from16 p7, v6

    .end local v6    # "reason":I
    .restart local p7    # "reason":I
    move/from16 v6, p4

    :try_start_69
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->update(Ljava/lang/String;IIII)I

    .line 2188
    nop

    .end local v0    # "levelOfBucket":I
    monitor-exit v7
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_1a3

    .line 2190
    if-eqz p6, :cond_199

    const/4 v0, 0x5

    if-ne v15, v0, :cond_7e

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v10, v17

    move/from16 v9, p4

    move/from16 v8, p7

    goto/16 :goto_1a2

    .line 2193
    :cond_7e
    const/16 v0, 0x28

    if-lt v14, v0, :cond_141

    if-ge v8, v0, :cond_141

    .line 2195
    iget-object v1, v11, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v1, v1, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mRestrictedBucketEnabled:Z

    if-nez v1, :cond_8b

    .line 2196
    return-void

    .line 2204
    :cond_8b
    const/16 v1, 0x2d

    if-eq v15, v1, :cond_130

    iget-object v1, v11, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v1, v1, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    if-nez v1, :cond_a3

    if-ne v14, v0, :cond_98

    goto :goto_a3

    :cond_98
    move v15, v8

    move-object/from16 v18, v9

    move/from16 v10, v17

    move/from16 v9, p4

    move/from16 v8, p7

    goto/16 :goto_198

    .line 2208
    :cond_a3
    :goto_a3
    const/16 v18, 0x1

    .line 2209
    .local v18, "doIt":Z
    iget-object v5, v11, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2210
    :try_start_a8
    iget-object v0, v11, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v13, v12}, Landroid/util/SparseArrayMap;->indexOfKey(ILjava/lang/Object;)I

    move-result v0
    :try_end_ae
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_122

    .line 2211
    .local v0, "index":I
    if-ltz v0, :cond_e8

    .line 2213
    move/from16 v6, p7

    .line 2214
    .local v6, "localReason":I
    move/from16 v7, p4

    .line 2215
    .local v7, "localSubReason":I
    move-object/from16 v10, v16

    .line 2216
    .local v10, "localTrackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    :try_start_b6
    iget-object v4, v11, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    new-instance v3, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda10;
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_dd

    move-object v1, v3

    move-object/from16 v2, p0

    move/from16 p8, v0

    move-object v0, v3

    .end local v0    # "index":I
    .local p8, "index":I
    move-object v3, v9

    move-object v15, v4

    move-object/from16 v4, p1

    move-object/from16 v19, v5

    move/from16 v5, p2

    move/from16 v20, v8

    .end local v8    # "curLevel":I
    .local v20, "curLevel":I
    move-object v11, v9

    .end local v9    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .local v11, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    move/from16 v9, p3

    :try_start_cd
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/AppRestrictionController;Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V

    invoke-virtual {v15, v13, v12, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d3
    .catchall {:try_start_cd .. :try_end_d3} :catchall_d7

    .line 2222
    const/4 v0, 0x0

    move/from16 v18, v0

    .end local v18    # "doIt":Z
    .local v0, "doIt":Z
    goto :goto_ef

    .line 2224
    .end local v0    # "doIt":Z
    .end local v6    # "localReason":I
    .end local v7    # "localSubReason":I
    .end local v10    # "localTrackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .end local p8    # "index":I
    .restart local v18    # "doIt":Z
    :catchall_d7
    move-exception v0

    move/from16 v9, p4

    move/from16 v8, p7

    goto :goto_12c

    .end local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v20    # "curLevel":I
    .restart local v8    # "curLevel":I
    .restart local v9    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    :catchall_dd
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v20, v8

    move-object v11, v9

    move/from16 v9, p4

    move/from16 v8, p7

    .end local v8    # "curLevel":I
    .end local v9    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v20    # "curLevel":I
    goto :goto_12c

    .line 2211
    .end local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v20    # "curLevel":I
    .local v0, "index":I
    .restart local v8    # "curLevel":I
    .restart local v9    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    :cond_e8
    move/from16 p8, v0

    move-object/from16 v19, v5

    move/from16 v20, v8

    move-object v11, v9

    .line 2224
    .end local v0    # "index":I
    .end local v8    # "curLevel":I
    .end local v9    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v20    # "curLevel":I
    :goto_ef
    :try_start_ef
    monitor-exit v19
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_11c

    .line 2225
    if-eqz v18, :cond_10e

    .line 2226
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move/from16 v9, p4

    move/from16 v8, p7

    .end local p4    # "subReason":I
    .end local p7    # "reason":I
    .local v8, "reason":I
    .local v9, "subReason":I
    invoke-interface {v11, v12, v0, v8, v9}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    .line 2228
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v20

    move/from16 v5, p3

    move-object/from16 v6, v16

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    goto :goto_112

    .line 2225
    .end local v8    # "reason":I
    .end local v9    # "subReason":I
    .restart local p4    # "subReason":I
    .restart local p7    # "reason":I
    :cond_10e
    move/from16 v9, p4

    move/from16 v8, p7

    .line 2231
    .end local v18    # "doIt":Z
    .end local p4    # "subReason":I
    .end local p7    # "reason":I
    .restart local v8    # "reason":I
    .restart local v9    # "subReason":I
    :goto_112
    move-object/from16 v18, v11

    move/from16 v10, v17

    move/from16 v15, v20

    move-object/from16 v11, p0

    goto/16 :goto_198

    .line 2224
    .end local v8    # "reason":I
    .end local v9    # "subReason":I
    .restart local v18    # "doIt":Z
    .restart local p4    # "subReason":I
    .restart local p7    # "reason":I
    :catchall_11c
    move-exception v0

    move/from16 v9, p4

    move/from16 v8, p7

    .end local p4    # "subReason":I
    .end local p7    # "reason":I
    .restart local v8    # "reason":I
    .restart local v9    # "subReason":I
    goto :goto_12c

    .end local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v20    # "curLevel":I
    .local v8, "curLevel":I
    .local v9, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local p4    # "subReason":I
    .restart local p7    # "reason":I
    :catchall_122
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v20, v8

    move-object v11, v9

    move/from16 v9, p4

    move/from16 v8, p7

    .end local p4    # "subReason":I
    .end local p7    # "reason":I
    .local v8, "reason":I
    .local v9, "subReason":I
    .restart local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v20    # "curLevel":I
    :goto_12c
    :try_start_12c
    monitor-exit v19
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12e

    throw v0

    :catchall_12e
    move-exception v0

    goto :goto_12c

    .line 2204
    .end local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v18    # "doIt":Z
    .end local v20    # "curLevel":I
    .local v8, "curLevel":I
    .local v9, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local p4    # "subReason":I
    .restart local p7    # "reason":I
    :cond_130
    move/from16 v20, v8

    move-object v11, v9

    move/from16 v9, p4

    move/from16 v8, p7

    .end local p4    # "subReason":I
    .end local p7    # "reason":I
    .local v8, "reason":I
    .local v9, "subReason":I
    .restart local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v20    # "curLevel":I
    move-object/from16 v18, v11

    move/from16 v10, v17

    move/from16 v15, v20

    move-object/from16 v11, p0

    goto/16 :goto_198

    .line 2193
    .end local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v20    # "curLevel":I
    .local v8, "curLevel":I
    .local v9, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local p4    # "subReason":I
    .restart local p7    # "reason":I
    :cond_141
    move/from16 v20, v8

    move-object v11, v9

    move/from16 v9, p4

    move/from16 v8, p7

    .line 2232
    .end local p4    # "subReason":I
    .end local p7    # "reason":I
    .local v8, "reason":I
    .local v9, "subReason":I
    .restart local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v20    # "curLevel":I
    move/from16 v15, v20

    .end local v20    # "curLevel":I
    .local v15, "curLevel":I
    if-lt v15, v0, :cond_192

    if-ge v14, v0, :cond_192

    .line 2235
    move-object/from16 v18, v11

    move-object/from16 v11, p0

    .end local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .local v18, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    iget-object v1, v11, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2236
    :try_start_155
    iget-object v0, v11, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v13, v12}, Landroid/util/SparseArrayMap;->indexOfKey(ILjava/lang/Object;)I

    move-result v0
    :try_end_15b
    .catchall {:try_start_155 .. :try_end_15b} :catchall_18b

    .line 2237
    .restart local v0    # "index":I
    if-ltz v0, :cond_168

    .line 2238
    :try_start_15d
    iget-object v2, v11, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v12, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_163
    .catchall {:try_start_15d .. :try_end_163} :catchall_164

    goto :goto_168

    .line 2240
    .end local v0    # "index":I
    :catchall_164
    move-exception v0

    move/from16 v10, v17

    goto :goto_18e

    :cond_168
    :goto_168
    :try_start_168
    monitor-exit v1
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_18b

    .line 2241
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move/from16 v7, v17

    .end local v17    # "prevReason":I
    .local v7, "prevReason":I
    and-int v4, v7, v10

    and-int/lit16 v5, v7, 0xff

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move v6, v8

    move v10, v7

    .end local v7    # "prevReason":I
    .local v10, "prevReason":I
    move v7, v9

    invoke-interface/range {v1 .. v7}, Lcom/android/server/usage/AppStandbyInternal;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    .line 2244
    move-object/from16 v1, p0

    move/from16 v3, p2

    move v4, v15

    move/from16 v5, p3

    move-object/from16 v6, v16

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    goto :goto_198

    .line 2240
    .end local v10    # "prevReason":I
    .restart local v17    # "prevReason":I
    :catchall_18b
    move-exception v0

    move/from16 v10, v17

    .end local v17    # "prevReason":I
    .restart local v10    # "prevReason":I
    :goto_18e
    :try_start_18e
    monitor-exit v1
    :try_end_18f
    .catchall {:try_start_18e .. :try_end_18f} :catchall_190

    throw v0

    :catchall_190
    move-exception v0

    goto :goto_18e

    .line 2232
    .end local v10    # "prevReason":I
    .end local v18    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v17    # "prevReason":I
    :cond_192
    move-object/from16 v18, v11

    move/from16 v10, v17

    move-object/from16 v11, p0

    .line 2247
    .end local v11    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v17    # "prevReason":I
    .restart local v10    # "prevReason":I
    .restart local v18    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    :goto_198
    return-void

    .line 2190
    .end local v10    # "prevReason":I
    .end local v15    # "curLevel":I
    .end local v18    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .local v8, "curLevel":I
    .local v9, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v17    # "prevReason":I
    .restart local p4    # "subReason":I
    .restart local p7    # "reason":I
    :cond_199
    move v15, v8

    move-object/from16 v18, v9

    move/from16 v10, v17

    move/from16 v9, p4

    move/from16 v8, p7

    .line 2191
    .end local v17    # "prevReason":I
    .end local p4    # "subReason":I
    .end local p7    # "reason":I
    .local v8, "reason":I
    .local v9, "subReason":I
    .restart local v10    # "prevReason":I
    .restart local v15    # "curLevel":I
    .restart local v18    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    :goto_1a2
    return-void

    .line 2188
    .end local v8    # "reason":I
    .end local v10    # "prevReason":I
    .end local v15    # "curLevel":I
    .end local v18    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .local v9, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local p4    # "subReason":I
    .restart local p7    # "reason":I
    :catchall_1a3
    move-exception v0

    move/from16 v8, p7

    move-object/from16 v18, v9

    move/from16 v9, p4

    .end local p4    # "subReason":I
    .end local p7    # "reason":I
    .restart local v8    # "reason":I
    .local v9, "subReason":I
    .restart local v18    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    goto :goto_1b8

    .end local v8    # "reason":I
    .end local v18    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local v5    # "subReason":I
    .local v6, "reason":I
    .local v9, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    :catchall_1ab
    move-exception v0

    move v8, v6

    move-object/from16 v18, v9

    move v9, v5

    .end local v5    # "subReason":I
    .end local v6    # "reason":I
    .restart local v8    # "reason":I
    .local v9, "subReason":I
    .restart local v18    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    goto :goto_1b8

    .end local v8    # "reason":I
    .end local v18    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .local v9, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .restart local p7    # "reason":I
    .local p8, "subReason":I
    :catchall_1b1
    move-exception v0

    move-object/from16 v18, v9

    move/from16 v8, p7

    move/from16 v9, p8

    .end local p7    # "reason":I
    .end local p8    # "subReason":I
    .restart local v8    # "reason":I
    .local v9, "subReason":I
    .restart local v18    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    :goto_1b8
    :try_start_1b8
    monitor-exit v7
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1ba

    throw v0

    :catchall_1ba
    move-exception v0

    goto :goto_1b8
.end method

.method private calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;
    .registers 15
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "standbyBucket"    # I
    .param p5, "allowRequestBgRestricted"    # Z
    .param p6, "calcTrackers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "IZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/AppRestrictionController$TrackerInfo;",
            ">;"
        }
    .end annotation

    .line 1743
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppHibernationInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1744
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1747
    :cond_1a
    const/4 v0, 0x0

    .line 1748
    .local v0, "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    sparse-switch p4, :sswitch_data_a2

    .line 1761
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStateTracker()Lcom/android/server/AppStateTracker;

    move-result-object v1

    .line 1762
    invoke-interface {v1, p2, p3}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    move-result v1

    const/16 v2, 0x32

    if-eqz v1, :cond_3e

    .line 1763
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 1753
    :sswitch_38
    const/16 v1, 0x32

    .line 1754
    .local v1, "level":I
    goto :goto_98

    .line 1750
    .end local v1    # "level":I
    :sswitch_3b
    const/16 v1, 0x14

    .line 1751
    .restart local v1    # "level":I
    goto :goto_98

    .line 1766
    .end local v1    # "level":I
    :cond_3e
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v1, v1, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mRestrictedBucketEnabled:Z

    if-eqz v1, :cond_4b

    const/16 v1, 0x2d

    if-ne p4, v1, :cond_4b

    .line 1767
    const/16 v1, 0x28

    goto :goto_4d

    .line 1768
    :cond_4b
    const/16 v1, 0x1e

    :goto_4d
    nop

    .line 1769
    .restart local v1    # "level":I
    if-eqz p6, :cond_98

    .line 1770
    const/16 v3, 0x64

    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevelFromTackers(ILjava/lang/String;I)Landroid/util/Pair;

    move-result-object v3

    .line 1772
    .local v3, "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1773
    .local v4, "l":I
    const/16 v5, 0x14

    if-ne v4, v5, :cond_70

    .line 1774
    new-instance v2, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-direct {v2, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 1776
    :cond_70
    if-le v4, v1, :cond_78

    .line 1777
    move v1, v4

    .line 1778
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 1780
    :cond_78
    if-ne v1, v2, :cond_98

    .line 1782
    if-eqz p5, :cond_87

    .line 1783
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7, p3}, Lcom/android/server/am/AppRestrictionController$BgHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1784
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1787
    :cond_87
    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevelFromTackers(ILjava/lang/String;I)Landroid/util/Pair;

    move-result-object v2

    .line 1789
    .end local v3    # "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    .local v2, "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1790
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 1795
    .end local v2    # "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    .end local v4    # "l":I
    :cond_98
    :goto_98
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :sswitch_data_a2
    .sparse-switch
        0x5 -> :sswitch_3b
        0x32 -> :sswitch_38
    .end sparse-switch
.end method

.method private calcAppRestrictionLevelFromTackers(ILjava/lang/String;I)Landroid/util/Pair;
    .registers 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "maxLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/AppRestrictionController$TrackerInfo;",
            ">;"
        }
    .end annotation

    .line 1810
    const/4 v0, 0x0

    .line 1811
    .local v0, "level":I
    move v1, v0

    .line 1812
    .local v1, "prevLevel":I
    const/4 v2, 0x0

    .line 1813
    .local v2, "resultTracker":Lcom/android/server/am/BaseAppStateTracker;
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v3, v3, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mRestrictedBucketEnabled:Z

    .line 1814
    .local v3, "isRestrictedBucketEnabled":Z
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_f
    if-ltz v4, :cond_3c

    .line 1815
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v5}, Lcom/android/server/am/BaseAppStateTracker;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v5

    .line 1816
    invoke-virtual {v5, p2, p1, p3}, Lcom/android/server/am/BaseAppStatePolicy;->getProposedRestrictionLevel(Ljava/lang/String;II)I

    move-result v5

    .line 1817
    .local v5, "l":I
    if-nez v3, :cond_29

    const/16 v6, 0x28

    if-ne v5, v6, :cond_29

    .line 1818
    const/16 v5, 0x1e

    .line 1820
    :cond_29
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1821
    if-eq v0, v1, :cond_39

    .line 1822
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    .line 1823
    move v1, v0

    .line 1814
    .end local v5    # "l":I
    :cond_39
    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    .line 1826
    .end local v4    # "i":I
    :cond_3c
    if-nez v2, :cond_41

    .line 1827
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    goto :goto_4e

    .line 1828
    :cond_41
    new-instance v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker;->getType()I

    move-result v5

    .line 1829
    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->getTrackerInfoForStatsd(I)[B

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/am/AppRestrictionController$TrackerInfo;-><init>(Lcom/android/server/am/AppRestrictionController;I[B)V

    :goto_4e
    nop

    .line 1830
    .local v4, "trackerInfo":Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    new-instance v5, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method private clearCarrierPrivilegedApps()V
    .registers 3

    .line 2880
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2881
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 2882
    monitor-exit v0

    .line 2883
    return-void

    .line 2882
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private dispatchAppRestrictionLevelChanges(ILjava/lang/String;I)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "newLevel"    # I

    .line 2305
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 2307
    return-void
.end method

.method private dispatchAutoRestrictedBucketFeatureFlagChanged(Z)V
    .registers 7
    .param p1, "newValue"    # Z

    .line 2310
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v0

    .line 2311
    .local v0, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2312
    .local v1, "pendingTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2313
    :try_start_e
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v4, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v1, p1, v0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/AppRestrictionController;Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachUidLocked(Ljava/util/function/Consumer;)V

    .line 2327
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_37

    .line 2329
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v3, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda9;

    invoke-direct {v3, p1}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda9;-><init>(Z)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 2332
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 2333
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 2332
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 2336
    .end local v2    # "i":I
    :cond_36
    return-void

    .line 2327
    :catchall_37
    move-exception v3

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v3
.end method

.method private fetchCarrierPrivilegedAppsCPL()V
    .registers 3

    .line 2887
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 2888
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    nop

    .line 2889
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 2893
    return-void
.end method

.method private getExemptionReasonStatsd(II)I
    .registers 5
    .param p1, "uid"    # I
    .param p2, "level"    # I

    .line 2105
    const/16 v0, 0x14

    if-eq p2, v0, :cond_6

    .line 2106
    const/4 v0, 0x1

    return v0

    .line 2109
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result v0

    .line 2110
    .local v0, "reasonCode":I
    invoke-static {v0}, Landroid/os/PowerExemptionManager;->getExemptionReasonForStatsd(I)I

    move-result v1

    return v1
.end method

.method private getOptimizationLevelStatsd(I)I
    .registers 3
    .param p1, "level"    # I

    .line 2114
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_c

    .line 2124
    return v0

    .line 2122
    :sswitch_5
    const/4 v0, 0x2

    return v0

    .line 2120
    :sswitch_7
    const/4 v0, 0x1

    return v0

    .line 2118
    :sswitch_9
    const/4 v0, 0x3

    return v0

    .line 2116
    :sswitch_b
    return v0

    :sswitch_data_c
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_9
        0x1e -> :sswitch_7
        0x32 -> :sswitch_5
    .end sparse-switch
.end method

.method private getRestrictionLevelStatsd(I)I
    .registers 3
    .param p1, "level"    # I

    .line 2052
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_12

    .line 2068
    return v0

    .line 2066
    :sswitch_5
    const/4 v0, 0x6

    return v0

    .line 2064
    :sswitch_7
    const/4 v0, 0x5

    return v0

    .line 2062
    :sswitch_9
    const/4 v0, 0x4

    return v0

    .line 2060
    :sswitch_b
    const/4 v0, 0x3

    return v0

    .line 2058
    :sswitch_d
    const/4 v0, 0x2

    return v0

    .line 2056
    :sswitch_f
    const/4 v0, 0x1

    return v0

    .line 2054
    :sswitch_11
    return v0

    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_11
        0xa -> :sswitch_f
        0x14 -> :sswitch_d
        0x1e -> :sswitch_b
        0x28 -> :sswitch_9
        0x32 -> :sswitch_7
        0x3c -> :sswitch_5
    .end sparse-switch
.end method

.method private getTargetSdkStatsd(Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2130
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2131
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2132
    return v1

    .line 2135
    :cond_a
    :try_start_a
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2136
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2a

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_15

    goto :goto_2a

    .line 2139
    :cond_15
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_19} :catch_2b

    .line 2140
    .local v3, "targetSdk":I
    const/16 v4, 0x1f

    if-ge v3, v4, :cond_1f

    .line 2141
    const/4 v1, 0x1

    return v1

    .line 2142
    :cond_1f
    const/16 v4, 0x21

    if-ge v3, v4, :cond_25

    .line 2143
    const/4 v1, 0x2

    return v1

    .line 2144
    :cond_25
    if-ne v3, v4, :cond_29

    .line 2145
    const/4 v1, 0x3

    return v1

    .line 2147
    :cond_29
    return v1

    .line 2137
    .end local v3    # "targetSdk":I
    :cond_2a
    :goto_2a
    return v1

    .line 2149
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_2b
    move-exception v2

    .line 2151
    return v1
.end method

.method private getThresholdStatsd(I)I
    .registers 3
    .param p1, "reason"    # I

    .line 2073
    sparse-switch p1, :sswitch_data_a

    .line 2079
    const/4 v0, 0x0

    return v0

    .line 2075
    :sswitch_5
    const/4 v0, 0x1

    return v0

    .line 2077
    :sswitch_7
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_a
    .sparse-switch
        0x400 -> :sswitch_7
        0x600 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTrackerTypeStatsd(I)I
    .registers 3
    .param p1, "type"    # I

    .line 2084
    packed-switch p1, :pswitch_data_14

    .line 2100
    const/4 v0, 0x0

    return v0

    .line 2098
    :pswitch_5
    const/4 v0, 0x7

    return v0

    .line 2096
    :pswitch_7
    const/4 v0, 0x6

    return v0

    .line 2094
    :pswitch_9
    const/4 v0, 0x5

    return v0

    .line 2092
    :pswitch_b
    const/4 v0, 0x4

    return v0

    .line 2090
    :pswitch_d
    const/4 v0, 0x3

    return v0

    .line 2088
    :pswitch_f
    const/4 v0, 0x2

    return v0

    .line 2086
    :pswitch_11
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private handleAppStandbyBucketChanged(ILjava/lang/String;I)V
    .registers 16
    .param p1, "bucket"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2340
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v1, 0xc8000

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 2342
    .local v0, "uid":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p3

    move v5, v0

    move-object v6, p2

    move v7, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object v1

    .line 2344
    .local v1, "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/16 v10, 0x100

    const/4 v11, 0x0

    move-object v4, p2

    move v8, p1

    invoke-direct/range {v3 .. v11}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 2346
    return-void
.end method

.method private handleBackgroundRestrictionChanged(ILjava/lang/String;Z)V
    .registers 26
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "restricted"    # Z

    .line 2269
    move-object/from16 v14, p0

    move/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v12, p3

    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, v14, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_f
    if-ge v0, v1, :cond_1f

    .line 2270
    iget-object v2, v14, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    .line 2271
    invoke-virtual {v2, v15, v13, v12}, Lcom/android/server/am/BaseAppStateTracker;->onBackgroundRestrictionChanged(ILjava/lang/String;Z)V

    .line 2269
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 2274
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1f
    iget-object v0, v14, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v16

    .line 2275
    .local v16, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    .line 2276
    .local v17, "userId":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 2277
    .local v18, "now":J
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v2, v17

    move-wide/from16 v3, v18

    invoke-interface/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v11

    .line 2278
    .local v11, "curBucket":I
    if-eqz v12, :cond_5d

    .line 2281
    const/16 v3, 0x32

    iget-object v4, v14, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/4 v6, 0x1

    const/16 v7, 0x400

    const/4 v8, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move v5, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 2284
    iget-object v0, v14, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v15, v2, v13}, Lcom/android/server/am/AppRestrictionController$BgHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2285
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    move/from16 v21, v11

    goto :goto_a5

    .line 2289
    :cond_5d
    iget-object v0, v14, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 2290
    invoke-static {v0, v15, v13}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->-$$Nest$mgetLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;ILjava/lang/String;)I

    move-result v10

    .line 2291
    .local v10, "lastLevel":I
    const/16 v0, 0x28

    const/4 v1, 0x5

    if-ne v11, v1, :cond_6a

    .line 2292
    move v4, v1

    goto :goto_71

    .line 2293
    :cond_6a
    if-ne v10, v0, :cond_6f

    .line 2294
    const/16 v0, 0x2d

    goto :goto_70

    :cond_6f
    nop

    :goto_70
    move v4, v0

    :goto_71
    nop

    .line 2295
    .local v4, "tentativeBucket":I
    nop

    .line 2296
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2295
    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object v0

    .line 2298
    .local v0, "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/4 v1, 0x1

    const/16 v2, 0x300

    const/4 v3, 0x3

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p1

    move/from16 v20, v10

    .end local v10    # "lastLevel":I
    .local v20, "lastLevel":I
    move v10, v11

    move/from16 v21, v11

    .end local v11    # "curBucket":I
    .local v21, "curBucket":I
    move v11, v1

    move v12, v2

    move v13, v3

    invoke-direct/range {v5 .. v13}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 2301
    .end local v0    # "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    .end local v4    # "tentativeBucket":I
    .end local v20    # "lastLevel":I
    :goto_a5
    return-void
.end method

.method private initBgRestrictionExemptioFromSysConfig()V
    .registers 4

    .line 1566
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 1567
    .local v0, "sysConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getBgRestrictionExemption()Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    .line 1574
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 1576
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 1577
    return-void
.end method

.method private initRestrictionStates()V
    .registers 8

    .line 1601
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 1602
    .local v0, "allUsers":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_1a

    aget v4, v0, v3

    .line 1603
    .local v4, "userId":I
    const/16 v5, 0x400

    const/4 v6, 0x2

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUser(III)V

    .line 1602
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1606
    :cond_1a
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->isTest()Z

    move-result v1

    if-nez v1, :cond_34

    .line 1608
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->scheduleLoadFromXml()V

    .line 1610
    array-length v1, v0

    :goto_28
    if-ge v2, v1, :cond_34

    aget v3, v0, v2

    .line 1611
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    .line 1610
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1614
    :cond_34
    return-void
.end method

.method private initRolesInInterest()V
    .registers 11

    .line 2903
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 2904
    .local v0, "allUsers":[I
    sget-object v1, Lcom/android/server/am/AppRestrictionController;->ROLES_IN_INTEREST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_32

    aget-object v5, v1, v4

    .line 2905
    .local v5, "role":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 2906
    array-length v6, v0

    move v7, v3

    :goto_21
    if-ge v7, v6, :cond_2f

    aget v8, v0, v7

    .line 2907
    .local v8, "userId":I
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 2908
    .local v9, "user":Landroid/os/UserHandle;
    invoke-direct {p0, v5, v9}, Lcom/android/server/am/AppRestrictionController;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 2906
    .end local v8    # "userId":I
    .end local v9    # "user":Landroid/os/UserHandle;
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 2904
    .end local v5    # "role":Ljava/lang/String;
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 2912
    :cond_32
    return-void
.end method

.method private initSystemModuleNames()V
    .registers 9

    .line 1617
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1618
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v1

    .line 1619
    .local v1, "moduleInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    if-nez v1, :cond_e

    .line 1620
    return-void

    .line 1622
    :cond_e
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1623
    :try_start_11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ModuleInfo;

    .line 1624
    .local v4, "info":Landroid/content/pm/ModuleInfo;
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    nop

    .end local v4    # "info":Landroid/content/pm/ModuleInfo;
    goto :goto_15

    .line 1626
    :cond_2e
    monitor-exit v2

    .line 1627
    return-void

    .line 1626
    :catchall_30
    move-exception v3

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_30

    throw v3
.end method

.method private isCarrierApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2865
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2866
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Ljava/util/List;

    if-nez v1, :cond_a

    .line 2867
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->fetchCarrierPrivilegedAppsCPL()V

    .line 2869
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Ljava/util/List;

    if-eqz v1, :cond_14

    .line 2870
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2872
    :cond_14
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2873
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private isExemptedFromSysConfig(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1596
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgRestrictionExemptioFromSysConfig:Landroid/util/ArraySet;

    if-eqz v0, :cond_c

    .line 1597
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1596
    :goto_d
    return v0
.end method

.method private isRoleHeldByUid(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2896
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2897
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2898
    .local v1, "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_15

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    monitor-exit v0

    return v2

    .line 2899
    .end local v1    # "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private isSystemModule(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1630
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1631
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1632
    .local v1, "val":Ljava/lang/Boolean;
    if-eqz v1, :cond_13

    .line 1633
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1635
    .end local v1    # "val":Ljava/lang/Boolean;
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_5a

    .line 1638
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1639
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 1641
    .local v0, "isSystemModule":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1d
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v4
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_21} :catch_28

    if-eqz v4, :cond_25

    move v4, v2

    goto :goto_26

    :cond_25
    move v4, v3

    :goto_26
    move v0, v4

    .line 1643
    goto :goto_29

    .line 1642
    :catch_28
    move-exception v4

    .line 1645
    :goto_29
    if-nez v0, :cond_48

    .line 1647
    :try_start_2b
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1652
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_44

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1653
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1652
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_41} :catch_47

    if-eqz v5, :cond_44

    goto :goto_45

    :cond_44
    move v2, v3

    :goto_45
    move v0, v2

    .line 1655
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_49

    .line 1654
    :catch_47
    move-exception v2

    .line 1658
    :cond_48
    move v2, v0

    .end local v0    # "isSystemModule":Z
    .local v2, "isSystemModule":Z
    :goto_49
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1659
    :try_start_4c
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSystemModulesCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    monitor-exit v3

    .line 1661
    return v2

    .line 1660
    :catchall_57
    move-exception v0

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_57

    throw v0

    .line 1635
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "isSystemModule":Z
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method static synthetic lambda$dispatchAppRestrictionLevelChanges$2(ILjava/lang/String;ILandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .registers 4
    .param p0, "uid"    # I
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "newLevel"    # I
    .param p3, "l"    # Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    .line 2306
    invoke-interface {p3, p0, p1, p2}, Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;->onRestrictionLevelChanged(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$3(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 7
    .param p0, "appStandbyInternal"    # Lcom/android/server/usage/AppStandbyInternal;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/Integer;
    .param p3, "reason"    # Ljava/lang/Integer;

    .line 2317
    nop

    .line 2318
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    .line 2319
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 2317
    invoke-interface {p0, p1, v0, v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$4(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 12
    .param p0, "appStandbyInternal"    # Lcom/android/server/usage/AppStandbyInternal;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/Integer;
    .param p3, "reason"    # Ljava/lang/Integer;

    .line 2320
    nop

    .line 2321
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xff00

    and-int v4, v0, v1

    .line 2322
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v5, v0, 0xff

    .line 2320
    const/16 v6, 0x300

    const/4 v7, 0x6

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/server/usage/AppStandbyInternal;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    return-void
.end method

.method static synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$5(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 9
    .param p0, "pendingTasks"    # Ljava/util/ArrayList;
    .param p1, "newValue"    # Z
    .param p2, "appStandbyInternal"    # Lcom/android/server/usage/AppStandbyInternal;
    .param p3, "uid"    # Ljava/lang/Integer;
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "level"    # Ljava/lang/Integer;
    .param p6, "reason"    # Ljava/lang/Integer;

    .line 2315
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_18

    .line 2316
    if-eqz p1, :cond_10

    .line 2317
    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_15

    .line 2320
    :cond_10
    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2316
    :goto_15
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2325
    :cond_18
    return-void
.end method

.method static synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$7(ZLandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .registers 2
    .param p0, "newValue"    # Z
    .param p1, "l"    # Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    .line 2330
    invoke-interface {p1, p0}, Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;->onAutoRestrictedBucketFeatureFlagChanged(Z)V

    return-void
.end method

.method static synthetic lambda$handleUidActive$8(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V
    .registers 6
    .param p0, "appStandbyInternal"    # Lcom/android/server/usage/AppStandbyInternal;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/Integer;

    .line 2752
    nop

    .line 2753
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 2752
    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    return-void
.end method

.method private loadAppIdsFromPackageList(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1580
    .local p1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1581
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_30

    .line 1582
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1584
    .local v2, "pkg":Ljava/lang/String;
    const/high16 v3, 0x100000

    :try_start_16
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1586
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_1d

    .line 1587
    goto :goto_2d

    .line 1589
    :cond_1d
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_2a} :catch_2c

    .line 1591
    nop

    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_2d

    .line 1590
    :catch_2c
    move-exception v3

    .line 1581
    .end local v2    # "pkg":Ljava/lang/String;
    :goto_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1593
    .end local v1    # "i":I
    :cond_30
    return-void
.end method

.method private logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V
    .registers 26
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "prevLevel"    # I
    .param p4, "level"    # I
    .param p5, "trackerInfo"    # Lcom/android/server/am/AppRestrictionController$TrackerInfo;
    .param p6, "reason"    # I

    .line 2252
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    .line 2253
    invoke-direct {v0, v1}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevelStatsd(I)I

    move-result v5

    .line 2254
    move/from16 v15, p6

    invoke-direct {v0, v15}, Lcom/android/server/am/AppRestrictionController;->getThresholdStatsd(I)I

    move-result v6

    iget v3, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    .line 2255
    invoke-direct {v0, v3}, Lcom/android/server/am/AppRestrictionController;->getTrackerTypeStatsd(I)I

    move-result v7

    .line 2256
    iget v3, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    const/4 v4, 0x0

    const/4 v8, 0x3

    if-ne v3, v8, :cond_20

    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    move-object v8, v3

    goto :goto_21

    :cond_20
    move-object v8, v4

    .line 2257
    :goto_21
    iget v3, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_2a

    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    move-object v9, v3

    goto :goto_2b

    :cond_2a
    move-object v9, v4

    .line 2258
    :goto_2b
    iget v3, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    const/4 v10, 0x6

    if-ne v3, v10, :cond_34

    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    move-object v10, v3

    goto :goto_35

    :cond_34
    move-object v10, v4

    .line 2259
    :goto_35
    iget v3, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    const/4 v11, 0x7

    if-ne v3, v11, :cond_3e

    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    move-object v11, v3

    goto :goto_3f

    :cond_3e
    move-object v11, v4

    .line 2260
    :goto_3f
    move/from16 v14, p2

    invoke-direct {v0, v14, v1}, Lcom/android/server/am/AppRestrictionController;->getExemptionReasonStatsd(II)I

    move-result v12

    .line 2261
    invoke-direct {v0, v1}, Lcom/android/server/am/AppRestrictionController;->getOptimizationLevelStatsd(I)I

    move-result v13

    .line 2262
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/AppRestrictionController;->getTargetSdkStatsd(Ljava/lang/String;)I

    move-result v16

    .line 2263
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v17

    .line 2264
    move/from16 v4, p3

    invoke-direct {v0, v4}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevelStatsd(I)I

    move-result v18

    .line 2252
    const/16 v3, 0x1b9

    move/from16 v4, p2

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    invoke-static/range {v3 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    .line 2265
    return-void
.end method

.method private onLockedBootCompleted()V
    .registers 4

    .line 3332
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 3333
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker;->onLockedBootCompleted()V

    .line 3332
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3335
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_17
    return-void
.end method

.method private onPackageRemoved(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3321
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removePackage(Ljava/lang/String;I)V

    .line 3322
    return-void
.end method

.method private onPropertiesChanged(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 3342
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 3343
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onPropertiesChanged(Ljava/lang/String;)V

    .line 3342
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3345
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_17
    return-void
.end method

.method private onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 13
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2915
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 2917
    .local v0, "rolePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2918
    .local v1, "roleUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 2919
    .local v2, "userId":I
    if-eqz v0, :cond_3a

    .line 2920
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    .line 2921
    .local v3, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2922
    .local v5, "pkg":Ljava/lang/String;
    const-wide/32 v6, 0xc8000

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2923
    .end local v5    # "pkg":Ljava/lang/String;
    goto :goto_1f

    .line 2925
    .end local v3    # "pm":Landroid/content/pm/PackageManagerInternal;
    :cond_3a
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2926
    :try_start_3d
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_45
    if-ltz v4, :cond_8a

    .line 2927
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2928
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq v6, v2, :cond_54

    .line 2929
    goto :goto_87

    .line 2931
    :cond_54
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2932
    .local v6, "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 2933
    .local v7, "index":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 2934
    .local v8, "isRole":Z
    if-ltz v7, :cond_7b

    .line 2935
    if-nez v8, :cond_87

    .line 2936
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2937
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_87

    .line 2938
    iget-object v9, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_87

    .line 2941
    :cond_7b
    if-eqz v8, :cond_87

    .line 2942
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2943
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2926
    .end local v5    # "uid":I
    .end local v6    # "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "index":I
    .end local v8    # "isRole":Z
    :cond_87
    :goto_87
    add-int/lit8 v4, v4, -0x1

    goto :goto_45

    .line 2946
    .end local v4    # "i":I
    :cond_8a
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "i":I
    :goto_90
    if-ltz v4, :cond_ac

    .line 2947
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2948
    .local v5, "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2949
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mUidRolesMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2946
    .end local v5    # "roles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v4, v4, -0x1

    goto :goto_90

    .line 2951
    .end local v4    # "i":I
    :cond_ac
    monitor-exit v3

    .line 2952
    return-void

    .line 2951
    :catchall_ae
    move-exception v4

    monitor-exit v3
    :try_end_b0
    .catchall {:try_start_3d .. :try_end_b0} :catchall_ae

    throw v4
.end method

.method private onUidAdded(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 3313
    const/16 v0, 0x600

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    .line 3315
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_d
    if-ge v0, v1, :cond_1d

    .line 3316
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidAdded(I)V

    .line 3315
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 3318
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1d
    return-void
.end method

.method private onUidRemoved(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 3325
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 3326
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidRemoved(I)V

    .line 3325
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3328
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeUid(I)V

    .line 3329
    return-void
.end method

.method private onUserAdded(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3286
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 3287
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserAdded(I)V

    .line 3286
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3289
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_17
    return-void
.end method

.method private onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3348
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 3349
    const-wide/32 v1, 0xc8000

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 3350
    .local v0, "uid":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_14
    if-ge v1, v2, :cond_24

    .line 3351
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/am/BaseAppStateTracker;->onUserInteractionStarted(Ljava/lang/String;I)V

    .line 3350
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 3353
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_24
    return-void
.end method

.method private onUserRemoved(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3306
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 3307
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserRemoved(I)V

    .line 3306
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3309
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeUser(I)V

    .line 3310
    return-void
.end method

.method private onUserStarted(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3292
    const/16 v0, 0x400

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUser(III)V

    .line 3294
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_d
    if-ge v0, v1, :cond_1d

    .line 3295
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserStarted(I)V

    .line 3294
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 3297
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1d
    return-void
.end method

.method private onUserStopped(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3300
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 3301
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserStopped(I)V

    .line 3300
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3303
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_17
    return-void
.end method

.method private refreshAppRestrictionLevelForUser(III)V
    .registers 21
    .param p1, "userId"    # I
    .param p2, "reason"    # I
    .param p3, "subReason"    # I

    .line 1687
    move-object/from16 v9, p0

    move/from16 v10, p1

    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v0

    .line 1688
    invoke-interface {v0, v10}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBuckets(I)Ljava/util/List;

    move-result-object v11

    .line 1689
    .local v11, "appStandbyInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1690
    return-void

    .line 1696
    :cond_15
    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v12

    .line 1697
    .local v12, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/app/usage/AppStandbyInfo;

    .line 1698
    .local v14, "info":Landroid/app/usage/AppStandbyInfo;
    iget-object v0, v14, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    const-wide/32 v1, 0xc8000

    invoke-virtual {v12, v0, v1, v2, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v15

    .line 1699
    .local v15, "uid":I
    if-gez v15, :cond_5c

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v14, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    goto :goto_1f

    .line 1704
    :cond_5c
    iget-object v3, v14, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget v4, v14, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object v8

    .line 1712
    .local v8, "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    iget-object v1, v14, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    iget v5, v14, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v7, p2

    move-object/from16 v16, v8

    .end local v8    # "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    .local v16, "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    move/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 1714
    .end local v14    # "info":Landroid/app/usage/AppStandbyInfo;
    .end local v15    # "uid":I
    .end local v16    # "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    goto :goto_1f

    .line 1715
    :cond_89
    return-void
.end method

.method private registerForSystemBroadcasts()V
    .registers 10

    .line 3257
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3258
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3259
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3260
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3261
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3262
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3263
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3264
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3265
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3266
    const-string v2, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3267
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3268
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 3269
    .local v2, "bootFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3270
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/4 v7, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3272
    return-void
.end method

.method private registerForUidObservers()V
    .registers 6

    .line 1666
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getIActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v2, 0xf

    const/4 v3, 0x4

    const-string v4, "android"

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 1671
    goto :goto_12

    .line 1669
    :catch_11
    move-exception v0

    .line 1672
    :goto_12
    return-void
.end method

.method private static standbyBucketToRestrictionLevel(I)I
    .registers 2
    .param p0, "standbyBucket"    # I

    .line 1835
    sparse-switch p0, :sswitch_data_12

    .line 1848
    const/4 v0, 0x0

    return v0

    .line 1839
    :sswitch_5
    const/16 v0, 0x32

    return v0

    .line 1846
    :sswitch_8
    const/16 v0, 0x28

    return v0

    .line 1844
    :sswitch_b
    const/16 v0, 0x1e

    return v0

    .line 1837
    :sswitch_e
    const/16 v0, 0x14

    return v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x5 -> :sswitch_e
        0xa -> :sswitch_b
        0x14 -> :sswitch_b
        0x1e -> :sswitch_b
        0x28 -> :sswitch_b
        0x2d -> :sswitch_8
        0x32 -> :sswitch_5
    .end sparse-switch
.end method

.method private unregisterForSystemBroadcasts()V
    .registers 3

    .line 3275
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3276
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3277
    return-void
.end method

.method private unregisterForUidObservers()V
    .registers 3

    .line 1676
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getIActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mUidObserver:Landroid/app/IUidObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1679
    goto :goto_d

    .line 1677
    :catch_c
    move-exception v0

    .line 1680
    :goto_d
    return-void
.end method


# virtual methods
.method public addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    .line 1506
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 1507
    return-void
.end method

.method addAppStateTracker(Lcom/android/server/am/BaseAppStateTracker;)V
    .registers 3
    .param p1, "tracker"    # Lcom/android/server/am/BaseAppStateTracker;

    .line 2978
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2979
    return-void
.end method

.method cancelLongRunningFGSNotificationIfNecessary(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2998
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelLongRunningFGSNotificationIfNecessary(Ljava/lang/String;I)V

    .line 2999
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2032
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2033
    const-string v0, "APP BACKGROUND RESTRICTIONS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2035
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2036
    const-string v0, "BACKGROUND RESTRICTION LEVEL SETTINGS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2038
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2039
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_56
    if-ge v0, v1, :cond_69

    .line 2040
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2041
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2039
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 2043
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_69
    return-void
.end method

.method dumpAsProto(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "uid"    # I

    .line 2046
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 2047
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;->dumpAsProto(Landroid/util/proto/ProtoOutputStream;I)V

    .line 2046
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2049
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_17
    return-void
.end method

.method forEachTracker(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/BaseAppStateTracker;",
            ">;)V"
        }
    .end annotation

    .line 3280
    .local p1, "sink":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/BaseAppStateTracker;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 3281
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3280
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3283
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_17
    return-void
.end method

.method getAppStateTracker(Ljava/lang/Class;)Lcom/android/server/am/BaseAppStateTracker;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/BaseAppStateTracker;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2985
    .local p1, "trackerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateTracker;

    .line 2986
    .local v1, "tracker":Lcom/android/server/am/BaseAppStateTracker;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2987
    return-object v1

    .line 2989
    .end local v1    # "tracker":Lcom/android/server/am/BaseAppStateTracker;
    :cond_1d
    goto :goto_6

    .line 2990
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method getBackgroundHandler()Landroid/os/Handler;
    .registers 2

    .line 2958
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    return-object v0
.end method

.method getBackgroundHandlerThread()Landroid/os/HandlerThread;
    .registers 2

    .line 2966
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method getBackgroundRestrictionExemptionReason(I)I
    .registers 15
    .param p1, "uid"    # I

    .line 2790
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2791
    const/16 v0, 0x33

    return v0

    .line 2793
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->isOnSystemDeviceIdleAllowlist(I)Z

    move-result v0

    const/16 v1, 0x12c

    if-eqz v0, :cond_12

    .line 2794
    return v1

    .line 2796
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2797
    const/16 v0, 0x3f

    return v0

    .line 2799
    :cond_1d
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2800
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    .line 2801
    const-string/jumbo v3, "no_control_apps"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2802
    const/16 v1, 0x143

    return v1

    .line 2804
    :cond_33
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v2

    .line 2805
    .local v2, "am":Landroid/app/ActivityManagerInternal;
    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->isDeviceOwner(I)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2806
    const/16 v1, 0x37

    return v1

    .line 2808
    :cond_42
    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->isProfileOwner(I)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 2809
    const/16 v1, 0x38

    return v1

    .line 2811
    :cond_4b
    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v3

    .line 2812
    .local v3, "uidProcState":I
    if-gtz v3, :cond_54

    .line 2813
    const/16 v1, 0xa

    return v1

    .line 2814
    :cond_54
    const/4 v4, 0x1

    if-gt v3, v4, :cond_5a

    .line 2815
    const/16 v1, 0xb

    return v1

    .line 2817
    :cond_5a
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 2818
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_d6

    .line 2819
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v5

    .line 2820
    .local v5, "appOpsManager":Landroid/app/AppOpsManager;
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    .line 2821
    .local v6, "pm":Landroid/content/pm/PackageManagerInternal;
    iget-object v7, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v7}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v7

    .line 2823
    .local v7, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    array-length v8, v4

    const/4 v9, 0x0

    move v10, v9

    :goto_7b
    if-ge v10, v8, :cond_b8

    aget-object v11, v4, v10

    .line 2824
    .local v11, "pkg":Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/android/server/am/AppRestrictionController;->isSystemModule(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_88

    .line 2825
    const/16 v1, 0x140

    return v1

    .line 2826
    :cond_88
    invoke-direct {p0, v11}, Lcom/android/server/am/AppRestrictionController;->isCarrierApp(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_91

    .line 2827
    const/16 v1, 0x141

    return v1

    .line 2828
    :cond_91
    invoke-direct {p0, v11}, Lcom/android/server/am/AppRestrictionController;->isExemptedFromSysConfig(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_98

    .line 2829
    return v1

    .line 2830
    :cond_98
    iget-object v12, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-object v12, v12, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a3

    .line 2831
    return v1

    .line 2832
    :cond_a3
    invoke-virtual {v6, v11, v0}, Landroid/content/pm/PackageManagerInternal;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_ac

    .line 2833
    const/16 v1, 0x142

    return v1

    .line 2834
    :cond_ac
    invoke-interface {v7, v11, v0}, Lcom/android/server/usage/AppStandbyInternal;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_b5

    .line 2835
    const/16 v1, 0x144

    return v1

    .line 2823
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_b5
    add-int/lit8 v10, v10, 0x1

    goto :goto_7b

    .line 2839
    :cond_b8
    array-length v1, v4

    :goto_b9
    if-ge v9, v1, :cond_d6

    aget-object v8, v4, v9

    .line 2840
    .local v8, "pkg":Ljava/lang/String;
    const/16 v10, 0x2f

    invoke-virtual {v5, v10, p1, v8}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v10

    if-nez v10, :cond_c8

    .line 2842
    const/16 v1, 0x44

    return v1

    .line 2843
    :cond_c8
    const/16 v10, 0x5e

    invoke-virtual {v5, v10, p1, v8}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v10

    if-nez v10, :cond_d3

    .line 2845
    const/16 v1, 0x45

    return v1

    .line 2839
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_d3
    add-int/lit8 v9, v9, 0x1

    goto :goto_b9

    .line 2849
    .end local v5    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v6    # "pm":Landroid/content/pm/PackageManagerInternal;
    .end local v7    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    :cond_d6
    const-string v1, "android.app.role.DIALER"

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/AppRestrictionController;->isRoleHeldByUid(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 2850
    const/16 v1, 0x13e

    return v1

    .line 2852
    :cond_e1
    const-string v1, "android.app.role.EMERGENCY"

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/AppRestrictionController;->isRoleHeldByUid(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 2853
    const/16 v1, 0x13f

    return v1

    .line 2855
    :cond_ec
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->isOnDeviceIdleAllowlist(I)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 2856
    const/16 v1, 0x41

    return v1

    .line 2858
    :cond_f5
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v2, v1, p1}, Landroid/app/ActivityManagerInternal;->isAssociatedCompanionApp(II)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 2859
    const/16 v1, 0x39

    return v1

    .line 2861
    :cond_102
    const/4 v1, -0x1

    return v1
.end method

.method getCompositeMediaPlaybackDurations(IJJ)J
    .registers 17
    .param p1, "uid"    # I
    .param p2, "now"    # J
    .param p4, "window"    # J

    .line 1971
    sub-long v0, p2, p4

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 1972
    .local v7, "since":J
    nop

    .line 1973
    move-object v0, p0

    move v1, p1

    move-wide v2, v7

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppRestrictionController;->getMediaSessionTotalDurationsSince(IJJ)J

    move-result-wide v9

    .line 1974
    const/4 v6, 0x2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->getForegroundServiceTotalDurationsSince(IJJI)J

    move-result-wide v0

    .line 1972
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1976
    .local v0, "mediaPlaybackDuration":J
    return-wide v0
.end method

.method getCompositeMediaPlaybackDurations(Ljava/lang/String;IJJ)J
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "now"    # J
    .param p5, "window"    # J

    .line 1958
    sub-long v0, p3, p5

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1959
    .local v8, "since":J
    nop

    .line 1960
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, v8

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->getMediaSessionTotalDurationsSince(Ljava/lang/String;IJJ)J

    move-result-wide v10

    .line 1961
    const/4 v7, 0x2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/AppRestrictionController;->getForegroundServiceTotalDurationsSince(Ljava/lang/String;IJJI)J

    move-result-wide v0

    .line 1959
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1963
    .local v0, "mediaPlaybackDuration":J
    return-wide v0
.end method

.method getForegroundServiceTotalDurations(IJI)J
    .registers 7
    .param p1, "uid"    # I
    .param p2, "now"    # J
    .param p4, "serviceType"    # I

    .line 1898
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    .line 1899
    invoke-static {p4}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v1

    .line 1898
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method getForegroundServiceTotalDurations(Ljava/lang/String;IJI)J
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "now"    # J
    .param p5, "serviceType"    # I

    .line 1888
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v1

    .line 1889
    invoke-static {p5}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v6

    .line 1888
    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(Ljava/lang/String;IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method getForegroundServiceTotalDurationsSince(IJJI)J
    .registers 15
    .param p1, "uid"    # I
    .param p2, "since"    # J
    .param p4, "now"    # J
    .param p6, "serviceType"    # I

    .line 1919
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v1

    .line 1920
    invoke-static {p6}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v7

    .line 1919
    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppFGSTracker;->getTotalDurationsSince(IJJI)J

    move-result-wide v0

    return-wide v0
.end method

.method getForegroundServiceTotalDurationsSince(Ljava/lang/String;IJJI)J
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "since"    # J
    .param p5, "now"    # J
    .param p7, "serviceType"    # I

    .line 1909
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v2

    .line 1910
    invoke-static/range {p7 .. p7}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v9

    .line 1909
    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/AppFGSTracker;->getTotalDurationsSince(Ljava/lang/String;IJJI)J

    move-result-wide v1

    return-wide v1
.end method

.method getLock()Ljava/lang/Object;
    .registers 2

    .line 2973
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method getMediaSessionTotalDurations(IJ)J
    .registers 6
    .param p1, "uid"    # I
    .param p2, "now"    # J

    .line 1934
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/AppMediaSessionTracker;->getTotalDurations(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getMediaSessionTotalDurations(Ljava/lang/String;IJ)J
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "now"    # J

    .line 1927
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/AppMediaSessionTracker;->getTotalDurations(Ljava/lang/String;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getMediaSessionTotalDurationsSince(IJJ)J
    .registers 13
    .param p1, "uid"    # I
    .param p2, "since"    # J
    .param p4, "now"    # J

    .line 1950
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppMediaSessionTracker;->getTotalDurationsSince(IJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getMediaSessionTotalDurationsSince(Ljava/lang/String;IJJ)J
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "since"    # J
    .param p5, "now"    # J

    .line 1942
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppMediaSessionTracker()Lcom/android/server/am/AppMediaSessionTracker;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppMediaSessionTracker;->getTotalDurationsSince(Ljava/lang/String;IJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getPackageName(I)Ljava/lang/String;
    .registers 3
    .param p1, "pid"    # I

    .line 3002
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRestrictionLevel(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 1857
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    move-result v0

    return v0
.end method

.method getRestrictionLevel(ILjava/lang/String;)I
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1864
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method getRestrictionLevel(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1871
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .registers 15
    .param p1, "uid"    # I
    .param p2, "since"    # J
    .param p4, "now"    # J
    .param p6, "types"    # I

    .line 2013
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppBatteryExemptionTracker()Lcom/android/server/am/AppBatteryExemptionTracker;

    move-result-object v1

    .line 2014
    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppBatteryExemptionTracker;->getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v0

    .line 2013
    return-object v0
.end method

.method getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .registers 3
    .param p1, "uid"    # I

    .line 2021
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUidBatteryUsageProvider()Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;->getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v0

    return-object v0
.end method

.method handleCancelRequestBgRestricted(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2361
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V

    .line 2362
    return-void
.end method

.method handleRequestBgRestricted(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2353
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postRequestBgRestrictedIfNecessary(Ljava/lang/String;I)V

    .line 2354
    return-void
.end method

.method handleUidActive(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 2746
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2747
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    .line 2748
    .local v1, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2749
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    new-instance v4, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/AppRestrictionController;ILcom/android/server/usage/AppStandbyInternal;I)V

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V

    .line 2758
    .end local v1    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v2    # "userId":I
    monitor-exit v0

    .line 2759
    return-void

    .line 2758
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method handleUidGone(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 2371
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 2372
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidGone(I)V

    .line 2371
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2374
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_17
    return-void
.end method

.method handleUidInactive(IZ)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 2724
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mTmpRunnables:Ljava/util/ArrayList;

    .line 2725
    .local v0, "pendingTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2726
    :try_start_5
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v2

    .line 2727
    .local v2, "index":I
    if-gez v2, :cond_f

    .line 2728
    monitor-exit v1

    return-void

    .line 2730
    :cond_f
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v3

    .line 2731
    .local v3, "numPackages":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v3, :cond_28

    .line 2732
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 2733
    .local v5, "pendingTask":Ljava/lang/Runnable;
    if-eqz v5, :cond_25

    .line 2734
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2731
    .end local v5    # "pendingTask":Ljava/lang/Runnable;
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 2737
    .end local v4    # "i":I
    :cond_28
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 2738
    .end local v2    # "index":I
    .end local v3    # "numPackages":I
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_45

    .line 2739
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_33
    if-ge v1, v2, :cond_41

    .line 2740
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 2739
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 2742
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_41
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2743
    return-void

    .line 2738
    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v2
.end method

.method handleUidProcStateChanged(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 2365
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 2366
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;->onUidProcStateChanged(II)V

    .line 2365
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2368
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_17
    return-void
.end method

.method hasForegroundServiceNotifications(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 2004
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotifications(I)Z

    move-result v0

    return v0
.end method

.method hasForegroundServiceNotifications(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1997
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotifications(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method hasForegroundServices(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 1990
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServices(I)Z

    move-result v0

    return v0
.end method

.method hasForegroundServices(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1983
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppFGSTracker()Lcom/android/server/am/AppFGSTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServices(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isAutoRestrictAbusiveAppEnabled()Z
    .registers 2

    .line 1879
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    return v0
.end method

.method isBgAutoRestrictedBucketFeatureFlagEnabled()Z
    .registers 2

    .line 3338
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    return v0
.end method

.method isOnDeviceIdleAllowlist(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 2762
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2764
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    .line 2765
    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    .line 2764
    :goto_18
    return v1
.end method

.method isOnSystemDeviceIdleAllowlist(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 2769
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2771
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleAllowlist:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mSystemDeviceIdleExceptIdleAllowlist:Landroid/util/ArraySet;

    .line 2772
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    .line 2771
    :goto_20
    return v1
.end method

.method synthetic lambda$applyRestrictionLevel$1$com-android-server-am-AppRestrictionController(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;IIIIILcom/android/server/am/AppRestrictionController$TrackerInfo;)V
    .registers 16
    .param p1, "appStandbyInternal"    # Lcom/android/server/usage/AppStandbyInternal;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "localReason"    # I
    .param p5, "localSubReason"    # I
    .param p6, "curLevel"    # I
    .param p7, "level"    # I
    .param p8, "localTrackerInfo"    # Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 2217
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {p1, p2, v0, p4, p5}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    .line 2219
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p6

    move v4, p7

    move-object v5, p8

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->logAppBackgroundRestrictionInfo(Ljava/lang/String;IIILcom/android/server/am/AppRestrictionController$TrackerInfo;I)V

    .line 2221
    return-void
.end method

.method synthetic lambda$dispatchAutoRestrictedBucketFeatureFlagChanged$6$com-android-server-am-AppRestrictionController(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V
    .registers 8
    .param p1, "pendingTasks"    # Ljava/util/ArrayList;
    .param p2, "newValue"    # Z
    .param p3, "appStandbyInternal"    # Lcom/android/server/usage/AppStandbyInternal;
    .param p4, "uid"    # Ljava/lang/Integer;

    .line 2314
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda7;-><init>(Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V

    .line 2326
    return-void
.end method

.method synthetic lambda$handleUidActive$9$com-android-server-am-AppRestrictionController(ILcom/android/server/usage/AppStandbyInternal;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "appStandbyInternal"    # Lcom/android/server/usage/AppStandbyInternal;
    .param p3, "userId"    # I
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "level"    # Ljava/lang/Integer;
    .param p6, "reason"    # Ljava/lang/Integer;

    .line 2750
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v0, v0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    if-eqz v0, :cond_19

    .line 2751
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_19

    .line 2752
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p4, p3, p6}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V

    invoke-virtual {v0, p1, p4, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1f

    .line 2755
    :cond_19
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p4, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2757
    :goto_1f
    return-void
.end method

.method synthetic lambda$onSystemReady$0$com-android-server-am-AppRestrictionController()V
    .registers 4

    .line 1543
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 1544
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    .line 1543
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1546
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_17
    return-void
.end method

.method onSystemReady()V
    .registers 5

    .line 1527
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mBgExecutor:Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1529
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->start()V

    .line 1530
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->initBgRestrictionExemptioFromSysConfig()V

    .line 1531
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->initRestrictionStates()V

    .line 1532
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->initSystemModuleNames()V

    .line 1533
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->initRolesInInterest()V

    .line 1534
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->registerForUidObservers()V

    .line 1535
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->registerForSystemBroadcasts()V

    .line 1536
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->onSystemReady()V

    .line 1537
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStateTracker()Lcom/android/server/AppStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBackgroundRestrictionListener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    invoke-interface {v0, v1}, Lcom/android/server/AppStateTracker;->addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    .line 1539
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppIdleStateChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    invoke-interface {v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1540
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgExecutor:Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 1542
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    new-instance v2, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController$Injector;->scheduleInitTrackers(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1547
    return-void
.end method

.method postLongRunningFgsIfNecessary(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2994
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->postLongRunningFgsIfNecessary(Ljava/lang/String;I)V

    .line 2995
    return-void
.end method

.method refreshAppRestrictionLevelForUid(IIIZ)V
    .registers 26
    .param p1, "uid"    # I
    .param p2, "reason"    # I
    .param p3, "subReason"    # I
    .param p4, "allowRequestBgRestricted"    # Z

    .line 1719
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move/from16 v10, p1

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    .line 1720
    .local v11, "packages":[Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1721
    return-void

    .line 1723
    :cond_15
    iget-object v0, v9, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v12

    .line 1724
    .local v12, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 1725
    .local v13, "userId":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1726
    .local v14, "now":J
    array-length v8, v11

    const/4 v0, 0x0

    move v7, v0

    :goto_26
    if-ge v7, v8, :cond_6d

    aget-object v16, v11, v7

    .line 1727
    .local v16, "pkg":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v1, v12

    move-object/from16 v2, v16

    move v3, v13

    move-wide v4, v14

    invoke-interface/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v17

    .line 1728
    .local v17, "curBucket":I
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, p1

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(IILjava/lang/String;IZZ)Landroid/util/Pair;

    move-result-object v6

    .line 1735
    .local v6, "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v5, v17

    move-object/from16 v19, v6

    .end local v6    # "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    .local v19, "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    move/from16 v6, v18

    move/from16 v18, v7

    move/from16 v7, p2

    move/from16 v20, v8

    move/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 1726
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v17    # "curBucket":I
    .end local v19    # "levelTypePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/am/AppRestrictionController$TrackerInfo;>;"
    add-int/lit8 v7, v18, 0x1

    move/from16 v8, v20

    goto :goto_26

    .line 1738
    :cond_6d
    return-void
.end method

.method resetRestrictionSettings()V
    .registers 3

    .line 1551
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1552
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->reset()V

    .line 1553
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 1554
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->initRestrictionStates()V

    .line 1555
    return-void

    .line 1553
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method setDeviceIdleAllowlist([I[I)V
    .registers 3
    .param p1, "allAppids"    # [I
    .param p2, "exceptIdleAppids"    # [I

    .line 2776
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleAllowlist:[I

    .line 2777
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mDeviceIdleExceptIdleAllowlist:[I

    .line 2778
    return-void
.end method

.method tearDown()V
    .registers 2

    .line 1559
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1560
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->unregisterForUidObservers()V

    .line 1561
    invoke-direct {p0}, Lcom/android/server/am/AppRestrictionController;->unregisterForSystemBroadcasts()V

    .line 1562
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeXml()V

    .line 1563
    return-void
.end method
