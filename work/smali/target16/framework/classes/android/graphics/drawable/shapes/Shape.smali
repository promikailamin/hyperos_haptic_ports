.class public abstract Landroid/graphics/drawable/shapes/Shape;
.super Ljava/lang/Object;
.source "Shape.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private greylist-max-o mHeight:F

.field private greylist-max-o mWidth:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/graphics/drawable/shapes/Shape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 119
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/Shape;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 124
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 125
    return v0

    .line 127
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 130
    :cond_12
    check-cast p1, Landroid/graphics/drawable/shapes/Shape;

    .line 131
    iget v2, p1, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    iget v3, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_29

    iget p1, p1, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    iget v2, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    .line 132
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 131
    :goto_2a
    return v0

    .line 128
    :cond_2b
    :goto_2b
    return v1
.end method

.method public final whitelist getHeight()F
    .registers 2

    .line 52
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    return v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 2

    .line 115
    return-void
.end method

.method public final whitelist getWidth()F
    .registers 2

    .line 45
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    return v0
.end method

.method public whitelist hasAlpha()Z
    .registers 2

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 137
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected whitelist onResize(FF)V
    .registers 3

    .line 105
    return-void
.end method

.method public final whitelist resize(FF)V
    .registers 5

    .line 74
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    .line 75
    move p1, v0

    .line 77
    :cond_6
    cmpg-float v1, p2, v0

    if-gez v1, :cond_b

    .line 78
    move p2, v0

    .line 80
    :cond_b
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_17

    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1e

    .line 81
    :cond_17
    iput p1, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    .line 82
    iput p2, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    .line 83
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/shapes/Shape;->onResize(FF)V

    .line 85
    :cond_1e
    return-void
.end method
