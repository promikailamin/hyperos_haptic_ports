.class Lcom/android/server/wm/DragDropController$DragHandler;
.super Landroid/os/Handler;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHandler"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final synthetic this$0:Lcom/android/server/wm/DragDropController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 456
    iput-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    .line 457
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 458
    iput-object p2, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 459
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 463
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_108

    goto/16 :goto_106

    .line 514
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 516
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/view/SurfaceControl;

    if-eqz v1, :cond_28

    .line 517
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 518
    .local v1, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 519
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_29

    .line 522
    .end local v1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_28
    goto :goto_2a

    .line 521
    :catchall_29
    move-exception v1

    .line 523
    :goto_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_106

    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 505
    :pswitch_36
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 506
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    .line 507
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 508
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_5a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 509
    goto/16 :goto_106

    .line 508
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 493
    :pswitch_60
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 494
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {v1}, Lcom/android/server/wm/DragDropController;->-$$Nest$fgetmDragState(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v1

    if-nez v1, :cond_7c

    .line 495
    const-string v1, "WindowManager"

    const-string v2, "mDragState unexpectedly became null while playing animation"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_65 .. :try_end_78} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 499
    :cond_7c
    :try_start_7c
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {v1}, Lcom/android/server/wm/DragDropController;->-$$Nest$fgetmDragState(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 500
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_7c .. :try_end_86} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 501
    goto/16 :goto_106

    .line 500
    :catchall_8b
    move-exception v1

    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 481
    :pswitch_91
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_9c

    .line 482
    const-string v0, "WindowManager"

    const-string v1, "Drag ending; tearing down input channel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_9c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DragState$InputInterceptor;

    .line 485
    .local v0, "interceptor":Lcom/android/server/wm/DragState$InputInterceptor;
    if-nez v0, :cond_a3

    return-void

    .line 486
    :cond_a3
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_a8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 487
    invoke-virtual {v0}, Lcom/android/server/wm/DragState$InputInterceptor;->tearDown()V

    .line 488
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_b3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 489
    goto :goto_106

    .line 488
    :catchall_b3
    move-exception v2

    :try_start_b4
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 465
    .end local v0    # "interceptor":Lcom/android/server/wm/DragState$InputInterceptor;
    :pswitch_b9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 466
    .local v0, "win":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_d9

    .line 467
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout ending drag to win "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_d9
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_de
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 472
    iget-object v2, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {v2}, Lcom/android/server/wm/DragDropController;->-$$Nest$fgetmDragState(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v2

    if-eqz v2, :cond_fb

    .line 473
    iget-object v2, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {v2}, Lcom/android/server/wm/DragDropController;->-$$Nest$fgetmDragState(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 474
    iget-object v2, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {v2}, Lcom/android/server/wm/DragDropController;->-$$Nest$fgetmDragState(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 476
    :cond_fb
    monitor-exit v1
    :try_end_fc
    .catchall {:try_start_de .. :try_end_fc} :catchall_100

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 477
    goto :goto_106

    .line 476
    :catchall_100
    move-exception v2

    :try_start_101
    monitor-exit v1
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 528
    .end local v0    # "win":Landroid/os/IBinder;
    :goto_106
    return-void

    nop

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_91
        :pswitch_60
        :pswitch_36
        :pswitch_7
    .end packed-switch
.end method
