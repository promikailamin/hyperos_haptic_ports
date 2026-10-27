.class Landroid/animation/FloatKeyframeSet;
.super Landroid/animation/KeyframeSet;
.source "FloatKeyframeSet.java"

# interfaces
.implements Landroid/animation/Keyframes$FloatKeyframes;


# direct methods
.method public varargs constructor blacklist <init>([Landroid/animation/Keyframe$FloatKeyframe;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/animation/FloatKeyframeSet;
    .registers 6

    .line 45
    iget-object v0, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    .line 46
    iget-object v1, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 47
    new-array v2, v1, [Landroid/animation/Keyframe$FloatKeyframe;

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

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v3

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 51
    :cond_1e
    new-instance v0, Landroid/animation/FloatKeyframeSet;

    invoke-direct {v0, v2}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    .line 52
    return-object v0
.end method

.method public bridge synthetic blacklist clone()Landroid/animation/KeyframeSet;
    .registers 2

    .line 33
    invoke-virtual {p0}, Landroid/animation/FloatKeyframeSet;->clone()Landroid/animation/FloatKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist clone()Landroid/animation/Keyframes;
    .registers 2

    .line 33
    invoke-virtual {p0}, Landroid/animation/FloatKeyframeSet;->clone()Landroid/animation/FloatKeyframeSet;

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
    invoke-virtual {p0}, Landroid/animation/FloatKeyframeSet;->clone()Landroid/animation/FloatKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFloatValue(F)F
    .registers 7

    .line 57
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_51

    .line 58
    iget-object v0, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$FloatKeyframe;

    .line 59
    iget-object v1, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframe$FloatKeyframe;

    .line 60
    invoke-virtual {v0}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v2

    .line 61
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v3

    .line 62
    invoke-virtual {v0}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v0

    .line 63
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v4

    .line 64
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

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
    iget-object v0, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v0, :cond_3c

    .line 70
    sub-float/2addr v3, v2

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    goto :goto_50

    .line 72
    :cond_3c
    iget-object v0, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 71
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 69
    :goto_50
    return v2

    .line 73
    :cond_51
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_a8

    .line 74
    iget-object v0, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v1, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$FloatKeyframe;

    .line 75
    iget-object v1, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v3, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframe$FloatKeyframe;

    .line 76
    invoke-virtual {v0}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v2

    .line 77
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v3

    .line 78
    invoke-virtual {v0}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v0

    .line 79
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v4

    .line 80
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_88

    .line 82
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 84
    :cond_88
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    .line 85
    iget-object v0, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v0, :cond_93

    .line 86
    sub-float/2addr v3, v2

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    goto :goto_a7

    .line 88
    :cond_93
    iget-object v0, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 87
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 85
    :goto_a7
    return v2

    .line 90
    :cond_a8
    iget-object v0, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$FloatKeyframe;

    .line 91
    move v1, v2

    :goto_b1
    iget v3, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    if-ge v1, v3, :cond_108

    .line 92
    iget-object v3, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$FloatKeyframe;

    .line 93
    invoke-virtual {v3}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_103

    .line 94
    invoke-virtual {v3}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 95
    invoke-virtual {v0}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v2

    sub-float/2addr p1, v2

    .line 96
    invoke-virtual {v3}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v2

    invoke-virtual {v0}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr p1, v2

    .line 97
    invoke-virtual {v0}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v0

    .line 98
    invoke-virtual {v3}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v2

    .line 100
    if-eqz v1, :cond_e6

    .line 101
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 103
    :cond_e6
    iget-object v1, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v1, :cond_ee

    .line 104
    sub-float/2addr v2, v0

    mul-float/2addr p1, v2

    add-float/2addr v0, p1

    goto :goto_102

    .line 106
    :cond_ee
    iget-object v1, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 105
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 106
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 103
    :goto_102
    return v0

    .line 108
    :cond_103
    nop

    .line 91
    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_b1

    .line 111
    :cond_108
    iget-object p1, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v0, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Keyframe;

    invoke-virtual {p1}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1
.end method

.method public blacklist getType()Ljava/lang/Class;
    .registers 2

    .line 116
    const-class v0, Ljava/lang/Float;

    return-object v0
.end method

.method public blacklist getValue(F)Ljava/lang/Object;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Landroid/animation/FloatKeyframeSet;->getFloatValue(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
