.class public Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# instance fields
.field public mAnimatedValue:F

.field public mAnimating:Z

.field public mAnimationDecreaseMaxTimeSecs:F

.field public mAnimationIncreaseMaxTimeSecs:F

.field public final mClock:Lcom/android/server/display/RampAnimator$Clock;

.field public mCurrentValue:F

.field public mFirstTime:Z

.field public mLastFrameTimeNanos:J

.field public final mObject:Ljava/lang/Object;

.field public final mProperty:Landroid/util/FloatProperty;

.field public mRate:F

.field public mTargetHlgValue:F

.field public mTargetLinearValue:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .registers 4

    .line 55
    new-instance v0, Lcom/android/server/display/RampAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/RampAnimator$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;Lcom/android/server/display/RampAnimator$Clock;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;Lcom/android/server/display/RampAnimator$Clock;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 59
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 60
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    .line 61
    iput-object p3, p0, Lcom/android/server/display/RampAnimator;->mClock:Lcom/android/server/display/RampAnimator$Clock;

    return-void
.end method


# virtual methods
.method public isAnimating()Z
    .registers 1

    .line 154
    iget-boolean p0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p0
.end method

.method public performNextAnimationStep(J)V
    .registers 5

    .line 171
    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v1

    .line 172
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 178
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_19

    .line 181
    iget p1, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    goto :goto_38

    .line 183
    :cond_19
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    mul-float/2addr v0, p2

    div-float/2addr v0, p1

    .line 184
    iget p1, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    iget p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2f

    .line 185
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    add-float/2addr p2, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    goto :goto_38

    .line 187
    :cond_2f
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    sub-float/2addr p2, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 190
    :goto_38
    iget p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 191
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    iput p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_45

    .line 193
    invoke-virtual {p0, p2}, Lcom/android/server/display/RampAnimator;->setPropertyValue(F)V

    .line 195
    :cond_45
    iget p1, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    iget p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_50

    const/4 p1, 0x0

    .line 196
    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    :cond_50
    return-void
.end method

.method public final setAnimationTarget(FFFF)Z
    .registers 11

    .line 96
    invoke-static {p1}, Lcom/android/internal/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result v0

    .line 99
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_75

    cmpg-float v5, p2, v4

    if-gtz v5, :cond_10

    goto :goto_75

    .line 114
    :cond_10
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v5, v0, v1

    if-lez v5, :cond_25

    cmpl-float v5, p3, v4

    if-lez v5, :cond_25

    sub-float v5, v0, v1

    div-float/2addr v5, p2

    cmpl-float v5, v5, p3

    if-lez v5, :cond_25

    sub-float p2, v0, v1

    div-float/2addr p2, p3

    goto :goto_37

    :cond_25
    cmpg-float p3, v0, v1

    if-gez p3, :cond_37

    cmpl-float p3, p4, v4

    if-lez p3, :cond_37

    sub-float p3, v1, v0

    div-float/2addr p3, p2

    cmpl-float p3, p3, p4

    if-lez p3, :cond_37

    sub-float p2, v1, v0

    div-float/2addr p2, p4

    .line 129
    :cond_37
    :goto_37
    iget-boolean p3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz p3, :cond_55

    iget p4, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    cmpl-float p4, p2, p4

    if-gtz p4, :cond_55

    cmpg-float p4, v0, v1

    if-gtz p4, :cond_4b

    iget p4, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    cmpg-float p4, v1, p4

    if-lez p4, :cond_55

    :cond_4b
    iget p4, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    cmpg-float p4, p4, v1

    if-gtz p4, :cond_57

    cmpg-float p4, v1, v0

    if-gtz p4, :cond_57

    .line 133
    :cond_55
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 136
    :cond_57
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_5e

    move v3, v2

    .line 137
    :cond_5e
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    .line 138
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetLinearValue:F

    if-nez p3, :cond_74

    cmpl-float p1, v0, v1

    if-eqz p1, :cond_74

    .line 142
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 143
    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 144
    iget-object p1, p0, Lcom/android/server/display/RampAnimator;->mClock:Lcom/android/server/display/RampAnimator$Clock;

    invoke-interface {p1}, Lcom/android/server/display/RampAnimator$Clock;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    :cond_74
    return v3

    :cond_75
    :goto_75
    if-nez v1, :cond_7f

    .line 100
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float p2, v0, p2

    if-eqz p2, :cond_7e

    goto :goto_7f

    :cond_7e
    return v3

    .line 101
    :cond_7f
    :goto_7f
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 102
    iput v4, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 103
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    .line 104
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetLinearValue:F

    .line 105
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/server/display/RampAnimator;->setPropertyValue(F)V

    .line 107
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v2
.end method

.method public setAnimationTarget(FFZ)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    move v1, v0

    goto :goto_7

    .line 89
    :cond_5
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationIncreaseMaxTimeSecs:F

    :goto_7
    if-eqz p3, :cond_a

    goto :goto_c

    .line 90
    :cond_a
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationDecreaseMaxTimeSecs:F

    .line 91
    :goto_c
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/display/RampAnimator;->setAnimationTarget(FFFF)Z

    move-result p0

    return p0
.end method

.method public setAnimationTimeLimits(JJ)V
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/high16 v4, 0x447a0000    # 1000.0f

    if-lez v2, :cond_c

    long-to-float p1, p1

    div-float/2addr p1, v4

    goto :goto_d

    :cond_c
    move p1, v3

    .line 70
    :goto_d
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimationIncreaseMaxTimeSecs:F

    cmp-long p1, p3, v0

    if-lez p1, :cond_16

    long-to-float p1, p3

    div-float v3, p1, v4

    .line 72
    :cond_16
    iput v3, p0, Lcom/android/server/display/RampAnimator;->mAnimationDecreaseMaxTimeSecs:F

    return-void
.end method

.method public final setPropertyValue(F)V
    .registers 3

    .line 165
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_9

    iget p1, p0, Lcom/android/server/display/RampAnimator;->mTargetLinearValue:F

    goto :goto_d

    :cond_9
    invoke-static {p1}, Lcom/android/internal/display/BrightnessUtils;->convertGammaToLinear(F)F

    move-result p1

    .line 167
    :goto_d
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void
.end method
