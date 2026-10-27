.class public Landroid/animation/PathKeyframes;
.super Ljava/lang/Object;
.source "PathKeyframes.java"

# interfaces
.implements Landroid/animation/Keyframes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/PathKeyframes$FloatKeyframesBase;,
        Landroid/animation/PathKeyframes$IntKeyframesBase;,
        Landroid/animation/PathKeyframes$SimpleKeyframes;
    }
.end annotation


# static fields
.field private static final greylist-max-o EMPTY_KEYFRAMES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FRACTION_OFFSET:I = 0x0

.field private static final greylist-max-o NUM_COMPONENTS:I = 0x3

.field private static final greylist-max-o X_OFFSET:I = 0x1

.field private static final greylist-max-o Y_OFFSET:I = 0x2


# instance fields
.field private greylist-max-o mKeyframeData:[F

.field private greylist-max-o mTempPointF:Landroid/graphics/PointF;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_KEYFRAMES()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/Path;)V
    .registers 3

    .line 50
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;F)V

    .line 51
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/Path;F)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    .line 54
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 57
    invoke-virtual {p1, p2}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object p1

    iput-object p1, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    .line 58
    return-void

    .line 55
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The path must not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static greylist-max-o interpolate(FFF)F
    .registers 3

    .line 147
    sub-float/2addr p2, p1

    .line 148
    mul-float/2addr p2, p0

    add-float/2addr p1, p2

    return p1
.end method

.method private greylist-max-o interpolateInRange(FII)Landroid/graphics/PointF;
    .registers 7

    .line 100
    mul-int/lit8 p2, p2, 0x3

    .line 101
    mul-int/lit8 p3, p3, 0x3

    .line 103
    iget-object v0, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v1, p2, 0x0

    aget v0, v0, v1

    .line 104
    iget-object v1, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v2, p3, 0x0

    aget v1, v1, v2

    .line 106
    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    .line 108
    iget-object v0, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    .line 109
    iget-object v1, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v2, p3, 0x1

    aget v1, v1, v2

    .line 110
    iget-object v2, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 p2, p2, 0x2

    aget p2, v2, p2

    .line 111
    iget-object v2, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 p3, p3, 0x2

    aget p3, v2, p3

    .line 113
    invoke-static {p1, v0, v1}, Landroid/animation/PathKeyframes;->interpolate(FFF)F

    move-result v0

    .line 114
    invoke-static {p1, p2, p3}, Landroid/animation/PathKeyframes;->interpolate(FFF)F

    move-result p1

    .line 116
    iget-object p2, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 117
    iget-object p1, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    return-object p1
.end method

.method private greylist-max-o pointForIndex(I)Landroid/graphics/PointF;
    .registers 5

    .line 139
    mul-int/lit8 p1, p1, 0x3

    .line 140
    add-int/lit8 v0, p1, 0x1

    .line 141
    add-int/lit8 p1, p1, 0x2

    .line 142
    iget-object v1, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    iget-object v2, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    aget v0, v2, v0

    iget-object v2, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    aget p1, v2, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 143
    iget-object p1, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    return-object p1
.end method


# virtual methods
.method public blacklist clone()Landroid/animation/Keyframes;
    .registers 2

    .line 131
    nop

    .line 133
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframes;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_8

    .line 134
    goto :goto_a

    :catch_8
    move-exception v0

    const/4 v0, 0x0

    .line 135
    :goto_a
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Landroid/animation/PathKeyframes;->clone()Landroid/animation/Keyframes;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;
    .registers 2

    .line 156
    new-instance v0, Landroid/animation/PathKeyframes$1;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$1;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public greylist-max-o createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;
    .registers 2

    .line 184
    new-instance v0, Landroid/animation/PathKeyframes$3;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$3;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public greylist-max-o createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;
    .registers 2

    .line 170
    new-instance v0, Landroid/animation/PathKeyframes$2;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$2;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public greylist-max-o createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;
    .registers 2

    .line 198
    new-instance v0, Landroid/animation/PathKeyframes$4;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$4;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public greylist-max-o getKeyframes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    .line 62
    sget-object v0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic blacklist getKeyframes()Ljava/util/List;
    .registers 2

    .line 39
    invoke-virtual {p0}, Landroid/animation/PathKeyframes;->getKeyframes()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getType()Ljava/lang/Class;
    .registers 2

    .line 126
    const-class v0, Landroid/graphics/PointF;

    return-object v0
.end method

.method public greylist-max-o getValue(F)Ljava/lang/Object;
    .registers 8

    .line 67
    iget-object v0, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    .line 68
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_11

    .line 69
    invoke-direct {p0, p1, v3, v4}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 70
    :cond_11
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1f

    .line 71
    add-int/lit8 v1, v0, -0x2

    sub-int/2addr v0, v4

    invoke-direct {p0, p1, v1, v0}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 72
    :cond_1f
    cmpl-float v1, p1, v1

    if-nez v1, :cond_28

    .line 73
    invoke-direct {p0, v3}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 74
    :cond_28
    if-nez v2, :cond_30

    .line 75
    sub-int/2addr v0, v4

    invoke-direct {p0, v0}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 78
    :cond_30
    nop

    .line 79
    sub-int/2addr v0, v4

    move v1, v3

    .line 81
    :goto_33
    if-gt v1, v0, :cond_54

    .line 82
    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    .line 83
    iget-object v4, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    mul-int/lit8 v5, v2, 0x3

    add-int/2addr v5, v3

    aget v4, v4, v5

    .line 85
    cmpg-float v5, p1, v4

    if-gez v5, :cond_48

    .line 86
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_4e

    .line 87
    :cond_48
    cmpl-float v1, p1, v4

    if-lez v1, :cond_4f

    .line 88
    add-int/lit8 v1, v2, 0x1

    .line 92
    :goto_4e
    goto :goto_33

    .line 90
    :cond_4f
    invoke-direct {p0, v2}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 95
    :cond_54
    invoke-direct {p0, p1, v0, v1}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o setEvaluator(Landroid/animation/TypeEvaluator;)V
    .registers 2

    .line 122
    return-void
.end method
