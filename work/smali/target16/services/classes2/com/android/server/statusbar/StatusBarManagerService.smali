.class public Lcom/android/server/statusbar/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field public static final REQUEST_TIME_OUT:J

.field public static final STATUS_BAR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field public mBiometricContextListener:Landroid/hardware/biometrics/IBiometricContextListener;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

.field public mCurrentUserId:I

.field public final mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

.field public final mDisableRecords:Ljava/util/ArrayList;

.field public final mDisplayUiState:Landroid/util/SparseArray;

.field public mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

.field public final mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

.field public final mHandler:Landroid/os/Handler;

.field public final mIcons:Landroid/util/ArrayMap;

.field public final mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mLastSystemKey:I

.field public final mLock:Ljava/lang/Object;

.field public mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field public mOverlayManager:Landroid/content/om/IOverlayManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

.field public final mSysUiVisToken:Landroid/os/IBinder;

.field public final mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

.field public mTracingEnabled:Z

.field public mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mVisibleBackgroundUsersEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$59p1ntjiSJASYnFCl7Ew6a22L3c(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$notifyBarAttachChanged$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$9FJFWiKWGYumAAyb_SgY2NzCWDQ(Ljava/lang/String;)V
    .registers 3

    .line 1948
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ArPOA0roNhfmG3odrT0Pk3guSfk(ZLjava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_b

    .line 1969
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    return-void

    .line 1971
    :cond_b
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/power/ShutdownThread;->rebootCustom(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$XS_0q1YLU5EzL4UYJ2RX4E-FfWw(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$restart$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$e1JkR72HtKsWVsWVvLe6kYx7d1k(Lcom/android/server/statusbar/StatusBarManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$disableLocked$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nWjxl9WE61ral9X4QCz5jQbdFdw(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$notifyBarAttachChanged$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$sOIsh_to_xA_LnMxKA0y_h-zOXs(Lcom/android/server/statusbar/StatusBarManagerService;IIIZ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$setImeWindowStatus$2(IIIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeathRecipient(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayUiState(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalActionListener(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTileRequestTracker(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/TileRequestTracker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBar(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/internal/statusbar/IStatusBar;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/statusbar/StatusBarManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmGlobalActionListener(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationDelegate(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUdfpsRefreshRateRequestCallback(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddQsTileToFrontOrEnd(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/content/ComponentName;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearTileAddRequest(Lcom/android/server/statusbar/StatusBarManagerService;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menforceStatusBarService(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetUiState(Lcom/android/server/statusbar/StatusBarManagerService;I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misVisibleBackgroundUser(Lcom/android/server/statusbar/StatusBarManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUser(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUserOnDisplay(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyBarAttachChanged(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisableFlags(Lcom/android/server/statusbar/StatusBarManagerService;IILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->setDisableFlags(IILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 182
    new-instance v0, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;

    new-instance v1, Lcom/android/server/biometrics/PreAuthInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/biometrics/PreAuthInfo$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x1

    const-string v3, "com.android.systemui.shared.status_bar_connected_displays"

    invoke-direct {v0, v1, v2, v3}, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;-><init>(Ljava/util/function/BooleanSupplier;ZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/statusbar/StatusBarManagerService;->STATUS_BAR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;

    .line 221
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/statusbar/StatusBarManagerService;->REQUEST_TIME_OUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 310
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 193
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 198
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 200
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 201
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService-IA;)V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    const/4 v1, -0x1

    .line 209
    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLastSystemKey:I

    .line 213
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 219
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    .line 377
    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/statusbar/StatusBarManagerService$1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1032
    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/statusbar/StatusBarManagerService$2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    .line 311
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 313
    const-class v4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v4, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 316
    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    invoke-direct {v3, v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService-IA;)V

    const/4 v2, 0x0

    .line 317
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    const-string v1, "display"

    .line 320
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 321
    invoke-virtual {v1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 322
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 323
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 324
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 325
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 327
    new-instance v0, Lcom/android/server/statusbar/TileRequestTracker;

    invoke-direct {v0, p1}, Lcom/android/server/statusbar/TileRequestTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    .line 328
    new-instance v0, Lcom/android/server/statusbar/SessionMonitor;

    invoke-direct {v0, p1}, Lcom/android/server/statusbar/SessionMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    .line 330
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mVisibleBackgroundUsersEnabled:Z

    .line 331
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-void
.end method

.method public static final getUiContext()Landroid/content/Context;
    .registers 1

    .line 2977
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V
    .registers 4

    .line 1140
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 1141
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1143
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f

    .line 1145
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public addTile(Landroid/content/ComponentName;)V
    .registers 3

    const/4 v0, 0x0

    .line 1136
    invoke-virtual {p0, p1, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public cancelRequestAddTile(Ljava/lang/String;)V
    .registers 2

    .line 2527
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2528
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2530
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->cancelRequestAddTileInternal(Ljava/lang/String;)V

    return-void
.end method

.method public final cancelRequestAddTileInternal(Ljava/lang/String;)V
    .registers 3

    .line 2534
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    .line 2535
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_14

    .line 2538
    :try_start_7
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->cancelRequestAddTile(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 2540
    const-string p1, "StatusBarManagerService"

    const-string/jumbo v0, "requestAddTile"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    return-void
.end method

.method public final checkCallingUidPackage(Ljava/lang/String;II)V
    .registers 6

    .line 2325
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    .line 2326
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-ne p3, p0, :cond_13

    return-void

    .line 2327
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to the calling uid "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCanCollapseStatusBar(Ljava/lang/String;)Z
    .registers 6

    .line 1783
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1784
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-wide/32 v2, 0xa503ff5

    .line 1785
    invoke-static {v2, v3, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1786
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    goto :goto_4f

    .line 1788
    :cond_15
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR"

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_4f

    .line 1790
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 1791
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canCloseSystemDialogs(II)Z

    move-result p0

    if-nez p0, :cond_4f

    .line 1792
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: Method "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() requires permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring call."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_4f
    :goto_4f
    const/4 p0, 0x1

    return p0
.end method

.method public clearInlineReplyUriPermissions(Ljava/lang/String;)V
    .registers 5

    .line 2252
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2256
    :try_start_b
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1, v0}, Lcom/android/server/notification/NotificationDelegate;->clearInlineReplyUriPermissions(Ljava/lang/String;I)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    .line 2258
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2259
    throw p0
.end method

.method public clearNotificationEffects()V
    .registers 3

    .line 1909
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1910
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1912
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1914
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 1916
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1917
    throw p0
.end method

.method public final clearTileAddRequest(Ljava/lang/String;)Z
    .registers 3

    .line 2546
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2547
    :try_start_3
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 2548
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .registers 3

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 1176
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1178
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f

    .line 1180
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->clickQsTile(Landroid/content/ComponentName;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public collapsePanels()V
    .registers 2

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1090
    const-string v0, "collapsePanels"

    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCanCollapseStatusBar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_15

    .line 1094
    :cond_c
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_15

    .line 1096
    :try_start_10
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    :goto_15
    return-void
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 1383
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 1414
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 14

    .line 1426
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1428
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v3, 0x0

    const/4 v8, 0x2

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move v4, p4

    .line 1431
    :try_start_d
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 1432
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_12

    throw p0
.end method

.method public disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 14

    .line 1395
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1396
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1398
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v3, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move v4, p4

    .line 1401
    :try_start_10
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 1402
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_15

    throw p0
.end method

.method public final disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 13

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 1441
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 1444
    iget p0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 p2, 0x1

    invoke-virtual {v0, p0, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result p0

    .line 1445
    iget p2, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 p3, 0x2

    invoke-virtual {v0, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result p2

    .line 1446
    invoke-virtual {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object p3

    .line 1447
    invoke-static {p3, p0, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mdisableEquals(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z

    move-result p4

    if-nez p4, :cond_35

    .line 1448
    invoke-static {p3, p0, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$msetDisabled(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V

    .line 1449
    iget-object p3, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;

    invoke-direct {p4, v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1450
    iget-object p3, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p3, :cond_35

    .line 1453
    :try_start_32
    invoke-interface {p3, p1, p0, p2}, Lcom/android/internal/statusbar/IStatusBar;->disable(III)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_35

    :catch_35
    :cond_35
    return-void
.end method

.method public dismissInattentiveSleepWarning(Z)V
    .registers 2

    .line 2298
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2299
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2301
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_d

    .line 2304
    :try_start_a
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->dismissInattentiveSleepWarning(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return-void
.end method

.method public final doesCallerHoldInteractAcrossUserPermission()Z
    .registers 3

    .line 1774
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 1775
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 2911
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "StatusBarManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_25

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2913
    :goto_e
    array-length v3, p3

    if-ge v1, v3, :cond_1f

    .line 2914
    const-string v3, "--proto"

    aget-object v4, p3, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1f
    if-eqz v2, :cond_4e

    .line 2919
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-nez p2, :cond_26

    :goto_25
    return-void

    .line 2920
    :cond_26
    :try_start_26
    new-instance p2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {p2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_45

    .line 2923
    :try_start_2b
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-virtual {p2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Lcom/android/internal/statusbar/IStatusBar;->dumpProto([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 2925
    invoke-virtual {p2, p1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_3b

    .line 2926
    :try_start_37
    invoke-virtual {p2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_45

    return-void

    :catchall_3b
    move-exception p0

    .line 2920
    :try_start_3c
    invoke-virtual {p2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception p1

    :try_start_41
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw p0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p0

    .line 2927
    const-string p1, "StatusBarManagerService"

    const-string p2, "Error sending command to IStatusBar"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 2932
    :cond_4e
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    move v2, v0

    .line 2933
    :goto_52
    :try_start_52
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_ba

    .line 2934
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2935
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 2936
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2937
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mDisabled1=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mgetDisabled1(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mDisabled2=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mgetDisabled2(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    :catchall_b7
    move-exception p0

    goto/16 :goto_1b8

    .line 2940
    :cond_ba
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mDisableRecords.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v0

    :goto_d5
    if-ge v3, v2, :cond_fe

    .line 2943
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 2944
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d5

    .line 2946
    :cond_fe
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCurrentUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2947
    const-string v2, "  mIcons="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2948
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_123
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_162

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2949
    const-string v4, "    "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2950
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2951
    const-string v4, " -> "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2952
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 2953
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2954
    iget-object v4, v3, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15e

    .line 2955
    const-string v4, " \""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2956
    iget-object v3, v3, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2957
    const-string v3, "\""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2959
    :cond_15e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_123

    .line 2962
    :cond_162
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_165
    .catchall {:try_start_52 .. :try_end_165} :catchall_b7

    .line 2963
    :try_start_165
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2964
    monitor-exit v2
    :try_end_171
    .catchall {:try_start_165 .. :try_end_171} :catchall_1b5

    .line 2965
    :try_start_171
    const-string v2, "  mCurrentRequestAddTilePackages=["

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2966
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_17a
    if-ge v0, v2, :cond_19e

    .line 2968
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17a

    .line 2970
    :cond_19e
    const-string v0, "  ]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2971
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v0, p2, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2972
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/statusbar/TileRequestTracker;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 2973
    monitor-exit v1
    :try_end_1b4
    .catchall {:try_start_171 .. :try_end_1b4} :catchall_b7

    return-void

    :catchall_1b5
    move-exception p0

    .line 2964
    :try_start_1b6
    monitor-exit v2
    :try_end_1b7
    .catchall {:try_start_1b6 .. :try_end_1b7} :catchall_1b5

    :try_start_1b7
    throw p0

    .line 2973
    :goto_1b8
    monitor-exit v1
    :try_end_1b9
    .catchall {:try_start_1b7 .. :try_end_1b9} :catchall_b7

    throw p0
.end method

.method public final enforceBiometricDialog()V
    .registers 3

    .line 1757
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_BIOMETRIC_DIALOG"

    const-string v1, "StatusBarManagerService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceControlDeviceStatePermission()V
    .registers 3

    .line 1770
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CONTROL_DEVICE_STATE"

    const-string v1, "StatusBarManagerService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceExpandStatusBar()V
    .registers 3

    .line 1747
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.EXPAND_STATUS_BAR"

    const-string v1, "StatusBarManagerService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceMediaContentControl()V
    .registers 3

    .line 1763
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MEDIA_CONTENT_CONTROL"

    const-string v1, "StatusBarManagerService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceStatusBar()V
    .registers 3

    .line 1742
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.STATUS_BAR"

    const-string v1, "StatusBarManagerService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceStatusBarOrShell()V
    .registers 3

    .line 1735
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_9

    return-void

    .line 1738
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    return-void
.end method

.method public final enforceStatusBarService()V
    .registers 3

    .line 1752
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    const-string v1, "StatusBarManagerService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceValidCallingUser()V
    .registers 4

    .line 2987
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_5

    goto :goto_33

    .line 2991
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_33

    .line 2992
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    if-ne v0, v1, :cond_10

    goto :goto_33

    .line 2995
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUser(I)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_33

    .line 2999
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not permitted to use this method"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    return-void
.end method

.method public expandNotificationsPanel()V
    .registers 2

    .line 1071
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 1072
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    const/4 v0, 0x4

    .line 1074
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->isDisable2FlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_17

    .line 1078
    :cond_e
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_17

    .line 1080
    :try_start_12
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    :goto_17
    return-void
.end method

.method public expandSettingsPanel(Ljava/lang/String;)V
    .registers 3

    .line 1124
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1127
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f

    .line 1129
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public final findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;
    .registers 7

    .line 2878
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 2882
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 2883
    iget-object v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_1a

    iget v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v3, p2, :cond_1a

    goto :goto_1e

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 v2, 0x0

    .line 2889
    :goto_1e
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public gatherDisableActionsLocked(II)I
    .registers 8

    .line 2894
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_1e

    .line 2898
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 2899
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p1, :cond_1b

    .line 2900
    invoke-virtual {v3, p2}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->getFlags(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1e
    return v2
.end method

.method public getDisableFlags(Landroid/os/IBinder;I)[I
    .registers 4

    .line 1504
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1508
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1510
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    if-eqz p0, :cond_17

    .line 1512
    iget p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    .line 1513
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    goto :goto_19

    :catchall_15
    move-exception p0

    goto :goto_1f

    :cond_17
    const/4 p1, 0x0

    move p0, p1

    .line 1515
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_15

    .line 1517
    filled-new-array {p1, p0}, [I

    move-result-object p0

    return-object p0

    .line 1515
    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_15

    throw p0
.end method

.method public getLastSystemKey()I
    .registers 1

    .line 1207
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1209
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLastSystemKey:I

    return p0
.end method

.method public getNavBarMode()I
    .registers 5

    .line 2646
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2649
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 2650
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2652
    :try_start_9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v3, "nav_bar_kids_mode"

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_16
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_16} :catch_1f
    .catchall {:try_start_9 .. :try_end_16} :catchall_1a

    .line 2657
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2658
    throw p0

    .line 2657
    :catch_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getOverlayManager()Landroid/content/om/IOverlayManager;
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez v0, :cond_1b

    .line 348
    const-string/jumbo v0, "overlay"

    .line 349
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 348
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez v0, :cond_1b

    .line 351
    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no OVERLAY_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_1b
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    return-object p0
.end method

.method public getStatusBarIcons()[Ljava/lang/String;
    .registers 2

    .line 2582
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10700e4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .registers 4

    .line 1661
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    if-nez v0, :cond_15

    .line 1663
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService-IA;)V

    .line 1664
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method public grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 13

    .line 2239
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2241
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2243
    :try_start_b
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/notification/NotificationDelegate;->grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;I)V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_18

    .line 2246
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2247
    throw p0
.end method

.method public handleSystemKey(Landroid/view/KeyEvent;)V
    .registers 3

    .line 1188
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1190
    const-string v0, "handleSystemKey"

    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCanCollapseStatusBar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1b

    .line 1194
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLastSystemKey:I

    .line 1196
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1b

    .line 1198
    :try_start_16
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->handleSystemKey(Landroid/view/KeyEvent;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    :goto_1b
    return-void
.end method

.method public hideAuthenticationDialog(J)V
    .registers 4

    .line 1293
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 1294
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1296
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f

    .line 1298
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideAuthenticationDialog(J)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public hideCurrentInputMethodForBubbles(I)V
    .registers 5

    .line 2224
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2225
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2229
    :try_start_a
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p0

    const/16 v2, 0x14

    invoke-virtual {p0, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideInputMethod(II)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_17

    .line 2232
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2233
    throw p0
.end method

.method public final isComponentValidTileService(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;
    .registers 10

    .line 2333
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2334
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2335
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2336
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 2337
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    move v5, p2

    .line 2335
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    .line 2338
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2339
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 2338
    invoke-virtual {v0, p1, v1, v5}, Landroid/content/pm/PackageManagerInternal;->getComponentEnabledSetting(Landroid/content/ComponentName;II)I

    move-result p1

    if-eqz p2, :cond_46

    .line 2340
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_46

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 2342
    invoke-virtual {p0, v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->resolveEnabledComponent(ZI)Z

    move-result p0

    if-eqz p0, :cond_46

    iget-object p0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 2343
    const-string p1, "android.permission.BIND_QUICK_SETTINGS_TILE"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    return-object p2

    :cond_46
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isDisable2FlagSet(I)Z
    .registers 3

    .line 1061
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mgetDisabled2(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v0
.end method

.method public final isPackageSupported(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2667
    :cond_4
    :try_start_4
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 2668
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    .line 2667
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_14} :catch_18

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :catch_18
    :cond_18
    return v0
.end method

.method public isTracing()Z
    .registers 1

    .line 1360
    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTracingEnabled:Z

    return p0
.end method

.method public final isVisibleBackgroundUser(I)Z
    .registers 3

    .line 3004
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 3011
    :cond_6
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result p0

    return p0
.end method

.method public final isVisibleBackgroundUserOnDisplay(I)Z
    .registers 3

    .line 3015
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 3018
    :cond_6
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p1

    .line 3019
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUser(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$disableLocked$0(I)V
    .registers 2

    .line 1449
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1}, Lcom/android/server/notification/NotificationDelegate;->onSetDisabled(I)V

    return-void
.end method

.method public final synthetic lambda$notifyBarAttachChanged$3()V
    .registers 2

    .line 1871
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    if-nez v0, :cond_5

    return-void

    .line 1872
    :cond_5
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    invoke-interface {v0, p0}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsAvailableChanged(Z)V

    return-void
.end method

.method public final synthetic lambda$notifyBarAttachChanged$4()V
    .registers 3

    .line 1878
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1879
    :try_start_3
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    invoke-virtual {p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    .line 1880
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBiometricContextListener:Landroid/hardware/biometrics/IBiometricContextListener;

    invoke-virtual {p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 1881
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final synthetic lambda$restart$7()V
    .registers 1

    .line 1990
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->restart()V

    return-void
.end method

.method public final synthetic lambda$setImeWindowStatus$2(IIIZ)V
    .registers 5

    .line 1617
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_7

    .line 1620
    :try_start_4
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->setImeWindowStatus(IIIZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

.method public manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 10

    .line 2846
    invoke-virtual {p0, p3, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;

    move-result-object v0

    .line 2847
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2848
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 2851
    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_24

    if-eqz v0, :cond_39

    .line 2853
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2854
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {p0, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :cond_24
    if-eqz v0, :cond_3a

    .line 2861
    invoke-virtual {v0, p2, p5, p4}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 2862
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 2863
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2864
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {p0, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_39
    return-void

    .line 2870
    :cond_3a
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;)V

    .line 2871
    invoke-virtual {v0, p2, p5, p4}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 2872
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final notifyBarAttachChanged()V
    .registers 3

    .line 1870
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1877
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBiometricAuthenticated(I)V
    .registers 3

    .line 1254
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 1255
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1257
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f

    .line 1259
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricAuthenticated(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public onBiometricError(III)V
    .registers 5

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 1281
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1283
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f

    .line 1285
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricError(III)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;)V
    .registers 4

    .line 1267
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 1268
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1270
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f

    .line 1272
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricHelp(ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public onBubbleMetadataFlagChanged(Ljava/lang/String;I)V
    .registers 5

    .line 2211
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2212
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2214
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2216
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 2218
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2219
    throw p0
.end method

.method public onClearAllNotifications(I)V
    .registers 6

    .line 2185
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2186
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2187
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2190
    :try_start_f
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, v0, v1, p1}, Lcom/android/server/notification/NotificationDelegate;->onClearAll(III)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 2192
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2193
    throw p0
.end method

.method public onDisplayAdded(I)V
    .registers 5

    .line 359
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_3
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService-IA;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public onDisplayChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    .line 366
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_3
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 368
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onGlobalActionsHidden()V
    .registers 3

    .line 2013
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2014
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2016
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2018
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_19

    if-nez p0, :cond_12

    .line 2021
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2019
    :cond_12
    :try_start_12
    invoke-interface {p0}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsDismissed()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    .line 2021
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2022
    throw p0
.end method

.method public onGlobalActionsShown()V
    .registers 3

    .line 1999
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2000
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2002
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2004
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_19

    if-nez p0, :cond_12

    .line 2007
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2005
    :cond_12
    :try_start_12
    invoke-interface {p0}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsShown()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    .line 2007
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2008
    throw p0
.end method

.method public onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .registers 16

    .line 2046
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2047
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2048
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2049
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2051
    :try_start_f
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/server/notification/NotificationDelegate;->onNotificationActionClick(IILjava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1d

    .line 2054
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2055
    throw p0
.end method

.method public onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    .registers 6

    .line 2198
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2199
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2203
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationDelegate;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 2205
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2206
    throw p0
.end method

.method public onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;Z)V
    .registers 20

    .line 2083
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2084
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2085
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2086
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2088
    :try_start_f
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_23

    .line 2091
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_23
    move-exception v0

    move-object p0, v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2092
    throw p0
.end method

.method public onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 7

    .line 2029
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2030
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2031
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2032
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2034
    :try_start_f
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 2036
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2037
    throw p0
.end method

.method public onNotificationDirectReplied(Ljava/lang/String;)V
    .registers 4

    .line 2128
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2129
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2133
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationDirectReplied(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 2135
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2136
    throw p0
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 20

    .line 2063
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2064
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2065
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2066
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2069
    :try_start_f
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Lcom/android/server/notification/NotificationDelegate;->onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_23

    .line 2072
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_23
    move-exception v0

    move-object p0, v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2073
    throw p0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    .registers 7

    .line 2114
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2115
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2119
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationDelegate;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 2122
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2123
    throw p0
.end method

.method public onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 2264
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2265
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2267
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2269
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 2271
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2272
    throw p0
.end method

.method public onNotificationSettingsViewed(Ljava/lang/String;)V
    .registers 4

    .line 2172
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2173
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2177
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSettingsViewed(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 2179
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2180
    throw p0
.end method

.method public onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    .registers 9

    .line 2158
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2159
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2161
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2163
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 2166
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2167
    throw p0
.end method

.method public onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    .registers 9

    .line 2142
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2143
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2147
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 2150
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2151
    throw p0
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 5

    .line 2099
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2100
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2104
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 2107
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2108
    throw p0
.end method

.method public onPanelHidden()V
    .registers 3

    .line 1922
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1923
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1925
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1927
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0}, Lcom/android/server/notification/NotificationDelegate;->onPanelHidden()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 1929
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1930
    throw p0
.end method

.method public onPanelRevealed(ZI)V
    .registers 5

    .line 1896
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1897
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1899
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1901
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onPanelRevealed(ZI)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 1903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1904
    throw p0
.end method

.method public onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    .registers 3

    .line 2560
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2562
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/SessionMonitor;->onSessionEnded(ILcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    .registers 3

    .line 2553
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2555
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/SessionMonitor;->onSessionStarted(ILcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 2278
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

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 5

    .line 2819
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 2820
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-nez v0, :cond_8

    return-void

    .line 2822
    :cond_8
    :try_start_8
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_2c

    .line 2825
    :try_start_d
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 2826
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 2828
    invoke-virtual {v0, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_22

    .line 2829
    :try_start_1e
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    return-void

    :catchall_22
    move-exception p0

    .line 2822
    :try_start_23
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p1

    :try_start_28
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw p0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 2830
    const-string p1, "StatusBarManagerService"

    const-string p2, "Error sending command to IStatusBar"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public publishGlobalActionsProvider()V
    .registers 3

    .line 340
    const-class v0, Lcom/android/server/policy/GlobalActionsProvider;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    .line 341
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public reboot(ZLjava/lang/String;)V
    .registers 6

    .line 1959
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1960
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1962
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(ILjava/lang/String;)V

    .line 1963
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1965
    :try_start_11
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->prepareForPossibleShutdown()V

    .line 1966
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_24

    .line 1975
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_24
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1976
    throw p0
.end method

.method public registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .registers 3

    .line 2748
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceMediaContentControl()V

    .line 2749
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2751
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_17

    .line 2754
    :try_start_a
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 2756
    const-string p1, "StatusBarManagerService"

    const-string/jumbo v0, "registerNearbyMediaDevicesProvider"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    return-void
.end method

.method public registerOverlayManager(Landroid/content/om/IOverlayManager;)V
    .registers 2

    .line 1887
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    return-void
.end method

.method public registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    .registers 3

    .line 2568
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2570
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/SessionMonitor;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    return-void
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1807
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1808
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1810
    const-string v2, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerStatusBar bar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iput-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 1812
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    invoke-virtual {v1}, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->linkToDeath()V

    .line 1813
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    .line 1815
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1816
    :try_start_2e
    new-instance v3, Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1817
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_8e

    .line 1818
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1819
    :try_start_39
    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-object v4, v2

    .line 1820
    new-instance v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;

    iget v5, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v5

    move-object v6, v4

    move v4, v5

    invoke-static {v6}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmAppearance(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v5

    move-object v7, v6

    invoke-static {v7}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmAppearanceRegions(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/view/AppearanceRegion;

    move-result-object v6

    move-object v8, v7

    invoke-static {v8}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmImeWindowVis(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v7

    move-object v9, v8

    invoke-static {v9}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmImeBackDisposition(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v8

    move-object v10, v9

    invoke-static {v10}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmShowImeSwitcher(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v9

    iget v11, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v12, 0x2

    .line 1823
    invoke-virtual {v0, v11, v12}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v0

    invoke-static {v10}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmNavbarColorManagedByIme(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v11

    invoke-static {v10}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmBehavior(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v12

    invoke-static {v10}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmRequestedVisibleTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v13

    invoke-static {v10}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmPackageName(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v10}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmTransientBarTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v15

    invoke-static {v10}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmLetterboxDetails(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/statusbar/LetterboxDetails;

    move-result-object v16

    move v10, v0

    invoke-direct/range {v2 .. v16}, Lcom/android/internal/statusbar/RegisterStatusBarResult;-><init>(Landroid/util/ArrayMap;II[Lcom/android/internal/view/AppearanceRegion;IIZIZIILjava/lang/String;I[Lcom/android/internal/statusbar/LetterboxDetails;)V

    monitor-exit v1

    return-object v2

    :catchall_8b
    move-exception v0

    .line 1826
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_39 .. :try_end_8d} :catchall_8b

    throw v0

    :catchall_8e
    move-exception v0

    .line 1817
    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v0
.end method

.method public registerStatusBarForAllDisplays(Lcom/android/internal/statusbar/IStatusBar;)Ljava/util/Map;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1831
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1832
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1834
    const-string v2, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerStatusBarForAllDisplays bar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iput-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 1836
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    invoke-virtual {v1}, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->linkToDeath()V

    .line 1837
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    .line 1839
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1840
    :try_start_2e
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 1842
    :goto_34
    iget-object v4, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_a6

    .line 1843
    iget-object v4, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1844
    iget-object v5, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1847
    iget-object v6, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v6
    :try_end_4d
    .catchall {:try_start_2e .. :try_end_4d} :catchall_9e

    .line 1848
    :try_start_4d
    new-instance v8, Landroid/util/ArrayMap;

    iget-object v7, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-direct {v8, v7}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1849
    monitor-exit v6
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_a3

    if-eqz v5, :cond_a0

    .line 1852
    :try_start_57
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/android/internal/statusbar/RegisterStatusBarResult;

    iget v6, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v9, 0x1

    .line 1854
    invoke-virtual {v0, v6, v9}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v9

    invoke-static {v5}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmAppearance(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v10

    invoke-static {v5}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmAppearanceRegions(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/view/AppearanceRegion;

    move-result-object v11

    invoke-static {v5}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmImeWindowVis(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v12

    invoke-static {v5}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmImeBackDisposition(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v13

    invoke-static {v5}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmShowImeSwitcher(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v14

    iget v6, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v15, 0x2

    .line 1858
    invoke-virtual {v0, v6, v15}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v15

    invoke-static {v5}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmNavbarColorManagedByIme(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v16

    invoke-static {v5}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmBehavior(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v17

    invoke-static {v5}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmRequestedVisibleTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v18

    invoke-static {v5}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmPackageName(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v5}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmTransientBarTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v20

    invoke-static {v5}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmLetterboxDetails(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/statusbar/LetterboxDetails;

    move-result-object v21

    invoke-direct/range {v7 .. v21}, Lcom/android/internal/statusbar/RegisterStatusBarResult;-><init>(Landroid/util/ArrayMap;II[Lcom/android/internal/view/AppearanceRegion;IIZIZIILjava/lang/String;I[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 1852
    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9d
    .catchall {:try_start_57 .. :try_end_9d} :catchall_9e

    goto :goto_a0

    :catchall_9e
    move-exception v0

    goto :goto_a8

    :cond_a0
    :goto_a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :catchall_a3
    move-exception v0

    .line 1849
    :try_start_a4
    monitor-exit v6
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    :try_start_a5
    throw v0

    .line 1865
    :cond_a6
    monitor-exit v1

    return-object v2

    .line 1866
    :goto_a8
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_9e

    throw v0
.end method

.method public remTile(Landroid/content/ComponentName;)V
    .registers 3

    .line 1152
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 1153
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1155
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f

    .line 1157
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->remQsTile(Landroid/content/ComponentName;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 4

    .line 1584
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1585
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1587
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1588
    :try_start_9
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_16

    if-eqz p0, :cond_18

    .line 1593
    :try_start_12
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_18
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 1597
    :catch_18
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_16

    throw p0
.end method

.method public requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p5

    .line 2410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2411
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2414
    iget-object v3, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v8, 0x0

    const-string/jumbo v9, "requestAddTile"

    const/4 v7, 0x0

    move/from16 v6, p4

    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move v7, v5

    .line 2418
    invoke-virtual {v1, v10, v7, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCallingUidPackage(Ljava/lang/String;II)V

    .line 2420
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    if-eq v6, v0, :cond_3a

    const/16 v0, 0x3eb

    .line 2425
    :try_start_2c
    invoke-interface {v11, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception v0

    .line 2427
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 2433
    :cond_3a
    invoke-virtual {v1, v2, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->isComponentValidTileService(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_10a

    .line 2434
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-nez v0, :cond_48

    goto/16 :goto_10a

    .line 2443
    :cond_48
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    .line 2444
    invoke-static {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v0

    const/16 v3, 0x64

    if-eq v0, v3, :cond_66

    const/16 v0, 0x3ec

    .line 2447
    :try_start_58
    invoke-interface {v11, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5b} :catch_5c

    return-void

    :catch_5c
    move-exception v0

    .line 2450
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 2455
    :cond_66
    iget-object v3, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 2456
    :try_start_69
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2457
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    if-eqz v0, :cond_98

    .line 2458
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v4, v12

    sget-wide v14, Lcom/android/server/statusbar/StatusBarManagerService;->REQUEST_TIME_OUT:J
    :try_end_7f
    .catchall {:try_start_69 .. :try_end_7f} :catchall_89

    cmp-long v9, v12, v14

    if-gez v9, :cond_98

    const/16 v0, 0x3e9

    .line 2460
    :try_start_85
    invoke-interface {v11, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_88} :catch_8c
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_95

    :catchall_89
    move-exception v0

    goto/16 :goto_108

    :catch_8c
    move-exception v0

    .line 2463
    :try_start_8d
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2465
    :goto_95
    monitor-exit v3

    goto/16 :goto_107

    :cond_98
    if-eqz v0, :cond_9d

    .line 2468
    invoke-virtual {v1, v10}, Lcom/android/server/statusbar/StatusBarManagerService;->cancelRequestAddTileInternal(Ljava/lang/String;)V

    .line 2472
    :cond_9d
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v10, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2473
    monitor-exit v3
    :try_end_a7
    .catchall {:try_start_8d .. :try_end_a7} :catchall_89

    .line 2475
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-virtual {v0, v6, v2}, Lcom/android/server/statusbar/TileRequestTracker;->shouldBeDenied(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 2476
    invoke-virtual {v1, v10}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_107

    const/4 v0, 0x0

    .line 2478
    :try_start_b6
    invoke-interface {v11, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_b9} :catch_ba

    return-void

    :catch_ba
    move-exception v0

    .line 2480
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile - callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 2486
    :cond_c4
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$3;

    move-object v3, v2

    move v2, v6

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService$3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/content/ComponentName;Ljava/lang/String;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    move-object v9, v1

    .line 2506
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v9, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2507
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v6, v0

    .line 2508
    iget-object v0, v9, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f5

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move v1, v7

    .line 2511
    :try_start_e8
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBar;->requestAddTile(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_e8 .. :try_end_eb} :catch_ec

    return-void

    :catch_ec
    move-exception v0

    .line 2514
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2517
    :cond_f5
    invoke-virtual {v9, v10}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    const/16 v0, 0x3ed

    .line 2519
    :try_start_fa
    invoke-interface {v11, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_fd
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_fd} :catch_fe

    goto :goto_107

    :catch_fe
    move-exception v0

    .line 2521
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_107
    :goto_107
    return-void

    .line 2473
    :goto_108
    :try_start_108
    monitor-exit v3
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_89

    throw v0

    :cond_10a
    :goto_10a
    const/16 v0, 0x3ea

    .line 2436
    :try_start_10c
    invoke-interface {v11, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_10c .. :try_end_10f} :catch_110

    return-void

    :catch_110
    move-exception v0

    .line 2438
    const-string v1, "StatusBarManagerService"

    const-string/jumbo v2, "requestAddTile"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public requestTileServiceListeningState(Landroid/content/ComponentName;I)V
    .registers 11

    .line 2365
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2366
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-wide/32 v0, 0xa445ae6

    .line 2368
    invoke-static {v0, v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2373
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v5, 0x0

    const-string/jumbo v6, "requestTileServiceListeningState"

    const/4 v4, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2378
    invoke-virtual {p0, v7, v2, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCallingUidPackage(Ljava/lang/String;II)V

    .line 2380
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    if-eq p2, v0, :cond_52

    const-wide/32 p0, 0xe6f99b4

    .line 2384
    invoke-static {p0, p1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_36

    goto :goto_64

    .line 2387
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not the current user."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2392
    :cond_52
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_64

    .line 2395
    :try_start_56
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->requestTileServiceListeningState(Landroid/content/ComponentName;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception v0

    move-object p0, v0

    .line 2397
    const-string p1, "StatusBarManagerService"

    const-string/jumbo p2, "requestTileServiceListeningState"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_64
    :goto_64
    return-void
.end method

.method public final resolveEnabledComponent(ZI)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-ne p2, p0, :cond_4

    return p0

    :cond_4
    if-nez p2, :cond_7

    return p1

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public restart()V
    .registers 5

    .line 1984
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1985
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1987
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1989
    :try_start_a
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .line 1993
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1994
    throw p0
.end method

.method public runGcForTest()V
    .registers 2

    .line 1521
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_11

    .line 1526
    invoke-static {}, Lcom/android/internal/util/GcUtils;->runGcAndFinalizersSync()V

    .line 1528
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_10

    .line 1530
    :try_start_b
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->runGcForTest()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_10

    :catch_10
    :cond_10
    return-void

    .line 1522
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "runGcForTest requires a debuggable build"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .registers 3

    .line 1306
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1307
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1309
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_9
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBiometricContextListener:Landroid/hardware/biometrics/IBiometricContextListener;

    .line 1311
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_16

    .line 1312
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_15

    .line 1314
    :try_start_10
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    return-void

    :catchall_16
    move-exception p0

    .line 1311
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final setDisableFlags(IILjava/lang/String;)V
    .registers 13

    .line 1629
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUserOnDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1637
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    const v0, -0x7ff0001

    and-int/2addr v0, p2

    if-eqz v0, :cond_2f

    .line 1641
    const-string v1, "StatusBarManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown disable flags: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1647
    :cond_2f
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1648
    :try_start_32
    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    const/4 v8, 0x1

    move-object v2, p0

    move v3, p1

    move v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 1649
    monitor-exit v1

    return-void

    :catchall_40
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_40

    throw p0
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 16

    .line 1539
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1540
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1542
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1543
    :try_start_9
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    sget-object v9, Lcom/android/internal/statusbar/StatusBarIcon$Type;->SystemIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    const/4 v7, 0x0

    move-object v3, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;Lcom/android/internal/statusbar/StatusBarIcon$Type;)V

    .line 1546
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_24

    if-eqz p0, :cond_27

    .line 1551
    :try_start_20
    invoke-interface {p0, p1, v2}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_27
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_27

    :catchall_24
    move-exception v0

    move-object p0, v0

    goto :goto_29

    .line 1555
    :catch_27
    :cond_27
    :goto_27
    :try_start_27
    monitor-exit v1

    return-void

    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    throw p0
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 6

    .line 1560
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1561
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1563
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1564
    :try_start_9
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    if-nez v1, :cond_17

    .line 1566
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    goto :goto_26

    .line 1568
    :cond_17
    iget-boolean v2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v2, p2, :cond_24

    .line 1569
    iput-boolean p2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 1571
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_15

    if-eqz p0, :cond_24

    .line 1574
    :try_start_21
    invoke-interface {p0, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_15

    .line 1579
    :catch_24
    :cond_24
    :try_start_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_15

    throw p0
.end method

.method public setImeWindowStatus(IIIZ)V
    .registers 13

    .line 1603
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1604
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1610
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1614
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$msetImeWindowState(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZ)V

    .line 1616
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda3;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;IIIZ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1625
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_21

    throw p0
.end method

.method public setNavBarMode(I)V
    .registers 10

    .line 2591
    const-string v0, "com.android.internal.systemui.navbar.gestural"

    const-string v1, "com.android.internal.systemui.navbar.twobutton"

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2592
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    const/4 v2, 0x1

    if-eqz p1, :cond_27

    if-ne p1, v2, :cond_10

    goto :goto_27

    .line 2595
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supplied navBarMode not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2598
    :cond_27
    :goto_27
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 2599
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2600
    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    if-eq v5, v4, :cond_62

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->doesCallerHoldInteractAcrossUserPermission()Z

    move-result v5

    if-eqz v5, :cond_3c

    goto :goto_62

    .line 2601
    :cond_3c
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling user id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cannot call on behalf of current user id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2605
    :cond_62
    :goto_62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2607
    :try_start_66
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "nav_bar_kids_mode"

    invoke-static {v6, v7, p1, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2609
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "nav_bar_force_visible"

    invoke-static {v6, v7, p1, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2612
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->getOverlayManager()Landroid/content/om/IOverlayManager;

    move-result-object v6
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_82} :catch_94
    .catchall {:try_start_66 .. :try_end_82} :catchall_92

    .line 2613
    const-string v7, "com.android.internal.systemui.navbar.threebutton"

    if-eqz v6, :cond_96

    if-ne p1, v2, :cond_96

    .line 2614
    :try_start_88
    invoke-virtual {p0, v7}, Lcom/android/server/statusbar/StatusBarManagerService;->isPackageSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 2615
    invoke-interface {v6, v7, v3}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    goto :goto_d1

    :catchall_92
    move-exception p0

    goto :goto_da

    :catch_94
    move-exception p0

    goto :goto_d5

    :cond_96
    if-eqz v6, :cond_d1

    if-nez p1, :cond_d1

    .line 2618
    invoke-interface {v6}, Landroid/content/om/IOverlayManager;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2619
    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 2620
    invoke-virtual {p0, v7}, Lcom/android/server/statusbar/StatusBarManagerService;->isPackageSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 2621
    invoke-interface {v6, v7, v3}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    goto :goto_d1

    .line 2623
    :cond_b2
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 2624
    invoke-virtual {p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->isPackageSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 2625
    invoke-interface {v6, v1, v3}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    goto :goto_d1

    .line 2627
    :cond_c2
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d1

    .line 2628
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->isPackageSupported(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d1

    .line 2629
    invoke-interface {v6, v0, v3}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_d1} :catch_94
    .catchall {:try_start_88 .. :try_end_d1} :catchall_92

    .line 2636
    :cond_d1
    :goto_d1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2634
    :goto_d5
    :try_start_d5
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_da
    .catchall {:try_start_d5 .. :try_end_da} :catchall_92

    .line 2636
    :goto_da
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2637
    throw p0
.end method

.method public setTiles(Ljava/lang/String;)V
    .registers 3

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 1166
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_12

    .line 1168
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setQsTiles([Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method

.method public setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    .registers 3

    .line 1322
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1325
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f

    .line 1327
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V
    .registers 13

    .line 1240
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 1241
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1243
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f

    .line 1245
    :try_start_a
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface/range {p0 .. p11}, Lcom/android/internal/statusbar/IStatusBar;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public showInattentiveSleepWarning()V
    .registers 1

    .line 2284
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2285
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2287
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_d

    .line 2290
    :try_start_a
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->showInattentiveSleepWarning()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .registers 3

    .line 1214
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1216
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 1218
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEnterExitToast(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public showPinningEscapeToast()V
    .registers 2

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1228
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 1230
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEscapeToast()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public showRearDisplayDialog(I)V
    .registers 3

    .line 2792
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceControlDeviceStatePermission()V

    .line 2793
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2795
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_17

    .line 2798
    :try_start_a
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRearDisplayDialog(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 2800
    const-string p1, "StatusBarManagerService"

    const-string/jumbo v0, "showRearDisplayDialog"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    return-void
.end method

.method public shutdown()V
    .registers 5

    .line 1938
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1939
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1942
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v1, "userrequested"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(ILjava/lang/String;)V

    .line 1943
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1945
    :try_start_14
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0}, Lcom/android/server/notification/NotificationDelegate;->prepareForPossibleShutdown()V

    .line 1947
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_27

    .line 1950
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1951
    throw p0
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .registers 3

    .line 2807
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2808
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_16

    .line 2810
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 2812
    const-string p1, "StatusBarManagerService"

    const-string/jumbo v0, "startAssist"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    return-void
.end method

.method public startTracing()V
    .registers 2

    .line 1335
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1337
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f

    .line 1339
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->startTracing()V

    const/4 v0, 0x1

    .line 1340
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTracingEnabled:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public stopTracing()V
    .registers 2

    .line 1348
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1350
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 1352
    :try_start_8
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTracingEnabled:Z

    .line 1353
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->stopTracing()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public suppressAmbientDisplay(Z)V
    .registers 2

    .line 2312
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2313
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2315
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_d

    .line 2318
    :try_start_a
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->suppressAmbientDisplay(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return-void
.end method

.method public toggleCameraFlash()V
    .registers 3

    .line 1365
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_12

    .line 1367
    :try_start_4
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->toggleCameraFlash()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 1369
    const-string v0, "StatusBarManagerService"

    const-string v1, "Unable to toggle camera flash:"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    return-void
.end method

.method public togglePanel()V
    .registers 2

    .line 1104
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 1106
    const-string/jumbo v0, "togglePanel"

    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCanCollapseStatusBar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1e

    :cond_d
    const/4 v0, 0x4

    .line 1110
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->isDisable2FlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1e

    .line 1114
    :cond_15
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1e

    .line 1116
    :try_start_19
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->toggleNotificationsPanel()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1e

    :catch_1e
    :cond_1e
    :goto_1e
    return-void
.end method

.method public unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .registers 3

    .line 2776
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceMediaContentControl()V

    .line 2777
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2779
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_17

    .line 2782
    :try_start_a
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 2784
    const-string p1, "StatusBarManagerService"

    const-string/jumbo v0, "unregisterNearbyMediaDevicesProvider"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    return-void
.end method

.method public unregisterSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    .registers 3

    .line 2576
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2578
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/SessionMonitor;->unregisterSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    return-void
.end method

.method public updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .registers 5

    .line 2719
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceMediaContentControl()V

    .line 2720
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2722
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_17

    .line 2725
    :try_start_a
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 2728
    const-string p1, "StatusBarManagerService"

    const-string/jumbo p2, "updateMediaTapToTransferReceiverDisplay"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    return-void
.end method

.method public updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    .registers 4

    .line 2693
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceMediaContentControl()V

    .line 2694
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceValidCallingUser()V

    .line 2696
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_17

    .line 2699
    :try_start_a
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 2701
    const-string p1, "StatusBarManagerService"

    const-string/jumbo p2, "updateMediaTapToTransferSenderDisplay"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    return-void
.end method
