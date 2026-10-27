.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;
.super Ljava/lang/Object;
.source "MonotonicSpline.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MonotonicCurveFit"


# instance fields
.field private blacklist mExtrapolate:Z

.field blacklist mSlopeTemp:[F

.field private blacklist mT:[F

.field private blacklist mTangent:[F

.field private blacklist mY:[F


# direct methods
.method public constructor blacklist <init>([F[F)V
    .registers 13

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mExtrapolate:Z

    .line 37
    const/4 v1, 0x0

    if-nez p1, :cond_1a

    .line 38
    array-length p1, p2

    new-array v2, p1, [F

    .line 39
    move v3, v1

    :goto_d
    if-ge v3, p1, :cond_19

    .line 40
    int-to-float v4, v3

    add-int/lit8 v5, p1, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v2, v3

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_19
    move-object p1, v2

    .line 43
    :cond_1a
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    .line 44
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    .line 45
    array-length v2, p1

    .line 47
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mSlopeTemp:[F

    .line 48
    add-int/lit8 v0, v2, -0x1

    new-array v3, v0, [F

    .line 49
    new-array v4, v2, [F

    .line 50
    move v5, v1

    :goto_2a
    if-ge v5, v0, :cond_50

    .line 51
    add-int/lit8 v6, v5, 0x1

    aget v7, p1, v6

    aget v8, p1, v5

    sub-float/2addr v7, v8

    .line 52
    aget v8, p2, v6

    aget v9, p2, v5

    sub-float/2addr v8, v9

    div-float/2addr v8, v7

    aput v8, v3, v5

    .line 53
    if-nez v5, :cond_42

    .line 54
    aget v7, v3, v5

    aput v7, v4, v5

    goto :goto_4e

    .line 56
    :cond_42
    add-int/lit8 v7, v5, -0x1

    aget v7, v3, v7

    aget v8, v3, v5

    add-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    aput v7, v4, v5

    .line 50
    :goto_4e
    move v5, v6

    goto :goto_2a

    .line 59
    :cond_50
    add-int/lit8 v2, v2, -0x2

    aget p1, v3, v2

    aput p1, v4, v0

    .line 61
    nop

    :goto_57
    if-ge v1, v0, :cond_96

    .line 62
    aget p1, v3, v1

    float-to-double p1, p1

    const-wide/16 v5, 0x0

    cmpl-double p1, p1, v5

    if-nez p1, :cond_6a

    .line 63
    const/4 p1, 0x0

    aput p1, v4, v1

    .line 64
    add-int/lit8 p2, v1, 0x1

    aput p1, v4, p2

    goto :goto_93

    .line 66
    :cond_6a
    aget p1, v4, v1

    aget p2, v3, v1

    div-float/2addr p1, p2

    .line 67
    add-int/lit8 p2, v1, 0x1

    aget v2, v4, p2

    aget v5, v3, v1

    div-float/2addr v2, v5

    .line 68
    float-to-double v5, p1

    float-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 69
    float-to-double v6, v5

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_93

    .line 70
    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v6, v5

    .line 71
    mul-float/2addr p1, v6

    aget v5, v3, v1

    mul-float/2addr p1, v5

    aput p1, v4, v1

    .line 72
    mul-float/2addr v6, v2

    aget p1, v3, v1

    mul-float/2addr v6, p1

    aput v6, v4, p2

    .line 61
    :cond_93
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 76
    :cond_96
    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mTangent:[F

    .line 77
    return-void
.end method

.method private static blacklist diff(FFFFFF)F
    .registers 10

    .line 202
    mul-float v0, p1, p1

    .line 203
    const/high16 v1, -0x3f400000    # -6.0f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p3

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v3, p1, v2

    mul-float/2addr p3, v3

    add-float/2addr v1, p3

    mul-float/2addr v2, v0

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    mul-float/2addr v3, p2

    sub-float/2addr v1, v3

    const/high16 p2, 0x40400000    # 3.0f

    mul-float/2addr p2, p0

    mul-float p3, p2, p5

    mul-float/2addr p3, v0

    add-float/2addr v1, p3

    mul-float/2addr p2, p4

    mul-float/2addr p2, v0

    add-float/2addr v1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p2, p0

    mul-float/2addr p2, p5

    mul-float/2addr p2, p1

    sub-float/2addr v1, p2

    const/high16 p2, 0x40800000    # 4.0f

    mul-float/2addr p2, p0

    mul-float/2addr p2, p4

    mul-float/2addr p2, p1

    sub-float/2addr v1, p2

    mul-float/2addr p0, p4

    add-float/2addr v1, p0

    return v1
.end method

.method private static blacklist interpolate(FFFFFF)F
    .registers 11

    .line 186
    mul-float v0, p1, p1

    .line 187
    mul-float v1, v0, p1

    .line 188
    const/high16 v2, -0x40000000    # -2.0f

    mul-float/2addr v2, v1

    mul-float/2addr v2, p3

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v0

    mul-float/2addr p3, v3

    add-float/2addr v2, p3

    const/high16 p3, 0x40000000    # 2.0f

    mul-float v4, v1, p3

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    add-float/2addr v2, p2

    mul-float/2addr p5, p0

    mul-float p2, p5, v1

    add-float/2addr v2, p2

    mul-float p2, p0, p4

    mul-float/2addr v1, p2

    add-float/2addr v2, v1

    mul-float/2addr p5, v0

    sub-float/2addr v2, p5

    mul-float/2addr p0, p3

    mul-float/2addr p0, p4

    mul-float/2addr p0, v0

    sub-float/2addr v2, p0

    mul-float/2addr p2, p1

    add-float/2addr v2, p2

    return v2
.end method


# virtual methods
.method public blacklist getArray()[F
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    return-object v0
.end method

.method public blacklist getPos(F)F
    .registers 12

    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    array-length v0, v0

    .line 97
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mExtrapolate:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    .line 98
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_24

    .line 99
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->getSlope(F)F

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v1, v1, v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v2, v3, v2

    sub-float/2addr p1, v2

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    .line 102
    return v1

    .line 104
    :cond_24
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    add-int/lit8 v3, v0, -0x1

    aget v1, v1, v3

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_5e

    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->getSlope(F)F

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v2, v2, v3

    sub-float/2addr p1, v2

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    .line 108
    return v1

    .line 111
    :cond_42
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_4f

    .line 112
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget p1, p1, v2

    .line 114
    return p1

    .line 116
    :cond_4f
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    add-int/lit8 v3, v0, -0x1

    aget v1, v1, v3

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_5e

    .line 117
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget p1, p1, v3

    .line 119
    return p1

    .line 123
    :cond_5e
    nop

    :goto_5f
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_a1

    .line 124
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-nez v1, :cond_6f

    .line 126
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v1, v1, v2

    .line 128
    :cond_6f
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v3

    cmpg-float v1, p1, v1

    if-gez v1, :cond_9f

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v1, v1, v2

    sub-float v4, v0, v1

    .line 130
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v0, v0, v2

    sub-float/2addr p1, v0

    div-float v5, p1, v4

    .line 132
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v6, p1, v2

    .line 133
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v7, p1, v3

    .line 134
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mTangent:[F

    aget v8, p1, v2

    .line 135
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mTangent:[F

    aget v9, p1, v3

    .line 136
    invoke-static/range {v4 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->interpolate(FFFFFF)F

    move-result p1

    .line 138
    return p1

    .line 123
    :cond_9f
    move v2, v3

    goto :goto_5f

    .line 141
    :cond_a1
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getSlope(F)F
    .registers 12

    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    array-length v0, v0

    .line 152
    nop

    .line 154
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_12

    .line 155
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget p1, p1, v2

    goto :goto_20

    .line 156
    :cond_12
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    add-int/lit8 v3, v0, -0x1

    aget v1, v1, v3

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_20

    .line 157
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget p1, p1, v3

    .line 160
    :cond_20
    :goto_20
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lez v0, :cond_53

    .line 161
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v0, v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_53

    .line 162
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v0, v0, v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v3, v3, v2

    sub-float v4, v0, v3

    .line 163
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v0, v0, v2

    sub-float/2addr p1, v0

    div-float v5, p1, v4

    .line 164
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v6, p1, v2

    .line 165
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v7, p1, v1

    .line 166
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mTangent:[F

    aget v8, p1, v2

    .line 167
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mTangent:[F

    aget v9, p1, v1

    .line 168
    invoke-static/range {v4 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->diff(FFFFFF)F

    move-result p1

    div-float/2addr p1, v4

    goto :goto_54

    .line 172
    :cond_53
    const/4 p1, 0x0

    :goto_54
    return p1
.end method

.method public blacklist getTimePoints()[F
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    return-object v0
.end method
