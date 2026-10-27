.class public Landroid/graphics/drawable/shapes/PathShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "PathShape.java"


# instance fields
.field private greylist-max-o mPath:Landroid/graphics/Path;

.field private greylist-max-o mScaleX:F

.field private greylist-max-o mScaleY:F

.field private final greylist-max-o mStdHeight:F

.field private final greylist-max-o mStdWidth:F


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Path;FF)V
    .registers 4

    .line 54
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    .line 56
    iput p2, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    .line 57
    iput p3, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/graphics/drawable/shapes/PathShape;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 76
    invoke-super {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/PathShape;

    .line 77
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    .line 78
    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/graphics/drawable/shapes/Shape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/PathShape;->clone()Landroid/graphics/drawable/shapes/PathShape;

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
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/PathShape;->clone()Landroid/graphics/drawable/shapes/PathShape;

    move-result-object v0

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 5

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 63
    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    iget v1, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 64
    iget-object v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 66
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 83
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 84
    return v0

    .line 86
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_50

    .line 89
    :cond_12
    invoke-super {p0, p1}, Landroid/graphics/drawable/shapes/Shape;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 90
    return v1

    .line 92
    :cond_19
    check-cast p1, Landroid/graphics/drawable/shapes/PathShape;

    .line 93
    iget v2, p1, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    iget v3, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4e

    iget v2, p1, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    iget v3, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4e

    iget v2, p1, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    iget v3, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    .line 95
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4e

    iget v2, p1, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    iget v3, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    .line 96
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    iget-object p1, p1, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    .line 98
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    goto :goto_4f

    :cond_4e
    move v0, v1

    .line 93
    :goto_4f
    return v0

    .line 87
    :cond_50
    :goto_50
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 103
    invoke-super {p0}, Landroid/graphics/drawable/shapes/Shape;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected whitelist onResize(FF)V
    .registers 4

    .line 70
    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    div-float/2addr p1, v0

    iput p1, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    .line 71
    iget p1, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    div-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    .line 72
    return-void
.end method
