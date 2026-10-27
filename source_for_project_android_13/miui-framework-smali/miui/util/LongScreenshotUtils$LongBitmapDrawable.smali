.class public Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongBitmapDrawable"
.end annotation


# static fields
.field static final blacklist MAX_PART_HEIGHT:I = 0x400


# instance fields
.field private blacklist mBitmaps:[Landroid/graphics/Bitmap;

.field private blacklist mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Bitmap;)V
    .registers 12
    .param p1, "longBitmap"    # Landroid/graphics/Bitmap;

    .line 120
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 121
    if-nez p1, :cond_13

    return-void

    .line 123
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 125
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 126
    .local v2, "restHeight":I
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 128
    .local v3, "paint":Landroid/graphics/Paint;
    :goto_26
    if-lez v2, :cond_4b

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    .line 130
    .local v4, "currY":I
    const/16 v5, 0x400

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 131
    .local v5, "currBmpHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 132
    .local v6, "currBmp":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    neg-int v9, v4

    int-to-float v9, v9

    invoke-virtual {v7, p1, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sub-int/2addr v2, v5

    .line 137
    .end local v4    # "currY":I
    .end local v5    # "currBmpHeight":I
    .end local v6    # "currBmp":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    goto :goto_26

    .line 138
    :cond_4b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/Bitmap;

    iput-object v4, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 139
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 12
    .param p1, "file"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 92
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 93
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    :try_start_15
    invoke-static {p1, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_68

    .line 103
    .local v2, "decoder":Landroid/graphics/BitmapRegionDecoder;
    nop

    .line 104
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v5

    const/16 v6, 0x400

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {v3, v0, v0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    .line 106
    .local v4, "restHeight":I
    :goto_31
    if-lez v4, :cond_56

    .line 107
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 108
    .local v5, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3, v0, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 111
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v4, v6

    .line 112
    if-gez v4, :cond_55

    .line 113
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v4

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 115
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :cond_55
    goto :goto_31

    .line 116
    :cond_56
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 118
    return-void

    .line 100
    .end local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "restHeight":I
    :catch_68
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    return-void
.end method

.method public constructor blacklist <init>([Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .line 141
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 142
    iput-object p1, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 148
    invoke-virtual {p0}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 149
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_12

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    :cond_12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v3, v2

    if-ge v1, v3, :cond_3f

    .line 152
    aget-object v2, v2, v1

    .line 153
    .local v2, "bmp":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v7, v3

    sget-object v8, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 154
    iget-object v3, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    :cond_34
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 158
    .end local v1    # "i":I
    :cond_3f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 159
    return-void
.end method

.method public blacklist getBitmaps()[Landroid/graphics/Bitmap;
    .registers 2

    .line 192
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 5

    .line 169
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_1a

    .line 170
    :cond_8
    const/4 v0, 0x0

    .line 171
    .local v0, "totalHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v3, v2

    if-ge v1, v3, :cond_19

    .line 172
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 174
    .end local v1    # "i":I
    :cond_19
    return v0

    .line 169
    .end local v0    # "totalHeight":I
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 4

    .line 163
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    array-length v2, v0

    if-nez v2, :cond_9

    goto :goto_10

    .line 164
    :cond_9
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 163
    :cond_10
    :goto_10
    return v1
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 179
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 180
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 184
    return-void
.end method
