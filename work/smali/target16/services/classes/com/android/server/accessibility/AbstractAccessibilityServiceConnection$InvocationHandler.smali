.class public final Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;
.super Landroid/os/Handler;
.source "AbstractAccessibilityServiceConnection.java"


# instance fields
.field public mIsSoftKeyboardCallbackEnabled:Z

.field public final mMagnificationCallbackState:Landroid/util/SparseArray;

.field public final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V
    .registers 4

    .line 2426
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2427
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2422
    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    .line 2424
    iput-boolean p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    return-void
.end method


# virtual methods
.method public bindInputLocked()V
    .registers 2

    const/16 v0, 0xc

    .line 2571
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2572
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public createImeSessionLocked()V
    .registers 2

    const/16 v0, 0xa

    .line 2559
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2560
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 2432
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_99

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_b0

    .line 2496
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2487
    :pswitch_23
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    .line 2488
    :goto_29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2489
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 2491
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/EditorInfo;

    .line 2492
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0, v0, v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mstartInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 2493
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    .line 2484
    :pswitch_3e
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$munbindInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    return-void

    .line 2481
    :pswitch_44
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mbindInputInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    return-void

    .line 2475
    :pswitch_4a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4f

    goto :goto_50

    :cond_4f
    move v1, v2

    .line 2476
    :goto_50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 2478
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$msetImeSessionEnabledInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V

    return-void

    .line 2472
    :pswitch_5a
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->createImeSessionInternal()V

    return-void

    .line 2468
    :pswitch_60
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifySystemActionsChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    return-void

    .line 2464
    :pswitch_66
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_6b

    goto :goto_6c

    :cond_6b
    move v1, v2

    .line 2465
    :goto_6c
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyAccessibilityButtonAvailabilityChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V

    return-void

    .line 2459
    :pswitch_72
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2460
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyAccessibilityButtonClickedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    return-void

    .line 2454
    :pswitch_7a
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2455
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifySoftKeyboardShowModeChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    return-void

    .line 2445
    :pswitch_82
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2446
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Region;

    .line 2447
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/accessibilityservice/MagnificationConfig;

    .line 2448
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2449
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyMagnificationChangedInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 2450
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    .line 2441
    :cond_99
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyClearAccessibilityCacheInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    return-void

    .line 2435
    :cond_9f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    if-eqz v0, :cond_af

    check-cast p1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 2436
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->-$$Nest$mnotifyGestureInternal(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 2437
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->recycle()V

    :cond_af
    return-void

    :pswitch_data_b0
    .packed-switch 0x5
        :pswitch_82
        :pswitch_7a
        :pswitch_72
        :pswitch_66
        :pswitch_60
        :pswitch_5a
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_23
    .end packed-switch
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .registers 3

    .line 2529
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2530
    :try_start_5
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 2531
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .registers 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 2553
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 2555
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked(I)V
    .registers 4

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 2548
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 2549
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 6

    .line 2503
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2504
    :try_start_5
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    .line 2505
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_25

    .line 2507
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_f

    .line 2509
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2510
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2511
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2512
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 p1, 0x5

    .line 2514
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2515
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2507
    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_f

    throw p0
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 4

    .line 2535
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 2539
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 2540
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setImeSessionEnabledLocked(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .registers 5

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 2565
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2567
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .registers 4

    .line 2519
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_11

    .line 2521
    :try_start_7
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_16

    :catchall_f
    move-exception p0

    goto :goto_18

    .line 2523
    :cond_11
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2525
    :goto_16
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_f

    throw p0
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .registers 2

    .line 2544
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    return-void
.end method

.method public startInputLocked(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 5

    .line 2583
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2584
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2585
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    const/16 p1, 0xe

    const/4 p2, 0x0

    .line 2586
    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2587
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unbindInputLocked()V
    .registers 2

    const/16 v0, 0xd

    .line 2576
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2577
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
