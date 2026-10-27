.class Lcom/android/server/wm/DisplayPolicy$1;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"

# interfaces
.implements Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;

.field final synthetic val$displayContent:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 521
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy$1;->val$displayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;
    .registers 3

    .line 712
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 713
    .local v0, "rotation":Lcom/android/server/wm/DisplayRotation;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;

    move-result-object v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return-object v1
.end method

.method private requestTransientBarsForSideSwipe(Landroid/graphics/Region;II)V
    .registers 9
    .param p1, "excludedRegion"    # Landroid/graphics/Region;
    .param p2, "navBarSide"    # I
    .param p3, "altBarSide"    # I

    .line 586
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBarPosition(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v0

    if-ne v0, p2, :cond_17

    .line 587
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_1d

    .line 588
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0, p3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mfindAltBarMatchingPosition(Lcom/android/server/wm/DisplayPolicy;I)Lcom/android/server/wm/WindowState;

    move-result-object v0

    :goto_1d
    nop

    .line 589
    .local v0, "barMatchingSide":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBarAlwaysShowOnSideGesture(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmSystemGestures(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;

    move-result-object v1

    .line 590
    invoke-virtual {v1, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->currentGestureStartedInRegion(Landroid/graphics/Region;)Z

    move-result v1

    if-nez v1, :cond_36

    move v1, v2

    goto :goto_37

    :cond_36
    move v1, v3

    .line 591
    .local v1, "allowSideSwipe":Z
    :goto_37
    if-nez v0, :cond_3c

    if-nez v1, :cond_3c

    .line 592
    return-void

    .line 597
    :cond_3c
    if-eqz v0, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v3

    .line 598
    .local v2, "isGestureOnSystemBar":Z
    :goto_40
    if-eqz v0, :cond_44

    .line 599
    move-object v3, v0

    goto :goto_4a

    .line 600
    :cond_44
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mfindTransientNavOrAltBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    :goto_4a
    nop

    .line 601
    .local v3, "bar":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4, v3, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mrequestTransientBars(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;Z)V

    .line 602
    return-void
.end method


# virtual methods
.method public onDebug()V
    .registers 1

    .line 709
    return-void
.end method

.method public onDown()V
    .registers 7

    .line 718
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy$1;->getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;

    move-result-object v0

    .line 719
    .local v0, "listener":Lcom/android/server/wm/WindowOrientationListener;
    if-eqz v0, :cond_9

    .line 720
    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener;->onTouchStart()V

    .line 722
    :cond_9
    invoke-static {}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$sfgetSCROLL_BOOST_SS_ENABLE()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmIsPerfBoostFlingAcquired(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 724
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 725
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fputmIsPerfBoostFlingAcquired(Lcom/android/server/wm/DisplayPolicy;Z)V

    .line 729
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmPerfBoostHome(Lcom/android/server/wm/DisplayPolicy;)Landroid/util/BoostFramework;

    move-result-object v1

    if-nez v1, :cond_3c

    .line 730
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fputmPerfBoostHome(Lcom/android/server/wm/DisplayPolicy;Landroid/util/BoostFramework;)V

    .line 732
    :cond_3c
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmPerfBoostHome(Lcom/android/server/wm/DisplayPolicy;)Landroid/util/BoostFramework;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 733
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mgetAppPackageName(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, "currentPackage":Ljava/lang/String;
    if-eqz v1, :cond_62

    const-string v2, "com.miui.home"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 735
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmPerfBoostHome(Lcom/android/server/wm/DisplayPolicy;)Landroid/util/BoostFramework;

    move-result-object v2

    const/16 v3, 0x1087

    const/16 v4, 0x7d0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 741
    .end local v1    # "currentPackage":Ljava/lang/String;
    :cond_62
    return-void
.end method

.method public onFling(I)V
    .registers 4
    .param p1, "duration"    # I

    .line 606
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_16

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 610
    :cond_16
    return-void
.end method

.method public onHorizontalFling(I)V
    .registers 8
    .param p1, "duration"    # I

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mgetAppPackageName(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "currentPackage":Ljava/lang/String;
    const-string v1, "WindowManager"

    if-nez v0, :cond_10

    .line 641
    const-string v2, "Error: package name null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-void

    .line 644
    :cond_10
    invoke-static {}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$sfgetSCROLL_BOOST_SS_ENABLE()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 645
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v2, :cond_2b

    .line 646
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    new-instance v3, Landroid/util/BoostFramework;

    invoke-direct {v3}, Landroid/util/BoostFramework;-><init>()V

    iput-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 647
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fputmIsPerfBoostFlingAcquired(Lcom/android/server/wm/DisplayPolicy;Z)V

    .line 649
    :cond_2b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v2, :cond_37

    .line 650
    const-string v2, "Error: boost object null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void

    .line 653
    :cond_37
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$misTopAppGame(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v1

    .line 654
    .local v1, "isGame":Z
    if-nez v1, :cond_53

    .line 655
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    const/16 v3, 0x1080

    add-int/lit16 v4, p1, 0xa0

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 657
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fputmIsPerfBoostFlingAcquired(Lcom/android/server/wm/DisplayPolicy;Z)V

    .line 660
    .end local v1    # "isGame":Z
    :cond_53
    return-void
.end method

.method public onMouseHoverAtBottom()V
    .registers 5

    .line 776
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 777
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 778
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 779
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 780
    return-void
.end method

.method public onMouseHoverAtTop()V
    .registers 5

    .line 768
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 769
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 770
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 771
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 772
    return-void
.end method

.method public onMouseLeaveFromEdge()V
    .registers 3

    .line 784
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 785
    return-void
.end method

.method public onScroll(Z)V
    .registers 8
    .param p1, "started"    # Z

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mgetAppPackageName(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "currentPackage":Ljava/lang/String;
    const-string v1, "WindowManager"

    if-nez v0, :cond_10

    .line 666
    const-string v2, "Error: package name null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 670
    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    if-nez v2, :cond_1f

    .line 671
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    new-instance v3, Landroid/util/BoostFramework;

    invoke-direct {v3}, Landroid/util/BoostFramework;-><init>()V

    iput-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    .line 673
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    const-string v3, "Error: boost object null"

    if-nez v2, :cond_2b

    .line 674
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void

    .line 677
    :cond_2b
    invoke-static {}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$sfgetSCROLL_BOOST_SS_ENABLE()Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_5f

    .line 678
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    if-nez v2, :cond_41

    .line 679
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    new-instance v5, Landroid/util/BoostFramework;

    invoke-direct {v5}, Landroid/util/BoostFramework;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    .line 681
    :cond_41
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    if-nez v2, :cond_4b

    .line 682
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void

    .line 685
    :cond_4b
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$misTopAppGame(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v1

    .line 686
    .local v1, "isGame":Z
    if-nez v1, :cond_5f

    .line 687
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    const/16 v3, 0x1080

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 691
    .end local v1    # "isGame":Z
    :cond_5f
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$misTopAppGame(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v1

    .line 692
    .restart local v1    # "isGame":Z
    if-nez v1, :cond_85

    if-eqz p1, :cond_85

    .line 693
    invoke-static {}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$sfgetDRAG_PLH_ENABLE()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 694
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    const/16 v3, 0x1051

    invoke-virtual {v2, v3, v0}, Landroid/util/BoostFramework;->perfEvent(ILjava/lang/String;)V

    .line 696
    :cond_7a
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    const/16 v3, 0x1087

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    goto :goto_9b

    .line 699
    :cond_85
    invoke-static {}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$sfgetDRAG_PLH_ENABLE()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 700
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    const/16 v3, 0x1052

    invoke-virtual {v2, v3, v0}, Landroid/util/BoostFramework;->perfEvent(ILjava/lang/String;)V

    .line 702
    :cond_94
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 704
    :goto_9b
    return-void
.end method

.method public onSwipeFromBottom()V
    .registers 5

    .line 550
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 552
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBarPosition(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v1

    if-ne v1, v2, :cond_1f

    .line 553
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmNavigationBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_25

    .line 554
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mfindAltBarMatchingPosition(Lcom/android/server/wm/DisplayPolicy;I)Lcom/android/server/wm/WindowState;

    move-result-object v1

    :goto_25
    nop

    .line 555
    .local v1, "bar":Lcom/android/server/wm/WindowState;
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mrequestTransientBars(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;Z)V

    .line 556
    .end local v1    # "bar":Lcom/android/server/wm/WindowState;
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public onSwipeFromLeft()V
    .registers 5

    .line 573
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 574
    .local v0, "excludedRegion":Landroid/graphics/Region;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 575
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    .line 577
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v2}, Lcom/android/server/wm/DisplayPolicy$1;->requestTransientBarsForSideSwipe(Landroid/graphics/Region;II)V

    .line 579
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1e

    .line 580
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 581
    return-void

    .line 579
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public onSwipeFromRight()V
    .registers 5

    .line 561
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 562
    .local v0, "excludedRegion":Landroid/graphics/Region;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 563
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    .line 565
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, v2}, Lcom/android/server/wm/DisplayPolicy$1;->requestTransientBarsForSideSwipe(Landroid/graphics/Region;II)V

    .line 567
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1e

    .line 568
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 569
    return-void

    .line 567
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public onSwipeFromTop()V
    .registers 1

    .line 525
    return-void
.end method

.method public onSwipeFromTop(FF)V
    .registers 7
    .param p1, "eventX"    # F
    .param p2, "eventY"    # F

    .line 534
    invoke-static {}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->getInstance()Lcom/android/server/wm/MiuiMultiWindowServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->isMiuiMultiWinChangeSupport()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 535
    invoke-static {}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->getInstance()Lcom/android/server/wm/MiuiMultiWindowServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->val$displayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayPolicy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmSplitScreenDragBarWidth(Lcom/android/server/wm/DisplayPolicy;)F

    move-result v3

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->isEventXInSplitDragBarRegion(Lcom/android/server/wm/DisplayContent;Landroid/content/Context;FF)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 536
    return-void

    .line 540
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 541
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmStatusBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 542
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmStatusBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_41

    .line 543
    :cond_39
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mfindAltBarMatchingPosition(Lcom/android/server/wm/DisplayPolicy;I)Lcom/android/server/wm/WindowState;

    move-result-object v1

    :goto_41
    nop

    .line 544
    .local v1, "bar":Lcom/android/server/wm/WindowState;
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mrequestTransientBars(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;Z)V

    .line 545
    .end local v1    # "bar":Lcom/android/server/wm/WindowState;
    monitor-exit v0

    .line 546
    return-void

    .line 545
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_2a .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public onUpOrCancel()V
    .registers 7

    .line 745
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy$1;->getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;

    move-result-object v0

    .line 746
    .local v0, "listener":Lcom/android/server/wm/WindowOrientationListener;
    if-eqz v0, :cond_9

    .line 747
    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener;->onTouchEnd()V

    .line 751
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmPerfBoostHome(Lcom/android/server/wm/DisplayPolicy;)Landroid/util/BoostFramework;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 752
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fputmPerfBoostHome(Lcom/android/server/wm/DisplayPolicy;Landroid/util/BoostFramework;)V

    .line 754
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmPerfBoostHome(Lcom/android/server/wm/DisplayPolicy;)Landroid/util/BoostFramework;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 755
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mgetAppPackageName(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, "currentPackage":Ljava/lang/String;
    if-eqz v1, :cond_4a

    const-string v2, "com.miui.home"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 757
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmPerfBoostHome(Lcom/android/server/wm/DisplayPolicy;)Landroid/util/BoostFramework;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 758
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmPerfBoostHome(Lcom/android/server/wm/DisplayPolicy;)Landroid/util/BoostFramework;

    move-result-object v2

    const/16 v3, 0x1087

    const/16 v4, 0x190

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 764
    .end local v1    # "currentPackage":Ljava/lang/String;
    :cond_4a
    return-void
.end method

.method public onVerticalFling(I)V
    .registers 8
    .param p1, "duration"    # I

    .line 614
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mgetAppPackageName(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "currentPackage":Ljava/lang/String;
    const-string v1, "WindowManager"

    if-nez v0, :cond_10

    .line 616
    const-string v2, "Error: package name null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void

    .line 619
    :cond_10
    invoke-static {}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$sfgetSCROLL_BOOST_SS_ENABLE()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 620
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v2, :cond_2b

    .line 621
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    new-instance v3, Landroid/util/BoostFramework;

    invoke-direct {v3}, Landroid/util/BoostFramework;-><init>()V

    iput-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 622
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fputmIsPerfBoostFlingAcquired(Lcom/android/server/wm/DisplayPolicy;Z)V

    .line 624
    :cond_2b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v2, :cond_37

    .line 625
    const-string v2, "Error: boost object null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void

    .line 628
    :cond_37
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$misTopAppGame(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v1

    .line 629
    .local v1, "isGame":Z
    if-nez v1, :cond_52

    .line 630
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    const/16 v3, 0x1080

    add-int/lit16 v4, p1, 0xa0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 632
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2, v5}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fputmIsPerfBoostFlingAcquired(Lcom/android/server/wm/DisplayPolicy;Z)V

    .line 635
    .end local v1    # "isGame":Z
    :cond_52
    return-void
.end method
