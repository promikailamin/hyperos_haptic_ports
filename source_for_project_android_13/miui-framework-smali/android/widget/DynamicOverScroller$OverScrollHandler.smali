.class Landroid/widget/DynamicOverScroller$OverScrollHandler;
.super Ljava/lang/Object;
.source "DynamicOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DynamicOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverScrollHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;,
        Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;
    }
.end annotation


# instance fields
.field private blacklist mAnimMaxValue:F

.field private blacklist mAnimMinValue:F

.field blacklist mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist mLastUpdateTime:J

.field private final blacklist mMaxLegalValue:I

.field private final blacklist mMinLegalValue:I

.field private blacklist mMonitor:Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;

.field private blacklist mOnFinishedListener:Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;

.field blacklist mStartValue:I

.field blacklist mValue:I

.field blacklist mVelocity:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimMaxValue(Landroid/widget/DynamicOverScroller$OverScrollHandler;)F
    .registers 1

    iget p0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimMaxValue:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimMinValue(Landroid/widget/DynamicOverScroller$OverScrollHandler;)F
    .registers 1

    iget p0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimMinValue:F

    return p0
.end method

.method constructor blacklist <init>(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;IF)V
    .registers 8
    .param p2, "startValue"    # I
    .param p3, "velocity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<",
            "*>;IF)V"
        }
    .end annotation

    .line 343
    .local p1, "animation":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;-><init>(Landroid/widget/DynamicOverScroller$OverScrollHandler;Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor-IA;)V

    iput-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMonitor:Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;

    .line 344
    iput-object p1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 345
    const v0, -0x800001

    invoke-virtual {p1, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 346
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 348
    iput p2, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mStartValue:I

    .line 349
    iput p3, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    .line 351
    if-lez p2, :cond_28

    .line 352
    const/high16 v0, -0x80000000

    add-int/2addr v0, p2

    .line 353
    .local v0, "minLegalValue":I
    const v1, 0x7fffffff

    .local v1, "maxLegalValue":I
    goto :goto_36

    .line 354
    .end local v0    # "minLegalValue":I
    .end local v1    # "maxLegalValue":I
    :cond_28
    if-gez p2, :cond_31

    .line 355
    const/high16 v0, -0x80000000

    .line 356
    .restart local v0    # "minLegalValue":I
    const v1, 0x7fffffff

    add-int/2addr v1, p2

    .restart local v1    # "maxLegalValue":I
    goto :goto_36

    .line 358
    .end local v0    # "minLegalValue":I
    .end local v1    # "maxLegalValue":I
    :cond_31
    const/high16 v0, -0x80000000

    .line 359
    .restart local v0    # "minLegalValue":I
    const v1, 0x7fffffff

    .line 362
    .restart local v1    # "maxLegalValue":I
    :goto_36
    iput v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMinLegalValue:I

    .line 363
    iput v1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMaxLegalValue:I

    .line 365
    iget-object v2, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 366
    iget-object v2, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v2, p3}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 367
    return-void
.end method


# virtual methods
.method blacklist cancel()V
    .registers 3

    .line 427
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mLastUpdateTime:J

    .line 428
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 429
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMonitor:Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->removeUpdateListener(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 430
    return-void
.end method

.method blacklist continueWhenFinished()Z
    .registers 4

    .line 433
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mOnFinishedListener:Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;

    if-eqz v0, :cond_e

    .line 434
    iget v1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mValue:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    invoke-interface {v0, v1, v2}, Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;->whenFinished(FF)Z

    move-result v0

    return v0

    .line 436
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getAnimation()Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation<",
            "*>;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    return-object v0
.end method

.method blacklist getOffset(I)I
    .registers 3
    .param p1, "raw"    # I

    .line 374
    iget v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mStartValue:I

    sub-int v0, p1, v0

    return v0
.end method

.method blacklist setMaxValue(I)V
    .registers 4
    .param p1, "max"    # I

    .line 387
    iget v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMaxLegalValue:I

    if-le p1, v0, :cond_6

    .line 388
    iget p1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMaxLegalValue:I

    .line 390
    :cond_6
    iget v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mStartValue:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    .line 391
    .local v0, "animMaxValue":F
    iget-object v1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v1, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 392
    iput v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimMaxValue:F

    .line 393
    return-void
.end method

.method blacklist setMinValue(I)V
    .registers 4
    .param p1, "min"    # I

    .line 378
    iget v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMinLegalValue:I

    if-ge p1, v0, :cond_6

    .line 379
    iget p1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMinLegalValue:I

    .line 381
    :cond_6
    iget v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mStartValue:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    .line 382
    .local v0, "animMinValue":F
    iget-object v1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v1, v0}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 383
    iput v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimMinValue:F

    .line 384
    return-void
.end method

.method blacklist setOnFinishedListener(Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;)V
    .registers 2
    .param p1, "handler"    # Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;

    .line 396
    iput-object p1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mOnFinishedListener:Landroid/widget/DynamicOverScroller$OverScrollHandler$OnFinishedListener;

    .line 397
    return-void
.end method

.method blacklist start()V
    .registers 3

    .line 400
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v1, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMonitor:Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    .line 401
    iget-object v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->start(Z)V

    .line 402
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mLastUpdateTime:J

    .line 403
    return-void
.end method

.method blacklist update()Z
    .registers 10

    .line 406
    iget-wide v0, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mLastUpdateTime:J

    .line 407
    .local v0, "lastUpdateTime":J
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 411
    .local v2, "currentFrameTime":J
    cmp-long v4, v2, v0

    const/4 v5, 0x1

    if-nez v4, :cond_18

    .line 412
    const-string v4, "update done in this frame, dropping current update request"

    invoke-static {v4}, Landroid/widget/OverScrollLogger;->verbose(Ljava/lang/String;)V

    .line 413
    iget-object v4, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v4}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v4

    xor-int/2addr v4, v5

    return v4

    .line 416
    :cond_18
    iget-object v4, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v4, v2, v3}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->doAnimationFrame(J)Z

    move-result v4

    .line 417
    .local v4, "finish":Z
    if-eqz v4, :cond_51

    .line 418
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    iget v7, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mValue:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x2

    iget v7, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mVelocity:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v5, "%s finishing value(%d) velocity(%f)"

    invoke-static {v5, v6}, Landroid/widget/OverScrollLogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    iget-object v5, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mAnimation:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iget-object v6, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mMonitor:Landroid/widget/DynamicOverScroller$OverScrollHandler$Monitor;

    invoke-virtual {v5, v6}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;->removeUpdateListener(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 420
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mLastUpdateTime:J

    .line 422
    :cond_51
    iput-wide v2, p0, Landroid/widget/DynamicOverScroller$OverScrollHandler;->mLastUpdateTime:J

    .line 423
    return v4
.end method
