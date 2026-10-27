.class public Lcom/miui/autoui/utils/BitmapKey;
.super Ljava/lang/Object;
.source "BitmapKey.java"


# instance fields
.field private blacklist mHeight:I

.field private blacklist mIsValid:Z

.field private blacklist mSamplePixels:[I

.field private blacklist mViewId:Ljava/lang/String;

.field private blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/autoui/utils/BitmapKey;->mIsValid:Z

    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/autoui/utils/BitmapKey;->mSamplePixels:[I

    return-void
.end method

.method public static blacklist obtain(Landroid/view/View;Landroid/graphics/Bitmap;)Lcom/miui/autoui/utils/BitmapKey;
    .registers 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 16
    new-instance v0, Lcom/miui/autoui/utils/BitmapKey;

    invoke-direct {v0}, Lcom/miui/autoui/utils/BitmapKey;-><init>()V

    .line 17
    .local v0, "bitmapKey":Lcom/miui/autoui/utils/BitmapKey;
    invoke-static {p0}, Lcom/miui/autoui/utils/ViewProcessor;->getViewIdHasCode(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/autoui/utils/BitmapKey;->mViewId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/miui/autoui/utils/BitmapKey;->mWidth:I

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/miui/autoui/utils/BitmapKey;->mHeight:I

    .line 20
    iget v2, v0, Lcom/miui/autoui/utils/BitmapKey;->mWidth:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_49

    if-gt v1, v3, :cond_1f

    goto :goto_49

    .line 24
    :cond_1f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v3, :cond_48

    .line 25
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_23
    if-ge v2, v3, :cond_45

    .line 26
    iget-object v4, v0, Lcom/miui/autoui/utils/BitmapKey;->mSamplePixels:[I

    mul-int/lit8 v5, v1, 0x3

    add-int/2addr v5, v2

    iget v6, v0, Lcom/miui/autoui/utils/BitmapKey;->mWidth:I

    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x6

    iget v7, v0, Lcom/miui/autoui/utils/BitmapKey;->mHeight:I

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x6

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    aput v6, v4, v5

    .line 25
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 24
    .end local v2    # "j":I
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 30
    .end local v1    # "i":I
    :cond_48
    return-object v0

    .line 21
    :cond_49
    :goto_49
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/autoui/utils/BitmapKey;->mIsValid:Z

    .line 22
    return-object v0
.end method


# virtual methods
.method public blacklist equals(Lcom/miui/autoui/utils/BitmapKey;)Z
    .registers 6
    .param p1, "o"    # Lcom/miui/autoui/utils/BitmapKey;

    .line 66
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    iget-object v1, p0, Lcom/miui/autoui/utils/BitmapKey;->mViewId:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/autoui/utils/BitmapKey;->mViewId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget v1, p0, Lcom/miui/autoui/utils/BitmapKey;->mWidth:I

    iget v2, p1, Lcom/miui/autoui/utils/BitmapKey;->mWidth:I

    if-ne v1, v2, :cond_2f

    iget v1, p0, Lcom/miui/autoui/utils/BitmapKey;->mHeight:I

    iget v2, p1, Lcom/miui/autoui/utils/BitmapKey;->mHeight:I

    if-eq v1, v2, :cond_1a

    goto :goto_2f

    .line 69
    :cond_1a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    const/16 v2, 0x9

    if-ge v1, v2, :cond_2d

    .line 70
    iget-object v2, p0, Lcom/miui/autoui/utils/BitmapKey;->mSamplePixels:[I

    aget v2, v2, v1

    iget-object v3, p1, Lcom/miui/autoui/utils/BitmapKey;->mSamplePixels:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_2a

    .line 71
    return v0

    .line 69
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 74
    .end local v1    # "i":I
    :cond_2d
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_2f
    :goto_2f
    return v0
.end method

.method public blacklist getViewId()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/miui/autoui/utils/BitmapKey;->mViewId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isAlmostEquals(Lcom/miui/autoui/utils/BitmapKey;)Z
    .registers 7
    .param p1, "o"    # Lcom/miui/autoui/utils/BitmapKey;

    .line 50
    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    iget-object v1, p0, Lcom/miui/autoui/utils/BitmapKey;->mViewId:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/autoui/utils/BitmapKey;->mViewId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget v1, p0, Lcom/miui/autoui/utils/BitmapKey;->mWidth:I

    iget v2, p1, Lcom/miui/autoui/utils/BitmapKey;->mWidth:I

    if-ne v1, v2, :cond_3c

    iget v1, p0, Lcom/miui/autoui/utils/BitmapKey;->mHeight:I

    iget v2, p1, Lcom/miui/autoui/utils/BitmapKey;->mHeight:I

    if-eq v1, v2, :cond_1a

    goto :goto_3c

    .line 53
    :cond_1a
    const/4 v1, 0x0

    .line 54
    .local v1, "diff":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    const/16 v3, 0x9

    if-ge v2, v3, :cond_2f

    .line 55
    iget-object v3, p0, Lcom/miui/autoui/utils/BitmapKey;->mSamplePixels:[I

    aget v3, v3, v2

    iget-object v4, p1, Lcom/miui/autoui/utils/BitmapKey;->mSamplePixels:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_2c

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 54
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 59
    .end local v2    # "i":I
    :cond_2f
    int-to-float v2, v1

    const/high16 v3, 0x41100000    # 9.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3b

    .line 60
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_3b
    return v0

    .line 51
    .end local v1    # "diff":I
    :cond_3c
    :goto_3c
    return v0
.end method

.method public blacklist isAlpha(Landroid/graphics/Bitmap;)Z
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "diff":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x9

    if-ge v1, v2, :cond_17

    .line 38
    iget-object v2, p0, Lcom/miui/autoui/utils/BitmapKey;->mSamplePixels:[I

    aget v2, v2, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_14

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 37
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 43
    .end local v1    # "i":I
    :cond_17
    int-to-float v1, v0

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_23

    .line 44
    const/4 v1, 0x1

    return v1

    .line 46
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lcom/miui/autoui/utils/BitmapKey;->mIsValid:Z

    return v0
.end method
