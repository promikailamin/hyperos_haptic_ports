.class Landroid/animation/IntKeyframeSet;
.super Landroid/animation/KeyframeSet;
.source "IntKeyframeSet.java"

# interfaces
.implements Landroid/animation/Keyframes$IntKeyframes;


# direct methods
.method public varargs constructor blacklist <init>([Landroid/animation/Keyframe$IntKeyframe;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/animation/IntKeyframeSet;
    .registers 6

    .line 45
    iget-object v0, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    .line 46
    iget-object v1, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 47
    new-array v2, v1, [Landroid/animation/Keyframe$IntKeyframe;

    .line 48
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_1e

    .line 49
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe;

    invoke-virtual {v4}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v4, v2, v3

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 51
    :cond_1e
    new-instance v0, Landroid/animation/IntKeyframeSet;

    invoke-direct {v0, v2}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    .line 52
    return-object v0
.end method

.method public bridge synthetic blacklist clone()Landroid/animation/KeyframeSet;
    .registers 2

    .line 33
    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist clone()Landroid/animation/Keyframes;
    .registers 2

    .line 33
    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIntValue(F)I
    .registers 7

    .line 57
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_53

    .line 58
    iget-object v0, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$IntKeyframe;

    .line 59
    iget-object v1, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframe$IntKeyframe;

    .line 60
    invoke-virtual {v0}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v2

    .line 61
    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v3

    .line 62
    invoke-virtual {v0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v0

    .line 63
    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v4

    .line 64
    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_31

    .line 66
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 68
    :cond_31
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    .line 69
    iget-object v0, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v0, :cond_3e

    .line 70
    sub-int/2addr v3, v2

    int-to-float v0, v3

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr v2, p1

    goto :goto_52

    .line 72
    :cond_3e
    iget-object v0, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 69
    :goto_52
    return v2

    .line 73
    :cond_53
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_ac

    .line 74
    iget-object v0, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v1, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$IntKeyframe;

    .line 75
    iget-object v1, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v3, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframe$IntKeyframe;

    .line 76
    invoke-virtual {v0}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v2

    .line 77
    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v3

    .line 78
    invoke-virtual {v0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v0

    .line 79
    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v4

    .line 80
    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_8a

    .line 82
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 84
    :cond_8a
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    .line 85
    iget-object v0, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v0, :cond_97

    .line 86
    sub-int/2addr v3, v2

    int-to-float v0, v3

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr v2, p1

    goto :goto_ab

    .line 87
    :cond_97
    iget-object v0, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 85
    :goto_ab
    return v2

    .line 89
    :cond_ac
    iget-object v0, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$IntKeyframe;

    .line 90
    move v1, v2

    :goto_b5
    iget v3, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    if-ge v1, v3, :cond_10e

    .line 91
    iget-object v3, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    .line 92
    invoke-virtual {v3}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_109

    .line 93
    invoke-virtual {v3}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v2

    sub-float/2addr p1, v2

    .line 95
    invoke-virtual {v3}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v2

    invoke-virtual {v0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr p1, v2

    .line 96
    invoke-virtual {v0}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v0

    .line 97
    invoke-virtual {v3}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v2

    .line 99
    if-eqz v1, :cond_ea

    .line 100
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 102
    :cond_ea
    iget-object v1, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v1, :cond_f4

    .line 103
    sub-int/2addr v2, v0

    int-to-float v1, v2

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/2addr v0, p1

    goto :goto_108

    .line 105
    :cond_f4
    iget-object v1, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 102
    :goto_108
    return v0

    .line 107
    :cond_109
    nop

    .line 90
    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_b5

    .line 110
    :cond_10e
    iget-object p1, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v0, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Keyframe;

    invoke-virtual {p1}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist getType()Ljava/lang/Class;
    .registers 2

    .line 115
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public blacklist getValue(F)Ljava/lang/Object;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Landroid/animation/IntKeyframeSet;->getIntValue(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
