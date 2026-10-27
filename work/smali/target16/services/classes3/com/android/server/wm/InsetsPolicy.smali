.class public Lcom/android/server/wm/InsetsPolicy;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"


# static fields
.field public static final CONTROLLABLE_TYPES:I


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mFocusedWin:Lcom/android/server/wm/WindowState;

.field public mForciblyHidingTypes:I

.field public mForciblyShowingTypes:I

.field public final mHideNavBarForKeyboard:Z

.field public final mHidingPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mHidingTransientNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mHidingTransientStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mHidingTransientTypes:I

.field public final mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field public final mPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public final mShowingPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public final mShowingTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mShowingTransientTypes:I

.field public final mStateController:Lcom/android/server/wm/InsetsStateController;

.field public final mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicy(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 69
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    .line 70
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    .line 71
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/wm/InsetsPolicy;->CONTROLLABLE_TYPES:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 122
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 153
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 154
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 155
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 156
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11101db

    .line 157
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    .line 158
    new-instance p1, Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v1, p2}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/InsetsPolicy;ZZ)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 160
    new-instance p1, Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    invoke-direct {p1, p0, v1, v1}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/InsetsPolicy;ZZ)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 162
    new-instance p1, Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    invoke-direct {p1, p0, p2, v1}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/InsetsPolicy;ZZ)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-void
.end method

.method public static adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;
    .registers 5

    .line 482
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    if-ne v0, p1, :cond_25

    if-nez p3, :cond_9

    goto :goto_25

    .line 485
    :cond_9
    invoke-interface {p3, p1}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result p1

    .line 486
    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p3

    if-ne p3, p1, :cond_14

    goto :goto_25

    .line 490
    :cond_14
    new-instance p3, Landroid/view/InsetsState;

    invoke-direct {p3, p0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 493
    new-instance p0, Landroid/view/InsetsSource;

    invoke-direct {p0, p2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 494
    invoke-virtual {p0, p1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 495
    invoke-virtual {p3, p0}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    return-object p3

    :cond_25
    :goto_25
    return-object p0
.end method

.method public static canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    if-eqz p0, :cond_20

    .line 691
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_20

    const/16 v3, 0x63

    if-gt v1, v3, :cond_20

    .line 694
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v0

    if-nez v0, :cond_20

    .line 695
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_20

    return v2

    :cond_20
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final abortTransient()V
    .registers 3

    .line 615
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-nez v0, :cond_9

    iget v1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    if-nez v1, :cond_9

    return-void

    .line 618
    :cond_9
    iget v1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->sendAbortTransient(I)V

    const/4 v0, 0x0

    .line 619
    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 620
    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    const/4 v1, 0x0

    .line 621
    iput-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 622
    iput-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 623
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 624
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 626
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    return-void
.end method

.method public final adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .registers 5

    if-eqz p1, :cond_34

    .line 555
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 556
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_34

    .line 557
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-nez v0, :cond_34

    if-eqz p3, :cond_22

    .line 559
    new-instance p3, Landroid/view/InsetsState;

    invoke-direct {p3, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p2, p3

    .line 561
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result p3

    if-eqz p3, :cond_2d

    .line 562
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_31

    .line 563
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 561
    :goto_31
    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->setRoundedCornerFrame(Landroid/graphics/Rect;)V

    :cond_34
    return-object p2
.end method

.method public adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .registers 4

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object p0

    return-object p0
.end method

.method public adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .registers 8

    if-nez p3, :cond_7

    .line 339
    invoke-virtual {p0, p2}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSources(Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object p3

    goto :goto_8

    :cond_7
    move-object p3, p2

    :goto_8
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, p2, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    move v2, v0

    .line 343
    :goto_f
    invoke-virtual {p0, p1, p3, v2}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForIme(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object p3

    .line 344
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-ne p3, p2, :cond_19

    move v3, v1

    goto :goto_1a

    :cond_19
    move v3, v0

    :goto_1a
    invoke-virtual {v2, p3, v3}, Lcom/android/server/wm/DisplayPolicy;->replaceInsetsSourcesIfNeeded(Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object p3

    .line 345
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne p3, p2, :cond_23

    move v0, v1

    :cond_23
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object p0

    return-object p0
.end method

.method public final adjustVisibilityForFakeControllingSources(Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .registers 6

    .line 464
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v0, :cond_9

    return-object p1

    .line 468
    :cond_9
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_2c

    .line 469
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 470
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p1, v2, v1, v3}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;

    move-result-object p1

    .line 472
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p1, v2, v1, v3}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_2c
    return-object p1
.end method

.method public final adjustVisibilityForIme(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .registers 8

    .line 502
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_3e

    .line 506
    iget-boolean p0, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    xor-int/lit8 p0, p0, 0x1

    .line 507
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v0, p2

    :goto_f
    if-ltz p1, :cond_3d

    .line 508
    invoke-virtual {p2, p1}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    if-ne v2, v3, :cond_3a

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-ne v2, p0, :cond_26

    goto :goto_3a

    :cond_26
    if-ne v0, p2, :cond_2f

    if-eqz p3, :cond_2f

    .line 513
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 515
    :cond_2f
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, v1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 516
    invoke-virtual {v2, p0}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 517
    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_3a
    :goto_3a
    add-int/lit8 p1, p1, -0x1

    goto :goto_f

    :cond_3d
    return-object v0

    .line 520
    :cond_3e
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_65

    .line 522
    sget p0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p0

    if-eqz p0, :cond_96

    .line 523
    invoke-virtual {p0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_96

    if-eqz p3, :cond_59

    .line 525
    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p2, p1

    .line 527
    :cond_59
    new-instance p1, Landroid/view/InsetsSource;

    invoke-direct {p1, p0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 528
    invoke-virtual {p1, v0}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 529
    invoke-virtual {p2, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    return-object p2

    .line 532
    :cond_65
    iget p0, p1, Lcom/android/server/wm/WindowContainer;->mMergedExcludeInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_96

    .line 535
    sget p0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p0

    if-eqz p0, :cond_96

    .line 536
    invoke-virtual {p0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_96

    if-eqz p3, :cond_84

    .line 538
    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p2, p1

    .line 540
    :cond_84
    new-instance p1, Landroid/view/InsetsSource;

    invoke-direct {p1, p0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 542
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    .line 543
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 544
    invoke-virtual {p2, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_96
    return-object p2
.end method

.method public areTypesForciblyHidden(I)Z
    .registers 2

    .line 777
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy;->mForciblyHidingTypes:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public areTypesForciblyShown(I)Z
    .registers 2

    .line 773
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy;->mForciblyShowingTypes:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final checkAbortTransient(Lcom/android/server/wm/InsetsTarget;)V
    .registers 4

    .line 586
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-nez v0, :cond_5

    goto :goto_52

    .line 589
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result v0

    .line 590
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 591
    invoke-virtual {v1, p1}, Lcom/android/server/wm/InsetsStateController;->getFakeControllingTypes(Lcom/android/server/wm/InsetsTarget;)I

    move-result v1

    .line 593
    invoke-interface {p1}, Lcom/android/server/wm/InsetsTarget;->getRequestedVisibleTypes()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz v0, :cond_21

    .line 594
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    or-int/2addr p1, v0

    .line 595
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 596
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    if-eqz p1, :cond_52

    .line 598
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 599
    iput-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 601
    :cond_3a
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_43

    .line 602
    iput-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 604
    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 606
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->sendAbortTransient(I)V

    :cond_52
    :goto_52
    return-void
.end method

.method public final dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_9

    .line 846
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_a

    :goto_9
    return-void

    .line 851
    :cond_a
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_18

    .line 857
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSystemBarsListenerController:Lcom/android/server/wm/TaskSystemBarsListenerController;

    .line 858
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskSystemBarsListenerController;->dispatchTransientSystemBarVisibilityChanged(IZZ)V

    :cond_18
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "InsetsPolicy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$fgetmState(Lcom/android/server/wm/InsetsPolicy$BarWindow;)I

    move-result v1

    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "nav: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$fgetmState(Lcom/android/server/wm/InsetsPolicy$BarWindow;)I

    move-result v1

    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-eqz v0, :cond_88

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mShowingTransientTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 871
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 870
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    :cond_88
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    if-eqz v0, :cond_a9

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHidingTransientTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    .line 875
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    :cond_a9
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mForciblyShowingTypes:I

    if-eqz v0, :cond_ca

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mForciblyShowingTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InsetsPolicy;->mForciblyShowingTypes:I

    .line 879
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 878
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    :cond_ca
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mForciblyHidingTypes:I

    if-eqz v0, :cond_eb

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mForciblyHidingTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InsetsPolicy;->mForciblyHidingTypes:I

    .line 883
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    :cond_eb
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_108

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFakeStatusControlTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    :cond_108
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_125

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFakeNavControlTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    :cond_125
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_142

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHidingTransientStatusControlTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    :cond_142
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_15f

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mHidingTransientNavControlTarget="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15f
    return-void
.end method

.method public enforceInsetsPolicyForTarget(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .registers 11

    .line 392
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 395
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7db

    if-ne v1, v2, :cond_13

    .line 396
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 397
    sget v2, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->removeSource(I)V

    goto :goto_40

    .line 398
    :cond_13
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    if-eqz v1, :cond_3f

    .line 399
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move-object v3, p2

    :goto_1b
    if-ge v4, v2, :cond_3d

    aget-object v5, v1, v4

    .line 400
    invoke-virtual {v5}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v7

    and-int/2addr v6, v7

    if-nez v6, :cond_2b

    goto :goto_3a

    :cond_2b
    if-ne v3, p2, :cond_33

    .line 404
    new-instance v6, Landroid/view/InsetsState;

    invoke-direct {v6, v3}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v3, v6

    .line 406
    :cond_33
    invoke-virtual {v5}, Landroid/view/InsetsFrameProvider;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/InsetsState;->removeSource(I)V

    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_3d
    move-object v1, v3

    goto :goto_40

    :cond_3f
    move-object v1, p2

    .line 427
    :goto_40
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProviders()Landroid/util/SparseArray;

    move-result-object v2

    .line 428
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 429
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_4e
    if-ltz v3, :cond_7a

    .line 430
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    .line 431
    invoke-virtual {v4, v0}, Lcom/android/server/wm/InsetsSourceProvider;->overridesFrame(I)Z

    move-result v5

    if-eqz v5, :cond_77

    if-ne v1, p2, :cond_64

    .line 433
    new-instance v5, Landroid/view/InsetsState;

    invoke-direct {v5, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v1, v5

    .line 435
    :cond_64
    new-instance v5, Landroid/view/InsetsSource;

    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 436
    invoke-virtual {v4, v0}, Lcom/android/server/wm/InsetsSourceProvider;->getOverriddenFrame(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 437
    invoke-virtual {v1, v5}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_77
    add-int/lit8 v3, v3, -0x1

    goto :goto_4e

    .line 441
    :cond_7a
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    .line 442
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v0

    if-nez v0, :cond_8f

    const/4 v0, 0x6

    if-ne p2, v0, :cond_8e

    .line 443
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_8e

    goto :goto_8f

    :cond_8e
    return-object v1

    .line 445
    :cond_8f
    :goto_8f
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    const/4 v2, 0x2

    if-eq p2, v2, :cond_c3

    .line 447
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p0

    instance-of p2, p0, Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_c3

    check-cast p0, Lcom/android/server/wm/WindowState;

    if-eq p1, p0, :cond_b4

    .line 449
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_c3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-ne p1, p2, :cond_c3

    .line 450
    :cond_b4
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->isRequestedVisible(I)Z

    move-result p0

    if-eqz p0, :cond_c3

    .line 451
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p0

    or-int/2addr v0, p0

    .line 453
    :cond_c3
    new-instance p0, Landroid/view/InsetsState;

    invoke-direct {p0}, Landroid/view/InsetsState;-><init>()V

    .line 454
    invoke-virtual {p0, v1, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    return-object p0
.end method

.method public final forceShowingNavigationBars(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 813
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isForceShowNavigationBarEnabled()Z

    move-result p0

    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    .line 814
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_12

    return p1

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public getInsetsForWindowMetrics(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;)V
    .registers 7

    if-eqz p1, :cond_d

    .line 359
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 360
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    goto :goto_13

    .line 361
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    :goto_13
    const/4 v1, 0x1

    .line 362
    invoke-virtual {p2, v0, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 363
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1c
    const/4 v1, 0x0

    if-ltz v0, :cond_33

    .line 364
    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 365
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 366
    invoke-virtual {v2, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 369
    :cond_33
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    if-eqz p1, :cond_48

    .line 370
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    move-result p0

    if-eqz p0, :cond_48

    const/high16 p0, 0x3f800000    # 1.0f

    .line 371
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getCompatScale()F

    move-result p1

    div-float/2addr p0, p1

    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->scale(F)V

    :cond_48
    return-void
.end method

.method public final getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;
    .registers 6

    .line 701
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTargetInner(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    .line 702
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p2

    if-eqz p2, :cond_24

    const/4 p2, 0x0

    .line 703
    aget v0, p3, p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 704
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibleTypes()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    aput p1, p3, p2

    .line 705
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0

    :cond_24
    return-object p1
.end method

.method public final getNavControlTargetInner(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .registers 5

    .line 713
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_13

    .line 714
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    if-nez v0, :cond_13

    .line 717
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    :cond_13
    if-nez p2, :cond_22

    .line 719
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 720
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 722
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_2b

    goto :goto_94

    :cond_2b
    if-eqz p1, :cond_42

    .line 727
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 728
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    if-ne v0, v1, :cond_42

    return-object p1

    .line 733
    :cond_42
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->areTypesForciblyShown(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 736
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 738
    :cond_4f
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->areInsetsTypesForciblyShownTransiently(I)Z

    move-result v0

    if-eqz v0, :cond_60

    if-nez p2, :cond_60

    .line 742
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 744
    :cond_60
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/wm/InsetsPolicy;->areTypesForciblyHidden(I)Z

    move-result p2

    if-eqz p2, :cond_6d

    .line 747
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 749
    :cond_6d
    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object p2

    .line 750
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 751
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    move-result v0

    if-eqz v0, :cond_94

    if-eqz p2, :cond_8d

    .line 752
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result p2

    if-nez p2, :cond_94

    .line 755
    :cond_8d
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0

    :cond_94
    :goto_94
    return-object p1
.end method

.method public getShowingPermanentControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .registers 1

    .line 281
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0
.end method

.method public getShowingTransientControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .registers 1

    .line 275
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0
.end method

.method public final getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;
    .registers 6

    .line 642
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTargetInner(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    .line 643
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p2

    if-eqz p2, :cond_24

    const/4 p2, 0x0

    .line 644
    aget v0, p3, p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 645
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibleTypes()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    aput p1, p3, p2

    .line 646
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0

    :cond_24
    return-object p1
.end method

.method public final getStatusControlTargetInner(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .registers 6

    if-nez p2, :cond_f

    .line 654
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 655
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 657
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_18

    goto :goto_64

    .line 662
    :cond_18
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->areTypesForciblyShown(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 665
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 667
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->areInsetsTypesForciblyShownTransiently(I)Z

    move-result v1

    if-eqz v1, :cond_36

    if-nez p2, :cond_36

    .line 671
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 673
    :cond_36
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/wm/InsetsPolicy;->areTypesForciblyHidden(I)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 676
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingPermanentControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    .line 678
    :cond_43
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-nez p2, :cond_64

    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 679
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    move-result p2

    if-eqz p2, :cond_64

    if-eqz v0, :cond_5d

    .line 680
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result p2

    if-nez p2, :cond_64

    .line 683
    :cond_5d
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0

    :cond_64
    :goto_64
    return-object p1
.end method

.method public hasHiddenSources(I)Z
    .registers 6

    .line 226
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    .line 227
    invoke-virtual {p0}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_c
    if-ltz v0, :cond_2e

    .line 228
    invoke-virtual {p0, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-nez v3, :cond_1a

    goto :goto_2b

    .line 232
    :cond_1a
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public hideTransient()V
    .registers 3

    .line 285
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-nez v0, :cond_5

    return-void

    .line 288
    :cond_5
    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 297
    iput v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public isTransient(I)Z
    .registers 2

    .line 327
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyRemoteInsetsController(Lcom/android/server/wm/WindowState;I)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 765
    :cond_3
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_a

    .line 766
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    .line 768
    :goto_b
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->topFocusedWindowChanged(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public onAnimatingTypesChanged(Lcom/android/server/wm/InsetsControlTarget;II)V
    .registers 7

    xor-int/2addr p2, p3

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2e

    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    .line 306
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_2e

    .line 307
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    and-int/2addr v0, p2

    if-eqz v0, :cond_2e

    .line 308
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_2e

    .line 309
    iput-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 310
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    not-int v2, v2

    and-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    .line 311
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 313
    :goto_2f
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, v2, :cond_5b

    iget p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    .line 314
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    and-int/2addr p1, v2

    if-eqz p1, :cond_5b

    .line 315
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_5b

    .line 316
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    and-int/2addr p1, p3

    if-nez p1, :cond_5b

    .line 317
    iput-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 318
    iget p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p2

    not-int p2, p2

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    .line 319
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    or-int/2addr v0, p1

    :cond_5b
    if-eqz v0, :cond_60

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->sendAbortTransient(I)V

    :cond_60
    return-void
.end method

.method public onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/InsetsStateController;->onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->checkAbortTransient(Lcom/android/server/wm/InsetsTarget;)V

    .line 574
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 4

    .line 822
    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 826
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isRemoteInsetsControllerControllingSystemBars()Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 829
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_25

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-nez p0, :cond_19

    goto :goto_25

    .line 836
    :cond_19
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, 0x1

    if-lt p0, p1, :cond_25

    const/16 v0, 0x63

    if-gt p0, v0, :cond_25

    return p1

    :cond_25
    :goto_25
    return v1
.end method

.method public final sendAbortTransient(I)V
    .registers 3

    .line 633
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 635
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(II)V

    :cond_11
    return-void
.end method

.method public showTransient(IZ)V
    .registers 9

    .line 241
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 242
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_e
    if-ltz v2, :cond_2b

    .line 244
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 245
    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_28

    .line 249
    :cond_1b
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    .line 250
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    and-int/2addr v4, p1

    if-nez v4, :cond_27

    goto :goto_28

    :cond_27
    or-int/2addr v0, v5

    :goto_28
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 255
    :cond_2b
    iget p1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-eq p1, v0, :cond_60

    .line 256
    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 257
    iget p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    not-int v1, v0

    and-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    .line 258
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 259
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 261
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-interface {p1, v1, v0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTransient(IIZ)V

    .line 264
    :cond_48
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 265
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 267
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v3, 0x0

    .line 265
    :goto_5d
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    :cond_60
    return-void
.end method

.method public updateBarControlTarget(Lcom/android/server/wm/WindowState;)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 170
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    filled-new-array {v1}, [I

    move-result-object v1

    .line 171
    iget v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v2, :cond_21

    .line 173
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v4

    if-ne v2, v4, :cond_34

    :cond_21
    iget v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 175
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    and-int/2addr v2, v4

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v2, :cond_37

    .line 177
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v4

    if-eq v2, v4, :cond_37

    .line 182
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    .line 184
    :cond_37
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 185
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 186
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 188
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    .line 189
    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_53

    .line 190
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    goto :goto_5b

    :cond_53
    if-ne v5, v2, :cond_5a

    .line 192
    invoke-virtual {p0, v4, v3, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    goto :goto_5b

    :cond_5a
    move-object v6, v7

    .line 193
    :goto_5b
    iput-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 195
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    .line 196
    iget-object v8, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v6, v8, :cond_6a

    .line 197
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v7

    goto :goto_70

    :cond_6a
    if-ne v6, v2, :cond_70

    .line 199
    invoke-virtual {p0, v4, v3, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v7

    .line 200
    :cond_70
    :goto_70
    iput-object v7, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 201
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v2, v5, v3, v6, v7}, Lcom/android/server/wm/InsetsStateController;->onBarControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)V

    .line 205
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v5, v2, :cond_86

    if-ne v6, v2, :cond_86

    .line 207
    aget v0, v1, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/InsetsPolicy;->notifyRemoteInsetsController(Lcom/android/server/wm/WindowState;I)V

    .line 210
    :cond_86
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {p1, v5, v0}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    .line 211
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-static {p1, v6, v0}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    .line 213
    iget p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_a9

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eq p1, v0, :cond_a9

    if-ne p1, v5, :cond_ba

    :cond_a9
    iget p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientTypes:I

    .line 216
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_bd

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHidingTransientNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eq p1, v0, :cond_bd

    if-eq p1, v6, :cond_bd

    .line 221
    :cond_ba
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    :cond_bd
    return-void
.end method

.method public updateSystemBars(Lcom/android/server/wm/WindowState;IIZ)V
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_8

    if-eqz p3, :cond_6

    goto :goto_8

    :cond_6
    move v1, v0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v1, 0x1

    .line 786
    :goto_9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->forceShowingNavigationBars(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 787
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    goto :goto_15

    :cond_14
    move v2, v0

    :goto_15
    if-eqz v1, :cond_18

    goto :goto_25

    :cond_18
    if-eqz p4, :cond_24

    .line 794
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p4

    or-int/2addr p2, p4

    goto :goto_25

    :cond_24
    move p2, v0

    :goto_25
    or-int/2addr p2, v2

    .line 795
    iput p2, p0, Lcom/android/server/wm/InsetsPolicy;->mForciblyShowingTypes:I

    .line 796
    iput p3, p0, Lcom/android/server/wm/InsetsPolicy;->mForciblyHidingTypes:I

    .line 800
    iget-object p3, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 801
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p4

    if-eqz p4, :cond_3b

    .line 802
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    or-int/2addr v0, p4

    :cond_3b
    or-int/2addr p2, v0

    .line 800
    invoke-virtual {p3, p2}, Lcom/android/server/wm/InsetsStateController;->setForcedConsumingTypes(I)V

    .line 805
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
