.class public Landroid/widget/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$VelocityListener;,
        Landroid/widget/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_DURATION:I = 0xfa

.field private static final greylist-max-o FLING_MODE:I = 0x1

.field private static final greylist-max-o SCROLL_MODE:I


# instance fields
.field private blacklist mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

.field private final greylist-max-o mFlywheel:Z

.field private greylist-max-r mInterpolator:Landroid/view/animation/Interpolator;

.field private greylist-max-o mMode:I

.field private final greylist-max-o mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

.field private final greylist mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

.field private blacklist mVelocityListener:Landroid/widget/OverScroller$VelocityListener;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 73
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 126
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .param p5, "flywheel"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 145
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-nez p2, :cond_d

    .line 86
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_f

    .line 88
    :cond_d
    iput-object p2, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 91
    :goto_f
    invoke-static {}, Landroid/widget/FlingAnimationStub;->newInstance()Landroid/widget/FlingAnimationStub;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OverScroller;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    .line 92
    invoke-interface {v0, p1}, Landroid/widget/FlingAnimationStub;->initialize(Landroid/content/Context;)V

    .line 94
    iput-boolean p3, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    .line 95
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    .line 96
    new-instance v1, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    .line 100
    invoke-static {}, Landroid/widget/OverScrollerSplineOverScrollerStub;->newInstance()Landroid/widget/OverScrollerSplineOverScrollerStub;

    move-result-object v2

    .line 102
    .local v2, "splineOverScrollerStubX":Landroid/widget/OverScrollerSplineOverScrollerStub;
    invoke-static {}, Landroid/widget/OverScrollerSplineOverScrollerStub;->newInstance()Landroid/widget/OverScrollerSplineOverScrollerStub;

    move-result-object v3

    .line 103
    .local v3, "splineOverScrollerStubY":Landroid/widget/OverScrollerSplineOverScrollerStub;
    iget-object v4, p0, Landroid/widget/OverScroller;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    const/4 v5, 0x0

    invoke-interface {v2, v4, p1, v5}, Landroid/widget/OverScrollerSplineOverScrollerStub;->initialize(Landroid/widget/FlingAnimationStub;Landroid/content/Context;Z)V

    .line 104
    iget-object v4, p0, Landroid/widget/OverScroller;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    const/4 v5, 0x1

    invoke-interface {v3, v4, p1, v5}, Landroid/widget/OverScrollerSplineOverScrollerStub;->initialize(Landroid/widget/FlingAnimationStub;Landroid/content/Context;Z)V

    .line 105
    invoke-virtual {v0, v2}, Landroid/widget/OverScroller$SplineOverScroller;->setFlingAnimationStub(Landroid/widget/OverScrollerSplineOverScrollerStub;)V

    .line 106
    invoke-virtual {v1, v3}, Landroid/widget/OverScroller$SplineOverScroller;->setFlingAnimationStub(Landroid/widget/OverScrollerSplineOverScrollerStub;)V

    .line 108
    return-void
.end method


# virtual methods
.method public whitelist abortAnimation()V
    .registers 3

    .line 572
    iget v0, p0, Landroid/widget/OverScroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 573
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/util/BoostFramework$ScrollOptimizer;->setFlingFlag(I)V

    .line 574
    iget-object v1, p0, Landroid/widget/OverScroller;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    invoke-interface {v1, v0}, Landroid/widget/FlingAnimationStub;->setFlingFlag(I)V

    .line 577
    :cond_e
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 578
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 579
    return-void
.end method

.method public whitelist computeScrollOffset()Z
    .registers 10

    .line 317
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 319
    iget v0, p0, Landroid/widget/OverScroller;->mMode:I

    if-ne v0, v1, :cond_14

    .line 320
    invoke-static {v2}, Landroid/util/BoostFramework$ScrollOptimizer;->setFlingFlag(I)V

    .line 321
    iget-object v0, p0, Landroid/widget/OverScroller;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    invoke-interface {v0, v2}, Landroid/widget/FlingAnimationStub;->setFlingFlag(I)V

    .line 324
    :cond_14
    return v2

    .line 327
    :cond_15
    iget v0, p0, Landroid/widget/OverScroller;->mMode:I

    packed-switch v0, :pswitch_data_a0

    goto/16 :goto_9f

    .line 345
    :pswitch_1c
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 346
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_39

    .line 347
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_39

    .line 348
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 353
    :cond_39
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 354
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_56

    .line 355
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_56

    .line 356
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 362
    :cond_56
    iget-object v0, p0, Landroid/widget/OverScroller;->mVelocityListener:Landroid/widget/OverScroller$VelocityListener;

    if-eqz v0, :cond_61

    .line 363
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/OverScroller$VelocityListener;->onVelocity(F)V

    .line 368
    :cond_61
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 369
    invoke-static {v2}, Landroid/util/BoostFramework$ScrollOptimizer;->setFlingFlag(I)V

    .line 370
    iget-object v0, p0, Landroid/widget/OverScroller;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    invoke-interface {v0, v2}, Landroid/widget/FlingAnimationStub;->setFlingFlag(I)V

    goto :goto_9f

    .line 329
    :pswitch_70
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 332
    .local v2, "time":J
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 334
    .local v4, "elapsedTime":J
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    .line 335
    .local v0, "duration":I
    int-to-long v6, v0

    cmp-long v6, v4, v6

    if-gez v6, :cond_9b

    .line 336
    iget-object v6, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v7, v4

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-interface {v6, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 337
    .local v6, "q":F
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7, v6}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    .line 338
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7, v6}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    .line 339
    .end local v6    # "q":F
    goto :goto_9f

    .line 340
    :cond_9b
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 342
    nop

    .line 376
    .end local v0    # "duration":I
    .end local v2    # "time":J
    .end local v4    # "elapsedTime":J
    :cond_9f
    :goto_9f
    return v1

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_70
        :pswitch_1c
    .end packed-switch
.end method

.method public greylist extendDuration(I)V
    .registers 3
    .param p1, "extend"    # I

    .line 282
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 283
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 284
    return-void
.end method

.method public whitelist fling(IIIIIIII)V
    .registers 20
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .line 445
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

    .line 446
    return-void
.end method

.method public whitelist fling(IIIIIIIIII)V
    .registers 29
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .line 478
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    iget-object v3, v0, Landroid/widget/OverScroller;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    iget-object v4, v0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v4}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v4

    invoke-interface {v3, v4, v2}, Landroid/widget/FlingAnimationStub;->getOptimizeOfVelocityY(FI)I

    move-result v3

    .line 481
    .local v3, "tempVelocityY":I
    iget-boolean v4, v0, Landroid/widget/OverScroller;->mFlywheel:Z

    if-eqz v4, :cond_50

    invoke-virtual/range {p0 .. p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_50

    .line 482
    iget-object v4, v0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v4}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v4

    .line 483
    .local v4, "oldVelocityX":F
    iget-object v5, v0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v5}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v5

    .line 484
    .local v5, "oldVelocityY":F
    int-to-float v6, v1

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_50

    int-to-float v6, v2

    .line 485
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_50

    .line 486
    int-to-float v6, v1

    add-float/2addr v6, v4

    float-to-int v1, v6

    .line 489
    .end local p3    # "velocityX":I
    .local v1, "velocityX":I
    iget-object v6, v0, Landroid/widget/OverScroller;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    invoke-interface {v6}, Landroid/widget/FlingAnimationStub;->isOptimizeEnable()Z

    move-result v6

    if-nez v6, :cond_50

    .line 490
    int-to-float v6, v3

    add-float/2addr v6, v5

    float-to-int v3, v6

    .line 496
    .end local v4    # "oldVelocityX":F
    .end local v5    # "oldVelocityY":F
    :cond_50
    move v14, v3

    .line 497
    .end local p4    # "velocityY":I
    .local v14, "velocityY":I
    iget-object v2, v0, Landroid/widget/OverScroller;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/widget/FlingAnimationStub;->setFlingFlag(I)V

    .line 498
    iget-object v2, v0, Landroid/widget/OverScroller;->mVelocityListener:Landroid/widget/OverScroller$VelocityListener;

    if-eqz v2, :cond_5e

    .line 499
    invoke-interface {v2}, Landroid/widget/OverScroller$VelocityListener;->onStartFling()V

    .line 502
    :cond_5e
    invoke-static {v4}, Landroid/util/BoostFramework$ScrollOptimizer;->setFlingFlag(I)V

    .line 504
    iput v4, v0, Landroid/widget/OverScroller;->mMode:I

    .line 505
    iget-object v6, v0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    move/from16 v7, p1

    move v8, v1

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p9

    invoke-virtual/range {v6 .. v11}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 506
    iget-object v12, v0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    move/from16 v13, p2

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p10

    invoke-virtual/range {v12 .. v17}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 507
    return-void
.end method

.method public final whitelist forceFinished(Z)V
    .registers 4
    .param p1, "finished"    # Z

    .line 187
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1, p1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fputmFinished(Landroid/widget/OverScroller$SplineOverScroller;Z)V

    invoke-static {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fputmFinished(Landroid/widget/OverScroller$SplineOverScroller;Z)V

    .line 189
    if-eqz p1, :cond_1a

    iget v0, p0, Landroid/widget/OverScroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 190
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/util/BoostFramework$ScrollOptimizer;->setFlingFlag(I)V

    .line 191
    iget-object v1, p0, Landroid/widget/OverScroller;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    invoke-interface {v1, v0}, Landroid/widget/FlingAnimationStub;->setFlingFlag(I)V

    .line 194
    :cond_1a
    return-void
.end method

.method public whitelist getCurrVelocity()F
    .registers 5

    .line 220
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

    .line 202
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrentPosition(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final whitelist getCurrY()I
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrentPosition(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final greylist-max-o getDuration()I
    .registers 3

    .line 267
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

    .line 247
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final whitelist getFinalY()I
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final whitelist getStartX()I
    .registers 2

    .line 229
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final whitelist getStartY()I
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final whitelist isFinished()Z
    .registers 2

    .line 175
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

    .line 557
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
    .registers 7
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 599
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 600
    .local v0, "dx":I
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 601
    .local v1, "dy":I
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3c

    .line 602
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3c

    const/4 v2, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    .line 601
    :goto_3d
    return v2
.end method

.method public whitelist notifyHorizontalEdgeReached(III)V
    .registers 5
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .line 523
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 524
    return-void
.end method

.method public whitelist notifyVerticalEdgeReached(III)V
    .registers 5
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .line 540
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 541
    return-void
.end method

.method public greylist-max-o setFinalX(I)V
    .registers 3
    .param p1, "newX"    # I

    .line 296
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 297
    return-void
.end method

.method public greylist-max-o setFinalY(I)V
    .registers 3
    .param p1, "newY"    # I

    .line 309
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 310
    return-void
.end method

.method public final whitelist setFriction(F)V
    .registers 3
    .param p1, "friction"    # F

    .line 164
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 165
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 166
    return-void
.end method

.method greylist setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 149
    if-nez p1, :cond_a

    .line 150
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_c

    .line 152
    :cond_a
    iput-object p1, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 154
    :goto_c
    return-void
.end method

.method public blacklist setVelocityListener(Landroid/widget/OverScroller$VelocityListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/OverScroller$VelocityListener;

    .line 1089
    iput-object p1, p0, Landroid/widget/OverScroller;->mVelocityListener:Landroid/widget/OverScroller$VelocityListener;

    .line 1090
    return-void
.end method

.method public whitelist springBack(IIIIII)Z
    .registers 10
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .line 435
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 438
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v1, p1, p3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 439
    .local v1, "spingbackX":Z
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v2, p2, p5, p6}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v2

    .line 440
    .local v2, "spingbackY":Z
    if-nez v1, :cond_15

    if-eqz v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :cond_15
    :goto_15
    return v0
.end method

.method public whitelist startScroll(IIII)V
    .registers 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 394
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 395
    return-void
.end method

.method public whitelist startScroll(IIIII)V
    .registers 8
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 411
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/util/BoostFramework$ScrollOptimizer;->setFlingFlag(I)V

    .line 413
    iget-object v1, p0, Landroid/widget/OverScroller;->mFlingAnimationStub:Landroid/widget/FlingAnimationStub;

    invoke-interface {v1, v0}, Landroid/widget/FlingAnimationStub;->setFlingFlag(I)V

    .line 415
    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 416
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 417
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 419
    invoke-static {}, Landroid/view/animation/ChoreographerInjectorStub;->getInstance()Landroid/view/animation/ChoreographerInjectorStub;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/animation/ChoreographerInjectorStub;->setIsPageScroll(Z)V

    .line 420
    return-void
.end method

.method public greylist-max-o timePassed()I
    .registers 7

    .line 589
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 590
    .local v0, "time":J
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v4}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 591
    .local v2, "startTime":J
    sub-long v4, v0, v2

    long-to-int v4, v4

    return v4
.end method
