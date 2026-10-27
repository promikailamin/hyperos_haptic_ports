.class public Lcom/android/server/wm/DragDropController;
.super Ljava/lang/Object;
.source "DragDropController.java"


# instance fields
.field public mCallback:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mDisplayTopologyListener:Ljava/util/function/Consumer;

.field public mDragState:Lcom/android/server/wm/DragState;

.field public mGlobalDragListener:Landroid/window/IGlobalDragListener;

.field public final mGlobalDragListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mHandler:Landroid/os/Handler;

.field public mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDragState(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .registers 6

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/android/server/wm/DragDropController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DragDropController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DragDropController;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mDisplayTopologyListener:Ljava/util/function/Consumer;

    .line 95
    new-instance v1, Lcom/android/server/wm/DragDropController$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DragDropController$1;-><init>(Lcom/android/server/wm/DragDropController;)V

    iput-object v1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 111
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/android/server/wm/DragDropController$2;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DragDropController$2;-><init>(Lcom/android/server/wm/DragDropController;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 115
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 116
    new-instance v1, Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/DragDropController$DragHandler;-><init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    .line 117
    sget-object p1, Landroid/window/DesktopExperienceFlags;->ENABLE_CONNECTED_DISPLAYS_DND:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 118
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance p2, Landroid/os/HandlerExecutor;

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {p2, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, p2, v0}, Landroid/hardware/display/DisplayManager;->registerTopologyListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :cond_3e
    return-void
.end method


# virtual methods
.method public cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 6

    .line 467
    const-string v0, "WindowManager"

    const-string v1, "cancelDragAndDrop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preCancelDragAndDrop(Landroid/os/IBinder;)V

    .line 472
    :try_start_12
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_38

    .line 473
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_4b

    .line 478
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v2, p1, :cond_3c

    const/4 p1, 0x0

    .line 485
    iput-boolean p1, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 486
    invoke-virtual {v1, p2}, Lcom/android/server/wm/DragState;->cancelDragLocked(Z)V

    .line 487
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_3a

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_38

    .line 489
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    return-void

    :catchall_38
    move-exception p1

    goto :goto_5f

    :catchall_3a
    move-exception p1

    goto :goto_5a

    .line 479
    :cond_3c
    :try_start_3c
    const-string p1, "WindowManager"

    const-string p2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 474
    :cond_4b
    const-string p1, "WindowManager"

    const-string p2, "cancelDragAndDrop() without prepareDrag()"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cancelDragAndDrop() without prepareDrag()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 487
    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3c .. :try_end_5b} :catchall_3a

    :try_start_5b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_38

    .line 489
    :goto_5f
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    .line 490
    throw p1
.end method

.method public dragDropActiveLocked()Z
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isClosing()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 4

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag into new candidate view @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->dragRecipientEntered(Landroid/view/IWindow;)V

    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .registers 4

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag from old candidate view @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->dragRecipientExited(Landroid/view/IWindow;)V

    return-void
.end method

.method public dragSurfaceRelinquishedToDropTarget()Z
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public dropForAccessibility(Landroid/view/IWindow;FF)Z
    .registers 8

    .line 580
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 581
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 582
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1e

    .line 583
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_1c
    move-exception p0

    goto :goto_4e

    .line 585
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result v2

    if-eqz v2, :cond_49

    if-eqz v1, :cond_49

    .line 586
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->windowForClient(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 588
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 589
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 591
    :cond_3c
    :try_start_3c
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 592
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLock(Landroid/os/IBinder;FF)Z

    move-result p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 594
    :cond_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 595
    :goto_4e
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .registers 2

    .line 599
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public handleDisplayTopologyChange(Landroid/hardware/display/DisplayTopology;)V
    .registers 4

    .line 495
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 496
    :try_start_8
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v0, :cond_13

    .line 497
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_11
    move-exception p0

    goto :goto_27

    .line 500
    :cond_13
    :try_start_13
    const-string v0, "WindowManager"

    const-string v1, "DisplayTopology changed, cancelling DragAndDrop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DragDropController;->cancelDragAndDrop(Landroid/os/IBinder;Z)V

    .line 503
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_27
    :try_start_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public handleMotionEvent(ZIFF)V
    .registers 7

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 516
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    if-nez v1, :cond_15

    .line 520
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception p0

    goto :goto_1f

    .line 523
    :cond_15
    :try_start_15
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DragState;->updateDragSurfaceLocked(ZIFF)V

    .line 524
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public hasPendingUnhandledDropCallback()Z
    .registers 2

    .line 462
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public notifyUnhandledDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z
    .registers 12

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v0, v0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v1, v0, 0x1100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    :goto_d
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v3

    .line 410
    :goto_14
    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    const-string v5, ")"

    const-string v6, "WindowManager"

    if-eqz v4, :cond_61

    if-eqz v0, :cond_61

    if-eqz v1, :cond_21

    goto :goto_61

    .line 419
    :cond_21
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const-wide/16 v7, 0x20

    .line 420
    const-string v1, "DragDropController#notifyUnhandledDrop"

    invoke-static {v7, v8, v1, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending DROP to unhandled listener ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    const-wide/16 v4, 0x1388

    const/4 v1, 0x4

    .line 425
    :try_start_4c
    invoke-virtual {p0, v1, p2, v4, v5}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V

    .line 426
    iget-object p2, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    new-instance v1, Lcom/android/server/wm/DragDropController$3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/DragDropController$3;-><init>(Lcom/android/server/wm/DragDropController;I)V

    invoke-interface {p2, p1, v1}, Landroid/window/IGlobalDragListener;->onUnhandledDrop(Landroid/view/DragEvent;Landroid/window/IUnhandledDragCallback;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_59} :catch_5a

    return v2

    :catch_5a
    move-exception p0

    .line 439
    const-string p1, "Failed to call global drag listener for unhandled drop"

    invoke-static {v6, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    .line 415
    :cond_61
    :goto_61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping unhandled listener (listener="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", flags="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget p0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V
    .registers 3

    .line 561
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eq v0, p1, :cond_c

    .line 562
    const-string p0, "WindowManager"

    const-string p1, "Unknown drag state is closed"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 p1, 0x0

    .line 565
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-void
.end method

.method public onUnhandledDropCallback(Z)V
    .registers 5

    .line 450
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 452
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 453
    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    .line 454
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    return-void
.end method

.method public performDrag(IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 31

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move-object/from16 v11, p13

    .line 169
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "perform drag: win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " surface="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " flags=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " touch("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ") thumb center("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    .line 175
    iget-object v3, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    move/from16 v6, p6

    invoke-interface/range {v3 .. v11}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->prePerformDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    move-result v3

    move-object v12, v5

    .line 180
    :try_start_7d
    iget-object v5, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v13
    :try_end_85
    .catchall {:try_start_7d .. :try_end_85} :catchall_1c9

    const/4 v14, 0x0

    if-nez v3, :cond_c9

    .line 183
    :try_start_88
    const-string v0, "WindowManager"

    const-string v3, "IDragDropCallback rejects the performDrag request"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_c6

    if-eqz v1, :cond_b6

    .line 256
    :try_start_91
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 257
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/SurfaceControl$Transaction;
    :try_end_9c
    .catchall {:try_start_91 .. :try_end_9c} :catchall_a6

    .line 258
    :try_start_9c
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 259
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_a9

    .line 260
    :try_start_a2
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6

    goto :goto_b6

    :catchall_a6
    move-exception v0

    goto/16 :goto_2f6

    :catchall_a9
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_b5

    .line 256
    :try_start_ad
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b1

    goto :goto_b5

    :catchall_b1
    move-exception v0

    :try_start_b2
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b5
    :goto_b5
    throw v1

    :cond_b6
    :goto_b6
    monitor-exit v13
    :try_end_b7
    .catchall {:try_start_b2 .. :try_end_b7} :catchall_a6

    .line 311
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    return-object v14

    :catchall_c6
    move-exception v0

    goto/16 :goto_2d2

    .line 187
    :cond_c9
    :try_start_c9
    invoke-virtual {v2}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 188
    const-string v0, "WindowManager"

    const-string v3, "Drag already in progress"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catchall {:try_start_c9 .. :try_end_d6} :catchall_c6

    if-eqz v1, :cond_b6

    .line 256
    :try_start_d8
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 257
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/SurfaceControl$Transaction;
    :try_end_e3
    .catchall {:try_start_d8 .. :try_end_e3} :catchall_a6

    .line 258
    :try_start_e3
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 259
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_e9
    .catchall {:try_start_e3 .. :try_end_e9} :catchall_ed

    .line 260
    :try_start_e9
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_a6

    goto :goto_b6

    :catchall_ed
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_f9

    .line 256
    :try_start_f1
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_f5

    goto :goto_f9

    :catchall_f5
    move-exception v0

    :try_start_f6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f9
    :goto_f9
    throw v1
    :try_end_fa
    .catchall {:try_start_f6 .. :try_end_fa} :catchall_a6

    .line 192
    :cond_fa
    :try_start_fa
    iget-object v3, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v14, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClient(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Lcom/android/server/wm/WindowState;

    move-result-object v15

    if-eqz v15, :cond_108

    .line 194
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v3

    if-nez v3, :cond_10c

    :cond_108
    move-object/from16 v16, v14

    goto/16 :goto_295

    .line 211
    :cond_10c
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_13d

    .line 213
    const-string v0, "WindowManager"

    const-string v3, "display content is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catchall {:try_start_fa .. :try_end_119} :catchall_c6

    if-eqz v1, :cond_b6

    .line 256
    :try_start_11b
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 257
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/SurfaceControl$Transaction;
    :try_end_126
    .catchall {:try_start_11b .. :try_end_126} :catchall_a6

    .line 258
    :try_start_126
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 259
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_12c
    .catchall {:try_start_126 .. :try_end_12c} :catchall_130

    .line 260
    :try_start_12c
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_a6

    goto :goto_b6

    :catchall_130
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_13c

    .line 256
    :try_start_134
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_137
    .catchall {:try_start_134 .. :try_end_137} :catchall_138

    goto :goto_13c

    :catchall_138
    move-exception v0

    :try_start_139
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13c
    :goto_13c
    throw v1
    :try_end_13d
    .catchall {:try_start_139 .. :try_end_13d} :catchall_a6

    :cond_13d
    and-int/lit16 v5, v0, 0x200

    if-nez v5, :cond_145

    const v5, 0x3f350481    # 0.7071f

    goto :goto_147

    :cond_145
    const/high16 v5, 0x3f800000    # 1.0f

    .line 219
    :goto_147
    :try_start_147
    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v4, v3

    .line 220
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 221
    new-instance v0, Lcom/android/server/wm/DragState;
    :try_end_153
    .catchall {:try_start_147 .. :try_end_153} :catchall_c6

    :try_start_153
    iget-object v1, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_155
    .catchall {:try_start_153 .. :try_end_155} :catchall_291

    move v10, v5

    move-object/from16 v16, v14

    move/from16 v5, p4

    move-object v14, v4

    move-object/from16 v4, p5

    :try_start_15d
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    :try_end_160
    .catchall {:try_start_15d .. :try_end_160} :catchall_28e

    move-object v1, v4

    :try_start_161
    iput-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_163
    .catchall {:try_start_161 .. :try_end_163} :catchall_c6

    move/from16 v1, p1

    .line 223
    :try_start_165
    iput v1, v0, Lcom/android/server/wm/DragState;->mPid:I

    move/from16 v1, p2

    .line 224
    iput v1, v0, Lcom/android/server/wm/DragState;->mUid:I

    .line 225
    iput v10, v0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    .line 226
    iget v1, v15, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v1, v0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    .line 227
    iput-object v12, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 228
    iput-object v14, v0, Lcom/android/server/wm/DragState;->mStartDragDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 229
    iput-object v14, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 230
    iput-object v11, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 231
    invoke-virtual {v2, v15, v5}, Lcom/android/server/wm/DragDropController;->shouldMoveCallingTaskToBack(Lcom/android/server/wm/WindowState;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    .line 234
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling task to hide="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v3, v3, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v0, v5, 0x400

    const/4 v1, 0x0

    if-nez v0, :cond_26e

    .line 238
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 239
    iget-object v3, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    iget-object v4, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v5, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v6, v15, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-interface {v3, v4, v0, v5, v6}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0
    :try_end_1b6
    .catchall {:try_start_165 .. :try_end_1b6} :catchall_26a

    .line 263
    :try_start_1b6
    monitor-exit v13
    :try_end_1b7
    .catchall {:try_start_1b6 .. :try_end_1b7} :catchall_a6

    :try_start_1b7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1ba
    .catchall {:try_start_1b7 .. :try_end_1ba} :catchall_1c9

    .line 267
    :try_start_1ba
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1c8} :catch_1cc
    .catchall {:try_start_1ba .. :try_end_1c8} :catchall_1c9

    goto :goto_1d4

    :catchall_1c9
    move-exception v0

    goto/16 :goto_2fb

    :catch_1cc
    move-exception v0

    .line 270
    :try_start_1cd
    const-string v3, "WindowManager"

    const-string v4, "Exception thrown while waiting for touch focus transfer"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    :goto_1d4
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_1dc
    .catchall {:try_start_1cd .. :try_end_1dc} :catchall_1c9

    if-nez v1, :cond_1fc

    .line 276
    :try_start_1de
    const-string v0, "WindowManager"

    const-string v1, "Unable to transfer touch focus"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 278
    monitor-exit v3
    :try_end_1eb
    .catchall {:try_start_1de .. :try_end_1eb} :catchall_1fa

    .line 311
    :goto_1eb
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    return-object v16

    :catchall_1fa
    move-exception v0

    goto :goto_265

    .line 281
    :cond_1fc
    :try_start_1fc
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v1, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 282
    invoke-virtual {v0, v7, v8}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    const/16 v0, 0x2002

    move/from16 v6, p6

    and-int/lit16 v4, v6, 0x2002

    if-ne v4, v0, :cond_236

    .line 284
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget-object v4, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/16 v5, 0x3fd

    .line 285
    invoke-static {v4, v5}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v5, v5, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 287
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    iget-object v6, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 288
    invoke-virtual {v6}, Lcom/android/server/wm/DragState;->getInputToken()Landroid/os/IBinder;

    move-result-object v6

    move/from16 p4, p7

    move/from16 p5, p8

    move-object/from16 p1, v0

    move-object/from16 p2, v4

    move/from16 p3, v5

    move-object/from16 p6, v6

    .line 284
    invoke-virtual/range {p1 .. p6}, Landroid/hardware/input/InputManagerGlobal;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    .line 291
    :cond_236
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v9, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    move/from16 v10, p12

    .line 292
    iput v10, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 299
    iget-object v4, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 300
    iget v0, v0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    invoke-virtual {v4, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 301
    invoke-virtual {v4, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 302
    invoke-virtual {v14, v4, v1}, Lcom/android/server/wm/DisplayContent;->reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 303
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 304
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    const/4 v4, 0x1

    .line 303
    invoke-virtual {v0, v4, v1, v7, v8}, Lcom/android/server/wm/DragState;->updateDragSurfaceLocked(ZIFF)V

    .line 308
    monitor-exit v3
    :try_end_256
    .catchall {:try_start_1fc .. :try_end_256} :catchall_1fa

    :try_start_256
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_259
    .catchall {:try_start_256 .. :try_end_259} :catchall_1c9

    .line 311
    :goto_259
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    return-object v12

    .line 308
    :goto_265
    :try_start_265
    monitor-exit v3
    :try_end_266
    .catchall {:try_start_265 .. :try_end_266} :catchall_1fa

    :try_start_266
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_26a
    .catchall {:try_start_266 .. :try_end_26a} :catchall_1c9

    :catchall_26a
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_2d2

    .line 244
    :cond_26e
    :try_start_26e
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    .line 247
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 248
    invoke-virtual {v2}, Lcom/android/server/wm/DragDropController;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    const v4, 0xea60

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v3

    int-to-long v3, v3

    .line 247
    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V
    :try_end_289
    .catchall {:try_start_26e .. :try_end_289} :catchall_26a

    .line 256
    :try_start_289
    monitor-exit v13
    :try_end_28a
    .catchall {:try_start_289 .. :try_end_28a} :catchall_a6

    .line 311
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_259

    :catchall_28e
    move-exception v0

    move-object v1, v4

    goto :goto_2d2

    :catchall_291
    move-exception v0

    move-object/from16 v1, p5

    goto :goto_2d2

    .line 195
    :goto_295
    :try_start_295
    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad requesting window "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ab
    .catchall {:try_start_295 .. :try_end_2ab} :catchall_c6

    if-eqz v1, :cond_2cf

    .line 256
    :try_start_2ad
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 257
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/SurfaceControl$Transaction;
    :try_end_2b8
    .catchall {:try_start_2ad .. :try_end_2b8} :catchall_a6

    .line 258
    :try_start_2b8
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 259
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_2be
    .catchall {:try_start_2b8 .. :try_end_2be} :catchall_2c2

    .line 260
    :try_start_2be
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2c1
    .catchall {:try_start_2be .. :try_end_2c1} :catchall_a6

    goto :goto_2cf

    :catchall_2c2
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_2ce

    .line 256
    :try_start_2c6
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2c9
    .catchall {:try_start_2c6 .. :try_end_2c9} :catchall_2ca

    goto :goto_2ce

    :catchall_2ca
    move-exception v0

    :try_start_2cb
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2ce
    :goto_2ce
    throw v1

    :cond_2cf
    :goto_2cf
    monitor-exit v13

    goto/16 :goto_1eb

    :goto_2d2
    if-eqz v1, :cond_2f5

    iget-object v3, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 257
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$Transaction;
    :try_end_2de
    .catchall {:try_start_2cb .. :try_end_2de} :catchall_a6

    .line 258
    :try_start_2de
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 259
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_2e4
    .catchall {:try_start_2de .. :try_end_2e4} :catchall_2e8

    .line 260
    :try_start_2e4
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2e7
    .catchall {:try_start_2e4 .. :try_end_2e7} :catchall_a6

    goto :goto_2f5

    :catchall_2e8
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_2f4

    .line 256
    :try_start_2ec
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2ef
    .catchall {:try_start_2ec .. :try_end_2ef} :catchall_2f0

    goto :goto_2f4

    :catchall_2f0
    move-exception v0

    :try_start_2f1
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2f4
    :goto_2f4
    throw v1

    .line 262
    :cond_2f5
    :goto_2f5
    throw v0

    .line 263
    :goto_2f6
    monitor-exit v13
    :try_end_2f7
    .catchall {:try_start_2f1 .. :try_end_2f7} :catchall_a6

    :try_start_2f7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_2fb
    .catchall {:try_start_2f7 .. :try_end_2fb} :catchall_1c9

    .line 311
    :goto_2fb
    iget-object v1, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 312
    throw v0
.end method

.method public registerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .registers 2

    .line 138
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .registers 8

    .line 320
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 322
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drop result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reported by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preReportDropResult(Landroid/view/IWindow;Z)V

    .line 327
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_ce

    .line 328
    :try_start_35
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_53

    .line 331
    const-string p1, "WindowManager"

    const-string p2, "Drop result given but no drag in progress"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_50

    .line 379
    :goto_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_44
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    return-void

    :catchall_50
    move-exception p1

    goto/16 :goto_ee

    .line 335
    :cond_53
    :try_start_53
    iget-object v2, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v2, v0, :cond_d0

    .line 344
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 346
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/WindowManagerService;->windowForClient(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_82

    .line 349
    const-string p2, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad result-reporting window "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    monitor-exit v1

    goto :goto_41

    :cond_82
    if-nez p2, :cond_92

    .line 355
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object p1, p1, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    const-string v3, "window-drop"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/DragDropController;->notifyUnhandledDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 359
    monitor-exit v1

    goto :goto_41

    :cond_92
    if-eqz p2, :cond_9d

    .line 362
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 363
    invoke-virtual {p1, v2}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_9d

    const/4 v4, 0x1

    .line 364
    :cond_9d
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object p1, p1, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    invoke-interface {p1, v0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 365
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, p2, v4}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V

    .line 367
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 368
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;
    :try_end_b0
    .catchall {:try_start_53 .. :try_end_b0} :catchall_50

    if-eqz v2, :cond_c8

    if-eqz v0, :cond_c8

    if-eqz p2, :cond_c8

    if-nez p1, :cond_c8

    .line 371
    :try_start_b8
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/window/IGlobalDragListener;->onCrossWindowDrop(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_bf} :catch_c0
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_50

    goto :goto_c8

    :catch_c0
    move-exception p1

    .line 373
    :try_start_c1
    const-string p2, "WindowManager"

    const-string v0, "Failed to call global drag listener for cross-window drop"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    :cond_c8
    :goto_c8
    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_c1 .. :try_end_c9} :catchall_50

    :try_start_c9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_ce

    goto/16 :goto_44

    :catchall_ce
    move-exception p1

    goto :goto_f3

    .line 337
    :cond_d0
    :try_start_d0
    const-string p2, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid drop-result claim by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "reportDropResult() by non-recipient"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 377
    :goto_ee
    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_d0 .. :try_end_ef} :catchall_50

    :try_start_ef
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_f3
    .catchall {:try_start_ef .. :try_end_f3} :catchall_ce

    .line 379
    :goto_f3
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 380
    throw p1
.end method

.method public reportDropWindow(Landroid/os/IBinder;FF)V
    .registers 5

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v0, :cond_c

    .line 570
    const-string p0, "WindowManager"

    const-string p1, "Drag state is closed."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 574
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 575
    :try_start_14
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLock(Landroid/os/IBinder;FF)Z

    .line 576
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 162
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public sendHandlerMessage(ILjava/lang/Object;)V
    .registers 3

    .line 545
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendTimeoutMessage(ILjava/lang/Object;J)V
    .registers 6

    .line 552
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 554
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setGlobalDragListener(Landroid/window/IGlobalDragListener;)V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    invoke-interface {v0}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 150
    :cond_16
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    if-eqz p1, :cond_2f

    .line 151
    invoke-interface {p1}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 153
    :try_start_20
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    invoke-interface {p1}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    const/4 p1, 0x0

    .line 156
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    :cond_2f
    return-void
.end method

.method public final shouldMoveCallingTaskToBack(Lcom/android/server/wm/WindowState;I)I
    .registers 3

    and-int/lit16 p0, p2, 0x4000

    const/4 p2, -0x1

    if-nez p0, :cond_6

    return p2

    .line 392
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 393
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_1a

    .line 397
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    return p0

    :cond_1a
    :goto_1a
    return p2
.end method
