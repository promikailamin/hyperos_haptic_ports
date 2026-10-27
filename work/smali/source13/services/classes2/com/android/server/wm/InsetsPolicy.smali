.class Lcom/android/server/wm/InsetsPolicy;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;,
        Lcom/android/server/wm/InsetsPolicy$BarWindow;
    }
.end annotation


# instance fields
.field private isStatusBarHiddenInSplit:Z

.field private mAnimatingShown:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field private mFocusedWin:Lcom/android/server/wm/WindowState;

.field private final mHideNavBarForKeyboard:Z

.field private mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field private final mPolicy:Lcom/android/server/wm/DisplayPolicy;

.field private mRemoteInsetsControllerControlsSystemBars:Z

.field private final mShowingTransientTypes:Landroid/util/IntArray;

.field private final mStateController:Lcom/android/server/wm/InsetsStateController;

.field private mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field private final mTmpFloat9:[F


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimatingShown(Lcom/android/server/wm/InsetsPolicy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/InsetsPolicy;->mAnimatingShown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusedWin(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicy(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowingTransientTypes(Lcom/android/server/wm/InsetsPolicy;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateController(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/InsetsStateController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTmpFloat9(Lcom/android/server/wm/InsetsPolicy;)[F
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTmpFloat9:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimatingShown(Lcom/android/server/wm/InsetsPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/InsetsPolicy;->mAnimatingShown:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "stateController"    # Lcom/android/server/wm/InsetsStateController;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InsetsPolicy;->isStatusBarHiddenInSplit:Z

    .line 93
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsPolicy$1;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 126
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 127
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 134
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mTmpFloat9:[F

    .line 137
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 138
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 139
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 140
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x1110006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/InsetsPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    .line 143
    const v1, 0x1110163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    .line 144
    return-void
.end method

.method private abortTransient()V
    .registers 4

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 565
    .local v0, "statusBarManagerInternal":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_17

    .line 566
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 567
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    .line 566
    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(I[I)V

    .line 569
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 571
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 575
    return-void
.end method

.method private adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .registers 7
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "originalState"    # Landroid/view/InsetsState;
    .param p3, "copyState"    # Z

    .line 503
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 504
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v1

    if-nez v1, :cond_26

    .line 506
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 507
    .local v1, "roundedCornerFrame":Landroid/graphics/Rect;
    if-eqz p3, :cond_21

    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    goto :goto_22

    :cond_21
    move-object v2, p2

    .line 508
    .local v2, "state":Landroid/view/InsetsState;
    :goto_22
    invoke-virtual {v2, v1}, Landroid/view/InsetsState;->setRoundedCornerFrame(Landroid/graphics/Rect;)V

    .line 509
    return-object v2

    .line 511
    .end local v1    # "roundedCornerFrame":Landroid/graphics/Rect;
    .end local v2    # "state":Landroid/view/InsetsState;
    :cond_26
    return-object p2
.end method

.method private adjustVisibilityForIme(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .registers 8
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "originalState"    # Landroid/view/InsetsState;
    .param p3, "copyState"    # Z

    .line 469
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_2a

    .line 472
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 473
    .local v0, "navVisible":Z
    invoke-virtual {p2, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 474
    .local v1, "originalNavSource":Landroid/view/InsetsSource;
    if-eqz v1, :cond_56

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_56

    .line 475
    if-eqz p3, :cond_1c

    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    goto :goto_1d

    .line 476
    :cond_1c
    move-object v2, p2

    :goto_1d
    nop

    .line 477
    .local v2, "state":Landroid/view/InsetsState;
    new-instance v3, Landroid/view/InsetsSource;

    invoke-direct {v3, v1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 478
    .local v3, "navSource":Landroid/view/InsetsSource;
    invoke-virtual {v3, v0}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 479
    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 480
    return-object v2

    .line 482
    .end local v0    # "navVisible":Z
    .end local v1    # "originalNavSource":Landroid/view/InsetsSource;
    .end local v2    # "state":Landroid/view/InsetsState;
    .end local v3    # "navSource":Landroid/view/InsetsSource;
    :cond_2a
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_56

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mImeInsetsFrozenUntilStartInput:Z

    if-eqz v0, :cond_56

    .line 486
    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 488
    .local v1, "originalImeSource":Landroid/view/InsetsSource;
    if-eqz v1, :cond_57

    .line 489
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v0

    .line 490
    .local v0, "imeVisibility":Z
    if-eqz p3, :cond_48

    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    goto :goto_49

    .line 491
    :cond_48
    move-object v2, p2

    :goto_49
    nop

    .line 492
    .restart local v2    # "state":Landroid/view/InsetsState;
    new-instance v3, Landroid/view/InsetsSource;

    invoke-direct {v3, v1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 493
    .local v3, "imeSource":Landroid/view/InsetsSource;
    invoke-virtual {v3, v0}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 494
    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 495
    return-object v2

    .line 482
    .end local v0    # "imeVisibility":Z
    .end local v1    # "originalImeSource":Landroid/view/InsetsSource;
    .end local v2    # "state":Landroid/view/InsetsState;
    .end local v3    # "imeSource":Landroid/view/InsetsSource;
    :cond_56
    nop

    .line 498
    :cond_57
    return-object p2
.end method

.method private adjustVisibilityForTransientTypes(Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .registers 8
    .param p1, "originalState"    # Landroid/view/InsetsState;

    .line 449
    move-object v0, p1

    .line 450
    .local v0, "state":Landroid/view/InsetsState;
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_34

    .line 451
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 452
    .local v2, "type":I
    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 453
    .local v3, "originalSource":Landroid/view/InsetsSource;
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 454
    if-ne v0, p1, :cond_25

    .line 456
    new-instance v4, Landroid/view/InsetsState;

    invoke-direct {v4, p1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v0, v4

    .line 459
    :cond_25
    new-instance v4, Landroid/view/InsetsSource;

    invoke-direct {v4, v3}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 460
    .local v4, "source":Landroid/view/InsetsSource;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 461
    invoke-virtual {v0, v4}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 450
    .end local v2    # "type":I
    .end local v3    # "originalSource":Landroid/view/InsetsSource;
    .end local v4    # "source":Landroid/view/InsetsSource;
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 464
    .end local v1    # "i":I
    :cond_34
    return-object v0
.end method

.method private static canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 629
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_14

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v2, v1, :cond_14

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_14

    move v2, v1

    goto :goto_15

    :cond_14
    move v2, v0

    .line 632
    .local v2, "nonAttachedAppWindow":Z
    :goto_15
    if-eqz v2, :cond_2d

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 633
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_2d

    move v0, v1

    goto :goto_2e

    :cond_2d
    nop

    .line 632
    :goto_2e
    return v0
.end method

.method private checkAbortTransient(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 8
    .param p1, "caller"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_7b

    .line 530
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 531
    .local v0, "abortTypes":Landroid/util/IntArray;
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v1

    .line 532
    .local v1, "imeRequestedVisible":Z
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_1b
    if-ltz v2, :cond_60

    .line 533
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v4, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 534
    .local v4, "type":I
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v5, v4, p1}, Lcom/android/server/wm/InsetsStateController;->isFakeTarget(ILcom/android/server/wm/InsetsControlTarget;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 535
    invoke-interface {p1, v4}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v5

    if-nez v5, :cond_35

    :cond_31
    if-ne v4, v3, :cond_5d

    if-eqz v1, :cond_5d

    .line 540
    :cond_35
    invoke-static {}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->getInstance()Lcom/android/server/wm/MiuiMultiWindowServiceStub;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->isMiuiMultiWinChangeSupport()Z

    move-result v5

    if-eqz v5, :cond_55

    if-nez v4, :cond_55

    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 542
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->isInSplitScreenWindowingMode()Z

    move-result v5

    if-nez v5, :cond_5d

    .line 543
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isEmbeddedOnScreen()Z

    move-result v5

    if-nez v5, :cond_5d

    .line 544
    :cond_55
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v5, v2}, Landroid/util/IntArray;->remove(I)V

    .line 545
    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    .line 532
    .end local v4    # "type":I
    :cond_5d
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 550
    .end local v2    # "i":I
    :cond_60
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 551
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v2

    .line 552
    .local v2, "statusBarManagerInternal":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-lez v3, :cond_7b

    if-eqz v2, :cond_7b

    .line 553
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 554
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    .line 553
    invoke-interface {v2, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(I[I)V

    .line 557
    .end local v0    # "abortTypes":Landroid/util/IntArray;
    .end local v1    # "imeRequestedVisible":Z
    .end local v2    # "statusBarManagerInternal":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_7b
    return-void
.end method

.method private controlAnimationUnchecked(ILandroid/util/SparseArray;ZLjava/lang/Runnable;)V
    .registers 7
    .param p1, "typesReady"    # I
    .param p3, "show"    # Z
    .param p4, "callback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;Z",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 751
    .local p2, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    invoke-direct {v0, p0, p3, p4, p1}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;-><init>(Lcom/android/server/wm/InsetsPolicy;ZLjava/lang/Runnable;I)V

    .line 753
    .local v0, "listener":Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;
    iget-object v1, v0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->mControlCallbacks:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->-$$Nest$mcontrolAnimationUnchecked(Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;ILandroid/util/SparseArray;Z)V

    .line 754
    return-void
.end method

.method private dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V
    .registers 8
    .param p1, "focusedWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "areVisible"    # Z
    .param p3, "wereRevealedFromSwipeOnSystemBar"    # Z

    .line 760
    if-nez p1, :cond_3

    .line 761
    return-void

    .line 764
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 765
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_a

    .line 766
    return-void

    .line 769
    :cond_a
    iget v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 770
    .local v1, "taskId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 771
    .local v2, "isValidTaskId":Z
    :goto_12
    if-nez v2, :cond_15

    .line 772
    return-void

    .line 775
    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskSystemBarsListenerController:Lcom/android/server/wm/TaskSystemBarsListenerController;

    .line 776
    invoke-virtual {v3, v1, p2, p3}, Lcom/android/server/wm/TaskSystemBarsListenerController;->dispatchTransientSystemBarVisibilityChanged(IZZ)V

    .line 780
    return-void
.end method

.method private forceShowsNavigationBarTransiently()Z
    .registers 4

    .line 721
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 722
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private forceShowsStatusBarTransiently()Z
    .registers 3

    .line 716
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 717
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private static getInsetsTypeForLayoutParams(Landroid/view/WindowManager$LayoutParams;)I
    .registers 6
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 335
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 336
    .local v0, "type":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_22

    .line 346
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    if-eqz v2, :cond_1f

    .line 347
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v3, v2

    goto :goto_14

    .line 340
    :sswitch_e
    const/4 v1, 0x1

    return v1

    .line 342
    :sswitch_10
    const/16 v1, 0x13

    return v1

    .line 338
    :sswitch_13
    return v1

    .line 347
    :goto_14
    if-ge v1, v3, :cond_1f

    aget v4, v2, v1

    .line 348
    .local v4, "insetsType":I
    sparse-switch v4, :sswitch_data_30

    .line 347
    .end local v4    # "insetsType":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 353
    .restart local v4    # "insetsType":I
    :sswitch_1e
    return v4

    .line 358
    .end local v4    # "insetsType":I
    :cond_1f
    const/4 v1, -0x1

    return v1

    nop

    :sswitch_data_22
    .sparse-switch
        0x7d0 -> :sswitch_13
        0x7db -> :sswitch_10
        0x7e3 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_1e
        0x1 -> :sswitch_1e
        0x14 -> :sswitch_1e
        0x15 -> :sswitch_1e
    .end sparse-switch
.end method

.method private getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .registers 7
    .param p1, "focusedWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "fake"    # Z

    .line 638
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 639
    .local v0, "imeWin":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    if-nez v2, :cond_12

    .line 642
    return-object v1

    .line 644
    :cond_12
    if-nez p2, :cond_21

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/InsetsPolicy;->isShowingTransientTypes(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 645
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v1

    .line 647
    :cond_21
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-ne p1, v2, :cond_2a

    .line 649
    return-object p1

    .line 651
    :cond_2a
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isForceShowNavigationBarEnabled()Z

    move-result v2

    if-eqz v2, :cond_3c

    if-eqz p1, :cond_3c

    .line 652
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3c

    .line 657
    return-object v1

    .line 659
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 660
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 661
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v3

    .line 660
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->topFocusedWindowChanged(Ljava/lang/String;Landroid/view/InsetsVisibilities;)V

    .line 662
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object v1

    .line 664
    :cond_56
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->areSystemBarsForcedShownLw()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 667
    return-object v1

    .line 669
    :cond_5f
    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy;->forceShowsNavigationBarTransiently()Z

    move-result v1

    if-eqz v1, :cond_6a

    if-nez p2, :cond_6a

    .line 673
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v1

    .line 676
    :cond_6a
    if-eqz p1, :cond_79

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 677
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    return-object v1

    .line 680
    :cond_79
    return-object p1
.end method

.method private getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .registers 7
    .param p1, "focusedWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "fake"    # Z

    .line 580
    invoke-static {}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->getInstance()Lcom/android/server/wm/MiuiMultiWindowServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->isMiuiMultiWinChangeSupport()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 581
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isInSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 582
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isEmbeddedOnScreen()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 583
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0

    .line 586
    :cond_21
    if-nez p2, :cond_30

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isShowingTransientTypes(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 587
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0

    .line 589
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 590
    .local v0, "notificationShade":Lcom/android/server/wm/WindowState;
    if-ne p1, v0, :cond_39

    .line 592
    return-object p1

    .line 594
    :cond_39
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 595
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 596
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v3

    .line 595
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->topFocusedWindowChanged(Ljava/lang/String;Landroid/view/InsetsVisibilities;)V

    .line 597
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object v1

    .line 599
    :cond_53
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->areSystemBarsForcedShownLw()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 602
    const/4 v1, 0x0

    return-object v1

    .line 604
    :cond_5d
    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy;->forceShowsStatusBarTransiently()Z

    move-result v1

    if-eqz v1, :cond_68

    if-nez p2, :cond_68

    .line 608
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v1

    .line 611
    :cond_68
    invoke-static {}, Lcom/android/server/wm/InsetsPolicyStub;->getInstance()Lcom/android/server/wm/InsetsPolicyStub;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/InsetsPolicyStub;->useFocusedWindowForStatusControl(Lcom/android/server/wm/WindowState;Z)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 612
    return-object p1

    .line 615
    :cond_73
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_89

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v1

    if-eqz v1, :cond_89

    if-eqz v0, :cond_91

    .line 616
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_91

    :cond_89
    if-eqz p1, :cond_98

    .line 618
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 621
    :cond_91
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    return-object v1

    .line 623
    :cond_98
    return-object p1
.end method

.method static isInsetsTypeControllable(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 321
    sparse-switch p0, :sswitch_data_8

    .line 329
    const/4 v0, 0x0

    return v0

    .line 327
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_5
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_5
    .end sparse-switch
.end method

.method private isShowingTransientTypes(I)Z
    .registers 6
    .param p1, "types"    # I

    .line 684
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    .line 685
    .local v0, "showingTransientTypes":Landroid/util/IntArray;
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_19

    .line 686
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_16

    .line 687
    return v2

    .line 685
    :cond_16
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 690
    .end local v1    # "i":I
    :cond_19
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .registers 4
    .param p1, "target"    # Lcom/android/server/wm/WindowState;
    .param p2, "originalState"    # Landroid/view/InsetsState;

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object v0

    return-object v0
.end method

.method adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .registers 8
    .param p1, "target"    # Lcom/android/server/wm/WindowState;
    .param p2, "originalState"    # Landroid/view/InsetsState;
    .param p3, "includesTransient"    # Z

    .line 274
    if-nez p3, :cond_7

    .line 275
    invoke-direct {p0, p2}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForTransientTypes(Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v0

    .local v0, "state":Landroid/view/InsetsState;
    goto :goto_8

    .line 277
    .end local v0    # "state":Landroid/view/InsetsState;
    :cond_7
    move-object v0, p2

    .line 279
    .restart local v0    # "state":Landroid/view/InsetsState;
    :goto_8
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForIme(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object v0

    .line 280
    if-ne v0, p2, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object v1

    return-object v1
.end method

.method enforceInsetsPolicyForTarget(IIZLandroid/view/InsetsState;)Landroid/view/InsetsState;
    .registers 16
    .param p1, "type"    # I
    .param p2, "windowingMode"    # I
    .param p3, "isAlwaysOnTop"    # Z
    .param p4, "state"    # Landroid/view/InsetsState;

    .line 379
    const/4 v0, 0x0

    .line 381
    .local v0, "stateCopied":Z
    const/4 v1, -0x1

    const/16 v2, 0x13

    const/16 v3, 0x15

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v1, :cond_6a

    .line 382
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, p4}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p4, v1

    .line 383
    const/4 v0, 0x1

    .line 384
    invoke-virtual {p4, p1}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 387
    const/16 v1, 0x14

    if-eq p1, v5, :cond_1b

    if-ne p1, v3, :cond_2a

    .line 388
    :cond_1b
    invoke-virtual {p4, v6}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 389
    invoke-virtual {p4, v1}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 390
    invoke-virtual {p4, v4}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 391
    invoke-virtual {p4, v5}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 392
    invoke-virtual {p4, v3}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 396
    :cond_2a
    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_31

    .line 397
    :cond_2e
    invoke-virtual {p4, v4}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 401
    :cond_31
    if-ne p1, v2, :cond_6a

    .line 402
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 403
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProviders()Landroid/util/ArrayMap;

    move-result-object v1

    .line 404
    .local v1, "providers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/wm/WindowContainerInsetsSourceProvider;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v7

    sub-int/2addr v7, v5

    .local v7, "i":I
    :goto_3e
    if-ltz v7, :cond_6a

    .line 405
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    .line 406
    .local v8, "otherProvider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->overridesImeFrame()Z

    move-result v9

    if-eqz v9, :cond_67

    .line 407
    new-instance v9, Landroid/view/InsetsSource;

    .line 409
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/InsetsSource;->getType()I

    move-result v10

    invoke-virtual {p4, v10}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 410
    .local v9, "override":Landroid/view/InsetsSource;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->getImeOverrideFrame()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 411
    invoke-virtual {p4, v9}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 404
    .end local v8    # "otherProvider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    .end local v9    # "override":Landroid/view/InsetsSource;
    :cond_67
    add-int/lit8 v7, v7, -0x1

    goto :goto_3e

    .line 417
    .end local v1    # "providers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/wm/WindowContainerInsetsSourceProvider;>;"
    .end local v7    # "i":I
    :cond_6a
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v1

    if-nez v1, :cond_75

    const/4 v1, 0x6

    if-ne p2, v1, :cond_8c

    if-eqz p3, :cond_8c

    .line 419
    :cond_75
    if-nez v0, :cond_7e

    .line 420
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, p4}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p4, v1

    .line 421
    const/4 v0, 0x1

    .line 423
    :cond_7e
    invoke-virtual {p4, v6}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 424
    invoke-virtual {p4, v5}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 425
    invoke-virtual {p4, v3}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 426
    if-ne p2, v4, :cond_8c

    .line 427
    invoke-virtual {p4, v2}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 432
    :cond_8c
    const/4 v1, 0x5

    if-ne p2, v1, :cond_af

    .line 434
    invoke-virtual {p4, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 435
    .local v1, "imeSource":Landroid/view/InsetsSource;
    if-eqz v1, :cond_af

    .line 436
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, v1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    move-object v1, v2

    .line 437
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 438
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    .line 439
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, p4}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p4, v2

    .line 440
    invoke-virtual {p4, v1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 445
    .end local v1    # "imeSource":Landroid/view/InsetsSource;
    :cond_af
    return-object p4
.end method

.method getInsetsForWindowMetrics(Landroid/view/WindowManager$LayoutParams;)Landroid/view/InsetsState;
    .registers 8
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 291
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->getInsetsTypeForLayoutParams(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 292
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1

    .line 293
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    if-eqz v1, :cond_15

    .line 294
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    .line 295
    .local v2, "rotatedState":Landroid/view/InsetsState;
    if-eqz v2, :cond_15

    .line 296
    return-object v2

    .line 299
    .end local v2    # "rotatedState":Landroid/view/InsetsState;
    :cond_15
    const/4 v2, 0x1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isAlwaysOnTop()Z

    move-result v3

    if-eqz v3, :cond_20

    move v3, v2

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    .line 302
    .local v3, "alwaysOnTop":Z
    :goto_21
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 304
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v5

    .line 303
    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/server/wm/InsetsPolicy;->enforceInsetsPolicyForTarget(IIZLandroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v2

    .line 306
    .local v2, "originalState":Landroid/view/InsetsState;
    iget-boolean v4, p1, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    if-eqz v4, :cond_49

    .line 307
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 308
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 309
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 310
    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 313
    :cond_49
    invoke-direct {p0, v2}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForTransientTypes(Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v4

    return-object v4
.end method

.method getRemoteInsetsControllerControlsSystemBars()Z
    .registers 2

    .line 147
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    return v0
.end method

.method public hideStatusBar()V
    .registers 5

    .line 914
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/server/wm/InsetsPolicy;->isStatusBarHiddenInSplit:Z

    if-eqz v1, :cond_c

    .line 915
    return-void

    .line 919
    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->setClientVisible(Z)V

    .line 920
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    .line 921
    return-void

    .line 923
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v1

    .line 924
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v2

    .line 925
    .local v2, "control":Landroid/view/InsetsSourceControl;
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    if-nez v3, :cond_34

    goto :goto_47

    .line 928
    :cond_34
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v3, v0}, Landroid/util/IntArray;->add(I)V

    .line 929
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v3, v0, v0}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 933
    new-instance v3, Lcom/android/server/wm/InsetsPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/wm/InsetsPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/InsetsPolicy;->startAnimation(ZLjava/lang/Runnable;)V

    .line 941
    return-void

    .line 926
    :cond_47
    :goto_47
    return-void
.end method

.method hideTransient()V
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 241
    return-void

    .line 244
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 249
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/InsetsPolicy;->startAnimation(ZLjava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method isHidden(I)Z
    .registers 4
    .param p1, "type"    # I

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 196
    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v0

    .line 197
    .local v0, "provider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->hasWindowContainer()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 198
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 197
    :goto_1b
    return v1
.end method

.method isTransient(I)Z
    .registers 4
    .param p1, "type"    # I

    .line 264
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method synthetic lambda$hideStatusBar$2$com-android-server-wm-InsetsPolicy()V
    .registers 4

    .line 934
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 935
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->setClientVisible(Z)V

    .line 936
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/InsetsPolicy;->isStatusBarHiddenInSplit:Z

    .line 937
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 938
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 939
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 940
    return-void

    .line 939
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$hideTransient$1$com-android-server-wm-InsetsPolicy()V
    .registers 6

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 251
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_27

    .line 254
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 255
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->setClientVisible(Z)V

    .line 251
    .end local v2    # "type":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 257
    .end local v1    # "i":I
    :cond_27
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 258
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 259
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 260
    return-void

    .line 259
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$showTransient$0$com-android-server-wm-InsetsPolicy(J)V
    .registers 6
    .param p1, "time"    # J

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 233
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/InsetsPolicy;->startAnimation(ZLjava/lang/Runnable;)V

    .line 234
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 235
    return-void

    .line 234
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 3
    .param p1, "caller"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 516
    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->checkAbortTransient(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 518
    return-void
.end method

.method remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/WindowState;)Z
    .registers 6
    .param p1, "focusedWin"    # Lcom/android/server/wm/WindowState;

    .line 698
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 699
    return v0

    .line 701
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/InsetsPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    if-nez v1, :cond_9

    .line 702
    return v0

    .line 704
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_29

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-nez v1, :cond_12

    goto :goto_29

    .line 711
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_27

    .line 712
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v1, v3, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    nop

    .line 711
    :goto_28
    return v0

    .line 706
    :cond_29
    :goto_29
    return v0
.end method

.method setRemoteInsetsControllerControlsSystemBars(Z)V
    .registers 2
    .param p1, "controlsSystemBars"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    .line 156
    return-void
.end method

.method showTransient([IZ)V
    .registers 9
    .param p1, "types"    # [I
    .param p2, "isGestureOnSystemBar"    # Z

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "changed":Z
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_22

    .line 204
    aget v3, p1, v1

    .line 205
    .local v3, "type":I
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 206
    goto :goto_1f

    .line 208
    :cond_f
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_19

    .line 209
    goto :goto_1f

    .line 211
    :cond_19
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->add(I)V

    .line 212
    const/4 v0, 0x1

    .line 203
    .end local v3    # "type":I
    :goto_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 214
    .end local v1    # "i":I
    :cond_22
    if-eqz v0, :cond_66

    .line 215
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 216
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    .line 217
    .local v1, "statusBarManagerInternal":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v1, :cond_3b

    .line 218
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    .line 219
    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    .line 218
    invoke-interface {v1, v3, v4, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTransient(I[IZ)V

    .line 221
    :cond_3b
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 222
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 224
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v5

    if-nez v5, :cond_51

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v5

    if-eqz v5, :cond_50

    goto :goto_51

    :cond_50
    move v2, v4

    .line 222
    :cond_51
    :goto_51
    invoke-direct {p0, v3, v2, p2}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 231
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/InsetsPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/wm/InsetsPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 237
    .end local v1    # "statusBarManagerInternal":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_66
    return-void
.end method

.method startAnimation(ZLjava/lang/Runnable;)V
    .registers 12
    .param p1, "show"    # Z
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, "typesReady":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 730
    .local v1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    .line 731
    .local v2, "showingTransientTypes":Landroid/util/IntArray;
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_e
    if-ltz v3, :cond_44

    .line 732
    invoke-virtual {v2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 733
    .local v4, "type":I
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v5

    .line 734
    .local v5, "provider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v6

    .line 735
    .local v6, "control":Landroid/view/InsetsSourceControl;
    if-eqz v6, :cond_41

    invoke-virtual {v6}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    if-nez v7, :cond_29

    .line 736
    goto :goto_41

    .line 739
    :cond_29
    if-nez v4, :cond_30

    if-eqz p1, :cond_30

    .line 740
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/wm/InsetsPolicy;->isStatusBarHiddenInSplit:Z

    .line 743
    :cond_30
    invoke-static {v4}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    or-int/2addr v0, v7

    .line 744
    invoke-virtual {v6}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v7

    new-instance v8, Landroid/view/InsetsSourceControl;

    invoke-direct {v8, v6}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 731
    .end local v4    # "type":I
    .end local v5    # "provider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    .end local v6    # "control":Landroid/view/InsetsSourceControl;
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 746
    .end local v3    # "i":I
    :cond_44
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->controlAnimationUnchecked(ILandroid/util/SparseArray;ZLjava/lang/Runnable;)V

    .line 747
    return-void
.end method

.method updateBarControlTarget(Lcom/android/server/wm/WindowState;)V
    .registers 12
    .param p1, "focusedWin"    # Lcom/android/server/wm/WindowState;

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_25

    .line 163
    invoke-static {}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->getInstance()Lcom/android/server/wm/MiuiMultiWindowServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->isMiuiMultiWinChangeSupport()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 164
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isInSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_25

    .line 165
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isEmbeddedOnScreen()Z

    move-result v0

    if-nez v0, :cond_25

    .line 166
    :cond_22
    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    .line 170
    :cond_25
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 171
    nop

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    .line 173
    .local v1, "statusControlTarget":Lcom/android/server/wm/InsetsControlTarget;
    nop

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v2

    .line 175
    .local v2, "navControlTarget":Lcom/android/server/wm/InsetsControlTarget;
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 176
    .local v3, "notificationShade":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 177
    .local v4, "topApp":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 179
    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v1, v6, :cond_4b

    .line 180
    invoke-direct {p0, p1, v8}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    goto :goto_53

    .line 181
    :cond_4b
    if-ne v1, v3, :cond_52

    .line 182
    invoke-direct {p0, v4, v8}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    goto :goto_53

    .line 183
    :cond_52
    move-object v6, v7

    .line 185
    :goto_53
    iget-object v9, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v2, v9, :cond_5c

    .line 186
    invoke-direct {p0, p1, v8}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v7

    goto :goto_64

    .line 187
    :cond_5c
    if-ne v2, v3, :cond_63

    .line 188
    invoke-direct {p0, v4, v8}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v7

    goto :goto_64

    .line 189
    :cond_63
    nop

    .line 177
    :goto_64
    invoke-virtual {v5, v1, v6, v2, v7}, Lcom/android/server/wm/InsetsStateController;->onBarControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)V

    .line 190
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {v5, v1, v0}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {v0, v2, v8}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    .line 192
    return-void
.end method
