.class public Landroid/app/UiModeManager;
.super Ljava/lang/Object;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;,
        Landroid/app/UiModeManager$Globals;,
        Landroid/app/UiModeManager$InnerListener;,
        Landroid/app/UiModeManager$OnProjectionStateChangedListener;,
        Landroid/app/UiModeManager$ContrastChangeListener;,
        Landroid/app/UiModeManager$ForceInvertStateChangeListener;,
        Landroid/app/UiModeManager$ProjectionType;,
        Landroid/app/UiModeManager$DisableCarMode;,
        Landroid/app/UiModeManager$EnableCarMode;,
        Landroid/app/UiModeManager$ContrastUtils;,
        Landroid/app/UiModeManager$UserCallback;,
        Landroid/app/UiModeManager$ForceInvertPackageOverrideState;,
        Landroid/app/UiModeManager$ForceInvertType;,
        Landroid/app/UiModeManager$NightModeCustomReturnType;,
        Landroid/app/UiModeManager$NightModeCustomType;,
        Landroid/app/UiModeManager$AttentionModeThemeOverlayReturnType;,
        Landroid/app/UiModeManager$AttentionModeThemeOverlayType;,
        Landroid/app/UiModeManager$NightMode;
    }
.end annotation


# static fields
.field public static whitelist ACTION_ENTER_CAR_MODE:Ljava/lang/String; = null

.field public static final whitelist ACTION_ENTER_CAR_MODE_PRIORITIZED:Ljava/lang/String; = "android.app.action.ENTER_CAR_MODE_PRIORITIZED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static whitelist ACTION_ENTER_DESK_MODE:Ljava/lang/String; = null

.field public static whitelist ACTION_EXIT_CAR_MODE:Ljava/lang/String; = null

.field public static final whitelist ACTION_EXIT_CAR_MODE_PRIORITIZED:Ljava/lang/String; = "android.app.action.EXIT_CAR_MODE_PRIORITIZED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static whitelist ACTION_EXIT_DESK_MODE:Ljava/lang/String; = null

.field private static final blacklist CURRENT_MODE_TYPE_API:Ljava/lang/String; = "getCurrentModeType"

.field public static final whitelist DEFAULT_PRIORITY:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DISABLE_CAR_MODE_ALL_PRIORITIES:I = 0x2

.field public static final whitelist DISABLE_CAR_MODE_GO_HOME:I = 0x1

.field public static final whitelist ENABLE_CAR_MODE_ALLOW_SLEEP:I = 0x2

.field public static final whitelist ENABLE_CAR_MODE_GO_CAR_HOME:I = 0x1

.field public static final whitelist EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "android.app.extra.CALLING_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PRIORITY:Ljava/lang/String; = "android.app.extra.PRIORITY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FORCE_INVERT_PACKAGE_ALLOWED:I = 0x0

.field public static final blacklist FORCE_INVERT_PACKAGE_ALWAYS_DISABLE:I = 0x2

.field public static final blacklist FORCE_INVERT_PACKAGE_ALWAYS_ENABLE:I = 0x1

.field public static final blacklist FORCE_INVERT_TYPE_DARK:I = 0x1

.field public static final blacklist FORCE_INVERT_TYPE_LIGHT:I = 0x2

.field public static final blacklist FORCE_INVERT_TYPE_OFF:I = 0x0

.field public static final blacklist MODE_ATTENTION_THEME_OVERLAY_DAY:I = 0x3ea

.field public static final blacklist MODE_ATTENTION_THEME_OVERLAY_NIGHT:I = 0x3e9

.field public static final blacklist MODE_ATTENTION_THEME_OVERLAY_OFF:I = 0x3e8

.field public static final blacklist MODE_ATTENTION_THEME_OVERLAY_UNKNOWN:I = -0x1

.field public static final whitelist MODE_NIGHT_AUTO:I = 0x0

.field public static final whitelist MODE_NIGHT_CUSTOM:I = 0x3

.field public static final whitelist MODE_NIGHT_CUSTOM_TYPE_BEDTIME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_NIGHT_CUSTOM_TYPE_SCHEDULE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_NIGHT_CUSTOM_TYPE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_NIGHT_NO:I = 0x1

.field public static final whitelist MODE_NIGHT_YES:I = 0x2

.field private static final blacklist NIGHT_MODE_API:Ljava/lang/String; = "getNightMode"

.field public static final whitelist PROJECTION_TYPE_ALL:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROJECTION_TYPE_AUTOMOTIVE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROJECTION_TYPE_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UiModeManager"

.field private static blacklist sGlobals:Landroid/app/UiModeManager$Globals;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mCurrentModeTypeCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCurrentModeTypeQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mNightModeCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNightModeQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

.field private final blacklist mProjectionStateListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/UiModeManager$OnProjectionStateChangedListener;",
            "Landroid/app/UiModeManager$InnerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetCurrentModeTypeFromServer(Landroid/app/UiModeManager;I)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/UiModeManager;->getCurrentModeTypeFromServer(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNightModeFromServer(Landroid/app/UiModeManager;I)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/UiModeManager;->getNightModeFromServer(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsGlobals()Landroid/app/UiModeManager$Globals;
    .registers 1

    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 159
    const-string v0, "android.app.action.ENTER_CAR_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 192
    const-string v0, "android.app.action.EXIT_CAR_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 233
    const-string v0, "android.app.action.ENTER_DESK_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    .line 240
    const-string v0, "android.app.action.EXIT_DESK_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    return-void
.end method

.method constructor greylist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 900
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/UiModeManager;-><init>(Landroid/content/Context;)V

    .line 901
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    .line 474
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    .line 482
    new-instance v0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;-><init>(Landroid/app/UiModeManager-IA;)V

    iput-object v0, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    .line 1076
    new-instance v0, Landroid/app/UiModeManager$1;

    invoke-direct {v0, p0}, Landroid/app/UiModeManager$1;-><init>(Landroid/app/UiModeManager;)V

    iput-object v0, p0, Landroid/app/UiModeManager;->mCurrentModeTypeQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 1091
    new-instance v1, Landroid/os/IpcDataCache;

    const-string/jumbo v3, "system_server"

    const-string v4, "getCurrentModeType"

    const-string v5, "CurrentModeTypeCache"

    iget-object v6, p0, Landroid/app/UiModeManager;->mCurrentModeTypeQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/4 v2, 0x1

    invoke-direct/range {v1 .. v6}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v1, p0, Landroid/app/UiModeManager;->mCurrentModeTypeCache:Landroid/os/IpcDataCache;

    .line 1313
    new-instance v0, Landroid/app/UiModeManager$2;

    invoke-direct {v0, p0}, Landroid/app/UiModeManager$2;-><init>(Landroid/app/UiModeManager;)V

    iput-object v0, p0, Landroid/app/UiModeManager;->mNightModeQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 1328
    new-instance v1, Landroid/os/IpcDataCache;

    const-string/jumbo v3, "system_server"

    const-string v4, "getNightMode"

    const-string v5, "NightModeCache"

    iget-object v6, p0, Landroid/app/UiModeManager;->mNightModeQuery:Landroid/os/IpcDataCache$QueryHandler;

    invoke-direct/range {v1 .. v6}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v1, p0, Landroid/app/UiModeManager;->mNightModeCache:Landroid/os/IpcDataCache;

    .line 904
    const-string/jumbo v0, "uimode"

    .line 905
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 904
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    .line 906
    iput-object p1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    .line 907
    if-nez v0, :cond_58

    return-void

    .line 908
    :cond_58
    iget-object p1, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 909
    :try_start_5b
    sget-object v1, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-nez v1, :cond_66

    new-instance v1, Landroid/app/UiModeManager$Globals;

    invoke-direct {v1, v0}, Landroid/app/UiModeManager$Globals;-><init>(Landroid/app/IUiModeManager;)V

    sput-object v1, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    .line 910
    :cond_66
    monitor-exit p1

    .line 911
    return-void

    .line 910
    :catchall_68
    move-exception v0

    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_68

    throw v0
.end method

.method private blacklist getCurrentModeTypeFromServer(I)Ljava/lang/Integer;
    .registers 3

    .line 1063
    :try_start_0
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_13

    .line 1064
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->getCurrentModeType(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1066
    :cond_13
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p1

    .line 1067
    :catch_19
    move-exception p1

    .line 1068
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist getDisplayId()I
    .registers 3

    .line 1918
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->deviceAwareUiMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1919
    return v1

    .line 1921
    :cond_8
    iget-object v0, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_d

    goto :goto_13

    :cond_d
    iget-object v0, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    :goto_13
    return v1
.end method

.method private blacklist getNightModeFromServer(I)Ljava/lang/Integer;
    .registers 3

    .line 1300
    :try_start_0
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_13

    .line 1301
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->getNightMode(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1303
    :cond_13
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p1

    .line 1304
    :catch_19
    move-exception p1

    .line 1305
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist getUserId()I
    .registers 2

    .line 1914
    iget-object v0, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    :goto_f
    return v0
.end method

.method public static blacklist invalidateCurrentModeTypeCache()V
    .registers 2

    .line 1103
    const-string/jumbo v0, "system_server"

    const-string v1, "getCurrentModeType"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    return-void
.end method

.method public static blacklist invalidateNightModeCache()V
    .registers 2

    .line 1339
    const-string/jumbo v0, "system_server"

    const-string v1, "getNightMode"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    return-void
.end method


# virtual methods
.method public whitelist addContrastChangeListener(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ContrastChangeListener;)V
    .registers 5

    .line 1817
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->fixContrastAndForceInvertStateForMultiUser()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1820
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-direct {p0}, Landroid/app/UiModeManager;->getUserId()I

    move-result v1

    invoke-static {v0, p2, p1, v1}, Landroid/app/UiModeManager$Globals;->-$$Nest$maddContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;I)V

    .line 1821
    return-void

    .line 1823
    :cond_16
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0, p2, p1}, Landroid/app/UiModeManager$Globals;->-$$Nest$maddContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V

    .line 1824
    return-void
.end method

.method public blacklist addForceInvertStateChangeListener(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V
    .registers 5

    .line 1867
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->fixContrastAndForceInvertStateForMultiUser()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1870
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-direct {p0}, Landroid/app/UiModeManager;->getUserId()I

    move-result v1

    invoke-static {v0, p2, p1, v1}, Landroid/app/UiModeManager$Globals;->-$$Nest$maddForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;I)V

    .line 1871
    return-void

    .line 1873
    :cond_16
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0, p2, p1}, Landroid/app/UiModeManager$Globals;->-$$Nest$maddForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V

    .line 1874
    return-void
.end method

.method public whitelist addOnProjectionStateChangedListener(ILjava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1672
    iget-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1673
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1674
    const-string p1, "UiModeManager"

    const-string p2, "Attempted to add listener that was already added."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    monitor-exit v0

    return-void

    .line 1677
    :cond_14
    sget-object v1, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v1, :cond_3a

    .line 1678
    new-instance v1, Landroid/app/UiModeManager$InnerListener;

    iget-object v2, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const/4 v3, 0x0

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/app/UiModeManager$InnerListener;-><init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;Landroid/app/UiModeManager-IA;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_3c

    .line 1681
    :try_start_20
    sget-object p2, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {p2}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Landroid/app/IUiModeManager;->addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V

    .line 1683
    iget-object p1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {p1, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2e} :catch_2f
    .catchall {:try_start_20 .. :try_end_2e} :catchall_3c

    .line 1687
    goto :goto_3a

    .line 1684
    :catch_2f
    move-exception p1

    .line 1685
    :try_start_30
    iget-object p2, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    invoke-virtual {p2, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->remove(Landroid/app/UiModeManager$InnerListener;)V

    .line 1686
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1689
    :cond_3a
    :goto_3a
    monitor-exit v0

    .line 1690
    return-void

    .line 1689
    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public whitelist disableCarMode(I)V
    .registers 4

    .line 1051
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_20

    .line 1053
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    .line 1054
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_16

    :cond_10
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1053
    :goto_16
    invoke-interface {v0, p1, v1}, Landroid/app/IUiModeManager;->disableCarModeByCallingPackage(ILjava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    .line 1057
    goto :goto_20

    .line 1055
    :catch_1a
    move-exception p1

    .line 1056
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1059
    :cond_20
    :goto_20
    return-void
.end method

.method public whitelist enableCarMode(I)V
    .registers 3

    .line 948
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/UiModeManager;->enableCarMode(II)V

    .line 949
    return-void
.end method

.method public whitelist enableCarMode(II)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 999
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_20

    .line 1001
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    .line 1002
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_16

    :cond_10
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1001
    :goto_16
    invoke-interface {v0, p2, p1, v1}, Landroid/app/IUiModeManager;->enableCarMode(IILjava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    .line 1005
    goto :goto_20

    .line 1003
    :catch_1a
    move-exception p1

    .line 1004
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1007
    :cond_20
    :goto_20
    return-void
.end method

.method public whitelist getActiveProjectionTypes()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1647
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_15

    .line 1649
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getActiveProjectionTypes()I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 1650
    :catch_f
    move-exception v0

    .line 1651
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1654
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAttentionModeThemeOverlay()I
    .registers 2

    .line 1250
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_15

    .line 1252
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getAttentionModeThemeOverlay()I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 1253
    :catch_f
    move-exception v0

    .line 1254
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1257
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getContrast()F
    .registers 3

    .line 1802
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->fixContrastAndForceInvertStateForMultiUser()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1803
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-direct {p0}, Landroid/app/UiModeManager;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/UiModeManager$Globals;->-$$Nest$mgetContrast(Landroid/app/UiModeManager$Globals;I)F

    move-result v0

    return v0

    .line 1805
    :cond_11
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$mgetContrast(Landroid/app/UiModeManager$Globals;)F

    move-result v0

    return v0
.end method

.method public whitelist getCurrentModeType()I
    .registers 3

    .line 1119
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->enableCurrentModeTypeBinderCache()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1120
    iget-object v0, p0, Landroid/app/UiModeManager;->mCurrentModeTypeCache:Landroid/os/IpcDataCache;

    invoke-direct {p0}, Landroid/app/UiModeManager;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1122
    :cond_1b
    invoke-direct {p0}, Landroid/app/UiModeManager;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/UiModeManager;->getCurrentModeTypeFromServer(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getCustomNightModeEnd()Ljava/time/LocalTime;
    .registers 5

    .line 1491
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1c

    .line 1493
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCustomNightModeEnd()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    return-object v0

    .line 1494
    :catch_16
    move-exception v0

    .line 1495
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1498
    :cond_1c
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    return-object v0
.end method

.method public whitelist getCustomNightModeStart()Ljava/time/LocalTime;
    .registers 5

    .line 1456
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1c

    .line 1458
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCustomNightModeStart()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    return-object v0

    .line 1459
    :catch_16
    move-exception v0

    .line 1460
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1463
    :cond_1c
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    return-object v0
.end method

.method public blacklist getForceInvertOverrideState()I
    .registers 4

    .line 1901
    iget-object v0, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 1904
    const/4 v0, 0x0

    return v0

    .line 1906
    :cond_6
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-direct {p0}, Landroid/app/UiModeManager;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/UiModeManager$Globals;->-$$Nest$mgetForceInvertOverrideState(Landroid/app/UiModeManager$Globals;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getForceInvertState()I
    .registers 3

    .line 1850
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->fixContrastAndForceInvertStateForMultiUser()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1851
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-direct {p0}, Landroid/app/UiModeManager;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/UiModeManager$Globals;->-$$Nest$mgetForceInvertState(Landroid/app/UiModeManager$Globals;I)I

    move-result v0

    return v0

    .line 1853
    :cond_11
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$mgetForceInvertState(Landroid/app/UiModeManager$Globals;)I

    move-result v0

    return v0
.end method

.method public whitelist getNightMode()I
    .registers 3

    .line 1359
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->enableNightModeBinderCache()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1360
    iget-object v0, p0, Landroid/app/UiModeManager;->mNightModeCache:Landroid/os/IpcDataCache;

    invoke-direct {p0}, Landroid/app/UiModeManager;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1362
    :cond_1b
    invoke-direct {p0}, Landroid/app/UiModeManager;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/UiModeManager;->getNightModeFromServer(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getNightModeCustomType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1203
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_15

    .line 1205
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getNightModeCustomType()I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 1206
    :catch_f
    move-exception v0

    .line 1207
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1210
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getProjectingPackages(I)Ljava/util/Set;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1629
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1a

    .line 1631
    :try_start_4
    new-instance v0, Landroid/util/ArraySet;

    sget-object v1, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v1}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->getProjectingPackages(I)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    return-object v0

    .line 1632
    :catch_14
    move-exception p1

    .line 1633
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1636
    :cond_1a
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public blacklist isNightModeLocked()Z
    .registers 2

    .line 1395
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_15

    .line 1397
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->isNightModeLocked()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 1398
    :catch_f
    move-exception v0

    .line 1399
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1402
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isUiModeLocked()Z
    .registers 2

    .line 1373
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_15

    .line 1375
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IUiModeManager;->isUiModeLocked()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 1376
    :catch_f
    move-exception v0

    .line 1377
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1380
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist releaseProjection(I)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1605
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1b

    .line 1607
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    .line 1608
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1607
    invoke-interface {v0, p1, v1}, Landroid/app/IUiModeManager;->releaseProjection(ILjava/lang/String;)Z

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    return p1

    .line 1609
    :catch_15
    move-exception p1

    .line 1610
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1613
    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;)V
    .registers 4

    .line 1833
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->fixContrastAndForceInvertStateForMultiUser()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1835
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-direct {p0}, Landroid/app/UiModeManager;->getUserId()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/app/UiModeManager$Globals;->-$$Nest$mremoveContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;I)V

    .line 1836
    return-void

    .line 1838
    :cond_13
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0, p1}, Landroid/app/UiModeManager$Globals;->-$$Nest$mremoveContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;)V

    .line 1839
    return-void
.end method

.method public blacklist removeForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V
    .registers 4

    .line 1886
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->fixContrastAndForceInvertStateForMultiUser()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1888
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-direct {p0}, Landroid/app/UiModeManager;->getUserId()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/app/UiModeManager$Globals;->-$$Nest$mremoveForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;I)V

    .line 1889
    return-void

    .line 1891
    :cond_13
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0, p1}, Landroid/app/UiModeManager$Globals;->-$$Nest$mremoveForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V

    .line 1892
    return-void
.end method

.method public whitelist removeOnProjectionStateChangedListener(Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1703
    iget-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1704
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager$InnerListener;

    .line 1705
    if-nez v1, :cond_16

    .line 1706
    const-string p1, "UiModeManager"

    const-string v1, "Attempted to remove listener that was not added."

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    monitor-exit v0

    return-void

    .line 1709
    :cond_16
    sget-object v2, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_36

    if-eqz v2, :cond_2a

    .line 1711
    :try_start_1a
    sget-object v2, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v2}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IUiModeManager;->removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_24
    .catchall {:try_start_1a .. :try_end_23} :catchall_36

    .line 1714
    goto :goto_2a

    .line 1712
    :catch_24
    move-exception p1

    .line 1713
    :try_start_25
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1716
    :cond_2a
    :goto_2a
    iget-object v2, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    iget-object p1, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    invoke-virtual {p1, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->remove(Landroid/app/UiModeManager$InnerListener;)V

    .line 1718
    monitor-exit v0

    .line 1719
    return-void

    .line 1718
    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public whitelist requestProjection(I)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1576
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_20

    .line 1578
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iget-object v2, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    .line 1579
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1578
    invoke-interface {v0, v1, p1, v2}, Landroid/app/IUiModeManager;->requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    return p1

    .line 1580
    :catch_1a
    move-exception p1

    .line 1581
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1584
    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setApplicationNightMode(I)V
    .registers 3

    .line 1289
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_14

    .line 1291
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setApplicationNightMode(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1294
    goto :goto_14

    .line 1292
    :catch_e
    move-exception p1

    .line 1293
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1296
    :cond_14
    :goto_14
    return-void
.end method

.method public blacklist setAttentionModeThemeOverlay(I)V
    .registers 3

    .line 1224
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_14

    .line 1226
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setAttentionModeThemeOverlay(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1229
    goto :goto_14

    .line 1227
    :catch_e
    move-exception p1

    .line 1228
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1231
    :cond_14
    :goto_14
    return-void
.end method

.method public whitelist setCustomNightModeEnd(Ljava/time/LocalTime;)V
    .registers 7

    .line 1509
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1b

    .line 1511
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroid/app/IUiModeManager;->setCustomNightModeEnd(J)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    .line 1514
    goto :goto_1b

    .line 1512
    :catch_15
    move-exception p1

    .line 1513
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1516
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist setCustomNightModeStart(Ljava/time/LocalTime;)V
    .registers 7

    .line 1474
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_1b

    .line 1476
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroid/app/IUiModeManager;->setCustomNightModeStart(J)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    .line 1479
    goto :goto_1b

    .line 1477
    :catch_15
    move-exception p1

    .line 1478
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1481
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist setNightMode(I)V
    .registers 3

    .line 1163
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_14

    .line 1165
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setNightMode(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1168
    goto :goto_14

    .line 1166
    :catch_e
    move-exception p1

    .line 1167
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1170
    :cond_14
    :goto_14
    return-void
.end method

.method public blacklist setNightModeActivated(Z)Z
    .registers 3

    .line 1438
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_15

    .line 1440
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setNightModeActivated(Z)Z

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return p1

    .line 1441
    :catch_f
    move-exception p1

    .line 1442
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1445
    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setNightModeActivatedForCustomMode(IZ)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1419
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_15

    .line 1421
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IUiModeManager;->setNightModeActivatedForCustomMode(IZ)Z

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return p1

    .line 1423
    :catch_f
    move-exception p1

    .line 1424
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1427
    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setNightModeCustomType(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1184
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    if-eqz v0, :cond_14

    .line 1186
    :try_start_4
    sget-object v0, Landroid/app/UiModeManager;->sGlobals:Landroid/app/UiModeManager$Globals;

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setNightModeCustomType(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 1189
    goto :goto_14

    .line 1187
    :catch_e
    move-exception p1

    .line 1188
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1191
    :cond_14
    :goto_14
    return-void
.end method
