.class public Lcom/android/server/wm/DisplayPolicy$1;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"

# interfaces
.implements Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;


# instance fields
.field public mOnSwipeFromBottom:Ljava/lang/Runnable;

.field public mOnSwipeFromLeft:Ljava/lang/Runnable;

.field public mOnSwipeFromRight:Ljava/lang/Runnable;

.field public mOnSwipeFromTop:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 2

    .line 469
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayPolicy$1;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Ljava/lang/Runnable;

    .line 474
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayPolicy$1;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Ljava/lang/Runnable;

    .line 475
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy$1;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Ljava/lang/Runnable;

    .line 476
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayPolicy$1;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final allowsSideSwipe(Landroid/graphics/Region;)Z
    .registers 3

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBarAlwaysShowOnSideGesture(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmSystemGestures(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;

    move-result-object p0

    .line 509
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->currentGestureStartedInRegion(Landroid/graphics/Region;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final getControllableInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Insets;
    .registers 3

    if-nez p1, :cond_5

    .line 480
    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object p0

    .line 482
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p0

    if-nez p0, :cond_e

    .line 484
    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object p0

    .line 486
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 487
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p1, v0}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public final getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;
    .registers 1

    .line 556
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 557
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDebug()V
    .registers 1

    .line 0
    return-void
.end method

.method public onDown()V
    .registers 1

    .line 562
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy$1;->getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 564
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener;->onTouchStart()V

    :cond_9
    return-void
.end method

.method public onFling(I)V
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_16

    .line 545
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    :cond_16
    return-void
.end method

.method public onMouseHoverAtBottom()V
    .registers 4

    .line 596
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 597
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onMouseHoverAtLeft()V
    .registers 4

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onMouseHoverAtRight()V
    .registers 4

    .line 590
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 591
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onMouseHoverAtTop()V
    .registers 4

    .line 584
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 585
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onMouseLeaveFromBottom()V
    .registers 2

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMouseLeaveFromLeft()V
    .registers 2

    .line 602
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMouseLeaveFromRight()V
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMouseLeaveFromTop()V
    .registers 2

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSwipeFromBottom()V
    .registers 5

    .line 501
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 502
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmBottomGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmBottomGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 503
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayPolicy$1;->getControllableInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    if-lez p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    .line 502
    :goto_1e
    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    .line 504
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public onSwipeFromLeft()V
    .registers 5

    .line 529
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 531
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    .line 533
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLeftGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 534
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayPolicy$1;->getControllableInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->left:I

    if-lez v2, :cond_25

    const/4 v2, 0x1

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-nez v2, :cond_31

    .line 535
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy$1;->allowsSideSwipe(Landroid/graphics/Region;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_3f

    .line 536
    :cond_31
    :goto_31
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLeftGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    .line 538
    :cond_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_2f

    .line 539
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return-void

    .line 538
    :goto_3f
    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_2f

    throw p0
.end method

.method public onSwipeFromRight()V
    .registers 5

    .line 514
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 516
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    .line 518
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmRightGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 519
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayPolicy$1;->getControllableInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->right:I

    if-lez v2, :cond_25

    const/4 v2, 0x1

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-nez v2, :cond_31

    .line 520
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy$1;->allowsSideSwipe(Landroid/graphics/Region;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_3f

    .line 521
    :cond_31
    :goto_31
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmRightGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    .line 523
    :cond_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_2f

    .line 524
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return-void

    .line 523
    :goto_3f
    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_2f

    throw p0
.end method

.method public onSwipeFromTop()V
    .registers 5

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 494
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmTopGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmTopGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 495
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayPolicy$1;->getControllableInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->top:I

    if-lez p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    .line 494
    :goto_1e
    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    .line 496
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public onUpOrCancel()V
    .registers 1

    .line 570
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy$1;->getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 572
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener;->onTouchEnd()V

    :cond_9
    return-void
.end method
