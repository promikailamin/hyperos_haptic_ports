.class public Lcom/miui/mishare/app/view/OverScrollLayout;
.super Landroid/widget/RelativeLayout;
.source "OverScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/view/OverScrollLayout$PhysicBasedInterpolator;,
        Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;
    }
.end annotation


# static fields
.field private static final blacklist DURATION:I = 0x190


# instance fields
.field private blacklist abortScroller:Z

.field private blacklist canOverScrollHorizontally:Z

.field private blacklist canOverScrollVertical:Z

.field private blacklist checkScrollDirectionFinish:Z

.field private blacklist child:Landroid/view/View;

.field private blacklist configuration:Landroid/view/ViewConfiguration;

.field private blacklist dealtX:I

.field private blacklist dealtY:I

.field private blacklist downX:F

.field private blacklist downY:F

.field private blacklist finishOverScroll:Z

.field private blacklist isHorizontallyMove:Z

.field private blacklist isOverScrollBottom:Z

.field private blacklist isOverScrollLeft:Z

.field private blacklist isOverScrollRight:Z

.field private blacklist isOverScrollTop:Z

.field private blacklist isVerticalMove:Z

.field private blacklist mScroller:Landroid/widget/Scroller;

.field private blacklist oldX:F

.field private blacklist oldY:F

.field private blacklist overScrollInterpolator:Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;

.field private blacklist shouldSetScrollerStart:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->init()V

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->init()V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->init()V

    .line 62
    return-void
.end method

.method private blacklist canChildScrollDown()Z
    .registers 3

    .line 410
    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->child:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method private blacklist canChildScrollLeft()Z
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->child:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method private blacklist canChildScrollRight()Z
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->child:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method private blacklist canChildScrollUp()Z
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->child:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method private blacklist canOverScroll()Z
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->child:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist checkCanOverScrollDirection()V
    .registers 7

    .line 80
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->checkScrollDirectionFinish:Z

    if-eqz v0, :cond_5

    .line 81
    return-void

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->child:Landroid/view/View;

    instance-of v1, v0, Lcom/android/internal/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2c

    .line 84
    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    .line 85
    .local v0, "recyclerView":Lcom/android/internal/widget/RecyclerView;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 86
    .local v1, "layoutManager":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    const/4 v4, -0x1

    .line 87
    .local v4, "orientation":I
    instance-of v5, v1, Lcom/android/internal/widget/LinearLayoutManager;

    if-eqz v5, :cond_1f

    .line 88
    move-object v5, v1

    check-cast v5, Lcom/android/internal/widget/LinearLayoutManager;

    .line 89
    .local v5, "manager":Lcom/android/internal/widget/LinearLayoutManager;
    invoke-virtual {v5}, Lcom/android/internal/widget/LinearLayoutManager;->getOrientation()I

    move-result v4

    .line 91
    .end local v5    # "manager":Lcom/android/internal/widget/LinearLayoutManager;
    :cond_1f
    if-nez v4, :cond_23

    move v5, v3

    goto :goto_24

    :cond_23
    move v5, v2

    :goto_24
    iput-boolean v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollHorizontally:Z

    .line 92
    if-ne v3, v4, :cond_29

    move v2, v3

    :cond_29
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollVertical:Z

    .line 93
    .end local v0    # "recyclerView":Lcom/android/internal/widget/RecyclerView;
    .end local v1    # "layoutManager":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .end local v4    # "orientation":I
    goto :goto_42

    :cond_2c
    instance-of v1, v0, Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_35

    .line 94
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollHorizontally:Z

    .line 95
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollVertical:Z

    goto :goto_42

    .line 96
    :cond_35
    instance-of v0, v0, Lcom/android/internal/widget/ViewPager;

    if-eqz v0, :cond_3e

    .line 97
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollHorizontally:Z

    .line 98
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollVertical:Z

    goto :goto_42

    .line 100
    :cond_3e
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollHorizontally:Z

    .line 101
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollVertical:Z

    .line 103
    :goto_42
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollHorizontally:Z

    if-eqz v0, :cond_52

    .line 104
    new-instance v0, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;-><init>(I)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->overScrollInterpolator:Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;

    goto :goto_5d

    .line 106
    :cond_52
    new-instance v0, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;-><init>(I)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->overScrollInterpolator:Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;

    .line 108
    :goto_5d
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->checkScrollDirectionFinish:Z

    .line 109
    return-void
.end method

.method private blacklist checkMoveDirection(FF)V
    .registers 8
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F

    .line 393
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isVerticalMove:Z

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isHorizontallyMove:Z

    if-eqz v0, :cond_9

    goto :goto_45

    .line 396
    :cond_9
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollVertical:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    .line 397
    iget v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downY:F

    sub-float v0, p2, v0

    .line 398
    .local v0, "dealtY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isVerticalMove:Z

    .end local v0    # "dealtY":F
    goto :goto_43

    .line 399
    :cond_27
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollHorizontally:Z

    if-eqz v0, :cond_43

    .line 400
    iget v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downX:F

    sub-float v0, p1, v0

    .line 401
    .local v0, "dealtX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isHorizontallyMove:Z

    goto :goto_44

    .line 399
    .end local v0    # "dealtX":F
    :cond_43
    :goto_43
    nop

    .line 403
    :goto_44
    return-void

    .line 394
    :cond_45
    :goto_45
    return-void
.end method

.method private blacklist getDealt(FF)F
    .registers 5
    .param p1, "start"    # F
    .param p2, "target"    # F

    .line 310
    sub-float v0, p2, p1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    .line 311
    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->overScrollInterpolator:Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;

    sub-float v1, p2, p1

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;->getInterpolation(F)F

    move-result v0

    neg-float v0, v0

    return v0

    .line 313
    :cond_11
    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->overScrollInterpolator:Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;

    sub-float v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout$OverScrollInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private blacklist init()V
    .registers 6

    .line 65
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->configuration:Landroid/view/ViewConfiguration;

    .line 66
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/mishare/app/view/OverScrollLayout$PhysicBasedInterpolator;

    const v3, 0x3f733333    # 0.95f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Lcom/miui/mishare/app/view/OverScrollLayout$PhysicBasedInterpolator;-><init>(FF)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    .line 67
    return-void
.end method

.method private blacklist isBottomOverScroll(F)Z
    .registers 6
    .param p1, "currentY"    # F

    .line 355
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 356
    return v1

    .line 358
    :cond_6
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isVerticalMove:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 359
    return v2

    .line 361
    :cond_c
    iget v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    sub-float/2addr v0, p1

    .line 362
    .local v0, "dealtY":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1b

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollDown()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1
.end method

.method private blacklist isChildCanScrollHorizontally()Z
    .registers 2

    .line 389
    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollLeft()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollRight()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private blacklist isChildCanScrollVertical()Z
    .registers 2

    .line 385
    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollDown()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollUp()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private blacklist isLeftOverScroll(F)Z
    .registers 6
    .param p1, "currentX"    # F

    .line 366
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 367
    return v1

    .line 369
    :cond_6
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isHorizontallyMove:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 370
    return v2

    .line 372
    :cond_c
    iget v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    sub-float/2addr v0, p1

    .line 373
    .local v0, "dealtX":F
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1b

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollLeft()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1
.end method

.method private blacklist isRightOverScroll(F)Z
    .registers 5
    .param p1, "currentX"    # F

    .line 377
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isHorizontallyMove:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 378
    return v1

    .line 380
    :cond_6
    iget v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    sub-float/2addr v0, p1

    .line 381
    .local v0, "dealtX":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_15

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollRight()Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method private blacklist isTopOverScroll(F)Z
    .registers 6
    .param p1, "currentY"    # F

    .line 344
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 345
    return v1

    .line 347
    :cond_6
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isVerticalMove:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 348
    return v2

    .line 350
    :cond_c
    iget v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    sub-float/2addr v0, p1

    .line 351
    .local v0, "dealtY":F
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1b

    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canChildScrollUp()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1
.end method

.method private blacklist overScroll(II)V
    .registers 3
    .param p1, "dealtX"    # I
    .param p2, "dealtY"    # I

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/miui/mishare/app/view/OverScrollLayout;->smoothScrollTo(II)V

    .line 341
    return-void
.end method

.method private blacklist resetHorizontally(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    .line 329
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 330
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 331
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 332
    return-object p1
.end method

.method private blacklist resetVertical(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    .line 320
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 321
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 322
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 323
    return-object p1
.end method

.method private blacklist smoothScrollBy(II)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 138
    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    iget-object v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 139
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->invalidate()V

    .line 140
    return-void
.end method

.method private blacklist smoothScrollTo(II)V
    .registers 5
    .param p1, "fx"    # I
    .param p2, "fy"    # I

    .line 132
    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    sub-int v0, p1, v0

    .line 133
    .local v0, "dx":I
    iget-object v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    sub-int v1, p2, v1

    .line 134
    .local v1, "dy":I
    invoke-direct {p0, v0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout;->smoothScrollBy(II)V

    .line 135
    return-void
.end method


# virtual methods
.method public whitelist computeScroll()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 114
    iget-object v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout;->scrollTo(II)V

    .line 115
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->postInvalidate()V

    goto :goto_31

    .line 117
    :cond_1b
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->abortScroller:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 118
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->abortScroller:Z

    .line 119
    return-void

    .line 121
    :cond_23
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->finishOverScroll:Z

    if-eqz v0, :cond_31

    .line 122
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    .line 123
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    .line 124
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    .line 125
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    .line 126
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->finishOverScroll:Z

    .line 129
    :cond_31
    :goto_31
    return-void
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 145
    .local v0, "action":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_25a

    :pswitch_c
    goto/16 :goto_254

    .line 148
    :pswitch_e
    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    .line 149
    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    .line 150
    goto/16 :goto_254

    .line 178
    :pswitch_14
    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScroll()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 179
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 181
    :cond_1f
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollVertical:Z

    const/4 v5, 0x3

    if-eqz v4, :cond_10e

    .line 182
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    if-nez v4, :cond_93

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    if-eqz v4, :cond_2d

    goto :goto_93

    .line 212
    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/miui/mishare/app/view/OverScrollLayout;->checkMoveDirection(FF)V

    .line 213
    iget v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_45

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    .line 215
    return v3

    .line 217
    :cond_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout;->isTopOverScroll(F)Z

    move-result v1

    .line 218
    .local v1, "tempOverScrollTop":Z
    iget-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    if-nez v2, :cond_66

    if-eqz v1, :cond_66

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    .line 220
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    .line 221
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 222
    iget v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downY:F

    .line 223
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 224
    return v3

    .line 226
    :cond_66
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/OverScrollLayout;->isBottomOverScroll(F)Z

    move-result v2

    .line 228
    .local v2, "tempOverScrollBottom":Z
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    if-nez v4, :cond_89

    if-eqz v2, :cond_89

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    .line 230
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    .line 231
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 232
    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downY:F

    .line 233
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 234
    return v3

    .line 236
    :cond_89
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    .line 238
    .end local v1    # "tempOverScrollTop":Z
    .end local v2    # "tempOverScrollBottom":Z
    goto/16 :goto_254

    .line 183
    :cond_93
    :goto_93
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->shouldSetScrollerStart:Z

    if-eqz v4, :cond_a6

    .line 184
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->shouldSetScrollerStart:Z

    .line 185
    iget-object v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    iget v6, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    iget v7, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x190

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 187
    :cond_a6
    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_b3

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    .line 189
    return v3

    .line 191
    :cond_b3
    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/miui/mishare/app/view/OverScrollLayout;->getDealt(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    .line 193
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    if-eqz v4, :cond_d0

    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    if-lez v4, :cond_d0

    .line 194
    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    .line 196
    :cond_d0
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    if-eqz v4, :cond_da

    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    if-gez v4, :cond_da

    .line 197
    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    .line 199
    :cond_da
    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    iget v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    invoke-direct {p0, v4, v5}, Lcom/miui/mishare/app/view/OverScrollLayout;->overScroll(II)V

    .line 200
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    if-eqz v4, :cond_ed

    iget v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    if-nez v5, :cond_ed

    iget-boolean v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    if-eqz v5, :cond_f7

    :cond_ed
    iget-boolean v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    if-eqz v5, :cond_10d

    iget v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    if-nez v5, :cond_10d

    if-nez v4, :cond_10d

    .line 202
    :cond_f7
    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    .line 203
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    .line 204
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    .line 205
    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->isChildCanScrollVertical()Z

    move-result v1

    if-nez v1, :cond_104

    .line 206
    return v3

    .line 208
    :cond_104
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/OverScrollLayout;->resetVertical(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 210
    :cond_10d
    return v3

    .line 239
    :cond_10e
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->canOverScrollHorizontally:Z

    if-eqz v4, :cond_254

    .line 240
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    if-nez v4, :cond_181

    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    if-eqz v4, :cond_11b

    goto :goto_181

    .line 270
    :cond_11b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/miui/mishare/app/view/OverScrollLayout;->checkMoveDirection(FF)V

    .line 271
    iget v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_133

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    .line 273
    return v3

    .line 275
    :cond_133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout;->isLeftOverScroll(F)Z

    move-result v1

    .line 276
    .local v1, "tempOverScrollLeft":Z
    iget-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    if-nez v2, :cond_154

    if-eqz v1, :cond_154

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    .line 278
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    .line 279
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 280
    iget v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downX:F

    .line 281
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 282
    return v3

    .line 284
    :cond_154
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/OverScrollLayout;->isRightOverScroll(F)Z

    move-result v2

    .line 286
    .local v2, "tempOverScrollRight":Z
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    if-nez v4, :cond_177

    if-eqz v2, :cond_177

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    .line 288
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    .line 289
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 290
    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downX:F

    .line 291
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 292
    return v3

    .line 294
    :cond_177
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    .line 296
    .end local v1    # "tempOverScrollLeft":Z
    .end local v2    # "tempOverScrollRight":Z
    goto/16 :goto_254

    .line 241
    :cond_181
    :goto_181
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->shouldSetScrollerStart:Z

    if-eqz v4, :cond_194

    .line 242
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->shouldSetScrollerStart:Z

    .line 243
    iget-object v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    iget v6, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    iget v7, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x190

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 245
    :cond_194
    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1a1

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    .line 247
    return v3

    .line 249
    :cond_1a1
    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/miui/mishare/app/view/OverScrollLayout;->getDealt(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    .line 251
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    if-eqz v4, :cond_1be

    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    if-lez v4, :cond_1be

    .line 252
    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    .line 254
    :cond_1be
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    if-eqz v4, :cond_1c8

    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    if-gez v4, :cond_1c8

    .line 255
    iput v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    .line 257
    :cond_1c8
    iget v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    iget v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    invoke-direct {p0, v4, v5}, Lcom/miui/mishare/app/view/OverScrollLayout;->overScroll(II)V

    .line 258
    iget-boolean v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    if-eqz v4, :cond_1db

    iget v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    if-nez v5, :cond_1db

    iget-boolean v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    if-eqz v5, :cond_1e5

    :cond_1db
    iget-boolean v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    if-eqz v5, :cond_1fb

    iget v5, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    if-nez v5, :cond_1fb

    if-nez v4, :cond_1fb

    .line 260
    :cond_1e5
    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    .line 261
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    .line 262
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    .line 263
    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->isChildCanScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_1f2

    .line 264
    return v3

    .line 266
    :cond_1f2
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/OverScrollLayout;->resetHorizontally(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 268
    :cond_1fb
    return v3

    .line 301
    :pswitch_1fc
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->finishOverScroll:Z

    .line 302
    invoke-direct {p0, v2, v2}, Lcom/miui/mishare/app/view/OverScrollLayout;->smoothScrollTo(II)V

    goto :goto_254

    .line 152
    :pswitch_202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downY:F

    .line 153
    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldY:F

    .line 154
    iget-object v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtY:I

    .line 155
    if-nez v4, :cond_217

    .line 156
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isVerticalMove:Z

    goto :goto_220

    .line 158
    :cond_217
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->shouldSetScrollerStart:Z

    .line 159
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->abortScroller:Z

    .line 160
    iget-object v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 162
    :goto_220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->downX:F

    .line 163
    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->oldX:F

    .line 164
    iget-object v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->dealtX:I

    .line 165
    if-nez v1, :cond_235

    .line 166
    iput-boolean v2, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isHorizontallyMove:Z

    goto :goto_23e

    .line 168
    :cond_235
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->shouldSetScrollerStart:Z

    .line 169
    iput-boolean v3, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->abortScroller:Z

    .line 170
    iget-object v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 172
    :goto_23e
    iget-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollTop:Z

    if-nez v1, :cond_253

    iget-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollBottom:Z

    if-nez v1, :cond_253

    iget-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollLeft:Z

    if-nez v1, :cond_253

    iget-boolean v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->isOverScrollRight:Z

    if-eqz v1, :cond_24f

    goto :goto_253

    .line 175
    :cond_24f
    invoke-direct {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->checkCanOverScrollDirection()V

    .line 176
    goto :goto_254

    .line 173
    :cond_253
    :goto_253
    return v3

    .line 305
    :cond_254
    :goto_254
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_25a
    .packed-switch 0x0
        :pswitch_202
        :pswitch_1fc
        :pswitch_14
        :pswitch_1fc
        :pswitch_c
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method protected whitelist onFinishInflate()V
    .registers 4

    .line 71
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/OverScrollLayout;->getChildCount()I

    move-result v0

    .line 72
    .local v0, "childCount":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    .line 73
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/mishare/app/view/OverScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/mishare/app/view/OverScrollLayout;->child:Landroid/view/View;

    .line 74
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 76
    :cond_12
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 77
    return-void
.end method
