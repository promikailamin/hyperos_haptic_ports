.class public Landroid/graphics/drawable/shapes/ArcShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "ArcShape.java"


# instance fields
.field private final greylist-max-o mStartAngle:F

.field private final greylist-max-o mSweepAngle:F


# direct methods
.method public constructor whitelist <init>(FF)V
    .registers 3

    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 47
    iput p1, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    .line 48
    iput p2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/graphics/drawable/shapes/ArcShape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 78
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/ArcShape;

    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/graphics/drawable/shapes/RectShape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->clone()Landroid/graphics/drawable/shapes/ArcShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/graphics/drawable/shapes/Shape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->clone()Landroid/graphics/drawable/shapes/ArcShape;

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
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->clone()Landroid/graphics/drawable/shapes/ArcShape;

    move-result-object v0

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9

    .line 67
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/ArcShape;->rect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    iget v3, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 68
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

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 89
    :cond_12
    invoke-super {p0, p1}, Landroid/graphics/drawable/shapes/RectShape;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 90
    return v1

    .line 92
    :cond_19
    check-cast p1, Landroid/graphics/drawable/shapes/ArcShape;

    .line 93
    iget v2, p1, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    iget v3, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_30

    iget p1, p1, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    iget v2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    .line 94
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 93
    :goto_31
    return v0

    .line 87
    :cond_32
    :goto_32
    return v1
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 2

    .line 74
    return-void
.end method

.method public final whitelist getStartAngle()F
    .registers 2

    .line 55
    iget v0, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    return v0
.end method

.method public final whitelist getSweepAngle()F
    .registers 2

    .line 62
    iget v0, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 99
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/graphics/drawable/shapes/ArcShape;->mStartAngle:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/graphics/drawable/shapes/ArcShape;->mSweepAngle:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
