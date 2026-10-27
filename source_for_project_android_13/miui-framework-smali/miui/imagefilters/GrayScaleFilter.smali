.class public Lmiui/imagefilters/GrayScaleFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "GrayScaleFilter.java"


# instance fields
.field private blacklist mBlackColor:I

.field private blacklist mWhiteColor:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 6
    const/high16 v0, -0x1000000

    iput v0, p0, Lmiui/imagefilters/GrayScaleFilter;->mBlackColor:I

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lmiui/imagefilters/GrayScaleFilter;->mWhiteColor:I

    return-void
.end method


# virtual methods
.method public whitelist processData(Lmiui/imagefilters/ImageData;)V
    .registers 25
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    .line 20
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lmiui/imagefilters/ImageData;->width:I

    .line 21
    .local v2, "width":I
    iget v3, v1, Lmiui/imagefilters/ImageData;->height:I

    .line 22
    .local v3, "height":I
    iget-object v4, v1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 24
    .local v4, "pixels":[I
    iget v5, v0, Lmiui/imagefilters/GrayScaleFilter;->mBlackColor:I

    ushr-int/lit8 v6, v5, 0x18

    .line 25
    .local v6, "aBlack":I
    iget v7, v0, Lmiui/imagefilters/GrayScaleFilter;->mWhiteColor:I

    ushr-int/lit8 v8, v7, 0x18

    .line 26
    .local v8, "aWhite":I
    ushr-int/lit8 v9, v5, 0x10

    const/16 v10, 0xff

    and-int/2addr v9, v10

    .line 27
    .local v9, "rBlack":I
    ushr-int/lit8 v11, v7, 0x10

    and-int/2addr v11, v10

    .line 28
    .local v11, "rWhite":I
    ushr-int/lit8 v12, v5, 0x8

    and-int/2addr v12, v10

    .line 29
    .local v12, "gBlack":I
    ushr-int/lit8 v13, v7, 0x8

    and-int/2addr v13, v10

    .line 30
    .local v13, "gWhite":I
    and-int/2addr v5, v10

    .line 31
    .local v5, "bBlack":I
    and-int/2addr v7, v10

    .line 33
    .local v7, "bWhite":I
    const/4 v14, 0x0

    .local v14, "x":I
    :goto_23
    if-ge v14, v2, :cond_6e

    .line 34
    const/4 v15, 0x0

    .local v15, "y":I
    :goto_26
    if-ge v15, v3, :cond_64

    .line 36
    mul-int v16, v15, v2

    add-int v16, v16, v14

    .line 37
    .local v16, "colorIndex":I
    aget v17, v4, v16

    .line 40
    .local v17, "argb":I
    invoke-static/range {v17 .. v17}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v10

    .line 43
    .local v10, "luminance":I
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {v0, v1, v6, v8, v10}, Lmiui/imagefilters/ImageFilterUtils;->interpolate(IIIII)I

    move-result v18

    .line 44
    .local v18, "newA":I
    invoke-static {v0, v1, v9, v11, v10}, Lmiui/imagefilters/ImageFilterUtils;->interpolate(IIIII)I

    move-result v19

    .line 45
    .local v19, "newR":I
    invoke-static {v0, v1, v12, v13, v10}, Lmiui/imagefilters/ImageFilterUtils;->interpolate(IIIII)I

    move-result v20

    .line 46
    .local v20, "newG":I
    invoke-static {v0, v1, v5, v7, v10}, Lmiui/imagefilters/ImageFilterUtils;->interpolate(IIIII)I

    move-result v0

    .line 49
    .local v0, "newB":I
    ushr-int/lit8 v21, v17, 0x18

    move/from16 v22, v2

    .end local v2    # "width":I
    .local v22, "width":I
    mul-int v2, v18, v21

    div-int/2addr v2, v1

    .line 52
    .end local v18    # "newA":I
    .local v2, "newA":I
    shl-int/lit8 v18, v2, 0x18

    shl-int/lit8 v21, v19, 0x10

    or-int v18, v18, v21

    shl-int/lit8 v21, v20, 0x8

    or-int v18, v18, v21

    or-int v18, v18, v0

    aput v18, v4, v16

    .line 34
    .end local v0    # "newB":I
    .end local v2    # "newA":I
    .end local v10    # "luminance":I
    .end local v16    # "colorIndex":I
    .end local v17    # "argb":I
    .end local v19    # "newR":I
    .end local v20    # "newG":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move v10, v1

    move/from16 v2, v22

    move-object/from16 v1, p1

    goto :goto_26

    .end local v22    # "width":I
    .local v2, "width":I
    :cond_64
    move/from16 v22, v2

    move v1, v10

    .line 33
    .end local v2    # "width":I
    .end local v15    # "y":I
    .restart local v22    # "width":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_23

    .line 55
    .end local v14    # "x":I
    .end local v22    # "width":I
    .restart local v2    # "width":I
    :cond_6e
    return-void
.end method

.method public whitelist setBlackColor(Ljava/lang/String;)V
    .registers 3
    .param p1, "strColor"    # Ljava/lang/String;

    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/imagefilters/GrayScaleFilter;->mBlackColor:I

    .line 11
    return-void
.end method

.method public whitelist setWhiteColor(Ljava/lang/String;)V
    .registers 3
    .param p1, "strColor"    # Ljava/lang/String;

    .line 14
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/imagefilters/GrayScaleFilter;->mWhiteColor:I

    .line 15
    return-void
.end method
