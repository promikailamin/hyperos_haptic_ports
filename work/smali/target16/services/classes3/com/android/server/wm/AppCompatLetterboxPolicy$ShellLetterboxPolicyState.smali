.class Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;
.super Ljava/lang/Object;
.source "AppCompatLetterboxPolicy.java"

# interfaces
.implements Lcom/android/server/wm/AppCompatLetterboxPolicyState;


# instance fields
.field public final mBottomBounds:Landroid/graphics/Rect;

.field public final mInnerBounds:Landroid/graphics/Rect;

.field public final mLeftBounds:Landroid/graphics/Rect;

.field public final mLetterboxPosition:Landroid/graphics/Point;

.field public final mOuterBounds:Landroid/graphics/Rect;

.field public final mRightBounds:Landroid/graphics/Rect;

.field public mRunning:Z

.field public final mSurfacesBounds:[Landroid/graphics/Rect;

.field public final mTopBounds:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;


# direct methods
.method public static synthetic $r8$lambda$Uw8dZGU8azUuRlKFHPWvzHR1HHQ(Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->lambda$layoutLetterboxIfNeeded$0()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/AppCompatLetterboxPolicy;)V
    .registers 7

    .line 470
    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    .line 473
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    .line 474
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mLetterboxPosition:Landroid/graphics/Point;

    .line 479
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mLeftBounds:Landroid/graphics/Rect;

    .line 480
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mTopBounds:Landroid/graphics/Rect;

    .line 481
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mRightBounds:Landroid/graphics/Rect;

    .line 482
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mBottomBounds:Landroid/graphics/Rect;

    const/4 v3, 0x4

    .line 483
    new-array v3, v3, [Landroid/graphics/Rect;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const/4 p1, 0x2

    aput-object v1, v3, p1

    const/4 p1, 0x3

    aput-object v2, v3, p1

    iput-object v3, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mSurfacesBounds:[Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 554
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 556
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 558
    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatUtils;->adjustBoundsForTaskbar(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    :cond_1a
    return-void

    .line 561
    :cond_1b
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getLetterboxInsets()Landroid/graphics/Rect;
    .registers 6

    .line 541
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 542
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mLeftBounds:Landroid/graphics/Rect;

    .line 543
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mTopBounds:Landroid/graphics/Rect;

    .line 544
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mRightBounds:Landroid/graphics/Rect;

    .line 545
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mBottomBounds:Landroid/graphics/Rect;

    .line 546
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-direct {v0, v1, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 549
    :cond_35
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public getLetterboxOuterBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 567
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 568
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 570
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public hide()V
    .registers 4

    .line 527
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_24

    .line 530
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mLetterboxPosition:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 531
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 532
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 533
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mSurfacesBounds:[Landroid/graphics/Rect;

    array-length v0, p0

    :goto_1a
    if-ge v1, v0, :cond_24

    aget-object v2, p0, v1

    .line 534
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_24
    :goto_24
    return-void
.end method

.method public isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z
    .registers 3

    .line 591
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mSurfacesBounds:[Landroid/graphics/Rect;

    invoke-static {p1, p0}, Lcom/android/server/wm/AppCompatLetterboxUtils;->fullyContainsOrNotIntersects(Landroid/graphics/Rect;[Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 504
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mRunning:Z

    return p0
.end method

.method public final synthetic lambda$layoutLetterboxIfNeeded$0()Landroid/graphics/Rect;
    .registers 1

    .line 493
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public layoutLetterboxIfNeeded(Lcom/android/server/wm/WindowState;)V
    .registers 5

    const/4 v0, 0x1

    .line 488
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mRunning:Z

    .line 489
    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mLetterboxPosition:Landroid/graphics/Point;

    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatLetterboxUtils;->calculateLetterboxPosition(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Point;)V

    .line 490
    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatLetterboxUtils;->calculateLetterboxOuterBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    .line 491
    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    invoke-static {v1, p1, v2}, Lcom/android/server/wm/AppCompatLetterboxUtils;->calculateLetterboxInnerBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 492
    iget-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getReachabilityPolicy()Lcom/android/server/wm/AppCompatReachabilityPolicy;

    move-result-object p1

    new-instance v1, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;)V

    .line 493
    invoke-virtual {p1, v1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->setLetterboxInnerBoundsSupplier(Ljava/util/function/Supplier;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->updateSurfacesBounds()V

    .line 495
    iget-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object p1

    .line 496
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isDoubleTapEvent()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 498
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_5a
    return-void
.end method

.method public onMovedToDisplay(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public stop()V
    .registers 3

    .line 514
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mRunning:Z

    .line 518
    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mLetterboxPosition:Landroid/graphics/Point;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 519
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 520
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 521
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getReachabilityPolicy()Lcom/android/server/wm/AppCompatReachabilityPolicy;

    move-result-object p0

    const/4 v0, 0x0

    .line 522
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->setLetterboxInnerBoundsSupplier(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 579
    invoke-static {p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$smshouldNotLayoutLetterbox(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    .line 582
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->start(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final updateSurfacesBounds()V
    .registers 6

    .line 596
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mTopBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 598
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mLeftBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mRightBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 602
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mBottomBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, p0, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
