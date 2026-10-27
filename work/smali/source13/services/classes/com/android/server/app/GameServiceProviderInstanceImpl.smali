.class final Lcom/android/server/app/GameServiceProviderInstanceImpl;
.super Ljava/lang/Object;
.source "GameServiceProviderInstanceImpl.java"

# interfaces
.implements Lcom/android/server/app/GameServiceProviderInstance;


# static fields
.field private static final CREATE_GAME_SESSION_TIMEOUT_MS:I = 0x2710

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GameServiceProviderInstance"


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field private final mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/service/games/IGameService;",
            ">;"
        }
    .end annotation
.end field

.field private final mGameServiceController:Landroid/service/games/IGameServiceController;

.field private final mGameServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "Landroid/service/games/IGameService;",
            ">;"
        }
    .end annotation
.end field

.field private final mGameSessionController:Landroid/service/games/IGameSessionController;

.field private final mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/service/games/IGameSessionService;",
            ">;"
        }
    .end annotation
.end field

.field private final mGameSessionServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "Landroid/service/games/IGameSessionService;",
            ">;"
        }
    .end annotation
.end field

.field private final mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/app/GameSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

.field private volatile mIsRunning:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field private final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private final mTaskStackListener:Landroid/app/TaskStackListener;

.field private final mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

.field private final mUserHandle:Landroid/os/UserHandle;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGameServiceController(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Landroid/service/games/IGameServiceController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceController:Landroid/service/games/IGameServiceController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateGameSession(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->createGameSession(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroyAndClearAllGameSessionsLocked(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyAndClearAllGameSessionsLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monForegroundActivitiesChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onForegroundActivitiesChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monProcessDied(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onProcessDied(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTaskCreated(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILandroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTaskFocusChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTaskFocusChanged(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTaskRemoved(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTaskRemoved(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTransientSystemBarsVisibilityChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;IZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTransientSystemBarsVisibilityChanged(IZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestartGame(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->restartGame(I)V

    return-void
.end method

.method constructor <init>(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/content/Context;Lcom/android/server/app/GameTaskInfoProvider;Landroid/app/IActivityManager;Landroid/app/ActivityManagerInternal;Landroid/app/IActivityTaskManager;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/util/ScreenshotHelper;)V
    .registers 15
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "gameTaskInfoProvider"    # Lcom/android/server/app/GameTaskInfoProvider;
    .param p5, "activityManager"    # Landroid/app/IActivityManager;
    .param p6, "activityManagerInternal"    # Landroid/app/ActivityManagerInternal;
    .param p7, "activityTaskManager"    # Landroid/app/IActivityTaskManager;
    .param p8, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p9, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p10, "activityTaskManagerInternal"    # Lcom/android/server/wm/ActivityTaskManagerInternal;
    .param p13, "screenshotHelper"    # Lcom/android/internal/util/ScreenshotHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            "Lcom/android/server/app/GameTaskInfoProvider;",
            "Landroid/app/IActivityManager;",
            "Landroid/app/ActivityManagerInternal;",
            "Landroid/app/IActivityTaskManager;",
            "Lcom/android/server/wm/WindowManagerService;",
            "Lcom/android/server/wm/WindowManagerInternal;",
            "Lcom/android/server/wm/ActivityTaskManagerInternal;",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/service/games/IGameService;",
            ">;",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/service/games/IGameSessionService;",
            ">;",
            "Lcom/android/internal/util/ScreenshotHelper;",
            ")V"
        }
    .end annotation

    .line 259
    .local p11, "gameServiceConnector":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/service/games/IGameService;>;"
    .local p12, "gameSessionServiceConnector":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/service/games/IGameSessionService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 89
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 105
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$3;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

    .line 117
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 158
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 181
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceController:Landroid/service/games/IGameServiceController;

    .line 194
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionController:Landroid/service/games/IGameSessionController;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 237
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 239
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 260
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mUserHandle:Landroid/os/UserHandle;

    .line 261
    iput-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 262
    iput-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mContext:Landroid/content/Context;

    .line 263
    iput-object p4, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    .line 264
    iput-object p5, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    .line 265
    iput-object p6, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 266
    iput-object p7, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 267
    iput-object p8, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 268
    iput-object p9, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 269
    iput-object p10, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 270
    iput-object p11, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 271
    iput-object p12, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 272
    iput-object p13, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 273
    return-void
.end method

.method private attachGameSessionLocked(ILandroid/service/games/CreateGameSessionResult;)V
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "createGameSessionResult"    # Landroid/service/games/CreateGameSessionResult;

    .line 594
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    .line 596
    .local v0, "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    const-string v1, "GameServiceProviderInstance"

    if-nez v0, :cond_2a

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No associated game session record. Destroying id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    .line 599
    return-void

    .line 602
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/app/GameSessionRecord;->isGameSessionRequested()Z

    move-result v2

    if-nez v2, :cond_34

    .line 603
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    .line 604
    return-void

    .line 608
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 610
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v3

    .line 608
    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowManagerInternal;->addTrustedTaskOverlay(ILandroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_3d} :catch_54

    .line 615
    nop

    .line 617
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 619
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v3

    .line 620
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v4

    .line 618
    invoke-virtual {v0, v3, v4}, Lcom/android/server/app/GameSessionRecord;->withGameSession(Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)Lcom/android/server/app/GameSessionRecord;

    move-result-object v3

    .line 617
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    return-void

    .line 611
    :catch_54
    move-exception v2

    .line 612
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add task overlay. Destroying id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    .line 614
    return-void
.end method

.method private createGameSession(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 493
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->createGameSessionLocked(I)V

    .line 495
    monitor-exit v0

    .line 496
    return-void

    .line 495
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private createGameSessionLocked(I)V
    .registers 13
    .param p1, "taskId"    # I

    .line 504
    iget-boolean v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-nez v0, :cond_5

    .line 505
    return-void

    .line 508
    :cond_5
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    .line 509
    .local v0, "existingGameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    const-string v1, ") creation. Ignoring."

    const-string v2, "GameServiceProviderInstance"

    if-nez v0, :cond_32

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No existing game session record found for task (id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void

    .line 514
    :cond_32
    invoke-virtual {v0}, Lcom/android/server/app/GameSessionRecord;->isAwaitingGameSessionRequest()Z

    move-result v3

    if-nez v3, :cond_55

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Existing game session for task (id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") is not awaiting game session request. Ignoring."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-void

    .line 520
    :cond_55
    nop

    .line 521
    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->createViewHostConfigurationForTask(I)Landroid/service/games/GameSessionViewHostConfiguration;

    move-result-object v7

    .line 522
    .local v7, "gameSessionViewHostConfiguration":Landroid/service/games/GameSessionViewHostConfiguration;
    if-nez v7, :cond_77

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create view host configuration for task (id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-void

    .line 533
    :cond_77
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/app/GameSessionRecord;->withGameSessionRequested()Lcom/android/server/app/GameSessionRecord;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 537
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    new-instance v2, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Lcom/android/server/app/GameSessionRecord;I)V

    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 538
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v8

    .line 560
    .local v8, "createGameSessionResultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/games/CreateGameSessionResult;>;"
    iget-object v9, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v10, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda3;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move-object v5, v7

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    .line 561
    invoke-interface {v9, v10}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 572
    .local v1, "unusedPostCreateGameSessionFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void
.end method

.method private createViewHostConfigurationForTask(I)Landroid/service/games/GameSessionViewHostConfiguration;
    .registers 8
    .param p1, "taskId"    # I

    .line 823
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 824
    .local v0, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v0, :cond_a

    .line 825
    const/4 v1, 0x0

    return-object v1

    .line 828
    :cond_a
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 829
    .local v1, "bounds":Landroid/graphics/Rect;
    new-instance v2, Landroid/service/games/GameSessionViewHostConfiguration;

    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 831
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 832
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroid/service/games/GameSessionViewHostConfiguration;-><init>(III)V

    .line 829
    return-object v2
.end method

.method private destroyAndClearAllGameSessionsLocked()V
    .registers 3

    .line 625
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 626
    .local v1, "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    invoke-direct {p0, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    .line 627
    .end local v1    # "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    goto :goto_a

    .line 628
    :cond_1a
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 629
    return-void
.end method

.method private destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "createGameSessionResult"    # Landroid/service/games/CreateGameSessionResult;

    .line 635
    :try_start_0
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v0

    invoke-interface {v0}, Landroid/service/games/IGameSession;->onDestroyed()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 638
    goto :goto_21

    .line 636
    :catch_8
    move-exception v0

    .line 637
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to destroy session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameServiceProviderInstance"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method private destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V
    .registers 8
    .param p1, "gameSessionRecord"    # Lcom/android/server/app/GameSessionRecord;

    .line 659
    invoke-virtual {p1}, Lcom/android/server/app/GameSessionRecord;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    .line 660
    .local v0, "surfacePackage":Landroid/view/SurfaceControlViewHost$SurfacePackage;
    const-string v1, "GameServiceProviderInstance"

    if-eqz v0, :cond_29

    .line 662
    :try_start_8
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 663
    invoke-virtual {p1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v3

    .line 662
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerInternal;->removeTrustedTaskOverlay(ILandroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_11} :catch_12

    .line 670
    goto :goto_29

    .line 665
    :catch_12
    move-exception v2

    .line 666
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove task overlay. This is expected if the task is already destroyed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_29
    :goto_29
    invoke-virtual {p1}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v2

    .line 674
    .local v2, "gameSession":Landroid/service/games/IGameSession;
    if-eqz v2, :cond_4a

    .line 676
    :try_start_2f
    invoke-interface {v2}, Landroid/service/games/IGameSession;->onDestroyed()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_33

    .line 679
    goto :goto_4a

    .line 677
    :catch_33
    move-exception v3

    .line 678
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to destroy session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_4a
    :goto_4a
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 687
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {v1}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    .line 689
    :cond_57
    return-void
.end method

.method private endGameSessionsForPackageLocked(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 786
    .local v1, "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 787
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 786
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 794
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    .line 795
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 796
    .local v2, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_3b

    iget-boolean v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v3, :cond_3b

    .line 801
    goto :goto_a

    .line 803
    :cond_3b
    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 804
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->withGameSessionEndedOnProcessDeath()Lcom/android/server/app/GameSessionRecord;

    move-result-object v5

    .line 803
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    invoke-direct {p0, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    .line 807
    .end local v1    # "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    .end local v2    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4f
    goto :goto_a

    .line 808
    :cond_50
    return-void
.end method

.method private gameSessionExistsForPackageNameLocked(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 812
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 813
    .local v1, "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 814
    const/4 v0, 0x1

    return v0

    .line 816
    .end local v1    # "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    :cond_26
    goto :goto_a

    .line 818
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method private gameTaskStartedLocked(Lcom/android/server/app/GameTaskInfo;)V
    .registers 6
    .param p1, "gameTaskInfo"    # Lcom/android/server/app/GameTaskInfo;

    .line 422
    iget-boolean v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-nez v0, :cond_5

    .line 423
    return-void

    .line 426
    :cond_5
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    .line 427
    .local v0, "existingGameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    if-eqz v0, :cond_36

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing game session found for task (id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") creation. Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameServiceProviderInstance"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void

    .line 433
    :cond_36
    iget v1, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    iget-object v2, p1, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lcom/android/server/app/GameSessionRecord;->awaitingGameSessionRequest(ILandroid/content/ComponentName;)Lcom/android/server/app/GameSessionRecord;

    move-result-object v1

    .line 435
    .local v1, "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v3, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/app/GameTaskInfo;)V

    invoke-interface {v2, v3}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    .line 443
    .local v2, "unusedPostGameStartedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void
.end method

.method static synthetic lambda$gameTaskStartedLocked$1(Lcom/android/server/app/GameTaskInfo;Landroid/service/games/IGameService;)V
    .registers 5
    .param p0, "gameTaskInfo"    # Lcom/android/server/app/GameTaskInfo;
    .param p1, "gameService"    # Landroid/service/games/IGameService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 439
    new-instance v0, Landroid/service/games/GameStartedEvent;

    iget v1, p0, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    iget-object v2, p0, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    .line 441
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/games/GameStartedEvent;-><init>(ILjava/lang/String;)V

    .line 439
    invoke-interface {p1, v0}, Landroid/service/games/IGameService;->gameStarted(Landroid/service/games/GameStartedEvent;)V

    .line 442
    return-void
.end method

.method static synthetic lambda$takeScreenshot$4(Lcom/android/internal/infra/AndroidFuture;Landroid/net/Uri;)V
    .registers 3
    .param p0, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 874
    if-nez p1, :cond_a

    .line 875
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_11

    .line 877
    :cond_a
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createSuccessResult()Landroid/service/games/GameScreenshotResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 879
    :goto_11
    return-void
.end method

.method private maybeCreateGameSessionForFocusedTaskLocked(I)V
    .registers 5
    .param p1, "taskId"    # I

    .line 403
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/app/GameTaskInfoProvider;->get(I)Lcom/android/server/app/GameTaskInfo;

    move-result-object v0

    .line 404
    .local v0, "taskInfo":Lcom/android/server/app/GameTaskInfo;
    if-nez v0, :cond_21

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No task info for focused task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameServiceProviderInstance"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void

    .line 409
    :cond_21
    iget-boolean v1, v0, Lcom/android/server/app/GameTaskInfo;->mIsGameTask:Z

    if-nez v1, :cond_26

    .line 410
    return-void

    .line 413
    :cond_26
    invoke-direct {p0, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->gameTaskStartedLocked(Lcom/android/server/app/GameTaskInfo;)V

    .line 414
    return-void
.end method

.method private onForegroundActivitiesChanged(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 692
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onForegroundActivitiesChangedLocked(I)V

    .line 694
    monitor-exit v0

    .line 695
    return-void

    .line 694
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private onForegroundActivitiesChangedLocked(I)V
    .registers 6
    .param p1, "pid"    # I

    .line 699
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 701
    return-void

    .line 704
    :cond_d
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 707
    return-void

    .line 710
    :cond_1a
    invoke-direct {p0, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->gameSessionExistsForPackageNameLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 712
    return-void

    .line 715
    :cond_21
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x0

    .line 717
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 716
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 718
    .local v1, "processCountForPackage":I
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    if-lez v1, :cond_4b

    .line 728
    invoke-direct {p0, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->recreateEndedGameSessionsLocked(Ljava/lang/String;)V

    .line 730
    :cond_4b
    return-void
.end method

.method private onProcessDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 753
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onProcessDiedLocked(I)V

    .line 755
    monitor-exit v0

    .line 756
    return-void

    .line 755
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private onProcessDiedLocked(I)V
    .registers 7
    .param p1, "pid"    # I

    .line 760
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 761
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 763
    return-void

    .line 766
    :cond_f
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 767
    .local v1, "oldProcessCountForPackage":Ljava/lang/Integer;
    if-nez v1, :cond_22

    .line 769
    const-string v2, "GameServiceProviderInstance"

    const-string/jumbo v3, "onProcessDiedLocked(): Missing process count for package"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    return-void

    .line 773
    :cond_22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 774
    .local v2, "processCountForPackage":I
    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    if-gtz v2, :cond_36

    .line 779
    invoke-direct {p0, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->endGameSessionsForPackageLocked(Ljava/lang/String;)V

    .line 781
    :cond_36
    return-void
.end method

.method private onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 352
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/app/GameTaskInfoProvider;->get(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;

    move-result-object v0

    .line 354
    .local v0, "taskInfo":Lcom/android/server/app/GameTaskInfo;
    iget-boolean v1, v0, Lcom/android/server/app/GameTaskInfo;->mIsGameTask:Z

    if-nez v1, :cond_b

    .line 355
    return-void

    .line 358
    :cond_b
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_e
    invoke-direct {p0, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->gameTaskStartedLocked(Lcom/android/server/app/GameTaskInfo;)V

    .line 360
    monitor-exit v1

    .line 361
    return-void

    .line 360
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    throw v2
.end method

.method private onTaskFocusChanged(IZ)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 364
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTaskFocusChangedLocked(IZ)V

    .line 366
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private onTaskFocusChangedLocked(IZ)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 375
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    .line 376
    .local v0, "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    if-nez v0, :cond_14

    .line 377
    if-eqz p2, :cond_13

    .line 383
    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->maybeCreateGameSessionForFocusedTaskLocked(I)V

    .line 385
    :cond_13
    return-void

    .line 386
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 387
    return-void

    .line 391
    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/service/games/IGameSession;->onTaskFocusChanged(Z)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_23

    .line 394
    goto :goto_3c

    .line 392
    :catch_23
    move-exception v1

    .line 393
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify session of task focus change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameServiceProviderInstance"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_3c
    return-void
.end method

.method private onTaskRemoved(I)V
    .registers 5
    .param p1, "taskId"    # I

    .line 446
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 448
    .local v1, "isTaskAssociatedWithGameSession":Z
    if-nez v1, :cond_11

    .line 449
    monitor-exit v0

    return-void

    .line 457
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->removeAndDestroyGameSessionIfNecessaryLocked(I)V

    .line 458
    .end local v1    # "isTaskAssociatedWithGameSession":Z
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private onTransientSystemBarsVisibilityChanged(IZZ)V
    .registers 10
    .param p1, "taskId"    # I
    .param p2, "visible"    # Z
    .param p3, "wereRevealedFromSwipeOnSystemBar"    # Z

    .line 465
    if-eqz p2, :cond_5

    if-nez p3, :cond_5

    .line 466
    return-void

    .line 470
    :cond_5
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_8
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 472
    .local v1, "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_3d

    .line 474
    if-nez v1, :cond_18

    .line 475
    return-void

    .line 478
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v0

    .line 479
    .local v0, "gameSession":Landroid/service/games/IGameSession;
    if-nez v0, :cond_1f

    .line 480
    return-void

    .line 484
    :cond_1f
    :try_start_1f
    invoke-interface {v0, p2}, Landroid/service/games/IGameSession;->onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    .line 489
    goto :goto_3c

    .line 485
    :catch_23
    move-exception v2

    .line 486
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "GameServiceProviderInstance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send transient system bars visibility from reveal gesture for task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_3c
    return-void

    .line 472
    .end local v0    # "gameSession":Landroid/service/games/IGameSession;
    .end local v1    # "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private recreateEndedGameSessionsLocked(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 734
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 735
    .local v1, "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->isGameSessionEndedForProcessDeath()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 736
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 735
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 744
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v2

    .line 745
    .local v2, "taskId":I
    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 746
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 745
    invoke-static {v2, v5}, Lcom/android/server/app/GameSessionRecord;->awaitingGameSessionRequest(ILandroid/content/ComponentName;)Lcom/android/server/app/GameSessionRecord;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->createGameSessionLocked(I)V

    .line 749
    .end local v1    # "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    .end local v2    # "taskId":I
    :cond_46
    goto :goto_a

    .line 750
    :cond_47
    return-void
.end method

.method private removeAndDestroyGameSessionIfNecessaryLocked(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 647
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    .line 648
    .local v0, "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    if-nez v0, :cond_f

    .line 652
    return-void

    .line 654
    :cond_f
    invoke-direct {p0, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    .line 655
    return-void
.end method

.method private restartGame(I)V
    .registers 5
    .param p1, "taskId"    # I

    .line 891
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 892
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 893
    .local v1, "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    if-nez v1, :cond_13

    .line 894
    monitor-exit v0

    return-void

    .line 896
    :cond_13
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 897
    .local v1, "packageName":Ljava/lang/String;
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_26

    .line 899
    if-nez v1, :cond_20

    .line 900
    return-void

    .line 903
    :cond_20
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->restartTaskActivityProcessIfVisible(ILjava/lang/String;)V

    .line 904
    return-void

    .line 897
    .end local v1    # "packageName":Ljava/lang/String;
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private setGameSessionFocusedIfNecessary(ILandroid/service/games/IGameSession;)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "gameSession"    # Landroid/service/games/IGameSession;

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 577
    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    .line 578
    .local v0, "rootTaskInfo":Landroid/app/ActivityTaskManager$RootTaskInfo;
    if-eqz v0, :cond_10

    iget v1, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    if-ne v1, p1, :cond_10

    .line 579
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/service/games/IGameSession;->onTaskFocusChanged(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 583
    .end local v0    # "rootTaskInfo":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :cond_10
    goto :goto_2a

    .line 581
    :catch_11
    move-exception v0

    .line 582
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set task focused for ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameServiceProviderInstance"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method private startLocked()V
    .registers 5

    .line 291
    const-string v0, "GameServiceProviderInstance"

    iget-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-eqz v1, :cond_7

    .line 292
    return-void

    .line 294
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    .line 296
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 297
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 300
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {v1}, Lcom/android/internal/infra/ServiceConnector;->connect()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 303
    .local v1, "unusedConnectFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<*>;"
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    .line 306
    goto :goto_2c

    .line 304
    :catch_26
    move-exception v2

    .line 305
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to register task stack listener"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2c
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34

    .line 312
    goto :goto_3a

    .line 310
    :catch_34
    move-exception v2

    .line 311
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "Failed to register process observer"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3a
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerInternal;->registerTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V

    .line 315
    return-void
.end method

.method private stopLocked()V
    .registers 4

    .line 319
    const-string v0, "GameServiceProviderInstance"

    iget-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-nez v1, :cond_7

    .line 320
    return-void

    .line 322
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    .line 325
    :try_start_a
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 328
    goto :goto_18

    .line 326
    :catch_12
    move-exception v1

    .line 327
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to unregister process observer"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_20

    .line 334
    goto :goto_26

    .line 332
    :catch_20
    move-exception v1

    .line 333
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v2, "Failed to unregister task stack listener"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_26
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->unregisterTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V

    .line 339
    invoke-direct {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyAndClearAllGameSessionsLocked()V

    .line 341
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 344
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {v0}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    .line 346
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 349
    return-void
.end method


# virtual methods
.method synthetic lambda$createGameSessionLocked$2$com-android-server-app-GameServiceProviderInstanceImpl(Lcom/android/server/app/GameSessionRecord;ILandroid/service/games/CreateGameSessionResult;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "existingGameSessionRecord"    # Lcom/android/server/app/GameSessionRecord;
    .param p2, "taskId"    # I
    .param p3, "createGameSessionResult"    # Landroid/service/games/CreateGameSessionResult;
    .param p4, "exception"    # Ljava/lang/Throwable;

    .line 539
    if-nez p4, :cond_18

    if-nez p3, :cond_5

    goto :goto_18

    .line 549
    :cond_5
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_8
    invoke-direct {p0, p2, p3}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->attachGameSessionLocked(ILandroid/service/games/CreateGameSessionResult;)V

    .line 551
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_15

    .line 556
    nop

    .line 557
    invoke-virtual {p3}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v0

    .line 556
    invoke-direct {p0, p2, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->setGameSessionFocusedIfNecessary(ILandroid/service/games/IGameSession;)V

    .line 558
    return-void

    .line 551
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1

    .line 540
    :cond_18
    :goto_18
    const-string v0, "GameServiceProviderInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create GameSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_33
    invoke-direct {p0, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->removeAndDestroyGameSessionIfNecessaryLocked(I)V

    .line 545
    monitor-exit v0

    .line 546
    return-void

    .line 545
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method synthetic lambda$createGameSessionLocked$3$com-android-server-app-GameServiceProviderInstanceImpl(ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;Landroid/service/games/IGameSessionService;)V
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "existingGameSessionRecord"    # Lcom/android/server/app/GameSessionRecord;
    .param p3, "gameSessionViewHostConfiguration"    # Landroid/service/games/GameSessionViewHostConfiguration;
    .param p4, "createGameSessionResultFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .param p5, "gameSessionService"    # Landroid/service/games/IGameSessionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 562
    new-instance v0, Landroid/service/games/CreateGameSessionRequest;

    .line 565
    invoke-virtual {p2}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/service/games/CreateGameSessionRequest;-><init>(ILjava/lang/String;)V

    .line 566
    .local v0, "createGameSessionRequest":Landroid/service/games/CreateGameSessionRequest;
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionController:Landroid/service/games/IGameSessionController;

    invoke-interface {p5, v1, v0, p3, p4}, Landroid/service/games/IGameSessionService;->create(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    .line 571
    return-void
.end method

.method synthetic lambda$stopLocked$0$com-android-server-app-GameServiceProviderInstanceImpl(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Void;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 342
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {v0}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    .line 343
    return-void
.end method

.method synthetic lambda$takeScreenshot$5$com-android-server-app-GameServiceProviderInstanceImpl(Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V
    .registers 24
    .param p1, "overlaySurfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "taskId"    # I
    .param p3, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .param p4, "gameSessionRecord"    # Lcom/android/server/app/GameSessionRecord;

    .line 851
    move-object/from16 v0, p0

    move/from16 v11, p2

    move-object/from16 v12, p3

    new-instance v1, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    move-object v13, v1

    .line 853
    .local v13, "layerCaptureArgsBuilder":Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;
    if-eqz p1, :cond_18

    .line 854
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/SurfaceControl;

    .line 855
    .local v1, "excludeLayers":[Landroid/view/SurfaceControl;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 856
    invoke-virtual {v13, v1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 858
    .end local v1    # "excludeLayers":[Landroid/view/SurfaceControl;
    :cond_18
    iget-object v1, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v11, v13}, Lcom/android/server/wm/WindowManagerService;->captureTaskBitmap(ILandroid/view/SurfaceControl$LayerCaptureArgs$Builder;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 860
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    const-string v1, "GameServiceProviderInstance"

    if-nez v14, :cond_40

    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get bitmap for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_95

    .line 864
    :cond_40
    invoke-static {v14}, Lcom/android/internal/util/ScreenshotHelper$HardwareBitmapBundler;->hardwareBitmapToBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object v15

    .line 866
    .local v15, "bundle":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    .line 867
    invoke-virtual {v2, v11}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    .line 868
    .local v9, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v9, :cond_69

    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get running task info for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 872
    :cond_69
    iget-object v1, v9, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    .line 873
    .local v16, "crop":Landroid/graphics/Rect;
    new-instance v10, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v10, v12}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 880
    .local v10, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-object v1, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iget-object v2, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mUserHandle:Landroid/os/UserHandle;

    .line 881
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    const/4 v8, 0x5

    .line 883
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v17

    .line 880
    move-object v2, v15

    move-object/from16 v3, v16

    move/from16 v5, p2

    move-object/from16 v18, v9

    .end local v9    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .local v18, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v9, v17

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/util/ScreenshotHelper;->provideScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;ILandroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 886
    .end local v10    # "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    .end local v15    # "bundle":Landroid/os/Bundle;
    .end local v16    # "crop":Landroid/graphics/Rect;
    .end local v18    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_95
    return-void
.end method

.method public start()V
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->startLocked()V

    .line 279
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public stop()V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->stopLocked()V

    .line 286
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V
    .registers 13
    .param p1, "taskId"    # I
    .param p2, "callback"    # Lcom/android/internal/infra/AndroidFuture;

    .line 838
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 840
    .local v1, "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    if-nez v1, :cond_32

    .line 841
    const-string v2, "GameServiceProviderInstance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No game session found for id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 843
    monitor-exit v0

    return-void

    .line 845
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_50

    .line 847
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    .line 849
    .local v0, "overlaySurfacePackage":Landroid/view/SurfaceControlViewHost$SurfacePackage;
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    move-object v4, v2

    .line 850
    .local v4, "overlaySurfaceControl":Landroid/view/SurfaceControl;
    iget-object v8, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;

    move-object v2, v9

    move-object v3, p0

    move v5, p1

    move-object v6, p2

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 887
    return-void

    .line 845
    .end local v0    # "overlaySurfacePackage":Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .end local v1    # "gameSessionRecord":Lcom/android/server/app/GameSessionRecord;
    .end local v4    # "overlaySurfaceControl":Landroid/view/SurfaceControl;
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1
.end method
