.class public Landroid/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "KeyframeSet.java"

# interfaces
.implements Landroid/animation/Keyframes;


# instance fields
.field greylist-max-o mEvaluator:Landroid/animation/TypeEvaluator;

.field greylist-max-o mFirstKeyframe:Landroid/animation/Keyframe;

.field greylist-max-o mInterpolator:Landroid/animation/TimeInterpolator;

.field greylist-max-o mKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mLastKeyframe:Landroid/animation/Keyframe;

.field greylist-max-o mNumKeyframes:I


# direct methods
.method public varargs constructor blacklist <init>([Landroid/animation/Keyframe;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    array-length v0, p1

    iput v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 48
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 50
    iget v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 51
    iget-object p1, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {p1}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 52
    return-void
.end method

.method public static varargs blacklist ofFloat([F)Landroid/animation/KeyframeSet;
    .registers 8

    .line 75
    nop

    .line 76
    array-length v0, p0

    .line 77
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Landroid/animation/Keyframe$FloatKeyframe;

    .line 78
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2c

    .line 79
    invoke-static {v2}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v0, v1, v3

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    aget v2, p0, v3

    invoke-static {v0, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v0, v1, v4

    .line 81
    aget p0, p0, v3

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_54

    .line 82
    move v3, v4

    goto :goto_54

    .line 85
    :cond_2c
    aget v5, p0, v3

    invoke-static {v2, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v2, v1, v3

    .line 86
    move v2, v4

    :goto_37
    if-ge v2, v0, :cond_54

    .line 87
    int-to-float v5, v2

    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    aget v6, p0, v2

    .line 88
    invoke-static {v5, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v5, v1, v2

    .line 89
    aget v5, p0, v2

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 90
    move v3, v4

    .line 86
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 94
    :cond_54
    :goto_54
    if-eqz v3, :cond_5d

    .line 95
    const-string p0, "Animator"

    const-string v0, "Bad value (NaN) in float animator"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_5d
    new-instance p0, Landroid/animation/FloatKeyframeSet;

    invoke-direct {p0, v1}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    return-object p0
.end method

.method public static varargs blacklist ofInt([I)Landroid/animation/KeyframeSet;
    .registers 7

    .line 59
    array-length v0, p0

    .line 60
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Landroid/animation/Keyframe$IntKeyframe;

    .line 61
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_22

    .line 62
    invoke-static {v2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v0, v1, v3

    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    aget p0, p0, v3

    invoke-static {v0, p0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object p0

    check-cast p0, Landroid/animation/Keyframe$IntKeyframe;

    aput-object p0, v1, v4

    goto :goto_41

    .line 65
    :cond_22
    aget v5, p0, v3

    invoke-static {v2, v5}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v2, v1, v3

    .line 66
    nop

    :goto_2d
    if-ge v4, v0, :cond_41

    .line 67
    int-to-float v2, v4

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    aget v3, p0, v4

    .line 68
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v2, v1, v4

    .line 66
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 71
    :cond_41
    :goto_41
    new-instance p0, Landroid/animation/IntKeyframeSet;

    invoke-direct {p0, v1}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    return-object p0
.end method

.method public static varargs blacklist ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;
    .registers 9

    .line 102
    array-length v0, p0

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 106
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_9
    if-ge v2, v0, :cond_20

    .line 107
    aget-object v6, p0, v2

    instance-of v6, v6, Landroid/animation/Keyframe$FloatKeyframe;

    const/4 v7, 0x1

    if-eqz v6, :cond_14

    .line 108
    move v3, v7

    goto :goto_1d

    .line 109
    :cond_14
    aget-object v6, p0, v2

    instance-of v6, v6, Landroid/animation/Keyframe$IntKeyframe;

    if-eqz v6, :cond_1c

    .line 110
    move v4, v7

    goto :goto_1d

    .line 112
    :cond_1c
    move v5, v7

    .line 106
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 115
    :cond_20
    if-eqz v3, :cond_3a

    if-nez v4, :cond_3a

    if-nez v5, :cond_3a

    .line 116
    new-array v2, v0, [Landroid/animation/Keyframe$FloatKeyframe;

    .line 117
    nop

    :goto_29
    if-ge v1, v0, :cond_34

    .line 118
    aget-object v3, p0, v1

    check-cast v3, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v3, v2, v1

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 120
    :cond_34
    new-instance p0, Landroid/animation/FloatKeyframeSet;

    invoke-direct {p0, v2}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    return-object p0

    .line 121
    :cond_3a
    if-eqz v4, :cond_54

    if-nez v3, :cond_54

    if-nez v5, :cond_54

    .line 122
    new-array v2, v0, [Landroid/animation/Keyframe$IntKeyframe;

    .line 123
    nop

    :goto_43
    if-ge v1, v0, :cond_4e

    .line 124
    aget-object v3, p0, v1

    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v3, v2, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 126
    :cond_4e
    new-instance p0, Landroid/animation/IntKeyframeSet;

    invoke-direct {p0, v2}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    return-object p0

    .line 128
    :cond_54
    new-instance v0, Landroid/animation/KeyframeSet;

    invoke-direct {v0, p0}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-object v0
.end method

.method public static varargs blacklist ofObject([Ljava/lang/Object;)Landroid/animation/KeyframeSet;
    .registers 7

    .line 133
    array-length v0, p0

    .line 134
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Landroid/animation/Keyframe$ObjectKeyframe;

    .line 135
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_22

    .line 136
    invoke-static {v2}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v0, v1, v3

    .line 137
    const/high16 v0, 0x3f800000    # 1.0f

    aget-object p0, p0, v3

    invoke-static {v0, p0}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object p0

    check-cast p0, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object p0, v1, v4

    goto :goto_41

    .line 139
    :cond_22
    aget-object v5, p0, v3

    invoke-static {v2, v5}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v2, v1, v3

    .line 140
    nop

    :goto_2d
    if-ge v4, v0, :cond_41

    .line 141
    int-to-float v2, v4

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    aget-object v3, p0, v4

    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v2, v1, v4

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 144
    :cond_41
    :goto_41
    new-instance p0, Landroid/animation/KeyframeSet;

    invoke-direct {p0, v1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-object p0
.end method

.method public static greylist-max-o ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;
    .registers 2

    .line 148
    new-instance v0, Landroid/animation/PathKeyframes;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method public static greylist-max-o ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;
    .registers 3

    .line 152
    new-instance v0, Landroid/animation/PathKeyframes;

    invoke-direct {v0, p0, p1}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;F)V

    return-object v0
.end method


# virtual methods
.method public blacklist clone()Landroid/animation/KeyframeSet;
    .registers 6

    .line 174
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 175
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 176
    new-array v2, v1, [Landroid/animation/Keyframe;

    .line 177
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_1c

    .line 178
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe;

    invoke-virtual {v4}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v2, v3

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 180
    :cond_1c
    new-instance v0, Landroid/animation/KeyframeSet;

    invoke-direct {v0, v2}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    .line 181
    return-object v0
.end method

.method public bridge synthetic blacklist clone()Landroid/animation/Keyframes;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

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

    .line 34
    invoke-virtual {p0}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getKeyframes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getType()Ljava/lang/Class;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getValue(F)Ljava/lang/Object;
    .registers 7

    .line 198
    iget v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 199
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_f

    .line 200
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 202
    :cond_f
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    iget-object v1, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 203
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 202
    invoke-interface {v0, p1, v1, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 205
    :cond_22
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gtz v0, :cond_58

    .line 206
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    .line 207
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_3a

    .line 209
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 211
    :cond_3a
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    .line 212
    sub-float/2addr p1, v1

    .line 213
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v2

    sub-float/2addr v2, v1

    div-float/2addr p1, v2

    .line 214
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    iget-object v2, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 215
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 214
    invoke-interface {v1, p1, v2, v0}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 216
    :cond_58
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_93

    .line 217
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    iget v2, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    .line 218
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_75

    .line 220
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 222
    :cond_75
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    .line 223
    sub-float/2addr p1, v1

    iget-object v2, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 224
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v2

    sub-float/2addr v2, v1

    div-float/2addr p1, v2

    .line 225
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 226
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 225
    invoke-interface {v1, p1, v0, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 228
    :cond_93
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 229
    nop

    :goto_96
    iget v1, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v2, v1, :cond_d3

    .line 230
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframe;

    .line 231
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_ce

    .line 232
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    .line 233
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    .line 234
    sub-float/2addr p1, v3

    .line 235
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float/2addr v4, v3

    div-float/2addr p1, v4

    .line 237
    if-eqz v2, :cond_bf

    .line 238
    invoke-interface {v2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 240
    :cond_bf
    iget-object v2, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 241
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 240
    invoke-interface {v2, p1, v0, v1}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 243
    :cond_ce
    nop

    .line 229
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    goto :goto_96

    .line 246
    :cond_d3
    iget-object p1, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {p1}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o setEvaluator(Landroid/animation/TypeEvaluator;)V
    .registers 2

    .line 164
    iput-object p1, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 165
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 251
    nop

    .line 252
    const-string v0, " "

    const/4 v1, 0x0

    :goto_4
    iget v2, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v1, v2, :cond_2e

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe;

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 255
    :cond_2e
    return-object v0
.end method
