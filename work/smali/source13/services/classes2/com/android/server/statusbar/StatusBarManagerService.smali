.class public Lcom/android/server/statusbar/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarManagerService$UiState;,
        Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;,
        Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;
    }
.end annotation


# static fields
.field private static final LOCK_DOWN_COLLAPSE_STATUS_BAR:J = 0xa503ff5L

.field static final REQUEST_LISTENING_MUST_MATCH_PACKAGE:J = 0xa445ae6L

.field private static final REQUEST_TIME_OUT:J

.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "StatusBarManagerService"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private mBiometricContextListener:Landroid/hardware/biometrics/IBiometricContextListener;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private final mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayUiState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/statusbar/StatusBarManagerService$UiState;",
            ">;"
        }
    .end annotation
.end field

.field private mForceUpdateDisable:Z

.field private mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

.field private final mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

.field private final mHandler:Landroid/os/Handler;

.field private final mIcons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

.field private final mSysUiVisToken:Landroid/os/IBinder;

.field private final mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

.field private mTracingEnabled:Z

.field private mUdfpsHbmListener:Landroid/hardware/fingerprint/IUdfpsHbmListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeathRecipient(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayUiState(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGlobalActionListener(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTileRequestTracker(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/TileRequestTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBar(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/internal/statusbar/IStatusBar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/statusbar/StatusBarManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGlobalActionListener(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNotificationDelegate(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUdfpsHbmListener(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/hardware/fingerprint/IUdfpsHbmListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mUdfpsHbmListener:Landroid/hardware/fingerprint/IUdfpsHbmListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearTileAddRequest(Lcom/android/server/statusbar/StatusBarManagerService;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$menforceStatusBarService(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetUiState(Lcom/android/server/statusbar/StatusBarManagerService;I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyBarAttachChanged(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDisableFlags(Lcom/android/server/statusbar/StatusBarManagerService;IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->setDisableFlags(IILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 186
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/statusbar/StatusBarManagerService;->REQUEST_TIME_OUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 272
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 158
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 163
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 165
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 166
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient-IA;)V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    .line 174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mForceUpdateDisable:Z

    .line 178
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 184
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    .line 321
    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/statusbar/StatusBarManagerService$1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 699
    new-instance v5, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-direct {v5, p0}, Lcom/android/server/statusbar/StatusBarManagerService$2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    .line 273
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 275
    const-class v6, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v6, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 276
    const-class v4, Lcom/android/server/policy/GlobalActionsProvider;

    invoke-static {v4, v5}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 279
    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    invoke-direct {v4, v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService$UiState-IA;)V

    move-object v2, v4

    .line 280
    .local v2, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    nop

    .line 283
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 284
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 285
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 286
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 287
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 289
    new-instance v0, Lcom/android/server/statusbar/TileRequestTracker;

    invoke-direct {v0, p1}, Lcom/android/server/statusbar/TileRequestTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    .line 290
    new-instance v0, Lcom/android/server/statusbar/SessionMonitor;

    invoke-direct {v0, p1}, Lcom/android/server/statusbar/SessionMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    .line 291
    return-void
.end method

.method private cancelRequestAddTileInternal(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1987
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    .line 1988
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_16

    .line 1990
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->cancelRequestAddTile(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 1993
    goto :goto_16

    .line 1991
    :catch_d
    move-exception v0

    .line 1992
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1995
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method private checkCallingUidPackage(Ljava/lang/String;II)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 1787
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 1788
    .local v0, "packageUid":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v1, v2, :cond_13

    .line 1792
    return-void

    .line 1789
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to the calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkCanCollapseStatusBar(Ljava/lang/String;)Z
    .registers 7
    .param p1, "method"    # Ljava/lang/String;

    .line 1325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1326
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1327
    .local v1, "pid":I
    const-wide/32 v2, 0xa503ff5

    invoke-static {v2, v3, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1328
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    goto :goto_54

    .line 1330
    :cond_15
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR"

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_54

    .line 1332
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 1333
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canCloseSystemDialogs(II)Z

    move-result v2

    if-nez v2, :cond_54

    .line 1334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: Method "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "() requires permission "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ignoring call."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatusBarManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const/4 v2, 0x0

    return v2

    .line 1340
    :cond_54
    :goto_54
    const/4 v2, 0x1

    return v2
.end method

.method private clearTileAddRequest(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1998
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1999
    :try_start_3
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 2000
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 13
    .param p1, "displayId"    # I
    .param p2, "userId"    # I
    .param p3, "what"    # I
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "pkg"    # Ljava/lang/String;
    .param p6, "whichFlag"    # I

    .line 1028
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 1031
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v0

    .line 1032
    .local v0, "net1":I
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v2

    .line 1033
    .local v2, "net2":I
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v3

    .line 1034
    .local v3, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    invoke-static {v3, v0, v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mdisableEquals(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z

    move-result v4

    if-nez v4, :cond_32

    .line 1035
    invoke-static {v3, v0, v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$msetDisabled(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V

    .line 1036
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1044
    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->disableStatusbarLocked(III)V

    goto :goto_39

    .line 1045
    :cond_32
    iget-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mForceUpdateDisable:Z

    if-eqz v4, :cond_39

    .line 1046
    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->disableStatusbarLocked(III)V

    .line 1048
    :cond_39
    :goto_39
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-nez v4, :cond_3f

    .line 1049
    iput-boolean v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mForceUpdateDisable:Z

    .line 1051
    :cond_3f
    return-void
.end method

.method private disableStatusbarLocked(III)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "net1"    # I
    .param p3, "net2"    # I

    .line 1054
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 1055
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mForceUpdateDisable:Z

    .line 1057
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->disable(III)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 1059
    goto :goto_e

    .line 1058
    :catch_d
    move-exception v0

    .line 1061
    :cond_e
    :goto_e
    return-void
.end method

.method private enforceBiometricDialog()V
    .registers 4

    .line 1309
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIOMETRIC_DIALOG"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    return-void
.end method

.method private enforceExpandStatusBar()V
    .registers 4

    .line 1299
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    return-void
.end method

.method private enforceMediaContentControl()V
    .registers 4

    .line 1315
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    return-void
.end method

.method private enforceStatusBar()V
    .registers 4

    .line 1294
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method private enforceStatusBarOrShell()V
    .registers 3

    .line 1287
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_9

    .line 1288
    return-void

    .line 1290
    :cond_9
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1291
    return-void
.end method

.method private enforceStatusBarService()V
    .registers 4

    .line 1304
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    return-void
.end method

.method private findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation

    .line 2258
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2259
    .local v0, "numRecords":I
    const/4 v1, 0x0

    .line 2261
    .local v1, "record":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_1f

    .line 2262
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 2263
    .local v3, "r":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget-object v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_1c

    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p2, :cond_1c

    .line 2264
    move-object v1, v3

    .line 2265
    goto :goto_1f

    .line 2261
    .end local v3    # "r":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2269
    :cond_1f
    :goto_1f
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private getOverlayManager()Landroid/content/om/IOverlayManager;
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez v0, :cond_1c

    .line 296
    nop

    .line 297
    const-string/jumbo v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 298
    if-nez v0, :cond_1c

    .line 299
    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no OVERLAY_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1c
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    return-object v0
.end method

.method private static final getUiContext()Landroid/content/Context;
    .registers 1

    .line 2338
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method private getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .registers 5
    .param p1, "displayId"    # I

    .line 1213
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1214
    .local v0, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    if-nez v0, :cond_16

    .line 1215
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService$UiState-IA;)V

    move-object v0, v1

    .line 1216
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1218
    :cond_16
    return-object v0
.end method

.method private isComponentValidTileService(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;
    .registers 12
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1795
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1796
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1797
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 1798
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1799
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    .line 1797
    const-wide/16 v5, 0x0

    move-object v3, v0

    move v7, p2

    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1800
    .local v1, "r":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1801
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 1800
    invoke-virtual {v2, p1, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getComponentEnabledSetting(Landroid/content/ComponentName;II)I

    move-result v2

    .line 1802
    .local v2, "enabled":I
    if-eqz v1, :cond_49

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_49

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v3, v3, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 1804
    invoke-direct {p0, v3, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->resolveEnabledComponent(ZI)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 1805
    const-string v4, "android.permission.BIND_QUICK_SETTINGS_TILE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1806
    return-object v1

    .line 1808
    :cond_49
    const/4 v3, 0x0

    return-object v3
.end method

.method private isDisable2FlagSet(I)Z
    .registers 5
    .param p1, "target2"    # I

    .line 727
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mgetDisabled2(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v0

    .line 728
    .local v0, "disabled2":I
    and-int v2, v0, p1

    if-ne v2, p1, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method private isPackageSupported(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2083
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2084
    return v0

    .line 2087
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 2088
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    .line 2087
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_14} :catch_18

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0

    .line 2089
    :catch_18
    move-exception v1

    .line 2094
    return v0
.end method

.method static synthetic lambda$reboot$5(ZLjava/lang/String;)V
    .registers 4
    .param p0, "safeMode"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .line 1472
    if-eqz p0, :cond_b

    .line 1473
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    goto :goto_13

    .line 1475
    :cond_b
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1477
    :goto_13
    return-void
.end method

.method static synthetic lambda$shutdown$4(Ljava/lang/String;)V
    .registers 3
    .param p0, "reason"    # Ljava/lang/String;

    .line 1449
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private notifyBarAttachChanged()V
    .registers 3

    .line 1377
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1384
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1390
    return-void
.end method

.method private resolveEnabledComponent(ZI)Z
    .registers 4
    .param p1, "defaultValue"    # Z
    .param p2, "pmResult"    # I

    .line 1813
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 1814
    return v0

    .line 1816
    :cond_4
    if-nez p2, :cond_7

    .line 1817
    return p1

    .line 1819
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private setDisableFlags(IILjava/lang/String;)V
    .registers 13
    .param p1, "displayId"    # I
    .param p2, "flags"    # I
    .param p3, "cause"    # Ljava/lang/String;

    .line 1189
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1191
    const v0, -0x7ff0001

    and-int/2addr v0, p2

    .line 1192
    .local v0, "unknownFlags":I
    if-eqz v0, :cond_2a

    .line 1193
    const-string v1, "StatusBarManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown disable flags: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1199
    :cond_2a
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1200
    :try_start_2d
    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    const/4 v8, 0x1

    move-object v2, p0

    move v3, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 1201
    monitor-exit v1

    .line 1202
    return-void

    .line 1201
    :catchall_3b
    move-exception v2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_3b

    throw v2
.end method


# virtual methods
.method public addTile(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 796
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 798
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 800
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->addQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 802
    goto :goto_e

    .line 801
    :catch_d
    move-exception v0

    .line 804
    :cond_e
    :goto_e
    return-void
.end method

.method public cancelRequestAddTile(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1982
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1983
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->cancelRequestAddTileInternal(Ljava/lang/String;)V

    .line 1984
    return-void
.end method

.method public clearInlineReplyUriPermissions(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1724
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1725
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1726
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1728
    .local v1, "identity":J
    :try_start_b
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v3, p1, v0}, Lcom/android/server/notification/NotificationDelegate;->clearInlineReplyUriPermissions(Ljava/lang/String;I)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    .line 1730
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1731
    nop

    .line 1732
    return-void

    .line 1730
    :catchall_15
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1731
    throw v3
.end method

.method public clearNotificationEffects()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1414
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1415
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1417
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1419
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1420
    nop

    .line 1421
    return-void

    .line 1419
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1420
    throw v2
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 818
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 820
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 822
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->clickQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 824
    goto :goto_e

    .line 823
    :catch_d
    move-exception v0

    .line 826
    :cond_e
    :goto_e
    return-void
.end method

.method public collapsePanels()V
    .registers 2

    .line 753
    const-string v0, "collapsePanels"

    invoke-direct {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCanCollapseStatusBar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 754
    return-void

    .line 757
    :cond_9
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_14

    .line 759
    :try_start_d
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 761
    goto :goto_14

    .line 760
    :catch_13
    move-exception v0

    .line 763
    :cond_14
    :goto_14
    return-void
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 976
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 977
    return-void
.end method

.method public disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 1003
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 1004
    return-void
.end method

.method public disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 13
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1015
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1017
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1018
    const/4 v2, 0x0

    const/4 v7, 0x2

    move-object v1, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_d
    invoke-direct/range {v1 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 1019
    monitor-exit v0

    .line 1020
    return-void

    .line 1019
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v1
.end method

.method public disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 13
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 982
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 984
    const/high16 v0, 0x120000

    and-int/2addr v0, p1

    if-eqz v0, :cond_34

    .line 985
    const-string v0, "MIUI_SBMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableForUser what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_34
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_3e
    invoke-direct/range {v1 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 991
    monitor-exit v0

    .line 992
    return-void

    .line 991
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_43

    throw v1
.end method

.method public dismissInattentiveSleepWarning(Z)V
    .registers 3
    .param p1, "animated"    # Z

    .line 1766
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1767
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 1769
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->dismissInattentiveSleepWarning(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 1771
    goto :goto_e

    .line 1770
    :catch_d
    move-exception v0

    .line 1773
    :cond_e
    :goto_e
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2291
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "StatusBarManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2293
    :cond_b
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2294
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7a

    .line 2295
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2296
    .local v2, "key":I
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 2297
    .local v3, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mDisabled1=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mgetDisabled1(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mDisabled2=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mgetDisabled2(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2294
    .end local v2    # "key":I
    .end local v3    # "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2301
    .end local v1    # "i":I
    :cond_7a
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2302
    .local v1, "N":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDisableRecords.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2303
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_97
    if-ge v2, v1, :cond_c4

    .line 2304
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 2305
    .local v3, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2303
    .end local v3    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    .line 2307
    .end local v2    # "i":I
    :cond_c4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCurrentUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2308
    const-string v2, "  mIcons="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2309
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_eb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2310
    .local v3, "slot":Ljava/lang/String;
    const-string v4, "    "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2311
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2312
    const-string v4, " -> "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2313
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 2314
    .local v4, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2315
    iget-object v5, v4, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_126

    .line 2316
    const-string v5, " \""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2317
    iget-object v5, v4, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2318
    const-string v5, "\""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2320
    :cond_126
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2321
    .end local v3    # "slot":Ljava/lang/String;
    .end local v4    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_eb

    .line 2323
    :cond_12a
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_12d
    .catchall {:try_start_f .. :try_end_12d} :catchall_184

    .line 2324
    :try_start_12d
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2325
    .local v3, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v2
    :try_end_139
    .catchall {:try_start_12d .. :try_end_139} :catchall_181

    .line 2326
    :try_start_139
    const-string v2, "  mCurrentRequestAddTilePackages=["

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2327
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2328
    .local v2, "reqN":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_143
    if-ge v4, v2, :cond_16a

    .line 2329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2328
    add-int/lit8 v4, v4, 0x1

    goto :goto_143

    .line 2331
    .end local v4    # "i":I
    :cond_16a
    const-string v4, "  ]"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2332
    new-instance v4, Landroid/util/IndentingPrintWriter;

    const-string v5, "  "

    invoke-direct {v4, p2, v5}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2333
    .local v4, "ipw":Landroid/util/IndentingPrintWriter;
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move-result-object v6

    invoke-virtual {v5, p1, v6, p3}, Lcom/android/server/statusbar/TileRequestTracker;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 2334
    .end local v1    # "N":I
    .end local v2    # "reqN":I
    .end local v3    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "ipw":Landroid/util/IndentingPrintWriter;
    monitor-exit v0
    :try_end_180
    .catchall {:try_start_139 .. :try_end_180} :catchall_184

    .line 2335
    return-void

    .line 2325
    .restart local v1    # "N":I
    :catchall_181
    move-exception v3

    :try_start_182
    monitor-exit v2
    :try_end_183
    .catchall {:try_start_182 .. :try_end_183} :catchall_181

    .end local p0    # "this":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_183
    throw v3

    .line 2334
    .end local v1    # "N":I
    .restart local p0    # "this":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_184
    move-exception v1

    monitor-exit v0
    :try_end_186
    .catchall {:try_start_183 .. :try_end_186} :catchall_184

    throw v1
.end method

.method public expandNotificationsPanel()V
    .registers 2

    .line 737
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 739
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->isDisable2FlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 740
    return-void

    .line 743
    :cond_b
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_16

    .line 745
    :try_start_f
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 747
    goto :goto_16

    .line 746
    :catch_15
    move-exception v0

    .line 749
    :cond_16
    :goto_16
    return-void
.end method

.method public expandSettingsPanel(Ljava/lang/String;)V
    .registers 3
    .param p1, "subPanel"    # Ljava/lang/String;

    .line 785
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 787
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 789
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 791
    goto :goto_e

    .line 790
    :catch_d
    move-exception v0

    .line 793
    :cond_e
    :goto_e
    return-void
.end method

.method gatherDisableActionsLocked(II)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 2274
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2276
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2277
    .local v1, "net":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_1e

    .line 2278
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 2279
    .local v3, "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p1, :cond_1b

    .line 2280
    invoke-virtual {v3, p2}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->getFlags(I)I

    move-result v4

    or-int/2addr v1, v4

    .line 2277
    .end local v3    # "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2283
    .end local v2    # "i":I
    :cond_1e
    return v1
.end method

.method public getDisableFlags(Landroid/os/IBinder;I)[I
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1072
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1074
    const/4 v0, 0x0

    .line 1075
    .local v0, "disable1":I
    const/4 v1, 0x0

    .line 1076
    .local v1, "disable2":I
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1078
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1079
    .local v3, "record":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    if-eqz v3, :cond_18

    .line 1080
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    move v0, v4

    .line 1081
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    move v1, v4

    .line 1083
    .end local v3    # "record":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_23

    .line 1085
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2

    .line 1083
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v3
.end method

.method public getNavBarMode()I
    .registers 7

    .line 2066
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2068
    const/4 v0, 0x0

    .line 2069
    .local v0, "navBarKidsMode":I
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 2070
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2072
    .local v2, "userIdentity":J
    :try_start_a
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "nav_bar_kids_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4
    :try_end_17
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a .. :try_end_17} :catch_22
    .catchall {:try_start_a .. :try_end_17} :catchall_1d

    move v0, v4

    .line 2077
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2078
    nop

    .line 2079
    return v0

    .line 2077
    :catchall_1d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2078
    throw v4

    .line 2074
    :catch_22
    move-exception v4

    .line 2075
    .local v4, "ex":Landroid/provider/Settings$SettingNotFoundException;
    nop

    .line 2077
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2075
    return v0
.end method

.method public getStatusBarIcons()[Ljava/lang/String;
    .registers 3

    .line 2026
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1711
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1712
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1713
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1715
    .local v7, "identity":J
    :try_start_b
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/server/notification/NotificationDelegate;->grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1a

    .line 1718
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1719
    nop

    .line 1720
    return-void

    .line 1718
    :catchall_1a
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1719
    throw v0
.end method

.method public handleSystemKey(I)V
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 830
    const-string v0, "handleSystemKey"

    invoke-direct {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCanCollapseStatusBar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 831
    return-void

    .line 834
    :cond_9
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_14

    .line 836
    :try_start_d
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->handleSystemKey(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 838
    goto :goto_14

    .line 837
    :catch_13
    move-exception v0

    .line 840
    :cond_14
    :goto_14
    return-void
.end method

.method public hideAuthenticationDialog(J)V
    .registers 4
    .param p1, "requestId"    # J

    .line 913
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 914
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 916
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideAuthenticationDialog(J)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 918
    goto :goto_e

    .line 917
    :catch_d
    move-exception v0

    .line 920
    :cond_e
    :goto_e
    return-void
.end method

.method public hideCurrentInputMethodForBubbles()V
    .registers 5

    .line 1698
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1701
    .local v0, "token":J
    :try_start_7
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .line 1704
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1705
    nop

    .line 1706
    return-void

    .line 1704
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1705
    throw v2
.end method

.method public isTracing()Z
    .registers 2

    .line 970
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTracingEnabled:Z

    return v0
.end method

.method synthetic lambda$disableLocked$0$com-android-server-statusbar-StatusBarManagerService(I)V
    .registers 3
    .param p1, "net1"    # I

    .line 1036
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onSetDisabled(I)V

    return-void
.end method

.method synthetic lambda$notifyBarAttachChanged$2$com-android-server-statusbar-StatusBarManagerService()V
    .registers 3

    .line 1378
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    if-nez v0, :cond_5

    return-void

    .line 1379
    :cond_5
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0, v1}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsAvailableChanged(Z)V

    .line 1380
    return-void
.end method

.method synthetic lambda$notifyBarAttachChanged$3$com-android-server-statusbar-StatusBarManagerService()V
    .registers 3

    .line 1385
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1386
    :try_start_3
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mUdfpsHbmListener:Landroid/hardware/fingerprint/IUdfpsHbmListener;

    invoke-virtual {p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V

    .line 1387
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBiometricContextListener:Landroid/hardware/biometrics/IBiometricContextListener;

    invoke-virtual {p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 1388
    monitor-exit v0

    .line 1389
    return-void

    .line 1388
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method synthetic lambda$restart$6$com-android-server-statusbar-StatusBarManagerService()V
    .registers 2

    .line 1492
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->restart()V

    .line 1493
    return-void
.end method

.method synthetic lambda$setImeWindowStatus$1$com-android-server-statusbar-StatusBarManagerService(ILandroid/os/IBinder;IIZ)V
    .registers 13
    .param p1, "displayId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "vis"    # I
    .param p4, "backDisposition"    # I
    .param p5, "showImeSwitcher"    # Z

    .line 1178
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-nez v0, :cond_5

    return-void

    .line 1180
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBar;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_11

    .line 1182
    :catch_10
    move-exception v0

    :goto_11
    nop

    .line 1183
    return-void
.end method

.method manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "which"    # I

    .line 2226
    invoke-direct {p0, p3, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;

    move-result-object v0

    .line 2227
    .local v0, "match":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2228
    .local v1, "i":I
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 2231
    .local v2, "record":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_24

    .line 2232
    if-eqz v2, :cond_23

    .line 2233
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2234
    iget-object v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2236
    :cond_23
    return-void

    .line 2240
    :cond_24
    if-eqz v2, :cond_3a

    .line 2241
    invoke-virtual {v2, p2, p5, p4}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 2242
    invoke-virtual {v2}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2243
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2244
    iget-object v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2246
    :cond_39
    return-void

    .line 2250
    :cond_3a
    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    invoke-direct {v3, p0, p1, p3}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;)V

    move-object v2, v3

    .line 2251
    invoke-virtual {v2, p2, p5, p4}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 2252
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2253
    return-void
.end method

.method public onBiometricAuthenticated(I)V
    .registers 3
    .param p1, "modality"    # I

    .line 880
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 881
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 883
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricAuthenticated(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 885
    goto :goto_e

    .line 884
    :catch_d
    move-exception v0

    .line 887
    :cond_e
    :goto_e
    return-void
.end method

.method public onBiometricError(III)V
    .registers 5
    .param p1, "modality"    # I
    .param p2, "error"    # I
    .param p3, "vendorCode"    # I

    .line 902
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 903
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 905
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricError(III)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 907
    goto :goto_e

    .line 906
    :catch_d
    move-exception v0

    .line 909
    :cond_e
    :goto_e
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;)V
    .registers 4
    .param p1, "modality"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 891
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 892
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 894
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricHelp(ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 896
    goto :goto_e

    .line 895
    :catch_d
    move-exception v0

    .line 898
    :cond_e
    :goto_e
    return-void
.end method

.method public onBubbleMetadataFlagChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 1687
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1688
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1690
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1692
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1693
    nop

    .line 1694
    return-void

    .line 1692
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1693
    throw v2
.end method

.method public onClearAllNotifications(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1663
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1665
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1666
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1668
    .local v2, "identity":J
    :try_start_f
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v0, v1, p1}, Lcom/android/server/notification/NotificationDelegate;->onClearAll(III)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 1670
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1671
    nop

    .line 1672
    return-void

    .line 1670
    :catchall_19
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1671
    throw v4
.end method

.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 306
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 316
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 310
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_3
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 312
    monitor-exit v0

    .line 313
    return-void

    .line 312
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public onGlobalActionsHidden()V
    .registers 4

    .line 1513
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1514
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1516
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_17

    if-nez v2, :cond_f

    .line 1519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1516
    return-void

    .line 1517
    :cond_f
    :try_start_f
    invoke-interface {v2}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsDismissed()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    .line 1519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1520
    nop

    .line 1521
    return-void

    .line 1519
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1520
    throw v2
.end method

.method public onGlobalActionsShown()V
    .registers 4

    .line 1501
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1502
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1504
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_17

    if-nez v2, :cond_f

    .line 1507
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1504
    return-void

    .line 1505
    :cond_f
    :try_start_f
    invoke-interface {v2}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsShown()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    .line 1507
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1508
    nop

    .line 1509
    return-void

    .line 1507
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1508
    throw v2
.end method

.method public onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .registers 20
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "actionIndex"    # I
    .param p3, "action"    # Landroid/app/Notification$Action;
    .param p4, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;
    .param p5, "generatedByAssistant"    # Z

    .line 1540
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1541
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1542
    .local v9, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1543
    .local v10, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1545
    .local v11, "identity":J
    move-object v13, p0

    :try_start_10
    iget-object v1, v13, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move v2, v9

    move v3, v10

    move-object v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/server/notification/NotificationDelegate;->onNotificationActionClick(IILjava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_25

    .line 1548
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1549
    nop

    .line 1550
    return-void

    .line 1548
    :catchall_25
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1549
    throw v0
.end method

.method public onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isBubble"    # Z
    .param p3, "flags"    # I

    .line 1676
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1679
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/notification/NotificationDelegate;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1681
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1682
    nop

    .line 1683
    return-void

    .line 1681
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1682
    throw v2
.end method

.method public onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 22
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "dismissalSurface"    # I
    .param p5, "dismissalSentiment"    # I
    .param p6, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;

    .line 1573
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1574
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1575
    .local v10, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1576
    .local v11, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1578
    .local v12, "identity":J
    move-object v14, p0

    :try_start_10
    iget-object v1, v14, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move v2, v10

    move v3, v11

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v1 .. v9}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_28

    .line 1581
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1582
    nop

    .line 1583
    return-void

    .line 1581
    :catchall_28
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1582
    throw v0
.end method

.method public onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;

    .line 1525
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1526
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1527
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1528
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1530
    .local v2, "identity":J
    :try_start_f
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v0, v1, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 1532
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1533
    nop

    .line 1534
    return-void

    .line 1532
    :catchall_19
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1533
    throw v4
.end method

.method public onNotificationDirectReplied(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1614
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1615
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1617
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationDirectReplied(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1619
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1620
    nop

    .line 1621
    return-void

    .line 1619
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1620
    throw v2
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 24
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "uid"    # I
    .param p5, "initialPid"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .line 1555
    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1556
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1557
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1558
    .local v12, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1561
    .local v13, "identity":J
    move-object/from16 v15, p0

    :try_start_11
    iget-object v1, v15, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move v2, v11

    move v3, v12

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/server/notification/NotificationDelegate;->onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_2b

    .line 1564
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1565
    nop

    .line 1566
    return-void

    .line 1564
    :catchall_2b
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1565
    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z
    .param p4, "location"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1602
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1603
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1605
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationDelegate;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1608
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1609
    nop

    .line 1610
    return-void

    .line 1608
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1609
    throw v2
.end method

.method public onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "feedback"    # Landroid/os/Bundle;

    .line 1736
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1737
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1739
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1742
    nop

    .line 1743
    return-void

    .line 1741
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1742
    throw v2
.end method

.method public onNotificationSettingsViewed(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1652
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1653
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1655
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSettingsViewed(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1657
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1658
    nop

    .line 1659
    return-void

    .line 1657
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1658
    throw v2
.end method

.method public onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    .registers 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "replyIndex"    # I
    .param p3, "reply"    # Ljava/lang/CharSequence;
    .param p4, "notificationLocation"    # I
    .param p5, "modifiedBeforeSending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1640
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1641
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1643
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_16

    .line 1646
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1647
    nop

    .line 1648
    return-void

    .line 1646
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1647
    throw v2
.end method

.method public onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    .registers 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "smartReplyCount"    # I
    .param p3, "smartActionCount"    # I
    .param p4, "generatedByAssistant"    # Z
    .param p5, "editBeforeSending"    # Z

    .line 1626
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1629
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_16

    .line 1632
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1633
    nop

    .line 1634
    return-void

    .line 1632
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1633
    throw v2
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 6
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1589
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1590
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1592
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1595
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1596
    nop

    .line 1597
    return-void

    .line 1595
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1596
    throw v2
.end method

.method public onPanelHidden()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1425
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1426
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1428
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->onPanelHidden()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1430
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1431
    nop

    .line 1432
    return-void

    .line 1430
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1431
    throw v2
.end method

.method public onPanelRevealed(ZI)V
    .registers 6
    .param p1, "clearNotificationEffects"    # Z
    .param p2, "numItems"    # I

    .line 1403
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1406
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onPanelRevealed(ZI)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1408
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1409
    nop

    .line 1410
    return-void

    .line 1408
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1409
    throw v2
.end method

.method public onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    .registers 4
    .param p1, "sessionType"    # I
    .param p2, "instance"    # Lcom/android/internal/logging/InstanceId;

    .line 2010
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/statusbar/SessionMonitor;->onSessionEnded(ILcom/android/internal/logging/InstanceId;)V

    .line 2011
    return-void
.end method

.method public onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    .registers 4
    .param p1, "sessionType"    # I
    .param p2, "instance"    # Lcom/android/internal/logging/InstanceId;

    .line 2005
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/statusbar/SessionMonitor;->onSessionStarted(ILcom/android/internal/logging/InstanceId;)V

    .line 2006
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1749
    new-instance v0, Lcom/android/server/statusbar/StatusBarShellCommand;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/statusbar/StatusBarShellCommand;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1751
    return-void
.end method

.method public passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 6
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 2199
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 2200
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-nez v0, :cond_8

    return-void

    .line 2202
    :cond_8
    :try_start_8
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_2c

    .line 2205
    .local v0, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_d
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 2206
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/statusbar/IStatusBar;->passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 2208
    invoke-virtual {v0, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_22

    .line 2209
    :try_start_1e
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    .line 2211
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    goto :goto_34

    .line 2202
    .restart local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_22
    move-exception v1

    :try_start_23
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v2

    :try_start_28
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local p1    # "args":[Ljava/lang/String;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    :goto_2b
    throw v1
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2c

    .line 2209
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local p0    # "this":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local p1    # "args":[Ljava/lang/String;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    :catchall_2c
    move-exception v0

    .line 2210
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "StatusBarManagerService"

    const-string v2, "Error sending command to IStatusBar"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2212
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_34
    return-void
.end method

.method public reboot(Z)V
    .registers 7
    .param p1, "safeMode"    # Z

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reboot call from pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1463
    if-eqz p1, :cond_25

    .line 1464
    const-string/jumbo v0, "safemode"

    goto :goto_28

    .line 1465
    :cond_25
    const-string/jumbo v0, "userrequested"

    :goto_28
    nop

    .line 1466
    .local v0, "reason":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(ILjava/lang/String;)V

    .line 1467
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1469
    .local v1, "identity":J
    :try_start_34
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v3}, Lcom/android/server/notification/NotificationDelegate;->prepareForPossibleShutdown()V

    .line 1470
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v4, p1, v0}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda5;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_48

    .line 1479
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1480
    nop

    .line 1481
    return-void

    .line 1479
    :catchall_48
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1480
    throw v3
.end method

.method public registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .registers 5
    .param p1, "provider"    # Landroid/media/INearbyMediaDevicesProvider;

    .line 2162
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceMediaContentControl()V

    .line 2163
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_16

    .line 2165
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 2168
    goto :goto_16

    .line 2166
    :catch_d
    move-exception v0

    .line 2167
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "registerNearbyMediaDevicesProvider"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2170
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method registerOverlayManager(Landroid/content/om/IOverlayManager;)V
    .registers 2
    .param p1, "overlayManager"    # Landroid/content/om/IOverlayManager;

    .line 1394
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 1395
    return-void
.end method

.method public registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    .registers 4
    .param p1, "sessionFlags"    # I
    .param p2, "listener"    # Lcom/android/internal/statusbar/ISessionListener;

    .line 2016
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/statusbar/SessionMonitor;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    .line 2017
    return-void
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .registers 23
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;

    .line 1349
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1351
    const-string v0, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerStatusBar bar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iput-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 1353
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->linkToDeath()V

    .line 1354
    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    .line 1356
    iget-object v3, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1357
    :try_start_2d
    new-instance v5, Landroid/util/ArrayMap;

    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-direct {v5, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1358
    .local v5, "icons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;>;"
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_af

    .line 1359
    iget-object v3, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1362
    :try_start_38
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1363
    .local v0, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmTransientBarTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    new-array v4, v4, [I

    move-object v15, v4

    .line 1364
    .local v15, "transientBarTypes":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4d
    array-length v6, v15

    if-ge v4, v6, :cond_63

    .line 1365
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmTransientBarTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/util/ArraySet;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v15, v4

    .line 1364
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 1367
    .end local v4    # "i":I
    :cond_63
    new-instance v19, Lcom/android/internal/statusbar/RegisterStatusBarResult;

    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v6

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmAppearance(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v7

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmAppearanceRegions(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/view/AppearanceRegion;

    move-result-object v8

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmImeWindowVis(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v9

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmImeBackDisposition(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v10

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmShowImeSwitcher(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v11

    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v12, 0x2

    .line 1370
    invoke-virtual {v1, v4, v12}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v12

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmImeToken(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmNavbarColorManagedByIme(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v14

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmBehavior(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v16

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmRequestedVisibilities(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/view/InsetsVisibilities;

    move-result-object v17

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmPackageName(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v4, v19

    move-object/from16 v20, v15

    .end local v15    # "transientBarTypes":[I
    .local v20, "transientBarTypes":[I
    move/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v20

    invoke-direct/range {v4 .. v18}, Lcom/android/internal/statusbar/RegisterStatusBarResult;-><init>(Landroid/util/ArrayMap;II[Lcom/android/internal/view/AppearanceRegion;IIZILandroid/os/IBinder;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;[I)V

    monitor-exit v3

    .line 1367
    return-object v19

    .line 1373
    .end local v0    # "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .end local v20    # "transientBarTypes":[I
    :catchall_ac
    move-exception v0

    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_38 .. :try_end_ae} :catchall_ac

    throw v0

    .line 1358
    .end local v5    # "icons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;>;"
    :catchall_af
    move-exception v0

    :try_start_b0
    monitor-exit v3
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw v0
.end method

.method public remTile(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 807
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 809
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 811
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->remQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 813
    goto :goto_e

    .line 812
    :catch_d
    move-exception v0

    .line 815
    :cond_e
    :goto_e
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 4
    .param p1, "slot"    # Ljava/lang/String;

    .line 1148
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1150
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1151
    :try_start_6
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_18

    if-eqz v1, :cond_16

    .line 1155
    :try_start_f
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 1157
    goto :goto_16

    .line 1156
    :catch_15
    move-exception v1

    .line 1159
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit v0

    .line 1160
    return-void

    .line 1159
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V
    .registers 24
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Icon;
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/android/internal/statusbar/IAddTileResultCallback;

    .line 1866
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v6, p4

    move-object/from16 v5, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1867
    .local v4, "callingUid":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1870
    .local v3, "packageName":Ljava/lang/String;
    iget-object v9, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    const-string/jumbo v15, "requestAddTile"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v11, v4

    move/from16 v12, p4

    move-object/from16 v16, v3

    invoke-virtual/range {v9 .. v16}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 1874
    invoke-direct {v7, v3, v4, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCallingUidPackage(Ljava/lang/String;II)V

    .line 1876
    iget-object v0, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v9

    .line 1879
    .local v9, "currentUser":I
    if-eq v6, v9, :cond_40

    .line 1881
    const/16 v0, 0x3eb

    :try_start_30
    invoke-interface {v5, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_34

    .line 1884
    goto :goto_3f

    .line 1882
    :catch_34
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1883
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1885
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3f
    return-void

    .line 1889
    :cond_40
    invoke-direct {v7, v8, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->isComponentValidTileService(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 1890
    .local v10, "r":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_12f

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-nez v0, :cond_51

    move-object v12, v3

    move v13, v4

    move-object v14, v5

    goto/16 :goto_132

    .line 1899
    :cond_51
    iget-object v0, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v11

    .line 1900
    .local v11, "procState":I
    invoke-static {v11}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_71

    .line 1903
    const/16 v0, 0x3ec

    :try_start_61
    invoke-interface {v5, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_64} :catch_65

    .line 1907
    goto :goto_70

    .line 1905
    :catch_65
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1906
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1908
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_70
    return-void

    .line 1911
    :cond_71
    iget-object v1, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1912
    :try_start_74
    iget-object v0, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    .line 1913
    .local v2, "lastTime":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12
    :try_end_81
    .catchall {:try_start_74 .. :try_end_81} :catchall_127

    .line 1914
    .local v12, "currentTime":J
    if-eqz v2, :cond_a8

    :try_start_83
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v14, v12, v14

    sget-wide v16, Lcom/android/server/statusbar/StatusBarManagerService;->REQUEST_TIME_OUT:J
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_a2

    cmp-long v0, v14, v16

    if-gez v0, :cond_a8

    .line 1916
    const/16 v0, 0x3e9

    :try_start_91
    invoke-interface {v5, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_94} :catch_95
    .catchall {:try_start_91 .. :try_end_94} :catchall_a2

    .line 1920
    goto :goto_a0

    .line 1918
    :catch_95
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 1919
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_98
    const-string v14, "StatusBarManagerService"

    const-string/jumbo v15, "requestAddTile"

    invoke-static {v14, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1921
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a0
    monitor-exit v1

    return-void

    .line 1929
    .end local v2    # "lastTime":Ljava/lang/Long;
    .end local v12    # "currentTime":J
    :catchall_a2
    move-exception v0

    move-object v12, v3

    move v13, v4

    move-object v14, v5

    goto/16 :goto_12b

    .line 1923
    .restart local v2    # "lastTime":Ljava/lang/Long;
    .restart local v12    # "currentTime":J
    :cond_a8
    if-eqz v2, :cond_ad

    .line 1924
    invoke-direct {v7, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->cancelRequestAddTileInternal(Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_98 .. :try_end_ad} :catchall_a2

    .line 1928
    :cond_ad
    :try_start_ad
    iget-object v0, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v0, v3, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    nop

    .end local v2    # "lastTime":Ljava/lang/Long;
    .end local v12    # "currentTime":J
    monitor-exit v1
    :try_end_b8
    .catchall {:try_start_ad .. :try_end_b8} :catchall_127

    .line 1931
    iget-object v0, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-virtual {v0, v6, v8}, Lcom/android/server/statusbar/TileRequestTracker;->shouldBeDenied(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 1932
    invoke-direct {v7, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 1934
    const/4 v0, 0x0

    :try_start_c7
    invoke-interface {v5, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_ca} :catch_cb

    .line 1937
    goto :goto_d6

    .line 1935
    :catch_cb
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1936
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile - callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1939
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_d6
    :goto_d6
    return-void

    .line 1942
    :cond_d7
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$3;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v12, v3

    .end local v3    # "packageName":Ljava/lang/String;
    .local v12, "packageName":Ljava/lang/String;
    move/from16 v3, p4

    move v13, v4

    .end local v4    # "callingUid":I
    .local v13, "callingUid":I
    move-object/from16 v4, p1

    move-object v14, v5

    move-object v5, v12

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/statusbar/StatusBarManagerService$3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/content/ComponentName;Ljava/lang/String;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    move-object v6, v0

    .line 1962
    .local v6, "proxyCallback":Lcom/android/internal/statusbar/IAddTileResultCallback;
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 1963
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 1964
    .local v15, "appName":Ljava/lang/CharSequence;
    iget-object v0, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_112

    .line 1966
    :try_start_fc
    iget-object v1, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBar;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    :try_end_108
    .catch Landroid/os/RemoteException; {:try_start_fc .. :try_end_108} :catch_109

    .line 1967
    return-void

    .line 1968
    :catch_109
    move-exception v0

    .line 1969
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1972
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_112
    invoke-direct {v7, v12}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    .line 1974
    const/16 v0, 0x3ed

    :try_start_117
    invoke-interface {v14, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_11a
    .catch Landroid/os/RemoteException; {:try_start_117 .. :try_end_11a} :catch_11b

    .line 1977
    goto :goto_126

    .line 1975
    :catch_11b
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1976
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1978
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_126
    return-void

    .line 1929
    .end local v6    # "proxyCallback":Lcom/android/internal/statusbar/IAddTileResultCallback;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "callingUid":I
    .end local v15    # "appName":Ljava/lang/CharSequence;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "callingUid":I
    :catchall_127
    move-exception v0

    move-object v12, v3

    move v13, v4

    move-object v14, v5

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "callingUid":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "callingUid":I
    :goto_12b
    :try_start_12b
    monitor-exit v1
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12d

    throw v0

    :catchall_12d
    move-exception v0

    goto :goto_12b

    .line 1890
    .end local v11    # "procState":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "callingUid":I
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "callingUid":I
    :cond_12f
    move-object v12, v3

    move v13, v4

    move-object v14, v5

    .line 1892
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "callingUid":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "callingUid":I
    :goto_132
    const/16 v0, 0x3ea

    :try_start_134
    invoke-interface {v14, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_137
    .catch Landroid/os/RemoteException; {:try_start_134 .. :try_end_137} :catch_138

    .line 1895
    goto :goto_143

    .line 1893
    :catch_138
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1894
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1896
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_143
    return-void
.end method

.method public requestTileServiceListeningState(Landroid/content/ComponentName;I)V
    .registers 14
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1827
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1828
    .local v8, "callingUid":I
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1830
    .local v9, "packageName":Ljava/lang/String;
    const-wide/32 v0, 0xa445ae6

    invoke-static {v0, v1, v8}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v10

    .line 1833
    .local v10, "mustPerformChecks":Z
    if-eqz v10, :cond_4e

    .line 1835
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "requestTileServiceListeningState"

    move v2, v8

    move v3, p2

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1840
    invoke-direct {p0, v9, v8, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCallingUidPackage(Ljava/lang/String;II)V

    .line 1842
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 1845
    .local v0, "currentUser":I
    if-ne p2, v0, :cond_2f

    goto :goto_4e

    .line 1846
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not the current user."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1849
    .end local v0    # "currentUser":I
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_61

    .line 1851
    :try_start_52
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->requestTileServiceListeningState(Landroid/content/ComponentName;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_57} :catch_58

    .line 1854
    goto :goto_61

    .line 1852
    :catch_58
    move-exception v0

    .line 1853
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestTileServiceListeningState"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1856
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_61
    :goto_61
    return-void
.end method

.method public restart()V
    .registers 5

    .line 1488
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1489
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1491
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_16

    .line 1495
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1496
    nop

    .line 1497
    return-void

    .line 1495
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1496
    throw v2
.end method

.method runGcForTest()V
    .registers 3

    .line 1089
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_13

    .line 1094
    invoke-static {}, Lcom/android/internal/util/GcUtils;->runGcAndFinalizersSync()V

    .line 1096
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_12

    .line 1098
    :try_start_b
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->runGcForTest()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 1100
    goto :goto_12

    .line 1099
    :catch_11
    move-exception v0

    .line 1102
    :cond_12
    :goto_12
    return-void

    .line 1090
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "runGcForTest requires a debuggable build"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/biometrics/IBiometricContextListener;

    .line 924
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 925
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 926
    :try_start_6
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBiometricContextListener:Landroid/hardware/biometrics/IBiometricContextListener;

    .line 927
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_15

    .line 928
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_14

    .line 930
    :try_start_d
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 932
    goto :goto_14

    .line 931
    :catch_13
    move-exception v0

    .line 934
    :cond_14
    :goto_14
    return-void

    .line 927
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 15
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;

    .line 1107
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1109
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1110
    :try_start_6
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    move-object v1, v8

    .line 1113
    .local v1, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_26

    if-eqz v2, :cond_24

    .line 1117
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23
    .catchall {:try_start_1d .. :try_end_22} :catchall_26

    .line 1119
    goto :goto_24

    .line 1118
    :catch_23
    move-exception v2

    .line 1121
    .end local v1    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_24
    :goto_24
    :try_start_24
    monitor-exit v0

    .line 1122
    return-void

    .line 1121
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visibility"    # Z

    .line 1126
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1128
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1129
    :try_start_6
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 1130
    .local v1, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v1, :cond_12

    .line 1131
    monitor-exit v0

    return-void

    .line 1133
    :cond_12
    iget-boolean v2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v2, p2, :cond_23

    .line 1134
    iput-boolean p2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 1136
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_25

    if-eqz v2, :cond_23

    .line 1138
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22
    .catchall {:try_start_1c .. :try_end_21} :catchall_25

    .line 1140
    goto :goto_23

    .line 1139
    :catch_22
    move-exception v2

    .line 1143
    .end local v1    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_23
    :goto_23
    :try_start_23
    monitor-exit v0

    .line 1144
    return-void

    .line 1143
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .registers 16
    .param p1, "displayId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "vis"    # I
    .param p4, "backDisposition"    # I
    .param p5, "showImeSwitcher"    # Z

    .line 1165
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1171
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1175
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v1

    invoke-static {v1, p3, p4, p5, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$msetImeWindowState(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZLandroid/os/IBinder;)V

    .line 1177
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda3;

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;IIZ)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1184
    monitor-exit v0

    .line 1185
    return-void

    .line 1184
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public setNavBarMode(I)V
    .registers 9
    .param p1, "navBarMode"    # I

    .line 2035
    const-string v0, "com.android.internal.systemui.navbar.threebutton"

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2036
    const/4 v1, 0x1

    if-eqz p1, :cond_24

    if-ne p1, v1, :cond_b

    goto :goto_24

    .line 2037
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied navBarMode not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2040
    :cond_24
    :goto_24
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 2041
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2043
    .local v3, "userIdentity":J
    :try_start_2a
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "nav_bar_kids_mode"

    invoke-static {v5, v6, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2045
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "nav_bar_force_visible"

    invoke-static {v5, v6, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2048
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->getOverlayManager()Landroid/content/om/IOverlayManager;

    move-result-object v5

    .line 2049
    .local v5, "overlayManager":Landroid/content/om/IOverlayManager;
    if-eqz v5, :cond_53

    if-ne p1, v1, :cond_53

    .line 2050
    invoke-direct {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->isPackageSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 2051
    invoke-interface {v5, v0, v2}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_53} :catch_5a
    .catchall {:try_start_2a .. :try_end_53} :catchall_58

    .line 2056
    .end local v5    # "overlayManager":Landroid/content/om/IOverlayManager;
    :cond_53
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2057
    nop

    .line 2058
    return-void

    .line 2056
    :catchall_58
    move-exception v0

    goto :goto_60

    .line 2053
    :catch_5a
    move-exception v0

    .line 2054
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v2    # "userId":I
    .end local v3    # "userIdentity":J
    .end local p0    # "this":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local p1    # "navBarMode":I
    throw v1
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_58

    .line 2056
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "userId":I
    .restart local v3    # "userIdentity":J
    .restart local p0    # "this":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local p1    # "navBarMode":I
    :goto_60
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2057
    throw v0
.end method

.method public setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "ext"    # Landroid/os/Bundle;

    .line 2342
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerServiceStub;->getInstance()Lcom/android/server/statusbar/StatusBarManagerServiceStub;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerServiceStub;->setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/statusbar/IStatusBar;)V

    .line 2343
    return-void
.end method

.method public setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/fingerprint/IUdfpsHbmListener;

    .line 938
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 939
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 941
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 943
    goto :goto_e

    .line 942
    :catch_d
    move-exception v0

    .line 945
    :cond_e
    :goto_e
    return-void
.end method

.method public showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V
    .registers 28
    .param p1, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .param p2, "receiver"    # Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .param p3, "sensorIds"    # [I
    .param p4, "credentialAllowed"    # Z
    .param p5, "requireConfirmation"    # Z
    .param p6, "userId"    # I
    .param p7, "operationId"    # J
    .param p9, "opPackageName"    # Ljava/lang/String;
    .param p10, "requestId"    # J
    .param p12, "multiSensorConfig"    # I

    .line 867
    move-object v1, p0

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 868
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_23

    .line 870
    :try_start_8
    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    move/from16 v14, p12

    invoke-interface/range {v2 .. v14}, Lcom/android/internal/statusbar/IStatusBar;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_21} :catch_22

    .line 874
    goto :goto_23

    .line 873
    :catch_22
    move-exception v0

    .line 876
    :cond_23
    :goto_23
    return-void
.end method

.method public showInattentiveSleepWarning()V
    .registers 2

    .line 1755
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1756
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 1758
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showInattentiveSleepWarning()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 1760
    goto :goto_e

    .line 1759
    :catch_d
    move-exception v0

    .line 1762
    :cond_e
    :goto_e
    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .registers 3
    .param p1, "entering"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 846
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEnterExitToast(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 848
    goto :goto_b

    .line 847
    :catch_a
    move-exception v0

    .line 850
    :cond_b
    :goto_b
    return-void
.end method

.method public showPinningEscapeToast()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 856
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEscapeToast()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 858
    goto :goto_b

    .line 857
    :catch_a
    move-exception v0

    .line 860
    :cond_b
    :goto_b
    return-void
.end method

.method public shutdown()V
    .registers 6

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shutdown call from pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1442
    const-string/jumbo v0, "userrequested"

    .line 1443
    .local v0, "reason":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(ILjava/lang/String;)V

    .line 1444
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1446
    .local v1, "identity":J
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v3}, Lcom/android/server/notification/NotificationDelegate;->prepareForPossibleShutdown()V

    .line 1448
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_41

    .line 1451
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1452
    nop

    .line 1453
    return-void

    .line 1451
    :catchall_41
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1452
    throw v3
.end method

.method public startTracing()V
    .registers 2

    .line 949
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 951
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->startTracing()V

    .line 952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTracingEnabled:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 954
    goto :goto_e

    .line 953
    :catch_d
    move-exception v0

    .line 956
    :cond_e
    :goto_e
    return-void
.end method

.method public stopTracing()V
    .registers 2

    .line 960
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 962
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTracingEnabled:Z

    .line 963
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->stopTracing()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_e

    .line 964
    :catch_d
    move-exception v0

    .line 966
    :cond_e
    :goto_e
    return-void
.end method

.method public suppressAmbientDisplay(Z)V
    .registers 3
    .param p1, "suppress"    # Z

    .line 1777
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1778
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 1780
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->suppressAmbientDisplay(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 1782
    goto :goto_e

    .line 1781
    :catch_d
    move-exception v0

    .line 1784
    :cond_e
    :goto_e
    return-void
.end method

.method public togglePanel()V
    .registers 2

    .line 767
    const-string/jumbo v0, "togglePanel"

    invoke-direct {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCanCollapseStatusBar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 768
    return-void

    .line 771
    :cond_a
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->isDisable2FlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 772
    return-void

    .line 775
    :cond_12
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1d

    .line 777
    :try_start_16
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->togglePanel()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 779
    goto :goto_1d

    .line 778
    :catch_1c
    move-exception v0

    .line 781
    :cond_1d
    :goto_1d
    return-void
.end method

.method public unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .registers 5
    .param p1, "provider"    # Landroid/media/INearbyMediaDevicesProvider;

    .line 2187
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceMediaContentControl()V

    .line 2188
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_16

    .line 2190
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 2193
    goto :goto_16

    .line 2191
    :catch_d
    move-exception v0

    .line 2192
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "unregisterNearbyMediaDevicesProvider"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public unregisterSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    .registers 4
    .param p1, "sessionFlags"    # I
    .param p2, "listener"    # Lcom/android/internal/statusbar/ISessionListener;

    .line 2022
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/statusbar/SessionMonitor;->unregisterSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    .line 2023
    return-void
.end method

.method public updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "displayState"    # I
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;
    .param p3, "appIcon"    # Landroid/graphics/drawable/Icon;
    .param p4, "appName"    # Ljava/lang/CharSequence;

    .line 2136
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceMediaContentControl()V

    .line 2137
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_16

    .line 2139
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 2143
    goto :goto_16

    .line 2141
    :catch_d
    move-exception v0

    .line 2142
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "updateMediaTapToTransferReceiverDisplay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2145
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    .registers 7
    .param p1, "displayState"    # I
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;
    .param p3, "undoCallback"    # Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    .line 2113
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceMediaContentControl()V

    .line 2114
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_16

    .line 2116
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 2119
    goto :goto_16

    .line 2117
    :catch_d
    move-exception v0

    .line 2118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "updateMediaTapToTransferSenderDisplay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2121
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method
