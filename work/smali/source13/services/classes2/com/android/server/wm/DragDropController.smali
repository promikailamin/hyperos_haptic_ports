.class Lcom/android/server/wm/DragDropController;
.super Ljava/lang/Object;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragDropController$DragHandler;
    }
.end annotation


# static fields
.field private static final A11Y_DRAG_TIMEOUT_DEFAULT_MS:I = 0xea60

.field private static final DRAG_SHADOW_ALPHA_TRANSPARENT:F = 0.7071f

.field static final DRAG_TIMEOUT_MS:J = 0x1388L

.field static final MSG_ANIMATION_END:I = 0x2

.field static final MSG_DRAG_END_TIMEOUT:I = 0x0

.field static final MSG_REMOVE_DRAG_SURFACE_TIMEOUT:I = 0x3

.field static final MSG_REMOVE_SURFACE:I = 0x4

.field static final MSG_TEAR_DOWN_DRAG_AND_DROP_INPUT:I = 0x1


# instance fields
.field private mCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDragState:Lcom/android/server/wm/DragState;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDragState(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/wm/DragDropController$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DragDropController$1;-><init>(Lcom/android/server/wm/DragDropController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 87
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 88
    new-instance v0, Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DragDropController$DragHandler;-><init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    .line 90
    invoke-static {}, Lcom/android/server/wm/DragDropControllerStub;->get()Lcom/android/server/wm/DragDropControllerStub;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/wm/DragDropControllerStub;->initDragDropController(Lcom/android/server/wm/DragDropController;)V

    .line 91
    return-void
.end method


# virtual methods
.method cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "dragToken"    # Landroid/os/IBinder;
    .param p2, "skipAnimation"    # Z

    .line 325
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_b

    .line 326
    const-string v0, "WindowManager"

    const-string v1, "cancelDragAndDrop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preCancelDragAndDrop(Landroid/os/IBinder;)V

    .line 331
    :try_start_16
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_65

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 332
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_50

    .line 337
    iget-object v1, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_41

    .line 344
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 345
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DragState;->cancelDragLocked(Z)V

    .line 346
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_5f

    :try_start_31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_65

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    .line 349
    nop

    .line 350
    return-void

    .line 338
    :cond_41
    :try_start_41
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "dragToken":Landroid/os/IBinder;
    .end local p2    # "skipAnimation":Z
    throw v1

    .line 333
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "dragToken":Landroid/os/IBinder;
    .restart local p2    # "skipAnimation":Z
    :cond_50
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "dragToken":Landroid/os/IBinder;
    .end local p2    # "skipAnimation":Z
    throw v1

    .line 346
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "dragToken":Landroid/os/IBinder;
    .restart local p2    # "skipAnimation":Z
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_41 .. :try_end_61} :catchall_5f

    :try_start_61
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "dragToken":Landroid/os/IBinder;
    .end local p2    # "skipAnimation":Z
    throw v1
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_65

    .line 348
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "dragToken":Landroid/os/IBinder;
    .restart local p2    # "skipAnimation":Z
    :catchall_65
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    .line 349
    throw v0
.end method

.method dragDropActiveLocked()Z
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isClosing()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 4
    .param p1, "window"    # Landroid/view/IWindow;

    .line 373
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_20

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag into new candidate view @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 377
    return-void
.end method

.method dragRecipientExited(Landroid/view/IWindow;)V
    .registers 4
    .param p1, "window"    # Landroid/view/IWindow;

    .line 380
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_20

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag from old candidate view @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 384
    return-void
.end method

.method dragSurfaceRelinquishedToDropTarget()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method dropForAccessibility(Landroid/view/IWindow;FF)Z
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 427
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 428
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 429
    .local v1, "isA11yEnabled":Z
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    .line 430
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 432
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result v2

    if-eqz v2, :cond_47

    if-eqz v1, :cond_47

    .line 433
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 435
    .local v2, "winState":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 436
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 438
    :cond_3a
    :try_start_3a
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 439
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v4, v3, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLock(Landroid/os/IBinder;FF)Z

    move-result v4

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 441
    .end local v2    # "winState":Lcom/android/server/wm/WindowState;
    .end local v3    # "token":Landroid/os/IBinder;
    :cond_47
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 442
    .end local v1    # "isA11yEnabled":Z
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .registers 3

    .line 446
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method getDragState()Lcom/android/server/wm/DragState;
    .registers 2

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-object v0
.end method

.method handleMotionEvent(ZFF)V
    .registers 6
    .param p1, "keepHandling"    # Z
    .param p2, "newX"    # F
    .param p3, "newY"    # F

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 361
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    if-nez v1, :cond_13

    .line 365
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 368
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DragState;->updateDragSurfaceLocked(ZFF)V

    .line 369
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 370
    return-void

    .line 369
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V
    .registers 4
    .param p1, "dragState"    # Lcom/android/server/wm/DragState;

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eq v0, p1, :cond_c

    .line 407
    const-string v0, "WindowManager"

    const-string v1, "Unknown drag state is closed"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void

    .line 411
    :cond_c
    invoke-static {}, Lcom/android/server/wm/DragDropControllerStub;->get()Lcom/android/server/wm/DragDropControllerStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-boolean v1, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    invoke-interface {v0, v1}, Lcom/android/server/wm/DragDropControllerStub;->notifyDragFinish(Z)V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 413
    return-void
.end method

.method performDrag(IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 37
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "window"    # Landroid/view/IWindow;
    .param p4, "flags"    # I
    .param p5, "surface"    # Landroid/view/SurfaceControl;
    .param p6, "touchSource"    # I
    .param p7, "touchX"    # F
    .param p8, "touchY"    # F
    .param p9, "thumbCenterX"    # F
    .param p10, "thumbCenterY"    # F
    .param p11, "data"    # Landroid/content/ClipData;

    .line 113
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v6, p3

    move/from16 v5, p4

    move-object/from16 v3, p5

    move/from16 v2, p7

    move/from16 v1, p8

    move-object/from16 v4, p11

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_51

    .line 114
    const-string v0, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "perform drag: win="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " surface="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " flags="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 115
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " data="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 114
    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_51
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object v7, v0

    .line 119
    .local v7, "dragToken":Landroid/os/IBinder;
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    move-object/from16 v12, p3

    move-object v13, v7

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move/from16 v18, p10

    move-object/from16 v19, p11

    invoke-interface/range {v11 .. v19}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->prePerformDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    move-result v11

    .line 122
    .local v11, "callbackResult":Z
    :try_start_73
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v12
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_48c

    :try_start_78
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_462

    .line 124
    const/4 v13, 0x0

    if-nez v11, :cond_c4

    .line 125
    :try_start_7e
    const-string v0, "WindowManager"

    const-string v14, "IDragDropCallback rejects the performDrag request"

    invoke-static {v0, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_b7

    .line 126
    nop

    .line 266
    if-eqz v3, :cond_8b

    .line 267
    :try_start_88
    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->release()V

    .line 269
    :cond_8b
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 270
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_9a
    monitor-exit v12
    :try_end_9b
    .catchall {:try_start_88 .. :try_end_9b} :catchall_aa

    .line 278
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 126
    return-object v13

    .line 273
    :catchall_aa
    move-exception v0

    move/from16 v15, p10

    move-object v1, v3

    move-object v14, v4

    move v3, v5

    move/from16 v18, v11

    move-object v11, v7

    move v7, v2

    move-object v2, v6

    goto/16 :goto_485

    .line 266
    :catchall_b7
    move-exception v0

    move/from16 v15, p10

    move-object v1, v3

    move-object v14, v4

    move v3, v5

    move/from16 v18, v11

    move-object v11, v7

    move v7, v2

    move-object v2, v6

    goto/16 :goto_46e

    .line 129
    :cond_c4
    :try_start_c4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v0
    :try_end_c8
    .catchall {:try_start_c4 .. :try_end_c8} :catchall_462

    if-eqz v0, :cond_f6

    .line 130
    :try_start_ca
    const-string v0, "WindowManager"

    const-string v14, "Drag already in progress"

    invoke-static {v0, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_ca .. :try_end_d1} :catchall_b7

    .line 131
    nop

    .line 266
    if-eqz v3, :cond_d7

    .line 267
    :try_start_d4
    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->release()V

    .line 269
    :cond_d7
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_e6

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 270
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_e6
    monitor-exit v12
    :try_end_e7
    .catchall {:try_start_d4 .. :try_end_e7} :catchall_aa

    .line 278
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 131
    return-object v13

    .line 135
    :cond_f6
    :try_start_f6
    invoke-static {}, Lcom/xiaomi/mirror/MirrorServiceStub;->getInstance()Lcom/xiaomi/mirror/MirrorServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/mirror/MirrorServiceStub;->isEnabled()Z

    move-result v0
    :try_end_fe
    .catchall {:try_start_f6 .. :try_end_fe} :catchall_462

    if-eqz v0, :cond_136

    .line 136
    :try_start_100
    invoke-static {}, Lcom/xiaomi/mirror/MirrorServiceStub;->getInstance()Lcom/xiaomi/mirror/MirrorServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/mirror/MirrorServiceStub;->dragDropActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 137
    const-string v0, "WindowManager"

    const-string v14, "Mirror drag in progress"

    invoke-static {v0, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_100 .. :try_end_111} :catchall_b7

    .line 138
    nop

    .line 266
    if-eqz v3, :cond_117

    .line 267
    :try_start_114
    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->release()V

    .line 269
    :cond_117
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_126

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_126

    .line 270
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_126
    monitor-exit v12
    :try_end_127
    .catchall {:try_start_114 .. :try_end_127} :catchall_aa

    .line 278
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 138
    return-object v13

    .line 143
    :cond_136
    :try_start_136
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v6, v14}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0
    :try_end_13d
    .catchall {:try_start_136 .. :try_end_13d} :catchall_462

    move-object v15, v0

    .line 145
    .local v15, "callingWin":Lcom/android/server/wm/WindowState;
    if-eqz v15, :cond_40c

    :try_start_140
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v0

    if-nez v0, :cond_152

    move-object v14, v4

    move v3, v5

    move/from16 v18, v11

    move-object/from16 v21, v15

    move/from16 v15, p10

    move-object v11, v7

    move v7, v2

    goto/16 :goto_416

    .line 152
    :cond_152
    invoke-static {}, Lcom/android/server/wm/DragDropControllerStub;->get()Lcom/android/server/wm/DragDropControllerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/DragDropControllerStub;->getDragNotAllowPackages()Landroid/util/ArraySet;

    move-result-object v0
    :try_end_15a
    .catchall {:try_start_140 .. :try_end_15a} :catchall_3ff

    move-object/from16 v16, v0

    .line 153
    .local v16, "dragNotAllowPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v14, v16

    .end local v16    # "dragNotAllowPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v14, "dragNotAllowPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v14, :cond_1ac

    .line 154
    :try_start_160
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 155
    const-string v0, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allow dragging, package: "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_186
    .catchall {:try_start_160 .. :try_end_186} :catchall_b7

    .line 157
    nop

    .line 266
    if-eqz v3, :cond_18c

    .line 267
    :try_start_189
    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->release()V

    .line 269
    :cond_18c
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_19b

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_19b

    .line 270
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_19b
    monitor-exit v12
    :try_end_19c
    .catchall {:try_start_189 .. :try_end_19c} :catchall_aa

    .line 278
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 157
    const/4 v1, 0x0

    return-object v1

    .line 173
    :cond_1ac
    :try_start_1ac
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0
    :try_end_1b0
    .catchall {:try_start_1ac .. :try_end_1b0} :catchall_3ff

    move-object v13, v0

    .line 174
    .local v13, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v13, :cond_1e0

    .line 175
    :try_start_1b3
    const-string v0, "WindowManager"

    const-string v1, "display content is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ba
    .catchall {:try_start_1b3 .. :try_end_1ba} :catchall_b7

    .line 176
    nop

    .line 266
    if-eqz v3, :cond_1c0

    .line 267
    :try_start_1bd
    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->release()V

    .line 269
    :cond_1c0
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_1cf

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_1cf

    .line 270
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_1cf
    monitor-exit v12
    :try_end_1d0
    .catchall {:try_start_1bd .. :try_end_1d0} :catchall_aa

    .line 278
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 176
    const/4 v1, 0x0

    return-object v1

    .line 179
    :cond_1e0
    and-int/lit16 v0, v5, 0x200

    if-nez v0, :cond_1e8

    .line 180
    const v0, 0x3f350481    # 0.7071f

    goto :goto_1ea

    :cond_1e8
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1ea
    move v1, v0

    .line 181
    .local v1, "alpha":F
    :try_start_1eb
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_1ef
    .catchall {:try_start_1eb .. :try_end_1ef} :catchall_3ff

    move/from16 v18, v11

    move-object v11, v7

    .end local v7    # "dragToken":Landroid/os/IBinder;
    .local v11, "dragToken":Landroid/os/IBinder;
    .local v18, "callbackResult":Z
    move-object v7, v0

    .line 182
    .local v7, "winBinder":Landroid/os/IBinder;
    :try_start_1f3
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V
    :try_end_1f8
    .catchall {:try_start_1f3 .. :try_end_1f8} :catchall_3f7

    move-object/from16 v19, v14

    move-object v14, v4

    .end local v14    # "dragNotAllowPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v19, "dragNotAllowPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v4, v0

    .line 183
    .local v4, "token":Landroid/os/IBinder;
    :try_start_1fc
    new-instance v0, Lcom/android/server/wm/DragState;
    :try_end_1fe
    .catchall {:try_start_1fc .. :try_end_1fe} :catchall_3f2

    :try_start_1fe
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_200
    .catchall {:try_start_1fe .. :try_end_200} :catchall_3ec

    move-object/from16 v20, v15

    move v15, v1

    .end local v1    # "alpha":F
    .local v15, "alpha":F
    .local v20, "callingWin":Lcom/android/server/wm/WindowState;
    move-object v1, v0

    move-object/from16 v3, p0

    move-object/from16 v5, p5

    move/from16 v6, p4

    :try_start_20a
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    iput-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_20f
    .catchall {:try_start_20a .. :try_end_20f} :catchall_3e3

    .line 184
    const/4 v1, 0x0

    .line 185
    .end local p5    # "surface":Landroid/view/SurfaceControl;
    .local v1, "surface":Landroid/view/SurfaceControl;
    :try_start_210
    iput v9, v0, Lcom/android/server/wm/DragState;->mPid:I

    .line 186
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v10, v0, Lcom/android/server/wm/DragState;->mUid:I

    .line 187
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v15, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 188
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v11, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 189
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v13, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 190
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v14, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 192
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v2, v20

    .end local v20    # "callingWin":Lcom/android/server/wm/WindowState;
    .local v2, "callingWin":Lcom/android/server/wm/WindowState;
    iput-object v2, v0, Lcom/android/server/wm/DragState;->mDragWindow:Lcom/android/server/wm/WindowState;
    :try_end_22c
    .catchall {:try_start_210 .. :try_end_22c} :catchall_3d8

    .line 194
    move/from16 v3, p4

    and-int/lit16 v0, v3, 0x400

    if-nez v0, :cond_376

    .line 195
    :try_start_232
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    move-object v5, v0

    .line 198
    .local v5, "display":Landroid/view/Display;
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/16 v6, 0x3200

    move-object/from16 v20, v4

    .end local v4    # "token":Landroid/os/IBinder;
    .local v20, "token":Landroid/os/IBinder;
    if-ne v3, v6, :cond_241

    const/4 v6, 0x1

    goto :goto_242

    :cond_241
    const/4 v6, 0x0

    :goto_242
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DragState;->setIsDropSuccessAnimEnabled(Z)V
    :try_end_245
    .catchall {:try_start_232 .. :try_end_245} :catchall_370

    .line 199
    const/4 v6, 0x0

    .line 200
    .local v6, "custInputChannel":Landroid/view/InputChannel;
    const/16 v21, 0x0

    .line 201
    .local v21, "inputChannel":Landroid/view/InputChannel;
    if-eqz v14, :cond_29c

    .line 202
    const/4 v0, 0x0

    :try_start_24b
    invoke-virtual {v14, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v16

    if-eqz v16, :cond_29c

    invoke-virtual {v14, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v16
    :try_end_259
    .catchall {:try_start_24b .. :try_end_259} :catchall_293

    if-eqz v16, :cond_29c

    .line 204
    :try_start_25b
    invoke-virtual {v14, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "miuiFreeFormPreDragInputChannel"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/InputChannel;
    :try_end_26c
    .catch Ljava/lang/Exception; {:try_start_25b .. :try_end_26c} :catch_291
    .catchall {:try_start_25b .. :try_end_26c} :catchall_293

    move-object v6, v0

    .line 205
    :try_start_26d
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v4
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_26d .. :try_end_278} :catch_28d
    .catchall {:try_start_26d .. :try_end_278} :catchall_293

    move-object/from16 p5, v6

    .end local v6    # "custInputChannel":Landroid/view/InputChannel;
    .local p5, "custInputChannel":Landroid/view/InputChannel;
    :try_start_27a
    const-string/jumbo v6, "miuiFreeFormDropBound"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DragState;->setFreeformDragBound(Landroid/graphics/Rect;)V
    :try_end_286
    .catch Ljava/lang/Exception; {:try_start_27a .. :try_end_286} :catch_289
    .catchall {:try_start_27a .. :try_end_286} :catchall_293

    .line 207
    move-object/from16 v6, p5

    goto :goto_29c

    .line 206
    :catch_289
    move-exception v0

    move-object/from16 v6, p5

    goto :goto_29c

    .end local p5    # "custInputChannel":Landroid/view/InputChannel;
    .restart local v6    # "custInputChannel":Landroid/view/InputChannel;
    :catch_28d
    move-exception v0

    move-object/from16 p5, v6

    .end local v6    # "custInputChannel":Landroid/view/InputChannel;
    .restart local p5    # "custInputChannel":Landroid/view/InputChannel;
    goto :goto_29c

    .end local p5    # "custInputChannel":Landroid/view/InputChannel;
    .restart local v6    # "custInputChannel":Landroid/view/InputChannel;
    :catch_291
    move-exception v0

    goto :goto_29c

    .line 266
    .end local v2    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v5    # "display":Landroid/view/Display;
    .end local v6    # "custInputChannel":Landroid/view/InputChannel;
    .end local v7    # "winBinder":Landroid/os/IBinder;
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "alpha":F
    .end local v19    # "dragNotAllowPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "token":Landroid/os/IBinder;
    .end local v21    # "inputChannel":Landroid/view/InputChannel;
    :catchall_293
    move-exception v0

    move-object/from16 v2, p3

    move/from16 v7, p7

    move/from16 v15, p10

    goto/16 :goto_46e

    .line 210
    .restart local v2    # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v5    # "display":Landroid/view/Display;
    .restart local v6    # "custInputChannel":Landroid/view/InputChannel;
    .restart local v7    # "winBinder":Landroid/os/IBinder;
    .restart local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "alpha":F
    .restart local v19    # "dragNotAllowPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "token":Landroid/os/IBinder;
    .restart local v21    # "inputChannel":Landroid/view/InputChannel;
    :cond_29c
    :goto_29c
    :try_start_29c
    const-string v0, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v7

    .end local v7    # "winBinder":Landroid/os/IBinder;
    .local v22, "winBinder":Landroid/os/IBinder;
    const-string v7, "begin custInputChannel="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz v6, :cond_2ba

    .line 212
    move-object v0, v6

    .end local v21    # "inputChannel":Landroid/view/InputChannel;
    .local v0, "inputChannel":Landroid/view/InputChannel;
    goto :goto_2bc

    .line 214
    .end local v0    # "inputChannel":Landroid/view/InputChannel;
    .restart local v21    # "inputChannel":Landroid/view/InputChannel;
    :cond_2ba
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 218
    .end local v21    # "inputChannel":Landroid/view/InputChannel;
    .restart local v0    # "inputChannel":Landroid/view/InputChannel;
    :goto_2bc
    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v21, v6

    .end local v6    # "custInputChannel":Landroid/view/InputChannel;
    .local v21, "custInputChannel":Landroid/view/InputChannel;
    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-interface {v4, v7, v5, v6, v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)Z

    move-result v4
    :try_end_2d0
    .catchall {:try_start_29c .. :try_end_2d0} :catchall_370

    if-nez v4, :cond_308

    .line 224
    :try_start_2d2
    const-string v4, "WindowManager"

    const-string v6, "Unable to transfer touch focus"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d9
    .catchall {:try_start_2d2 .. :try_end_2d9} :catchall_293

    .line 225
    nop

    .line 266
    if-eqz v1, :cond_2df

    .line 267
    :try_start_2dc
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 269
    :cond_2df
    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v4, :cond_2ee

    invoke-virtual {v4}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v4

    if-nez v4, :cond_2ee

    .line 270
    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v4}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_2ee
    monitor-exit v12
    :try_end_2ef
    .catchall {:try_start_2dc .. :try_end_2ef} :catchall_2ff

    .line 278
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v4}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 225
    const/4 v4, 0x0

    return-object v4

    .line 273
    .end local v0    # "inputChannel":Landroid/view/InputChannel;
    .end local v2    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v5    # "display":Landroid/view/Display;
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "alpha":F
    .end local v19    # "dragNotAllowPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "token":Landroid/os/IBinder;
    .end local v21    # "custInputChannel":Landroid/view/InputChannel;
    .end local v22    # "winBinder":Landroid/os/IBinder;
    :catchall_2ff
    move-exception v0

    move-object/from16 v2, p3

    move/from16 v7, p7

    move/from16 v15, p10

    goto/16 :goto_485

    .line 228
    .restart local v0    # "inputChannel":Landroid/view/InputChannel;
    .restart local v2    # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v5    # "display":Landroid/view/Display;
    .restart local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "alpha":F
    .restart local v19    # "dragNotAllowPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "token":Landroid/os/IBinder;
    .restart local v21    # "custInputChannel":Landroid/view/InputChannel;
    .restart local v22    # "winBinder":Landroid/os/IBinder;
    :cond_308
    :try_start_308
    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v4, v4, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 229
    .local v4, "surfaceControl":Landroid/view/SurfaceControl;
    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_30e
    .catchall {:try_start_308 .. :try_end_30e} :catchall_370

    move/from16 v7, p7

    move-object/from16 p5, v5

    move/from16 v5, p8

    .end local v5    # "display":Landroid/view/Display;
    .local p5, "display":Landroid/view/Display;
    :try_start_314
    invoke-virtual {v6, v7, v5}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    .line 230
    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v17, v15

    move/from16 v15, p6

    .end local v15    # "alpha":F
    .local v17, "alpha":F
    invoke-virtual {v6, v15}, Lcom/android/server/wm/DragState;->overridePointerIconLocked(I)V

    .line 232
    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v15, p9

    iput v15, v6, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 233
    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_328
    .catchall {:try_start_314 .. :try_end_328} :catchall_36d

    move/from16 v15, p10

    :try_start_32a
    iput v15, v6, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 236
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v6, :cond_33a

    .line 237
    const-string v6, "WindowManager"

    move-object/from16 v23, v0

    .end local v0    # "inputChannel":Landroid/view/InputChannel;
    .local v23, "inputChannel":Landroid/view/InputChannel;
    const-string v0, ">>> OPEN TRANSACTION performDrag"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33c

    .line 236
    .end local v23    # "inputChannel":Landroid/view/InputChannel;
    .restart local v0    # "inputChannel":Landroid/view/InputChannel;
    :cond_33a
    move-object/from16 v23, v0

    .line 240
    .end local v0    # "inputChannel":Landroid/view/InputChannel;
    .restart local v23    # "inputChannel":Landroid/view/InputChannel;
    :goto_33c
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 241
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v6, v6, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    invoke-virtual {v0, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 242
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 245
    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v6}, Lcom/android/server/wm/DragState;->isDropSuccessAnimEnabled()Z

    move-result v6

    if-eqz v6, :cond_356

    .line 246
    invoke-virtual {v13, v0, v4}, Lcom/android/server/wm/DisplayContent;->reparentToHideDisplayCutoutlayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_359

    .line 248
    :cond_356
    invoke-virtual {v13, v0, v4}, Lcom/android/server/wm/DisplayContent;->reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 251
    :goto_359
    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v24, v4

    const/4 v4, 0x1

    .end local v4    # "surfaceControl":Landroid/view/SurfaceControl;
    .local v24, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {v6, v4, v7, v5}, Lcom/android/server/wm/DragState;->updateDragSurfaceLocked(ZFF)V

    .line 252
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_36c

    .line 253
    const-string v4, "WindowManager"

    const-string v6, "<<< CLOSE TRANSACTION performDrag"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v0    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local v21    # "custInputChannel":Landroid/view/InputChannel;
    .end local v23    # "inputChannel":Landroid/view/InputChannel;
    .end local v24    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local p5    # "display":Landroid/view/Display;
    :cond_36c
    goto :goto_3a0

    .line 266
    .end local v2    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v17    # "alpha":F
    .end local v19    # "dragNotAllowPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "token":Landroid/os/IBinder;
    .end local v22    # "winBinder":Landroid/os/IBinder;
    :catchall_36d
    move-exception v0

    goto/16 :goto_3dd

    :catchall_370
    move-exception v0

    move/from16 v7, p7

    move/from16 v5, p8

    goto :goto_3dd

    .line 257
    .restart local v2    # "callingWin":Lcom/android/server/wm/WindowState;
    .local v4, "token":Landroid/os/IBinder;
    .restart local v7    # "winBinder":Landroid/os/IBinder;
    .restart local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "alpha":F
    .restart local v19    # "dragNotAllowPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_376
    move/from16 v5, p8

    move-object/from16 v20, v4

    move-object/from16 v22, v7

    move/from16 v17, v15

    move/from16 v7, p7

    move/from16 v15, p10

    .end local v4    # "token":Landroid/os/IBinder;
    .end local v7    # "winBinder":Landroid/os/IBinder;
    .end local v15    # "alpha":F
    .restart local v17    # "alpha":F
    .restart local v20    # "token":Landroid/os/IBinder;
    .restart local v22    # "winBinder":Landroid/os/IBinder;
    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v4, v7, v5}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    .line 260
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragDropController;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    const v0, 0xea60

    move-object/from16 v21, v2

    .end local v2    # "callingWin":Lcom/android/server/wm/WindowState;
    .local v21, "callingWin":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x4

    invoke-virtual {v6, v0, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    int-to-long v5, v0

    .line 260
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v4, v5, v6}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V
    :try_end_3a0
    .catchall {:try_start_32a .. :try_end_3a0} :catchall_3d6

    .line 266
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v17    # "alpha":F
    .end local v19    # "dragNotAllowPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "token":Landroid/os/IBinder;
    .end local v21    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v22    # "winBinder":Landroid/os/IBinder;
    :goto_3a0
    if-eqz v1, :cond_3a5

    .line 267
    :try_start_3a2
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 269
    :cond_3a5
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_3b4

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3b4

    .line 270
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 273
    :cond_3b4
    monitor-exit v12
    :try_end_3b5
    .catchall {:try_start_3a2 .. :try_end_3b5} :catchall_3d1

    :try_start_3b5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 275
    invoke-static {}, Lcom/android/server/wm/DragDropControllerStub;->get()Lcom/android/server/wm/DragDropControllerStub;

    move-result-object v0

    invoke-interface {v0, v14, v10, v9, v3}, Lcom/android/server/wm/DragDropControllerStub;->notifyDragStart(Landroid/content/ClipData;III)V
    :try_end_3bf
    .catchall {:try_start_3b5 .. :try_end_3bf} :catchall_3cc

    .line 276
    nop

    .line 278
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 276
    return-object v11

    .line 278
    :catchall_3cc
    move-exception v0

    move-object/from16 v2, p3

    goto/16 :goto_498

    .line 273
    :catchall_3d1
    move-exception v0

    move-object/from16 v2, p3

    goto/16 :goto_485

    .line 266
    :catchall_3d6
    move-exception v0

    goto :goto_3df

    :catchall_3d8
    move-exception v0

    move/from16 v3, p4

    move/from16 v7, p7

    :goto_3dd
    move/from16 v15, p10

    :goto_3df
    move-object/from16 v2, p3

    goto/16 :goto_46e

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .local p5, "surface":Landroid/view/SurfaceControl;
    :catchall_3e3
    move-exception v0

    move/from16 v3, p4

    move/from16 v7, p7

    move/from16 v15, p10

    goto/16 :goto_45d

    :catchall_3ec
    move-exception v0

    move/from16 v7, p7

    move/from16 v15, p10

    goto :goto_3fc

    :catchall_3f2
    move-exception v0

    move/from16 v15, p10

    move v7, v2

    goto :goto_3fc

    :catchall_3f7
    move-exception v0

    move/from16 v15, p10

    move v7, v2

    move-object v14, v4

    :goto_3fc
    move v3, v5

    goto/16 :goto_45d

    .end local v18    # "callbackResult":Z
    .local v7, "dragToken":Landroid/os/IBinder;
    .local v11, "callbackResult":Z
    :catchall_3ff
    move-exception v0

    move/from16 v15, p10

    move-object v14, v4

    move v3, v5

    move/from16 v18, v11

    move-object v11, v7

    move v7, v2

    move-object/from16 v2, p3

    goto/16 :goto_46c

    .line 145
    .local v15, "callingWin":Lcom/android/server/wm/WindowState;
    :cond_40c
    move-object v14, v4

    move v3, v5

    move/from16 v18, v11

    move-object/from16 v21, v15

    move/from16 v15, p10

    move-object v11, v7

    move v7, v2

    .line 146
    .end local v7    # "dragToken":Landroid/os/IBinder;
    .end local v15    # "callingWin":Lcom/android/server/wm/WindowState;
    .local v11, "dragToken":Landroid/os/IBinder;
    .restart local v18    # "callbackResult":Z
    .restart local v21    # "callingWin":Lcom/android/server/wm/WindowState;
    :goto_416
    :try_start_416
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad requesting window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_423
    .catchall {:try_start_416 .. :try_end_423} :catchall_45c

    move-object/from16 v2, p3

    :try_start_425
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_430
    .catchall {:try_start_425 .. :try_end_430} :catchall_45a

    .line 147
    nop

    .line 266
    if-eqz p5, :cond_436

    .line 267
    :try_start_433
    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->release()V

    .line 269
    :cond_436
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_445

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_445

    .line 270
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_445
    monitor-exit v12
    :try_end_446
    .catchall {:try_start_433 .. :try_end_446} :catchall_456

    .line 278
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 147
    const/4 v1, 0x0

    return-object v1

    .line 273
    .end local v21    # "callingWin":Lcom/android/server/wm/WindowState;
    :catchall_456
    move-exception v0

    move-object/from16 v1, p5

    goto :goto_485

    .line 266
    :catchall_45a
    move-exception v0

    goto :goto_45f

    :catchall_45c
    move-exception v0

    :goto_45d
    move-object/from16 v2, p3

    :goto_45f
    move-object/from16 v1, p5

    goto :goto_46e

    .end local v18    # "callbackResult":Z
    .restart local v7    # "dragToken":Landroid/os/IBinder;
    .local v11, "callbackResult":Z
    :catchall_462
    move-exception v0

    move/from16 v15, p10

    move-object v14, v4

    move v3, v5

    move/from16 v18, v11

    move-object v11, v7

    move v7, v2

    move-object v2, v6

    :goto_46c
    move-object/from16 v1, p5

    .end local v7    # "dragToken":Landroid/os/IBinder;
    .end local p5    # "surface":Landroid/view/SurfaceControl;
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .local v11, "dragToken":Landroid/os/IBinder;
    .restart local v18    # "callbackResult":Z
    :goto_46e
    if-eqz v1, :cond_473

    .line 267
    :try_start_470
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 269
    :cond_473
    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v4, :cond_482

    invoke-virtual {v4}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v4

    if-nez v4, :cond_482

    .line 270
    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v4}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 272
    :cond_482
    nop

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v11    # "dragToken":Landroid/os/IBinder;
    .end local v18    # "callbackResult":Z
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "callerPid":I
    .end local p2    # "callerUid":I
    .end local p3    # "window":Landroid/view/IWindow;
    .end local p4    # "flags":I
    .end local p6    # "touchSource":I
    .end local p7    # "touchX":F
    .end local p8    # "touchY":F
    .end local p9    # "thumbCenterX":F
    .end local p10    # "thumbCenterY":F
    .end local p11    # "data":Landroid/content/ClipData;
    throw v0

    .line 273
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local v11    # "dragToken":Landroid/os/IBinder;
    .restart local v18    # "callbackResult":Z
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "callerPid":I
    .restart local p2    # "callerUid":I
    .restart local p3    # "window":Landroid/view/IWindow;
    .restart local p4    # "flags":I
    .restart local p6    # "touchSource":I
    .restart local p7    # "touchX":F
    .restart local p8    # "touchY":F
    .restart local p9    # "thumbCenterX":F
    .restart local p10    # "thumbCenterY":F
    .restart local p11    # "data":Landroid/content/ClipData;
    :catchall_484
    move-exception v0

    :goto_485
    monitor-exit v12
    :try_end_486
    .catchall {:try_start_470 .. :try_end_486} :catchall_484

    :try_start_486
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v11    # "dragToken":Landroid/os/IBinder;
    .end local v18    # "callbackResult":Z
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "callerPid":I
    .end local p2    # "callerUid":I
    .end local p3    # "window":Landroid/view/IWindow;
    .end local p4    # "flags":I
    .end local p6    # "touchSource":I
    .end local p7    # "touchX":F
    .end local p8    # "touchY":F
    .end local p9    # "thumbCenterX":F
    .end local p10    # "thumbCenterY":F
    .end local p11    # "data":Landroid/content/ClipData;
    throw v0
    :try_end_48a
    .catchall {:try_start_486 .. :try_end_48a} :catchall_48a

    .line 278
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local v11    # "dragToken":Landroid/os/IBinder;
    .restart local v18    # "callbackResult":Z
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "callerPid":I
    .restart local p2    # "callerUid":I
    .restart local p3    # "window":Landroid/view/IWindow;
    .restart local p4    # "flags":I
    .restart local p6    # "touchSource":I
    .restart local p7    # "touchX":F
    .restart local p8    # "touchY":F
    .restart local p9    # "thumbCenterX":F
    .restart local p10    # "thumbCenterY":F
    .restart local p11    # "data":Landroid/content/ClipData;
    :catchall_48a
    move-exception v0

    goto :goto_498

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v18    # "callbackResult":Z
    .restart local v7    # "dragToken":Landroid/os/IBinder;
    .local v11, "callbackResult":Z
    .restart local p5    # "surface":Landroid/view/SurfaceControl;
    :catchall_48c
    move-exception v0

    move/from16 v15, p10

    move-object v14, v4

    move v3, v5

    move/from16 v18, v11

    move-object v11, v7

    move v7, v2

    move-object v2, v6

    move-object/from16 v1, p5

    .end local v7    # "dragToken":Landroid/os/IBinder;
    .end local p5    # "surface":Landroid/view/SurfaceControl;
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .local v11, "dragToken":Landroid/os/IBinder;
    .restart local v18    # "callbackResult":Z
    :goto_498
    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v4}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 279
    throw v0
.end method

.method registerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method reportDropResult(Landroid/view/IWindow;Z)V
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .line 283
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 284
    .local v0, "token":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_2a

    .line 285
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drop result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reported by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preReportDropResult(Landroid/view/IWindow;Z)V

    .line 290
    :try_start_35
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_e7

    :try_start_3a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 291
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_58

    .line 294
    const-string v2, "WindowManager"

    const-string v3, "Drop result given but no drag in progress"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_e1

    .line 320
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 295
    return-void

    .line 298
    :cond_58
    :try_start_58
    iget-object v2, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v2, v0, :cond_c0

    .line 307
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 308
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 309
    .local v2, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_97

    .line 310
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad result-reporting window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_58 .. :try_end_88} :catchall_e1

    .line 320
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 311
    return-void

    .line 314
    :cond_97
    :try_start_97
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p2, v3, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 315
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz p2, :cond_a7

    .line 316
    invoke-virtual {v3, v2}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_a7

    const/4 v4, 0x1

    goto :goto_a8

    :cond_a7
    nop

    :goto_a8
    iput-boolean v4, v3, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    .line 317
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v3}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 318
    .end local v2    # "callingWin":Lcom/android/server/wm/WindowState;
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_97 .. :try_end_b0} :catchall_e1

    :try_start_b0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_e7

    .line 320
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 321
    nop

    .line 322
    return-void

    .line 300
    :cond_c0
    :try_start_c0
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid drop-result claim by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "reportDropResult() by non-recipient"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "window":Landroid/view/IWindow;
    .end local p2    # "consumed":Z
    throw v2

    .line 318
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "window":Landroid/view/IWindow;
    .restart local p2    # "consumed":Z
    :catchall_e1
    move-exception v2

    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_c0 .. :try_end_e3} :catchall_e1

    :try_start_e3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "window":Landroid/view/IWindow;
    .end local p2    # "consumed":Z
    throw v2
    :try_end_e7
    .catchall {:try_start_e3 .. :try_end_e7} :catchall_e7

    .line 320
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "window":Landroid/view/IWindow;
    .restart local p2    # "consumed":Z
    :catchall_e7
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 321
    throw v1
.end method

.method reportDropWindow(Landroid/os/IBinder;FF)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v0, :cond_c

    .line 417
    const-string v0, "WindowManager"

    const-string v1, "Drag state is closed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 421
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 422
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLock(Landroid/os/IBinder;FF)Z

    .line 423
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 424
    return-void

    .line 423
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "window"    # Lcom/android/server/wm/WindowState;

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 108
    return-void
.end method

.method sendHandlerMessage(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 391
    return-void
.end method

.method sendTimeoutMessage(ILjava/lang/Object;J)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "timeoutMs"    # J

    .line 397
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 399
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 400
    return-void
.end method

.method sendTimeoutMessageDelayed(ILjava/lang/Object;J)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .line 544
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 546
    return-void
.end method

.method setPendingDragEndedLoc(Landroid/view/IWindow;IIII)V
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 533
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 534
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v1, :cond_1b

    .line 535
    const-string v1, "WindowManager"

    const-string v2, "mDragState is null, setPendingDragEndedLoc() is skiped"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 537
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 539
    :cond_1b
    :try_start_1b
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/wm/DragState;->setPendingDragEndedLoc(IIII)V

    .line 540
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 541
    return-void

    .line 540
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
