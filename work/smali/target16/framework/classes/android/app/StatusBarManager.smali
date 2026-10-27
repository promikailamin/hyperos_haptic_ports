.class public Landroid/app/StatusBarManager;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/StatusBarManager$DisableInfo;,
        Landroid/app/StatusBarManager$RequestResultCallback;,
        Landroid/app/StatusBarManager$UndoCallback;,
        Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;,
        Landroid/app/StatusBarManager$MediaTransferReceiverState;,
        Landroid/app/StatusBarManager$MediaTransferSenderState;,
        Landroid/app/StatusBarManager$NavBarMode;,
        Landroid/app/StatusBarManager$RequestResult;,
        Landroid/app/StatusBarManager$SessionFlags;,
        Landroid/app/StatusBarManager$WindowVisibleState;,
        Landroid/app/StatusBarManager$WindowType;,
        Landroid/app/StatusBarManager$NavbarFlags;,
        Landroid/app/StatusBarManager$Disable2Flags;,
        Landroid/app/StatusBarManager$DisableFlags;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_KEYGUARD_PRIVATE_NOTIFICATIONS_CHANGED:Ljava/lang/String; = "android.app.action.KEYGUARD_PRIVATE_NOTIFICATIONS_CHANGED"

.field public static final blacklist ALL_SESSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o CAMERA_LAUNCH_SOURCE_LIFT_TRIGGER:I = 0x2

.field public static final greylist-max-o CAMERA_LAUNCH_SOURCE_POWER_DOUBLE_TAP:I = 0x1

.field public static final blacklist CAMERA_LAUNCH_SOURCE_QUICK_AFFORDANCE:I = 0x3

.field public static final blacklist CAMERA_LAUNCH_SOURCE_SCREEN_GESTURE:I = 0x4

.field public static final greylist-max-o CAMERA_LAUNCH_SOURCE_WIGGLE:I = 0x0

.field public static final blacklist DEFAULT_SETUP_DISABLE2_FLAGS:I = 0x0

.field public static final blacklist DEFAULT_SETUP_DISABLE_FLAGS:I = 0x3a50000

.field private static final blacklist DEFAULT_SIM_LOCKED_DISABLED_FLAGS:I = 0x10000

.field public static final greylist-max-o DISABLE2_GLOBAL_ACTIONS:I = 0x8

.field public static final greylist-max-o DISABLE2_MASK:I = 0x1f

.field public static final greylist-max-o DISABLE2_NONE:I = 0x0

.field public static final greylist-max-o DISABLE2_NOTIFICATION_SHADE:I = 0x4

.field public static final greylist-max-o DISABLE2_QUICK_SETTINGS:I = 0x1

.field public static final greylist-max-o DISABLE2_ROTATE_SUGGESTIONS:I = 0x10

.field public static final greylist-max-o DISABLE2_SYSTEM_ICONS:I = 0x2

.field public static final greylist-max-o DISABLE_BACK:I = 0x400000

.field public static final greylist-max-o DISABLE_CLOCK:I = 0x800000

.field public static final blacklist DISABLE_EXPAND:I = 0x10000

.field public static final greylist-max-o DISABLE_HOME:I = 0x200000

.field public static final greylist-max-o DISABLE_MASK:I = 0x7ff0000

.field public static final greylist-max-o DISABLE_NAVIGATION:I = 0x1200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DISABLE_NONE:I = 0x0

.field public static final greylist-max-o DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final greylist-max-o DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final greylist-max-r DISABLE_NOTIFICATION_TICKER:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DISABLE_ONGOING_CALL_CHIP:I = 0x4000000

.field public static final greylist-max-o DISABLE_RECENT:I = 0x1000000

.field public static final greylist-max-o DISABLE_SEARCH:I = 0x2000000

.field public static final greylist-max-o DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final blacklist EXTRA_KM_PRIVATE_NOTIFS_ALLOWED:Ljava/lang/String; = "android.app.extra.KM_PRIVATE_NOTIFS_ALLOWED"

.field private static final blacklist MEDIA_CONTROL_BLANK_TITLE:J = 0x1060bc96L

.field private static final blacklist MEDIA_CONTROL_MEDIA3_ACTIONS:J = 0x15782871L

.field private static final blacklist MEDIA_CONTROL_SESSION_ACTIONS:J = 0xc25bf22L

.field public static final whitelist MEDIA_TRANSFER_RECEIVER_STATE_CLOSE_TO_SENDER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_RECEIVER_STATE_FAR_FROM_SENDER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_RECEIVER_STATE_TRANSFER_TO_RECEIVER_FAILED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_RECEIVER_STATE_TRANSFER_TO_RECEIVER_SUCCEEDED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_ALMOST_CLOSE_TO_END_CAST:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_ALMOST_CLOSE_TO_START_CAST:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_FAR_FROM_RECEIVER:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_RECEIVER_FAILED:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_RECEIVER_SUCCEEDED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_RECEIVER_TRIGGERED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_THIS_DEVICE_FAILED:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_THIS_DEVICE_SUCCEEDED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_THIS_DEVICE_TRIGGERED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAVBAR_BACK_DISMISS_IME:I = 0x1

.field public static final blacklist NAVBAR_IME_SWITCHER_BUTTON_VISIBLE:I = 0x4

.field public static final blacklist NAVBAR_IME_VISIBLE:I = 0x2

.field public static final whitelist NAV_BAR_MODE_DEFAULT:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAV_BAR_MODE_KIDS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SESSION_BIOMETRIC_PROMPT:I = 0x2

.field public static final blacklist SESSION_KEYGUARD:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "StatusBarManager"

.field public static final whitelist TILE_ADD_REQUEST_ERROR_APP_NOT_IN_FOREGROUND:I = 0x3ec

.field public static final whitelist TILE_ADD_REQUEST_ERROR_BAD_COMPONENT:I = 0x3ea

.field public static final whitelist TILE_ADD_REQUEST_ERROR_MISMATCHED_PACKAGE:I = 0x3e8

.field public static final whitelist TILE_ADD_REQUEST_ERROR_NOT_CURRENT_USER:I = 0x3eb

.field public static final whitelist TILE_ADD_REQUEST_ERROR_NO_STATUS_BAR_SERVICE:I = 0x3ed

.field public static final whitelist TILE_ADD_REQUEST_ERROR_REQUEST_IN_PROGRESS:I = 0x3e9

.field private static final blacklist TILE_ADD_REQUEST_FIRST_ERROR_CODE:I = 0x3e8

.field public static final blacklist TILE_ADD_REQUEST_RESULT_DIALOG_DISMISSED:I = 0x3

.field public static final whitelist TILE_ADD_REQUEST_RESULT_TILE_ADDED:I = 0x2

.field public static final whitelist TILE_ADD_REQUEST_RESULT_TILE_ALREADY_ADDED:I = 0x1

.field public static final whitelist TILE_ADD_REQUEST_RESULT_TILE_NOT_ADDED:I = 0x0

.field public static final greylist-max-o WINDOW_NAVIGATION_BAR:I = 0x2

.field public static final greylist-max-o WINDOW_STATE_HIDDEN:I = 0x2

.field public static final greylist-max-o WINDOW_STATE_HIDING:I = 0x1

.field public static final greylist-max-o WINDOW_STATE_SHOWING:I = 0x0

.field public static final greylist-max-o WINDOW_STATUS_BAR:I = 0x1


# instance fields
.field private greylist mContext:Landroid/content/Context;

.field private final blacklist mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private greylist-max-o mService:Lcom/android/internal/statusbar/IStatusBarService;

.field private greylist mToken:Landroid/os/IBinder;

.field private final blacklist nearbyMediaDevicesProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/NearbyMediaDevicesProvider;",
            "Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 313
    nop

    .line 314
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 315
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 313
    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/app/StatusBarManager;->ALL_SESSIONS:Ljava/util/Set;

    return-void
.end method

.method constructor greylist <init>(Landroid/content/Context;)V
    .registers 3

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    .line 652
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    .line 655
    nop

    .line 656
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 655
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 660
    iput-object p1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 661
    return-void
.end method

.method private blacklist clickNotificationInternal(Ljava/lang/String;IIZ)V
    .registers 6

    .line 726
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 727
    if-eqz v0, :cond_e

    .line 728
    nop

    .line 729
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p2

    .line 728
    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 733
    :cond_e
    nop

    .line 734
    return-void

    .line 731
    :catch_10
    move-exception p1

    .line 732
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private declared-synchronized greylist getService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    monitor-enter p0

    .line 665
    :try_start_1
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1e

    .line 666
    const-string/jumbo v0, "statusbar"

    .line 667
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 666
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 668
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1e

    .line 669
    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_1e
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    .line 664
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method static synthetic blacklist lambda$requestAddTileService$0(Ljava/util/function/Consumer;)V
    .registers 2

    .line 1063
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist navbarFlagsToString(I)Ljava/lang/String;
    .registers 3

    .line 1365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1366
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 1367
    const-string v1, "NAVBAR_BACK_DISMISS_IME"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    .line 1370
    const-string v1, "NAVBAR_IME_VISIBLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    :cond_17
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_20

    .line 1373
    const-string p0, "NAVBAR_IME_SWITCHER_BUTTON_VISIBLE"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    :cond_20
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist useMedia3ControllerForApp(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4

    .line 1328
    const-wide/32 v0, 0x15782871

    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static blacklist useMediaSessionActionsForApp(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4

    .line 1294
    const-wide/32 v0, 0xc25bf22

    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o windowStateToString(I)Ljava/lang/String;
    .registers 2

    .line 1380
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "WINDOW_STATE_HIDING"

    return-object p0

    .line 1381
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "WINDOW_STATE_HIDDEN"

    return-object p0

    .line 1382
    :cond_c
    if-nez p0, :cond_11

    const-string p0, "WINDOW_STATE_SHOWING"

    return-object p0

    .line 1383
    :cond_11
    const-string p0, "WINDOW_STATE_UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public whitelist canLaunchCaptureContentActivityForNote(Landroid/app/Activity;)Z
    .registers 4

    .line 1355
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    .line 1357
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityClient;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result p1

    .line 1358
    new-instance v0, Lcom/android/internal/statusbar/AppClipsServiceConnector;

    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/statusbar/AppClipsServiceConnector;-><init>(Landroid/content/Context;)V

    .line 1359
    invoke-virtual {v0, p1}, Lcom/android/internal/statusbar/AppClipsServiceConnector;->canLaunchCaptureContentActivityForNote(I)Z

    move-result p1

    .line 1358
    return p1
.end method

.method public blacklist cancelRequestAddTile(Ljava/lang/String;)V
    .registers 3

    .line 1089
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1092
    :try_start_7
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelRequestAddTile(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1095
    goto :goto_f

    .line 1093
    :catch_b
    move-exception p1

    .line 1094
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1096
    :goto_f
    return-void
.end method

.method public blacklist clickNotification(Ljava/lang/String;IIZ)V
    .registers 5

    .line 721
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/StatusBarManager;->clickNotificationInternal(Ljava/lang/String;IIZ)V

    .line 722
    return-void
.end method

.method public greylist-max-r collapsePanels()V
    .registers 2

    .line 788
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 789
    if-eqz v0, :cond_9

    .line 790
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 794
    :cond_9
    nop

    .line 795
    return-void

    .line 792
    :catch_b
    move-exception v0

    .line 793
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist disable(I)V
    .registers 6

    .line 684
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 685
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 686
    if-eqz v1, :cond_19

    .line 687
    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    .line 691
    :cond_19
    nop

    .line 692
    return-void

    .line 689
    :catch_1b
    move-exception p1

    .line 690
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o disable2(I)V
    .registers 6

    .line 704
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 705
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 706
    if-eqz v1, :cond_19

    .line 707
    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    .line 711
    :cond_19
    nop

    .line 712
    return-void

    .line 709
    :catch_1b
    move-exception p1

    .line 710
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist expandNotificationsPanel()V
    .registers 2

    .line 762
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 763
    if-eqz v0, :cond_9

    .line 764
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 768
    :cond_9
    nop

    .line 769
    return-void

    .line 766
    :catch_b
    move-exception v0

    .line 767
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist expandSettingsPanel()V
    .registers 2

    .line 863
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->expandSettingsPanel(Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public greylist-max-r expandSettingsPanel(Ljava/lang/String;)V
    .registers 3

    .line 875
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_9

    .line 877
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 881
    :cond_9
    nop

    .line 882
    return-void

    .line 879
    :catch_b
    move-exception p1

    .line 880
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getDisableInfo()Landroid/app/StatusBarManager$DisableInfo;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 985
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 986
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 987
    const/4 v2, 0x0

    filled-new-array {v2, v2}, [I

    move-result-object v3

    .line 988
    if-eqz v1, :cond_19

    .line 989
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->getDisableFlags(Landroid/os/IBinder;I)[I

    move-result-object v3

    .line 992
    :cond_19
    new-instance v0, Landroid/app/StatusBarManager$DisableInfo;

    aget v1, v3, v2

    const/4 v2, 0x1

    aget v2, v3, v2

    invoke-direct {v0, v1, v2}, Landroid/app/StatusBarManager$DisableInfo;-><init>(II)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v0

    .line 993
    :catch_24
    move-exception v0

    .line 994
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getLastSystemKey()I
    .registers 2

    .line 846
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 847
    if-eqz v0, :cond_b

    .line 848
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->getLastSystemKey()I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    return v0

    .line 852
    :cond_b
    nop

    .line 853
    const/4 v0, -0x1

    return v0

    .line 850
    :catch_e
    move-exception v0

    .line 851
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getNavBarMode()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1130
    nop

    .line 1132
    :try_start_1
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1133
    if-eqz v0, :cond_c

    .line 1134
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->getNavBarMode()I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_f

    goto :goto_d

    .line 1133
    :cond_c
    const/4 v0, 0x0

    .line 1138
    :goto_d
    nop

    .line 1139
    return v0

    .line 1136
    :catch_f
    move-exception v0

    .line 1137
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist handleSystemKey(Landroid/view/KeyEvent;)V
    .registers 3

    .line 824
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 825
    if-eqz v0, :cond_9

    .line 826
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(Landroid/view/KeyEvent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 830
    :cond_9
    nop

    .line 831
    return-void

    .line 828
    :catch_b
    move-exception p1

    .line 829
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist logBlankMediaTitle(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1309
    :try_start_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v1, 0x1060bc96

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/internal/compat/IPlatformCompat;->reportChangeByPackageName(JLjava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 1313
    nop

    .line 1314
    return-void

    .line 1311
    :catch_a
    move-exception p1

    .line 1312
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist registerNearbyMediaDevicesProvider(Landroid/media/NearbyMediaDevicesProvider;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1237
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    iget-object v0, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1239
    return-void

    .line 1242
    :cond_c
    :try_start_c
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1243
    new-instance v1, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;

    invoke-direct {v1, p1}, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;-><init>(Landroid/media/NearbyMediaDevicesProvider;)V

    .line 1245
    iget-object v2, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1f

    .line 1249
    nop

    .line 1250
    return-void

    .line 1247
    :catch_1f
    move-exception p1

    .line 1248
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-r removeIcon(Ljava/lang/String;)V
    .registers 3

    .line 902
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 903
    if-eqz v0, :cond_9

    .line 904
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->removeIcon(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 908
    :cond_9
    nop

    .line 909
    return-void

    .line 906
    :catch_b
    move-exception p1

    .line 907
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist requestAddTileService(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1056
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1062
    new-instance p1, Landroid/app/StatusBarManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p5}, Landroid/app/StatusBarManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1064
    return-void

    .line 1066
    :cond_28
    iget-object v0, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 1067
    move-object v1, p5

    new-instance p5, Landroid/app/StatusBarManager$RequestResultCallback;

    invoke-direct {p5, p4, v1}, Landroid/app/StatusBarManager$RequestResultCallback;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1069
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p4

    .line 1071
    move-object p0, p4

    move p4, v0

    :try_start_3a
    invoke-interface/range {p0 .. p5}, Lcom/android/internal/statusbar/IStatusBarService;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 1080
    goto :goto_43

    .line 1078
    :catch_3e
    move-exception v0

    move-object p1, v0

    .line 1079
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1081
    :goto_43
    return-void
.end method

.method public blacklist requestTileServiceListeningState(Landroid/content/ComponentName;)V
    .registers 4

    .line 1008
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    :try_start_3
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/statusbar/IStatusBarService;->requestTileServiceListeningState(Landroid/content/ComponentName;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_12

    .line 1013
    nop

    .line 1014
    return-void

    .line 1011
    :catch_12
    move-exception p1

    .line 1012
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist sendNotificationFeedback(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 744
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 745
    if-eqz v0, :cond_9

    .line 746
    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 750
    :cond_9
    nop

    .line 751
    return-void

    .line 748
    :catch_b
    move-exception p1

    .line 749
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setDisabledForSetup(Z)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 936
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 937
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 938
    if-eqz v1, :cond_2d

    .line 939
    const/4 v2, 0x0

    if-eqz p1, :cond_14

    const/high16 v3, 0x3a50000

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    iget-object v4, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 940
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 939
    invoke-interface {v1, v3, v4, v5, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 941
    if-eqz p1, :cond_22

    :cond_22
    iget-object p1, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 942
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 941
    invoke-interface {v1, v2, p1, v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2f

    .line 946
    :cond_2d
    nop

    .line 947
    return-void

    .line 944
    :catch_2f
    move-exception p1

    .line 945
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setExpansionDisabledForSimNetworkLock(Z)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 962
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 963
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 964
    if-eqz v1, :cond_1f

    .line 965
    if-eqz p1, :cond_13

    const/high16 p1, 0x10000

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 966
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 965
    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_21

    .line 970
    :cond_1f
    nop

    .line 971
    return-void

    .line 968
    :catch_21
    move-exception p1

    .line 969
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-r setIcon(Ljava/lang/String;IILjava/lang/String;)V
    .registers 11

    .line 888
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 889
    if-eqz v0, :cond_13

    .line 890
    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 895
    :cond_13
    nop

    .line 896
    return-void

    .line 893
    :catch_15
    move-exception v0

    move-object p1, v0

    .line 894
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-r setIconVisibility(Ljava/lang/String;Z)V
    .registers 4

    .line 915
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_9

    .line 917
    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 921
    :cond_9
    nop

    .line 922
    return-void

    .line 919
    :catch_b
    move-exception p1

    .line 920
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setNavBarMode(I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1108
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 1109
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied navBarMode not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1113
    :cond_1f
    :goto_1f
    :try_start_1f
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1114
    if-eqz v0, :cond_28

    .line 1115
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setNavBarMode(I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_2a

    .line 1119
    :cond_28
    nop

    .line 1120
    return-void

    .line 1117
    :catch_2a
    move-exception p1

    .line 1118
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist togglePanel()V
    .registers 2

    .line 806
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 807
    if-eqz v0, :cond_9

    .line 808
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 812
    :cond_9
    nop

    .line 813
    return-void

    .line 810
    :catch_b
    move-exception v0

    .line 811
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist unregisterNearbyMediaDevicesProvider(Landroid/media/NearbyMediaDevicesProvider;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1267
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    iget-object v0, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1269
    return-void

    .line 1272
    :cond_c
    :try_start_c
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1273
    iget-object v1, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    .line 1274
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;

    .line 1275
    iget-object v2, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_20} :catch_22

    .line 1279
    nop

    .line 1280
    return-void

    .line 1277
    :catch_22
    move-exception p1

    .line 1278
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1212
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1215
    :try_start_7
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1218
    goto :goto_f

    .line 1216
    :catch_b
    move-exception p1

    .line 1217
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1219
    :goto_f
    return-void
.end method

.method public whitelist updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1171
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    const/4 v0, 0x4

    if-eq p1, v0, :cond_14

    const/4 v0, 0x5

    if-eq p1, v0, :cond_14

    if-nez p4, :cond_c

    goto :goto_14

    .line 1175
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The undoCallback should only be provided when the state is a transfer succeeded state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1179
    :cond_14
    :goto_14
    if-eqz p4, :cond_21

    if-eqz p3, :cond_19

    goto :goto_21

    .line 1180
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must pass an executor when you pass an undo callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1183
    :cond_21
    :goto_21
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1185
    nop

    .line 1186
    if-eqz p3, :cond_2e

    .line 1187
    :try_start_28
    new-instance v1, Landroid/app/StatusBarManager$UndoCallback;

    invoke-direct {v1, p3, p4}, Landroid/app/StatusBarManager$UndoCallback;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_2f

    .line 1186
    :cond_2e
    const/4 v1, 0x0

    .line 1189
    :goto_2f
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_33

    .line 1192
    goto :goto_37

    .line 1190
    :catch_33
    move-exception p1

    .line 1191
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1193
    :goto_37
    return-void
.end method
