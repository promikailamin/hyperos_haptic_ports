.class public Landroid/graphics/drawable/PaintDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "PaintDrawable.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 34
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3

    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 37
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected whitelist inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .registers 12

    .line 76
    const-string v0, "corners"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 77
    sget-object p1, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-virtual {p2, p4, p1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 79
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 81
    int-to-float p4, p3

    invoke-virtual {p0, p4}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 85
    const/4 p4, 0x1

    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 87
    const/4 v1, 0x2

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 89
    const/4 v3, 0x3

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 91
    const/4 v5, 0x4

    invoke-virtual {p1, v5, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 94
    if-ne v0, p3, :cond_33

    if-ne v2, p3, :cond_33

    if-ne v4, p3, :cond_33

    if-eq v6, p3, :cond_51

    .line 96
    :cond_33
    int-to-float p3, v0

    int-to-float v0, v2

    int-to-float v2, v4

    int-to-float v4, v6

    const/16 v6, 0x8

    new-array v6, v6, [F

    aput p3, v6, p2

    aput p3, v6, p4

    aput v0, v6, v1

    aput v0, v6, v3

    aput v2, v6, v5

    const/4 p2, 0x5

    aput v2, v6, p2

    const/4 p2, 0x6

    aput v4, v6, p2

    const/4 p2, 0x7

    aput v4, v6, p2

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 103
    :cond_51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return p4

    .line 106
    :cond_55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/ShapeDrawable;->inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z

    move-result p1

    return p1
.end method

.method public whitelist setCornerRadii([F)V
    .registers 4

    .line 63
    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 64
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 65
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_15

    .line 68
    :cond_d
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, p1, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 70
    :cond_15
    :goto_15
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->invalidateSelf()V

    .line 71
    return-void
.end method

.method public whitelist setCornerRadius(F)V
    .registers 5

    .line 46
    nop

    .line 47
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_12

    .line 48
    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 49
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_13

    .line 50
    aput p1, v1, v2

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 47
    :cond_12
    const/4 v1, 0x0

    .line 53
    :cond_13
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 54
    return-void
.end method
