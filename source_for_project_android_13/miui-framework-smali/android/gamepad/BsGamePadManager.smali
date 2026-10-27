.class public Landroid/gamepad/BsGamePadManager;
.super Ljava/lang/Object;
.source "BsGamePadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;,
        Landroid/gamepad/BsGamePadManager$GameKeyEventListener;,
        Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;,
        Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;,
        Landroid/gamepad/BsGamePadManager$ForceTouchEventListener;,
        Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_NAME:Ljava/lang/String; = "bsgamepad"

.field private static final blacklist TAG:Ljava/lang/String; = "BsGamePadManager"


# instance fields
.field final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExtraTouchIdListener:Landroid/gamepad/IExtraTouchIdListener;

.field private blacklist mForceTouchEventListener:Landroid/gamepad/BsGamePadManager$ForceTouchEventListener;

.field private final blacklist mForceTouchEventLock:Ljava/lang/Object;

.field private final blacklist mGameForceTouchMapper:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/gamepad/BsForceTouch;",
            "Landroid/gamepad/BsGameKeyMapList;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGameKeyEventListener:Landroid/gamepad/BsGamePadManager$GameKeyEventListener;

.field private final blacklist mGameKeyEventLock:Ljava/lang/Object;

.field private final blacklist mGameKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/gamepad/BsGameKey;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGamePadMapper:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/BitSet;",
            "Landroid/gamepad/BsGameKeyMapList;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLiftKeyMapper:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/gamepad/BsGameKey;",
            "Landroid/gamepad/BsGameKeyMapList;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnForceTouchEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnGameKeyEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mService:Landroid/gamepad/IBsGamePadService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monForceTouchEvent(Landroid/gamepad/BsGamePadManager;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/gamepad/BsGamePadManager;->onForceTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monGameKeyEvent(Landroid/gamepad/BsGamePadManager;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/gamepad/BsGamePadManager;->onGameKeyEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/gamepad/IBsGamePadService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/gamepad/IBsGamePadService;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGameForceTouchMapper:Landroid/util/ArrayMap;

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsGamePadManager;->mLiftKeyMapper:Landroid/util/ArrayMap;

    .line 35
    new-instance v0, Landroid/gamepad/BsGamePadManager$1;

    invoke-direct {v0, p0}, Landroid/gamepad/BsGamePadManager$1;-><init>(Landroid/gamepad/BsGamePadManager;)V

    iput-object v0, p0, Landroid/gamepad/BsGamePadManager;->mExtraTouchIdListener:Landroid/gamepad/IExtraTouchIdListener;

    .line 313
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsGamePadManager;->mForceTouchEventLock:Ljava/lang/Object;

    .line 440
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyEventLock:Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Landroid/gamepad/BsGamePadManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    .line 42
    return-void
.end method

.method private blacklist findOnForceTouchEventListenerLocked(Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;

    .line 379
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mOnForceTouchEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 380
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 381
    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mOnForceTouchEventListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;

    iget-object v2, v2, Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;->mListener:Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;

    if-ne v2, p1, :cond_16

    .line 382
    return v1

    .line 380
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 386
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findOnGameKeyEventListenerLocked(Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;

    .line 506
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mOnGameKeyEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 507
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 508
    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mOnGameKeyEventListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;

    iget-object v2, v2, Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;->mListener:Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;

    if-ne v2, p1, :cond_16

    .line 509
    return v1

    .line 507
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 513
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist initializeForceTouchEventListenerLocked()V
    .registers 5

    .line 366
    new-instance v0, Landroid/gamepad/BsGamePadManager$ForceTouchEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/gamepad/BsGamePadManager$ForceTouchEventListener;-><init>(Landroid/gamepad/BsGamePadManager;Landroid/gamepad/BsGamePadManager$ForceTouchEventListener-IA;)V

    .line 367
    .local v0, "listener":Landroid/gamepad/BsGamePadManager$ForceTouchEventListener;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BsGamePadManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallers = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :try_start_3a
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v1, v0}, Landroid/gamepad/IBsGamePadService;->registerForceTouchEventListener(Landroid/gamepad/IForceTouchEventListener;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_43

    .line 373
    nop

    .line 375
    iput-object v0, p0, Landroid/gamepad/BsGamePadManager;->mForceTouchEventListener:Landroid/gamepad/BsGamePadManager$ForceTouchEventListener;

    .line 376
    return-void

    .line 371
    :catch_43
    move-exception v1

    .line 372
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist initializeGameKeyEventListenerLocked()V
    .registers 5

    .line 493
    new-instance v0, Landroid/gamepad/BsGamePadManager$GameKeyEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/gamepad/BsGamePadManager$GameKeyEventListener;-><init>(Landroid/gamepad/BsGamePadManager;Landroid/gamepad/BsGamePadManager$GameKeyEventListener-IA;)V

    .line 494
    .local v0, "listener":Landroid/gamepad/BsGamePadManager$GameKeyEventListener;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BsGamePadManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallers = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :try_start_3a
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v1, v0}, Landroid/gamepad/IBsGamePadService;->registerGameKeyEventListener(Landroid/gamepad/IGameKeyEventListener;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_43

    .line 500
    nop

    .line 502
    iput-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyEventListener:Landroid/gamepad/BsGamePadManager$GameKeyEventListener;

    .line 503
    return-void

    .line 498
    :catch_43
    move-exception v1

    .line 499
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist onForceTouchEvent(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 354
    const-string v0, "BsGamePadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Force Touch Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mForceTouchEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_1b
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mOnForceTouchEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 358
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    if-ge v2, v1, :cond_32

    .line 359
    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mOnForceTouchEventListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;

    .line 360
    .local v3, "listener":Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;
    invoke-virtual {v3, p1}, Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;->sendForceTouchEvent(Landroid/view/MotionEvent;)V

    .line 358
    .end local v3    # "listener":Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 362
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_32
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_34

    throw v1
.end method

.method private blacklist onGameKeyEvent(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 481
    const-string v0, "BsGamePadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Game Key Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_1b
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mOnGameKeyEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 485
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    if-ge v2, v1, :cond_32

    .line 486
    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mOnGameKeyEventListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;

    .line 487
    .local v3, "listener":Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;
    invoke-virtual {v3, p1}, Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;->sendGameKeyEvent(Landroid/view/MotionEvent;)V

    .line 485
    .end local v3    # "listener":Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 489
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_32
    monitor-exit v0

    .line 490
    return-void

    .line 489
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_34

    throw v1
.end method


# virtual methods
.method public whitelist addExtraTouchDevice(II)V
    .registers 5
    .param p1, "productid"    # I
    .param p2, "pointerCount"    # I

    .line 275
    :try_start_0
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v0, p1, p2}, Landroid/gamepad/IBsGamePadService;->addExtraTouchDevice(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 278
    nop

    .line 279
    return-void

    .line 276
    :catch_7
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addExtraTouchId(I)V
    .registers 4
    .param p1, "pointerCount"    # I

    .line 291
    :try_start_0
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mExtraTouchIdListener:Landroid/gamepad/IExtraTouchIdListener;

    invoke-interface {v0, p1, v1}, Landroid/gamepad/IBsGamePadService;->addExtraTouchId(ILandroid/gamepad/IExtraTouchIdListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 294
    nop

    .line 295
    return-void

    .line 292
    :catch_9
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addForceTouchMap(Landroid/gamepad/BsForceTouch;FFFI)V
    .registers 10
    .param p1, "forceTouch"    # Landroid/gamepad/BsForceTouch;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "r"    # F
    .param p5, "extra"    # I

    .line 172
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGameForceTouchMapper:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameForceTouchMapper:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 174
    .local v1, "index":I
    if-ltz v1, :cond_1d

    .line 175
    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mGameForceTouchMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gamepad/BsGameKeyMapList;

    .line 176
    .local v2, "list":Landroid/gamepad/BsGameKeyMapList;
    new-instance v3, Landroid/gamepad/BsGameKeyMap;

    invoke-direct {v3, p2, p3, p4, p5}, Landroid/gamepad/BsGameKeyMap;-><init>(FFFI)V

    invoke-virtual {v2, v3}, Landroid/gamepad/BsGameKeyMapList;->add(Landroid/gamepad/BsGameKeyMap;)Z

    .line 177
    nop

    .end local v2    # "list":Landroid/gamepad/BsGameKeyMapList;
    goto :goto_2f

    .line 178
    :cond_1d
    new-instance v2, Landroid/gamepad/BsGameKeyMapList;

    invoke-direct {v2}, Landroid/gamepad/BsGameKeyMapList;-><init>()V

    .line 179
    .restart local v2    # "list":Landroid/gamepad/BsGameKeyMapList;
    new-instance v3, Landroid/gamepad/BsGameKeyMap;

    invoke-direct {v3, p2, p3, p4, p5}, Landroid/gamepad/BsGameKeyMap;-><init>(FFFI)V

    invoke-virtual {v2, v3}, Landroid/gamepad/BsGameKeyMapList;->add(Landroid/gamepad/BsGameKeyMap;)Z

    .line 180
    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mGameForceTouchMapper:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v1    # "index":I
    .end local v2    # "list":Landroid/gamepad/BsGameKeyMapList;
    :goto_2f
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public whitelist addKey(II)V
    .registers 6
    .param p1, "productid"    # I
    .param p2, "keycode"    # I

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "index":I
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 55
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gamepad/BsGameKey;

    .line 56
    .local v1, "key":Landroid/gamepad/BsGameKey;
    invoke-virtual {v1}, Landroid/gamepad/BsGameKey;->getProductid()I

    move-result v2

    if-ne v2, p1, :cond_1f

    invoke-virtual {v1}, Landroid/gamepad/BsGameKey;->getKeycode()I

    move-result v2

    if-ne v2, p2, :cond_1f

    .line 57
    goto :goto_22

    .line 54
    .end local v1    # "key":Landroid/gamepad/BsGameKey;
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 61
    :cond_22
    :goto_22
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2b

    .line 62
    return-void

    .line 65
    :cond_2b
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    new-instance v2, Landroid/gamepad/BsGameKey;

    invoke-direct {v2, p1, p2}, Landroid/gamepad/BsGameKey;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public whitelist addKeyMap(Ljava/util/BitSet;FFFI)V
    .registers 10
    .param p1, "touchMask"    # Ljava/util/BitSet;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "r"    # F
    .param p5, "extra"    # I

    .line 99
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 101
    .local v1, "index":I
    if-ltz v1, :cond_1d

    .line 102
    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gamepad/BsGameKeyMapList;

    .line 103
    .local v2, "list":Landroid/gamepad/BsGameKeyMapList;
    new-instance v3, Landroid/gamepad/BsGameKeyMap;

    invoke-direct {v3, p2, p3, p4, p5}, Landroid/gamepad/BsGameKeyMap;-><init>(FFFI)V

    invoke-virtual {v2, v3}, Landroid/gamepad/BsGameKeyMapList;->add(Landroid/gamepad/BsGameKeyMap;)Z

    .line 104
    nop

    .end local v2    # "list":Landroid/gamepad/BsGameKeyMapList;
    goto :goto_2f

    .line 105
    :cond_1d
    new-instance v2, Landroid/gamepad/BsGameKeyMapList;

    invoke-direct {v2}, Landroid/gamepad/BsGameKeyMapList;-><init>()V

    .line 106
    .restart local v2    # "list":Landroid/gamepad/BsGameKeyMapList;
    new-instance v3, Landroid/gamepad/BsGameKeyMap;

    invoke-direct {v3, p2, p3, p4, p5}, Landroid/gamepad/BsGameKeyMap;-><init>(FFFI)V

    invoke-virtual {v2, v3}, Landroid/gamepad/BsGameKeyMapList;->add(Landroid/gamepad/BsGameKeyMap;)Z

    .line 107
    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .end local v1    # "index":I
    .end local v2    # "list":Landroid/gamepad/BsGameKeyMapList;
    :goto_2f
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public whitelist addLiftKeyMap(Landroid/gamepad/BsGameKey;FFFI)V
    .registers 10
    .param p1, "key"    # Landroid/gamepad/BsGameKey;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "r"    # F
    .param p5, "extra"    # I

    .line 227
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mLiftKeyMapper:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 228
    :try_start_3
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mLiftKeyMapper:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 229
    .local v1, "index":I
    if-ltz v1, :cond_1d

    .line 230
    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mLiftKeyMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gamepad/BsGameKeyMapList;

    .line 231
    .local v2, "list":Landroid/gamepad/BsGameKeyMapList;
    new-instance v3, Landroid/gamepad/BsGameKeyMap;

    invoke-direct {v3, p2, p3, p4, p5}, Landroid/gamepad/BsGameKeyMap;-><init>(FFFI)V

    invoke-virtual {v2, v3}, Landroid/gamepad/BsGameKeyMapList;->add(Landroid/gamepad/BsGameKeyMap;)Z

    .line 232
    nop

    .end local v2    # "list":Landroid/gamepad/BsGameKeyMapList;
    goto :goto_2f

    .line 233
    :cond_1d
    new-instance v2, Landroid/gamepad/BsGameKeyMapList;

    invoke-direct {v2}, Landroid/gamepad/BsGameKeyMapList;-><init>()V

    .line 234
    .restart local v2    # "list":Landroid/gamepad/BsGameKeyMapList;
    new-instance v3, Landroid/gamepad/BsGameKeyMap;

    invoke-direct {v3, p2, p3, p4, p5}, Landroid/gamepad/BsGameKeyMap;-><init>(FFFI)V

    invoke-virtual {v2, v3}, Landroid/gamepad/BsGameKeyMapList;->add(Landroid/gamepad/BsGameKeyMap;)Z

    .line 235
    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mLiftKeyMapper:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v1    # "index":I
    .end local v2    # "list":Landroid/gamepad/BsGameKeyMapList;
    :goto_2f
    monitor-exit v0

    .line 238
    return-void

    .line 237
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public whitelist getForceTouchMapList(Landroid/gamepad/BsForceTouch;)Landroid/gamepad/BsGameKeyMapList;
    .registers 4
    .param p1, "forceTouch"    # Landroid/gamepad/BsForceTouch;

    .line 196
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGameForceTouchMapper:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 197
    :try_start_3
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameForceTouchMapper:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gamepad/BsGameKeyMapList;

    monitor-exit v0

    return-object v1

    .line 198
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist getKeyMapList(Ljava/util/BitSet;)Landroid/gamepad/BsGameKeyMapList;
    .registers 4
    .param p1, "touchMask"    # Ljava/util/BitSet;

    .line 148
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 149
    :try_start_3
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gamepad/BsGameKeyMapList;

    monitor-exit v0

    return-object v1

    .line 150
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist getLiftKeyMapList(Landroid/gamepad/BsGameKey;)Landroid/gamepad/BsGameKeyMapList;
    .registers 4
    .param p1, "key"    # Landroid/gamepad/BsGameKey;

    .line 251
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mLiftKeyMapper:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 252
    :try_start_3
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mLiftKeyMapper:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gamepad/BsGameKeyMapList;

    monitor-exit v0

    return-object v1

    .line 253
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist injectMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 307
    :try_start_0
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v0, p1}, Landroid/gamepad/IBsGamePadService;->injectMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 310
    nop

    .line 311
    return-void

    .line 308
    :catch_7
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist loadForceTouchMap()V
    .registers 5

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameForceTouchMapper:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 203
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameForceTouchMapper:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gamepad/BsGameKeyMapList;

    .line 204
    .local v1, "list":Landroid/gamepad/BsGameKeyMapList;
    invoke-virtual {v1}, Landroid/gamepad/BsGameKeyMapList;->getMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_42

    invoke-virtual {v1}, Landroid/gamepad/BsGameKeyMapList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_42

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lise size shoule be 2, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/gamepad/BsGameKeyMapList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in SPLIT mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BsGamePadManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void

    .line 202
    .end local v1    # "list":Landroid/gamepad/BsGameKeyMapList;
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "i":I
    :cond_45
    :try_start_45
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameForceTouchMapper:Landroid/util/ArrayMap;

    invoke-interface {v0, v1}, Landroid/gamepad/IBsGamePadService;->loadForceTouchMap(Ljava/util/Map;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4c} :catch_4e

    .line 214
    nop

    .line 215
    return-void

    .line 212
    :catch_4e
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist loadKey()V
    .registers 3

    .line 92
    :try_start_0
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/gamepad/IBsGamePadService;->loadKey(Ljava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 95
    nop

    .line 96
    return-void

    .line 93
    :catch_9
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist loadKeyMap(ZZ)V
    .registers 5
    .param p1, "isChooseMove"    # Z
    .param p2, "hideMouse"    # Z

    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-interface {v0, v1, p1, p2}, Landroid/gamepad/IBsGamePadService;->loadKeyMap(Ljava/util/Map;ZZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 158
    nop

    .line 159
    return-void

    .line 156
    :catch_9
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist loadLiftKeyMap()V
    .registers 3

    .line 258
    :try_start_0
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mLiftKeyMapper:Landroid/util/ArrayMap;

    invoke-interface {v0, v1}, Landroid/gamepad/IBsGamePadService;->loadLiftKeyMap(Ljava/util/Map;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 261
    nop

    .line 262
    return-void

    .line 259
    :catch_9
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerForceTouchEventListener(Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 390
    if-eqz p1, :cond_2c

    .line 394
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mForceTouchEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_5
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mForceTouchEventListener:Landroid/gamepad/BsGamePadManager$ForceTouchEventListener;

    if-nez v1, :cond_c

    .line 396
    invoke-direct {p0}, Landroid/gamepad/BsGamePadManager;->initializeForceTouchEventListenerLocked()V

    .line 399
    :cond_c
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mOnForceTouchEventListeners:Ljava/util/List;

    if-nez v1, :cond_17

    .line 400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/gamepad/BsGamePadManager;->mOnForceTouchEventListeners:Ljava/util/List;

    .line 403
    :cond_17
    invoke-direct {p0, p1}, Landroid/gamepad/BsGamePadManager;->findOnForceTouchEventListenerLocked(Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;)I

    move-result v1

    .line 404
    .local v1, "idx":I
    if-gez v1, :cond_27

    .line 405
    new-instance v2, Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;

    invoke-direct {v2, p1, p2}, Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;-><init>(Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;Landroid/os/Handler;)V

    .line 406
    .local v2, "d":Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;
    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mOnForceTouchEventListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;
    :cond_27
    monitor-exit v0

    .line 409
    return-void

    .line 408
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v1

    .line 391
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerGameKeyEventListener(Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 517
    if-eqz p1, :cond_2c

    .line 521
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_5
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyEventListener:Landroid/gamepad/BsGamePadManager$GameKeyEventListener;

    if-nez v1, :cond_c

    .line 523
    invoke-direct {p0}, Landroid/gamepad/BsGamePadManager;->initializeGameKeyEventListenerLocked()V

    .line 526
    :cond_c
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mOnGameKeyEventListeners:Ljava/util/List;

    if-nez v1, :cond_17

    .line 527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/gamepad/BsGamePadManager;->mOnGameKeyEventListeners:Ljava/util/List;

    .line 530
    :cond_17
    invoke-direct {p0, p1}, Landroid/gamepad/BsGamePadManager;->findOnGameKeyEventListenerLocked(Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;)I

    move-result v1

    .line 531
    .local v1, "idx":I
    if-gez v1, :cond_27

    .line 532
    new-instance v2, Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;

    invoke-direct {v2, p1, p2}, Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;-><init>(Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;Landroid/os/Handler;)V

    .line 533
    .local v2, "d":Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;
    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mOnGameKeyEventListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;
    :cond_27
    monitor-exit v0

    .line 536
    return-void

    .line 535
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v1

    .line 518
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeExtraTouchDevice(I)V
    .registers 4
    .param p1, "productid"    # I

    .line 283
    :try_start_0
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v0, p1}, Landroid/gamepad/IBsGamePadService;->removeExtraTouchDevice(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 286
    nop

    .line 287
    return-void

    .line 284
    :catch_7
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeExtraTouchId()V
    .registers 3

    .line 299
    :try_start_0
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v0}, Landroid/gamepad/IBsGamePadService;->removeExtraTouchId()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 302
    nop

    .line 303
    return-void

    .line 300
    :catch_7
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAppSwitch(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 569
    :try_start_0
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v0, p1}, Landroid/gamepad/IBsGamePadService;->setAppSwitch(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 572
    nop

    .line 573
    return-void

    .line 570
    :catch_7
    move-exception v0

    .line 571
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDeviceRotation(II)V
    .registers 5
    .param p1, "productid"    # I
    .param p2, "rotation"    # I

    .line 46
    :try_start_0
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v0, p1, p2}, Landroid/gamepad/IBsGamePadService;->setDeviceRotation(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 49
    nop

    .line 50
    return-void

    .line 47
    :catch_7
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setForceTouchMapMode(Landroid/gamepad/BsForceTouch;I)V
    .registers 6
    .param p1, "forceTouch"    # Landroid/gamepad/BsForceTouch;
    .param p2, "mode"    # I

    .line 186
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGameForceTouchMapper:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 187
    :try_start_3
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameForceTouchMapper:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 188
    .local v1, "index":I
    if-ltz v1, :cond_16

    .line 189
    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mGameForceTouchMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gamepad/BsGameKeyMapList;

    .line 190
    .local v2, "list":Landroid/gamepad/BsGameKeyMapList;
    invoke-virtual {v2, p2}, Landroid/gamepad/BsGameKeyMapList;->setMode(I)V

    .line 192
    .end local v1    # "index":I
    .end local v2    # "list":Landroid/gamepad/BsGameKeyMapList;
    :cond_16
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist setGyroscopeKey(IIZ)V
    .registers 7
    .param p1, "productid"    # I
    .param p2, "keycode"    # I
    .param p3, "enable"    # Z

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "index":I
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 82
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gamepad/BsGameKey;

    .line 83
    .local v1, "key":Landroid/gamepad/BsGameKey;
    invoke-virtual {v1}, Landroid/gamepad/BsGameKey;->getProductid()I

    move-result v2

    if-ne v2, p1, :cond_22

    invoke-virtual {v1}, Landroid/gamepad/BsGameKey;->getKeycode()I

    move-result v2

    if-ne v2, p2, :cond_22

    .line 84
    invoke-virtual {v1, p3}, Landroid/gamepad/BsGameKey;->setGyroscopeKey(Z)V

    .line 85
    return-void

    .line 81
    .end local v1    # "key":Landroid/gamepad/BsGameKey;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 88
    :cond_25
    return-void
.end method

.method public whitelist setLiftKeyMapMode(Landroid/gamepad/BsGameKey;I)V
    .registers 6
    .param p1, "key"    # Landroid/gamepad/BsGameKey;
    .param p2, "mode"    # I

    .line 241
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mLiftKeyMapper:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 242
    :try_start_3
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mLiftKeyMapper:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 243
    .local v1, "index":I
    if-ltz v1, :cond_16

    .line 244
    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mLiftKeyMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gamepad/BsGameKeyMapList;

    .line 245
    .local v2, "list":Landroid/gamepad/BsGameKeyMapList;
    invoke-virtual {v2, p2}, Landroid/gamepad/BsGameKeyMapList;->setMode(I)V

    .line 247
    .end local v1    # "index":I
    .end local v2    # "list":Landroid/gamepad/BsGameKeyMapList;
    :cond_16
    monitor-exit v0

    .line 248
    return-void

    .line 247
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist setMode(Ljava/util/BitSet;I)V
    .registers 7
    .param p1, "touchMask"    # Ljava/util/BitSet;
    .param p2, "mode"    # I

    .line 113
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 115
    .local v1, "index":I
    if-ltz v1, :cond_17

    .line 116
    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gamepad/BsGameKeyMapList;

    .line 117
    .local v2, "list":Landroid/gamepad/BsGameKeyMapList;
    invoke-virtual {v2, p2}, Landroid/gamepad/BsGameKeyMapList;->setMode(I)V

    .line 118
    .end local v2    # "list":Landroid/gamepad/BsGameKeyMapList;
    goto :goto_24

    .line 119
    :cond_17
    new-instance v2, Landroid/gamepad/BsGameKeyMapList;

    invoke-direct {v2}, Landroid/gamepad/BsGameKeyMapList;-><init>()V

    .line 120
    .restart local v2    # "list":Landroid/gamepad/BsGameKeyMapList;
    invoke-virtual {v2, p2}, Landroid/gamepad/BsGameKeyMapList;->setMode(I)V

    .line 121
    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v1    # "index":I
    .end local v2    # "list":Landroid/gamepad/BsGameKeyMapList;
    :goto_24
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public whitelist setMouseKey(III)V
    .registers 7
    .param p1, "productid"    # I
    .param p2, "keycode"    # I
    .param p3, "flag"    # I

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "index":I
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 71
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gamepad/BsGameKey;

    .line 72
    .local v1, "key":Landroid/gamepad/BsGameKey;
    invoke-virtual {v1}, Landroid/gamepad/BsGameKey;->getProductid()I

    move-result v2

    if-ne v2, p1, :cond_22

    invoke-virtual {v1}, Landroid/gamepad/BsGameKey;->getKeycode()I

    move-result v2

    if-ne v2, p2, :cond_22

    .line 73
    invoke-virtual {v1, p3}, Landroid/gamepad/BsGameKey;->setMouseKey(I)V

    .line 74
    return-void

    .line 70
    .end local v1    # "key":Landroid/gamepad/BsGameKey;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 77
    :cond_25
    return-void
.end method

.method public whitelist setMouseSensitivity(IIFF)V
    .registers 9
    .param p1, "productid"    # I
    .param p2, "keycode"    # I
    .param p3, "vertical_sensitivity"    # F
    .param p4, "horizontal_sensitivity"    # F

    .line 127
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_7

    .line 128
    const/high16 p3, 0x3f800000    # 1.0f

    .line 131
    :cond_7
    cmpg-float v0, p4, v0

    if-gtz v0, :cond_d

    .line 132
    const/high16 p4, 0x3f800000    # 1.0f

    .line 135
    :cond_d
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 136
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_11
    :try_start_11
    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 137
    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gamepad/BsGameKey;

    .line 138
    .local v2, "key":Landroid/gamepad/BsGameKey;
    invoke-virtual {v2}, Landroid/gamepad/BsGameKey;->getProductid()I

    move-result v3

    if-ne v3, p1, :cond_35

    invoke-virtual {v2}, Landroid/gamepad/BsGameKey;->getKeycode()I

    move-result v3

    if-ne v3, p2, :cond_35

    .line 139
    invoke-virtual {v2, p3}, Landroid/gamepad/BsGameKey;->setMouseVerticalSensitivity(F)V

    .line 140
    invoke-virtual {v2, p4}, Landroid/gamepad/BsGameKey;->setMouseHorizontalSensitivity(F)V

    .line 141
    monitor-exit v0

    return-void

    .line 136
    .end local v2    # "key":Landroid/gamepad/BsGameKey;
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 144
    .end local v1    # "index":I
    :cond_38
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public whitelist unloadForceTouchMap()V
    .registers 3

    .line 218
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGameForceTouchMapper:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 220
    :try_start_5
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v0}, Landroid/gamepad/IBsGamePadService;->unloadForceTouchMap()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 223
    nop

    .line 224
    return-void

    .line 221
    :catch_c
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unloadKeyMap(Z)V
    .registers 4
    .param p1, "hideMouse"    # Z

    .line 162
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGamePadMapper:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 165
    :try_start_a
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v0, p1}, Landroid/gamepad/IBsGamePadService;->unloadKeyMap(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    .line 168
    nop

    .line 169
    return-void

    .line 166
    :catch_11
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unloadLiftKeyMap()V
    .registers 3

    .line 265
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mLiftKeyMapper:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 267
    :try_start_5
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v0}, Landroid/gamepad/IBsGamePadService;->unloadLiftKeyMap()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 270
    nop

    .line 271
    return-void

    .line 268
    :catch_c
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterForceTouchEventListener(Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;

    .line 412
    if-eqz p1, :cond_6e

    .line 416
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mForceTouchEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_5
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mOnForceTouchEventListeners:Ljava/util/List;

    if-nez v1, :cond_b

    .line 418
    monitor-exit v0

    return-void

    .line 421
    :cond_b
    invoke-direct {p0, p1}, Landroid/gamepad/BsGamePadManager;->findOnForceTouchEventListenerLocked(Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;)I

    move-result v1

    .line 422
    .local v1, "idx":I
    const/4 v2, 0x0

    if-ltz v1, :cond_1d

    .line 423
    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mOnForceTouchEventListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;

    .line 424
    .local v3, "d":Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;
    invoke-virtual {v3, v2}, Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 427
    .end local v3    # "d":Landroid/gamepad/BsGamePadManager$onForceTouchEventListenerDelegate;
    :cond_1d
    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mOnForceTouchEventListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_69

    .line 428
    iput-object v2, p0, Landroid/gamepad/BsGamePadManager;->mForceTouchEventListener:Landroid/gamepad/BsGamePadManager$ForceTouchEventListener;

    .line 429
    const-string v2, "BsGamePadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v2, "BsGamePadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallers = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_6b

    .line 432
    :try_start_5d
    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v2}, Landroid/gamepad/IBsGamePadService;->unregisterForceTouchEventListener()V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_62} :catch_63
    .catchall {:try_start_5d .. :try_end_62} :catchall_6b

    .line 435
    goto :goto_69

    .line 433
    :catch_63
    move-exception v2

    .line 434
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_64
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/gamepad/BsGamePadManager;
    .end local p1    # "listener":Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;
    throw v3

    .line 437
    .end local v1    # "idx":I
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/gamepad/BsGamePadManager;
    .restart local p1    # "listener":Landroid/gamepad/BsGamePadManager$OnForceTouchEventListener;
    :cond_69
    :goto_69
    monitor-exit v0

    .line 438
    return-void

    .line 437
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_6b

    throw v1

    .line 413
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterGameKeyEventListener(Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;

    .line 539
    if-eqz p1, :cond_6e

    .line 543
    iget-object v0, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_5
    iget-object v1, p0, Landroid/gamepad/BsGamePadManager;->mOnGameKeyEventListeners:Ljava/util/List;

    if-nez v1, :cond_b

    .line 545
    monitor-exit v0

    return-void

    .line 548
    :cond_b
    invoke-direct {p0, p1}, Landroid/gamepad/BsGamePadManager;->findOnGameKeyEventListenerLocked(Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;)I

    move-result v1

    .line 549
    .local v1, "idx":I
    const/4 v2, 0x0

    if-ltz v1, :cond_1d

    .line 550
    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mOnGameKeyEventListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;

    .line 551
    .local v3, "d":Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;
    invoke-virtual {v3, v2}, Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 554
    .end local v3    # "d":Landroid/gamepad/BsGamePadManager$onGameKeyEventListenerDelegate;
    :cond_1d
    iget-object v3, p0, Landroid/gamepad/BsGamePadManager;->mOnGameKeyEventListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_69

    .line 555
    iput-object v2, p0, Landroid/gamepad/BsGamePadManager;->mGameKeyEventListener:Landroid/gamepad/BsGamePadManager$GameKeyEventListener;

    .line 556
    const-string v2, "BsGamePadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v2, "BsGamePadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallers = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_6b

    .line 559
    :try_start_5d
    iget-object v2, p0, Landroid/gamepad/BsGamePadManager;->mService:Landroid/gamepad/IBsGamePadService;

    invoke-interface {v2}, Landroid/gamepad/IBsGamePadService;->unregisterGameKeyEventListener()V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_62} :catch_63
    .catchall {:try_start_5d .. :try_end_62} :catchall_6b

    .line 562
    goto :goto_69

    .line 560
    :catch_63
    move-exception v2

    .line 561
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_64
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/gamepad/BsGamePadManager;
    .end local p1    # "listener":Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;
    throw v3

    .line 564
    .end local v1    # "idx":I
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/gamepad/BsGamePadManager;
    .restart local p1    # "listener":Landroid/gamepad/BsGamePadManager$OnGameKeyEventListener;
    :cond_69
    :goto_69
    monitor-exit v0

    .line 565
    return-void

    .line 564
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_6b

    throw v1

    .line 540
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
