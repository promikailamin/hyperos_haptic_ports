.class public abstract Lcom/android/internal/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;,
        Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;,
        Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_EDGE_TYPE:I = 0x1

.field private static final greylist-max-o DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final greylist-max-o DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final greylist-max-o DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final greylist-max-o DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final greylist-max-o DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final greylist-max-o DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final greylist-max-o DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final greylist-max-o EDGE_TYPE_INSIDE:I = 0x0

.field public static final greylist-max-o EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final greylist-max-o EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final greylist-max-o HORIZONTAL:I = 0x0

.field public static final greylist-max-o NO_MAX:F = 3.4028235E38f

.field public static final greylist-max-o NO_MIN:F = 0.0f

.field public static final greylist-max-o RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final greylist-max-o VERTICAL:I = 0x1


# instance fields
.field private greylist-max-o mActivationDelay:I

.field private greylist-max-o mAlreadyDelayed:Z

.field private greylist-max-o mAnimating:Z

.field private final greylist-max-o mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private greylist-max-o mEdgeType:I

.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mExclusive:Z

.field private greylist-max-o mMaximumEdges:[F

.field private greylist-max-o mMaximumVelocity:[F

.field private greylist-max-o mMinimumVelocity:[F

.field private greylist-max-o mNeedsCancel:Z

.field private greylist-max-o mNeedsReset:Z

.field private greylist-max-o mRelativeEdges:[F

.field private greylist-max-o mRelativeVelocity:[F

.field private greylist-max-o mRunnable:Ljava/lang/Runnable;

.field private final greylist-max-o mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

.field private final greylist-max-o mTarget:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimating(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeedsCancel(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeedsReset(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScroller(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTarget(Lcom/android/internal/widget/AutoScrollHelper;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimating(Lcom/android/internal/widget/AutoScrollHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNeedsCancel(Lcom/android/internal/widget/AutoScrollHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNeedsReset(Lcom/android/internal/widget/AutoScrollHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelTargetTouch(Lcom/android/internal/widget/AutoScrollHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->cancelTargetTouch()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldAnimate(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconstrain(FFF)F
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconstrain(III)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(III)I

    move-result p0

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/view/View;)V
    .registers 5

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    .line 140
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 149
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_94

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    .line 152
    new-array v1, v0, [F

    fill-array-data v1, :array_9c

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    .line 161
    new-array v1, v0, [F

    fill-array-data v1, :array_a4

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    .line 164
    new-array v1, v0, [F

    fill-array-data v1, :array_ac

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    .line 167
    new-array v0, v0, [F

    fill-array-data v0, :array_b4

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    .line 209
    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    .line 211
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 212
    const v0, 0x44c4e000    # 1575.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v1, v1

    .line 213
    const v2, 0x439d8000    # 315.0f

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 214
    int-to-float v0, v1

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/widget/AutoScrollHelper;->setMaximumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 215
    int-to-float p1, p1

    invoke-virtual {p0, p1, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setMinimumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 217
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setEdgeType(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 218
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setMaximumEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 219
    const p1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setRelativeEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 220
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setRelativeVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 221
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result p1

    if-eqz p1, :cond_83

    .line 222
    iget-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getTapTimeoutMillis()I

    move-result p1

    goto :goto_87

    .line 223
    :cond_83
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    .line 221
    :goto_87
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setActivationDelay(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 224
    const/16 p1, 0x1f4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setRampUpDuration(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;->setRampDownDuration(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 226
    return-void

    nop

    :array_94
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_9c
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_a4
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_ac
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_b4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private greylist-max-o cancelTargetTouch()V
    .registers 9

    .line 678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 679
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 682
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 683
    return-void
.end method

.method private greylist-max-o computeTargetVelocity(IFFF)F
    .registers 8

    .line 540
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v0, v0, p1

    .line 541
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v1, v1, p1

    .line 542
    invoke-direct {p0, v0, p3, v1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result p2

    .line 543
    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_12

    .line 545
    return p3

    .line 548
    :cond_12
    iget-object p3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget p3, p3, p1

    .line 549
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v1, v1, p1

    .line 550
    iget-object v2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget p1, v2, p1

    .line 551
    mul-float/2addr p3, p4

    .line 556
    if-lez v0, :cond_27

    .line 557
    mul-float/2addr p2, p3

    invoke-static {p2, v1, p1}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    return p1

    .line 559
    :cond_27
    neg-float p2, p2

    mul-float/2addr p2, p3

    invoke-static {p2, v1, p1}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    neg-float p1, p1

    return p1
.end method

.method private static greylist-max-o constrain(FFF)F
    .registers 4

    .line 664
    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    .line 665
    return p2

    .line 666
    :cond_5
    cmpg-float p2, p0, p1

    if-gez p2, :cond_a

    .line 667
    return p1

    .line 669
    :cond_a
    return p0
.end method

.method private static greylist-max-o constrain(III)I
    .registers 3

    .line 654
    if-le p0, p2, :cond_3

    .line 655
    return p2

    .line 656
    :cond_3
    if-ge p0, p1, :cond_6

    .line 657
    return p1

    .line 659
    :cond_6
    return p0
.end method

.method private greylist-max-o constrainEdgeValue(FF)F
    .registers 6

    .line 625
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    .line 626
    return v0

    .line 629
    :cond_6
    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v1, :pswitch_data_2c

    goto :goto_2a

    .line 643
    :pswitch_c
    cmpg-float v1, p1, v0

    if-gez v1, :cond_2a

    .line 645
    neg-float p2, p2

    div-float/2addr p1, p2

    return p1

    .line 632
    :pswitch_13
    cmpg-float v1, p1, p2

    if-gez v1, :cond_2a

    .line 633
    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_20

    .line 635
    div-float/2addr p1, p2

    sub-float/2addr v2, p1

    return v2

    .line 636
    :cond_20
    iget-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz p1, :cond_2a

    iget p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2a

    .line 638
    return v2

    .line 650
    :cond_2a
    :goto_2a
    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method private greylist-max-o getEdgeValue(FFFF)F
    .registers 6

    .line 608
    mul-float/2addr p1, p2

    const/4 v0, 0x0

    invoke-static {p1, v0, p3}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    .line 609
    invoke-direct {p0, p4, p1}, Lcom/android/internal/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result p3

    .line 610
    sub-float/2addr p2, p4

    invoke-direct {p0, p2, p1}, Lcom/android/internal/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result p1

    .line 611
    sub-float/2addr p1, p3

    .line 613
    cmpg-float p2, p1, v0

    if-gez p2, :cond_1d

    .line 614
    iget-object p2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float p1, p1

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    neg-float p1, p1

    goto :goto_27

    .line 615
    :cond_1d
    cmpl-float p2, p1, v0

    if-lez p2, :cond_30

    .line 616
    iget-object p2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 621
    :goto_27
    const/high16 p2, -0x40800000    # -1.0f

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p3}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    return p1

    .line 618
    :cond_30
    return v0
.end method

.method private greylist-max-o requestStop()V
    .registers 2

    .line 529
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_8

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    goto :goto_d

    .line 534
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    .line 536
    :goto_d
    return-void
.end method

.method private greylist-max-o shouldAnimate()Z
    .registers 3

    .line 493
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    .line 494
    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v1

    .line 495
    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v0

    .line 497
    if-eqz v1, :cond_12

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_12
    if-eqz v0, :cond_1c

    .line 498
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 497
    :goto_1d
    return v0
.end method

.method private greylist-max-o startAnimating()V
    .registers 6

    .line 505
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    .line 506
    new-instance v0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Lcom/android/internal/widget/AutoScrollHelper;Lcom/android/internal/widget/AutoScrollHelper-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    .line 509
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    .line 510
    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 512
    iget-boolean v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v1, :cond_24

    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v1, :cond_24

    .line 513
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mActivationDelay:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_29

    .line 515
    :cond_24
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 520
    :goto_29
    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 521
    return-void
.end method


# virtual methods
.method public abstract greylist-max-o canTargetScrollHorizontally(I)Z
.end method

.method public abstract greylist-max-o canTargetScrollVertically(I)Z
.end method

.method public greylist-max-o isEnabled()Z
    .registers 2

    .line 248
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    return v0
.end method

.method public greylist-max-o isExclusive()Z
    .registers 2

    .line 277
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    return v0
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 457
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 458
    return v1

    .line 461
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 462
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_5e

    goto :goto_53

    .line 482
    :pswitch_f
    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->requestStop()V

    goto :goto_53

    .line 464
    :pswitch_13
    iput-boolean v2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 465
    iput-boolean v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 468
    :pswitch_17
    nop

    .line 469
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 468
    invoke-direct {p0, v1, v0, v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v0

    .line 470
    nop

    .line 471
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 470
    invoke-direct {p0, v2, p2, p1, v3}, Lcom/android/internal/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result p1

    .line 472
    iget-object p2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 476
    iget-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    if-nez p1, :cond_53

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 477
    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->startAnimating()V

    .line 486
    :cond_53
    :goto_53
    iget-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz p1, :cond_5c

    iget-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz p1, :cond_5c

    move v1, v2

    :cond_5c
    return v1

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_13
        :pswitch_f
        :pswitch_17
        :pswitch_f
    .end packed-switch
.end method

.method public abstract greylist-max-o scrollTargetBy(II)V
.end method

.method public greylist-max-o setActivationDelay(I)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 2

    .line 413
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mActivationDelay:I

    .line 414
    return-object p0
.end method

.method public greylist-max-o setEdgeType(I)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 2

    .line 355
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeType:I

    .line 356
    return-object p0
.end method

.method public greylist-max-o setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 3

    .line 236
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 237
    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->requestStop()V

    .line 240
    :cond_9
    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    .line 241
    return-object p0
.end method

.method public greylist-max-o setExclusive(Z)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 2

    .line 264
    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    .line 265
    return-object p0
.end method

.method public greylist-max-o setMaximumEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 5

    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 397
    iget-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v0, 0x1

    aput p2, p1, v0

    .line 398
    return-object p0
.end method

.method public greylist-max-o setMaximumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 6

    .line 295
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 296
    iget-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v0, 0x1

    div-float/2addr p2, v1

    aput p2, p1, v0

    .line 297
    return-object p0
.end method

.method public greylist-max-o setMinimumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 6

    .line 313
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 314
    iget-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v0, 0x1

    div-float/2addr p2, v1

    aput p2, p1, v0

    .line 315
    return-object p0
.end method

.method public greylist-max-o setRampDownDuration(I)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 3

    .line 443
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    .line 444
    return-object p0
.end method

.method public greylist-max-o setRampUpDuration(I)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 3

    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    .line 429
    return-object p0
.end method

.method public greylist-max-o setRelativeEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 5

    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 375
    iget-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v0, 0x1

    aput p2, p1, v0

    .line 376
    return-object p0
.end method

.method public greylist-max-o setRelativeVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 6

    .line 334
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 335
    iget-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v0, 0x1

    div-float/2addr p2, v1

    aput p2, p1, v0

    .line 336
    return-object p0
.end method
