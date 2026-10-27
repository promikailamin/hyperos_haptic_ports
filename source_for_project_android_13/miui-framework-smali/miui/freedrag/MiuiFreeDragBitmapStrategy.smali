.class public Lmiui/freedrag/MiuiFreeDragBitmapStrategy;
.super Ljava/lang/Object;
.source "MiuiFreeDragBitmapStrategy.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiuiFreeDragBitmapStrategy"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist findBeginUnblackRow(Landroid/graphics/Bitmap;)I
    .registers 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 33
    const/4 v0, 0x0

    .local v0, "y":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .local v1, "height":I
    :goto_5
    if-ge v0, v1, :cond_11

    .line 35
    invoke-static {p0, v0}, Lmiui/freedrag/MiuiFreeDragBitmapStrategy;->isNotBlackRow(Landroid/graphics/Bitmap;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 36
    return v0

    .line 33
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 39
    .end local v0    # "y":I
    .end local v1    # "height":I
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist findEndUnblackRow(Landroid/graphics/Bitmap;)I
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "y":I
    :goto_6
    if-ltz v0, :cond_12

    .line 46
    invoke-static {p0, v0}, Lmiui/freedrag/MiuiFreeDragBitmapStrategy;->isNotBlackRow(Landroid/graphics/Bitmap;I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 47
    return v0

    .line 44
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 50
    .end local v0    # "y":I
    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 71
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 72
    :cond_4
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_10

    .line 73
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 74
    :cond_10
    instance-of v1, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v1, :cond_42

    .line 75
    nop

    .line 77
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 79
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_27

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_29

    .line 80
    :cond_27
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 76
    :goto_29
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    return-object v0

    .line 86
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_42
    return-object v0
.end method

.method public static blacklist getBitmapFromRelayoutView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "view"    # Landroid/view/View;

    .line 105
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 108
    :cond_4
    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 110
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 114
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_55} :catch_56

    .line 115
    return-object v1

    .line 116
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_56
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static blacklist getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .line 91
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 94
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_1b

    .line 98
    return-object v1

    .line 99
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :catch_1b
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static blacklist isBitmapEmpty(Landroid/graphics/Bitmap;)Z
    .registers 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 122
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 124
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .local v2, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v11, v3

    .line 125
    .local v11, "h":I
    mul-int v3, v2, v11

    new-array v3, v3, [I

    move-object v12, v3

    .line 126
    .local v12, "pixels":[I
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v12

    move v6, v2

    move v9, v2

    move v10, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 127
    array-length v3, v12

    move v4, v1

    :goto_20
    if-ge v4, v3, :cond_34

    aget v5, v12, v4
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_36

    .line 128
    .local v5, "p":I
    const v6, 0xffffff

    and-int/2addr v6, v5

    if-eqz v6, :cond_31

    ushr-int/lit8 v6, v5, 0x18

    const/16 v7, 0xf

    if-le v6, v7, :cond_31

    .line 129
    return v1

    .line 127
    .end local v5    # "p":I
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 133
    .end local v2    # "w":I
    .end local v11    # "h":I
    .end local v12    # "pixels":[I
    :cond_34
    nop

    .line 134
    return v0

    .line 131
    :catch_36
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    return v1
.end method

.method private static blacklist isNotBlackRow(Landroid/graphics/Bitmap;I)Z
    .registers 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "y"    # I

    .line 21
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 22
    .local v0, "width":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_5
    if-ge v1, v0, :cond_12

    .line 23
    invoke-virtual {p0, v1, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 24
    .local v2, "pixel":I
    if-eqz v2, :cond_f

    .line 25
    const/4 v3, 0x1

    return v3

    .line 22
    .end local v2    # "pixel":I
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 28
    .end local v1    # "x":I
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist removeBlackEdge(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 54
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    invoke-static {p0}, Lmiui/freedrag/MiuiFreeDragBitmapStrategy;->findBeginUnblackRow(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 56
    .local v0, "beginRow":I
    invoke-static {p0}, Lmiui/freedrag/MiuiFreeDragBitmapStrategy;->findEndUnblackRow(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 57
    .local v1, "endRow":I
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    .line 58
    .local v2, "clipHeight":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5f

    if-eq v1, v3, :cond_5f

    if-gtz v2, :cond_18

    goto :goto_5f

    .line 62
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeBlackEdge beginRow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endRow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clipHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    const-string v4, "MiuiFreeDragBitmapStrategy"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {p0, v3, v0, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 66
    .local v3, "clipBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    return-object v3

    .line 59
    .end local v3    # "clipBitmap":Landroid/graphics/Bitmap;
    :cond_5f
    :goto_5f
    return-object p0
.end method
