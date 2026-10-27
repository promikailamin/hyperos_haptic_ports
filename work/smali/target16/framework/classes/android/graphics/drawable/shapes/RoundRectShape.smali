.class public Landroid/graphics/drawable/shapes/RoundRectShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "RoundRectShape.java"


# instance fields
.field private greylist-max-o mInnerRadii:[F

.field private greylist-max-o mInnerRect:Landroid/graphics/RectF;

.field private greylist-max-o mInset:Landroid/graphics/RectF;

.field private greylist-max-o mOuterRadii:[F

.field private greylist-max-o mPath:Landroid/graphics/Path;


# direct methods
.method public constructor whitelist <init>([FLandroid/graphics/RectF;[F)V
    .registers 6

    .line 66
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 67
    const/16 v0, 0x8

    if-eqz p1, :cond_14

    array-length v1, p1

    if-lt v1, v0, :cond_b

    goto :goto_14

    .line 68
    :cond_b
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo p2, "outer radii must have >= 8 values"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_14
    :goto_14
    if-eqz p3, :cond_22

    array-length v1, p3

    if-lt v1, v0, :cond_1a

    goto :goto_22

    .line 71
    :cond_1a
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "inner radii must have >= 8 values"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_22
    :goto_22
    iput-object p1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    .line 74
    iput-object p2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    .line 75
    iput-object p3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    .line 77
    if-eqz p2, :cond_31

    .line 78
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    .line 80
    :cond_31
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    .line 81
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist clone()Landroid/graphics/drawable/shapes/RectShape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->clone()Landroid/graphics/drawable/shapes/RoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clone()Landroid/graphics/drawable/shapes/RoundRectShape;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 136
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 137
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    goto :goto_15

    :cond_14
    move-object v1, v2

    :goto_15
    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    .line 138
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [F

    :cond_24
    iput-object v2, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    .line 139
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    .line 140
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    .line 141
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    .line 142
    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/graphics/drawable/shapes/Shape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->clone()Landroid/graphics/drawable/shapes/RoundRectShape;

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

    .line 37
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->clone()Landroid/graphics/drawable/shapes/RoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4

    .line 85
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 86
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 147
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 148
    return v0

    .line 150
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_50

    .line 153
    :cond_12
    invoke-super {p0, p1}, Landroid/graphics/drawable/shapes/RectShape;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 154
    return v1

    .line 156
    :cond_19
    check-cast p1, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 157
    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    iget-object v3, p1, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget-object v3, p1, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    .line 158
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    iget-object v3, p1, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    .line 159
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget-object v3, p1, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    .line 160
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object p1, p1, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    .line 161
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    goto :goto_4f

    :cond_4e
    move v0, v1

    .line 157
    :goto_4f
    return v0

    .line 151
    :cond_50
    :goto_50
    return v1
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 9

    .line 90
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_5

    return-void

    .line 92
    :cond_5
    nop

    .line 93
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    if-eqz v0, :cond_27

    .line 94
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 95
    const/4 v1, 0x1

    :goto_10
    const/16 v2, 0x8

    if-ge v1, v2, :cond_25

    .line 96
    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_22

    .line 98
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 99
    return-void

    .line 95
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_25
    move v6, v0

    goto :goto_29

    .line 93
    :cond_27
    const/4 v0, 0x0

    move v6, v0

    .line 104
    :goto_29
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->rect()Landroid/graphics/RectF;

    move-result-object v0

    .line 105
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v2, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-double v4, v1

    .line 106
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 105
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 107
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 166
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 167
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    return v0
.end method

.method protected whitelist onResize(FF)V
    .registers 9

    .line 111
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/RectShape;->onResize(FF)V

    .line 113
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->rect()Landroid/graphics/RectF;

    move-result-object v0

    .line 114
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 116
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    if-eqz v1, :cond_1a

    .line 117
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_21

    .line 119
    :cond_1a
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 121
    :goto_21
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_73

    .line 122
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 124
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_73

    iget-object p1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_73

    .line 125
    iget-object p1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    if-eqz p1, :cond_6a

    .line 126
    iget-object p1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object p2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_73

    .line 128
    :cond_6a
    iget-object p1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object p2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 132
    :cond_73
    :goto_73
    return-void
.end method
