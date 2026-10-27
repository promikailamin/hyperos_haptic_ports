.class public Landroid/widget/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_DURATION:I = 0xfa

.field private static final greylist-max-o FLING_MODE:I = 0x1

.field private static final greylist-max-o SCROLL_MODE:I


# instance fields
.field private final greylist-max-o mFlywheel:Z

.field private greylist-max-r mInterpolator:Landroid/view/animation/Interpolator;

.field private greylist-max-o mMode:I

.field private final greylist-max-o mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

.field private final greylist mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 56
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 66
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 104
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 123
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p2, :cond_d

    .line 79
    new-instance p2, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {p2}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object p2, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_f

    .line 81
    :cond_d
    iput-object p2, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    :goto_f
    iput-boolean p3, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    .line 84
    new-instance p2, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    .line 85
    new-instance p2, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist abortAnimation()V
    .registers 2

    .line 505
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 506
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 507
    return-void
.end method

.method public whitelist computeScrollOffset()Z
    .registers 8

    .line 289
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 290
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_8
    iget v0, p0, Landroid/widget/OverScroller;->mMode:I

    packed-switch v0, :pswitch_data_86

    goto/16 :goto_83

    .line 313
    :pswitch_f
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 314
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 315
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 316
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 321
    :cond_2c
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 322
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_83

    .line 323
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_83

    .line 324
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    goto :goto_83

    .line 295
    :pswitch_4a
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 298
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 300
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    .line 301
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-gez v3, :cond_7f

    .line 302
    iget-object v3, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v4, v0

    int-to-float v2, v2

    div-float/2addr v4, v2

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 303
    iget-object v4, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    const-wide/16 v5, 0x1

    sub-long/2addr v0, v5

    long-to-float v0, v0

    div-float/2addr v0, v2

    .line 304
    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 305
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v1, v3, v0}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(FF)V

    .line 306
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v1, v3, v0}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(FF)V

    .line 307
    goto :goto_83

    .line 308
    :cond_7f
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 310
    nop

    .line 332
    :cond_83
    :goto_83
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_f
    .end packed-switch
.end method

.method public greylist extendDuration(I)V
    .registers 3

    .line 254
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 255
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 256
    return-void
.end method

.method public whitelist fling(IIIIIIII)V
    .registers 20

    .line 395
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 396
    return-void
.end method

.method public whitelist fling(IIIIIIIIII)V
    .registers 20

    .line 428
    iget-boolean v0, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_36

    .line 429
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    .line 430
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v1

    .line 431
    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    int-to-float v3, p4

    .line 432
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_36

    .line 433
    add-float/2addr v2, v0

    float-to-int p3, v2

    .line 434
    add-float/2addr v3, v1

    float-to-int p4, v3

    move v2, p3

    goto :goto_37

    .line 438
    :cond_36
    move v2, p3

    :goto_37
    const/4 p3, 0x1

    iput p3, p0, Landroid/widget/OverScroller;->mMode:I

    .line 439
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p1

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 440
    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    move v4, p2

    move v5, p4

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p10

    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 441
    return-void
.end method

.method public final whitelist forceFinished(Z)V
    .registers 4

    .line 165
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1, p1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fputmFinished(Landroid/widget/OverScroller$SplineOverScroller;Z)V

    invoke-static {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fputmFinished(Landroid/widget/OverScroller$SplineOverScroller;Z)V

    .line 166
    return-void
.end method

.method public whitelist getCurrVelocity()F
    .registers 5

    .line 192
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final whitelist getCurrX()I
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrentPosition(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final whitelist getCurrY()I
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrentPosition(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final greylist-max-o getDuration()I
    .registers 3

    .line 239
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final whitelist getFinalX()I
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final whitelist getFinalY()I
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method blacklist getSplineFlingDistance(I)D
    .registers 4

    .line 534
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$mgetSplineFlingDistance(Landroid/widget/OverScroller$SplineOverScroller;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getStartX()I
    .registers 2

    .line 201
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final whitelist getStartY()I
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final whitelist isFinished()Z
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist isOverScrolled()Z
    .registers 2

    .line 491
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmState(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_20

    :cond_10
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmState(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public greylist isScrollingInDirection(FF)Z
    .registers 6

    .line 527
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 528
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 529
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3c

    .line 530
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    int-to-float p2, v1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3c

    const/4 p1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p1, 0x0

    .line 529
    :goto_3d
    return p1
.end method

.method public whitelist notifyHorizontalEdgeReached(III)V
    .registers 5

    .line 457
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 458
    return-void
.end method

.method public whitelist notifyVerticalEdgeReached(III)V
    .registers 5

    .line 474
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 475
    return-void
.end method

.method public greylist-max-o setFinalX(I)V
    .registers 3

    .line 268
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 269
    return-void
.end method

.method public greylist-max-o setFinalY(I)V
    .registers 3

    .line 281
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 282
    return-void
.end method

.method public final whitelist setFriction(F)V
    .registers 3

    .line 142
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 143
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 144
    return-void
.end method

.method greylist setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .line 127
    if-nez p1, :cond_a

    .line 128
    new-instance p1, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {p1}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object p1, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_c

    .line 130
    :cond_a
    iput-object p1, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 132
    :goto_c
    return-void
.end method

.method public whitelist springBack(IIIIII)Z
    .registers 9

    .line 385
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 388
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v1, p1, p3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result p1

    .line 389
    iget-object p3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p3, p2, p5, p6}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result p2

    .line 390
    if-nez p1, :cond_15

    if-eqz p2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :cond_15
    :goto_15
    return v0
.end method

.method public whitelist startScroll(IIII)V
    .registers 11

    .line 350
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 351
    return-void
.end method

.method public whitelist startScroll(IIIII)V
    .registers 7

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 368
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 369
    iget-object p1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p1, p2, p4, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 370
    return-void
.end method

.method public greylist-max-o timePassed()I
    .registers 7

    .line 517
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 518
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v4}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 519
    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
