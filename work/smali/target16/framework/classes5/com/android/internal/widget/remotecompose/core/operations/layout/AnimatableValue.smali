.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;
.super Ljava/lang/Object;
.source "AnimatableValue.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# instance fields
.field blacklist mAnimate:Z

.field blacklist mAnimateDuration:F

.field blacklist mAnimateTargetTime:J

.field blacklist mAnimateValueChanges:Z

.field blacklist mId:I

.field blacklist mIsVariable:Z

.field blacklist mLastUpdate:J

.field blacklist mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

.field blacklist mMotionEasingType:I

.field blacklist mStartRotationX:F

.field blacklist mTargetRotationX:F

.field blacklist mValue:F


# direct methods
.method public constructor blacklist <init>(F)V
    .registers 3

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;-><init>(FZ)V

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(FZ)V
    .registers 7

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mIsVariable:Z

    .line 30
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    .line 31
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    .line 33
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateValueChanges:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    .line 35
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateTargetTime:J

    .line 36
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateDuration:F

    .line 39
    iput-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mLastUpdate:J

    .line 41
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mMotionEasingType:I

    .line 51
    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateValueChanges:Z

    .line 52
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 53
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mIsVariable:Z

    goto :goto_2f

    .line 56
    :cond_2d
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    .line 58
    :goto_2f
    return-void
.end method


# virtual methods
.method public blacklist evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)F
    .registers 14

    .line 85
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mIsVariable:Z

    if-nez v0, :cond_7

    .line 86
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    return p1

    .line 88
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFloat(I)F

    move-result v0

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getClock()Ljava/time/Clock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 90
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    cmpl-float p1, v0, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3e

    .line 91
    nop

    .line 92
    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mLastUpdate:J

    sub-long v5, v1, v5

    .line 93
    long-to-float p1, v5

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateDuration:F

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3a

    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mLastUpdate:J

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-eqz p1, :cond_3a

    .line 94
    iput-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateValueChanges:Z

    goto :goto_3c

    .line 96
    :cond_3a
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateValueChanges:Z

    .line 98
    :goto_3c
    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mLastUpdate:J

    .line 100
    :cond_3e
    iget-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateValueChanges:Z

    if-nez p1, :cond_45

    .line 101
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    goto :goto_9a

    .line 103
    :cond_45
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    cmpl-float p1, v0, p1

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_73

    iget-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    if-nez p1, :cond_73

    .line 105
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mStartRotationX:F

    .line 106
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mTargetRotationX:F

    .line 107
    iput-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    .line 108
    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateTargetTime:J

    .line 109
    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mMotionEasingType:I

    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateDuration:F

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float v8, p1, v0

    const/4 v10, 0x0

    const/high16 v11, 0x7fc00000    # Float.NaN

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>(IF[FFF)V

    iput-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    .line 112
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    .line 114
    :cond_73
    iget-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    if-eqz p1, :cond_96

    .line 115
    iget-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateTargetTime:J

    sub-long/2addr v1, v6

    long-to-float p1, v1

    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mMotionEasing:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimateDuration:F

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result p1

    .line 117
    sub-float v0, v5, p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mStartRotationX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mTargetRotationX:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    .line 118
    cmpl-float p1, p1, v5

    if-ltz p1, :cond_95

    .line 119
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mAnimate:Z

    .line 121
    :cond_95
    goto :goto_9a

    .line 122
    :cond_96
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mTargetRotationX:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    .line 125
    :goto_9a
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    return p1
.end method

.method public blacklist getValue()F
    .registers 2

    .line 75
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mValue:F

    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 135
    const-string v0, "AnimatableValue"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 136
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableValue{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/AnimatableValue;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
