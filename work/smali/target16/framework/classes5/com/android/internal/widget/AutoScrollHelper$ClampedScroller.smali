.class Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedScroller"
.end annotation


# instance fields
.field private greylist-max-o mDeltaTime:J

.field private greylist-max-o mDeltaX:I

.field private greylist-max-o mDeltaY:I

.field private greylist-max-o mEffectiveRampDown:I

.field private greylist-max-o mRampDownDuration:I

.field private greylist-max-o mRampUpDuration:I

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mStopTime:J

.field private greylist-max-o mStopValue:F

.field private greylist-max-o mTargetVelocityX:F

.field private greylist-max-o mTargetVelocityY:F


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 746
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 747
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 748
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 749
    iput v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 750
    return-void
.end method

.method private greylist-max-o getValueAt(J)F
    .registers 9

    .line 788
    iget-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 789
    return v1

    .line 790
    :cond_8
    iget-wide v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v0, :cond_2e

    iget-wide v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    cmp-long v0, p1, v3

    if-gez v0, :cond_19

    goto :goto_2e

    .line 794
    :cond_19
    iget-wide v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    sub-long/2addr p1, v3

    .line 795
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    sub-float v0, v2, v0

    iget v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    long-to-float p1, p1

    iget p2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 796
    invoke-static {p1, v1, v2}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$smconstrain(FFF)F

    move-result p1

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    .line 795
    return v0

    .line 791
    :cond_2e
    :goto_2e
    iget-wide v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long/2addr p1, v3

    .line 792
    long-to-float p1, p1

    iget p2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1, v1, v2}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$smconstrain(FFF)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    return p1
.end method

.method private greylist-max-o interpolateValue(F)F
    .registers 4

    .line 808
    const/high16 v0, -0x3f800000    # -4.0f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public greylist-max-o computeScrollDelta()V
    .registers 6

    .line 819
    iget-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    .line 823
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 824
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v2

    .line 825
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->interpolateValue(F)F

    move-result v2

    .line 826
    iget-wide v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long v3, v0, v3

    .line 828
    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 829
    long-to-float v0, v3

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 830
    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 831
    return-void

    .line 820
    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getDeltaX()I
    .registers 2

    .line 857
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    return v0
.end method

.method public greylist-max-o getDeltaY()I
    .registers 2

    .line 865
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    return v0
.end method

.method public greylist-max-o getHorizontalDirection()I
    .registers 3

    .line 845
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public greylist-max-o getVerticalDirection()I
    .registers 3

    .line 849
    iget v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public greylist-max-o isFinished()Z
    .registers 7

    .line 783
    iget-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 784
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget v4, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 783
    :goto_19
    return v0
.end method

.method public greylist-max-o requestStop()V
    .registers 6

    .line 776
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 777
    iget-wide v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    invoke-static {v2, v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->-$$Nest$smconstrain(III)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    .line 778
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 779
    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 780
    return-void
.end method

.method public greylist-max-o setRampDownDuration(I)V
    .registers 2

    .line 757
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    .line 758
    return-void
.end method

.method public greylist-max-o setRampUpDuration(I)V
    .registers 2

    .line 753
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    .line 754
    return-void
.end method

.method public greylist-max-o setTargetVelocity(FF)V
    .registers 3

    .line 840
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    .line 841
    iput p2, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    .line 842
    return-void
.end method

.method public greylist-max-o start()V
    .registers 3

    .line 764
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 765
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 766
    iget-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    iput-wide v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 767
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 768
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 769
    iput v0, p0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 770
    return-void
.end method
