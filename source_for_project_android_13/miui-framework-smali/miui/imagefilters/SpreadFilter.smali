.class public Lmiui/imagefilters/SpreadFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "SpreadFilter.java"


# instance fields
.field private blacklist mIsAlphaSpread:Z

.field private blacklist mIsSpreadBlack:Z

.field private blacklist mRadius:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/SpreadFilter;->mIsSpreadBlack:Z

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    return-void
.end method

.method private static final blacklist getColor([IIIII)I
    .registers 7
    .param p0, "pixels"    # [I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 70
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result p1

    .line 71
    add-int/lit8 v0, p4, -0x1

    invoke-static {v1, p2, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result p2

    .line 72
    mul-int v0, p2, p3

    add-int/2addr v0, p1

    aget v0, p0, v0

    return v0
.end method

.method private blacklist getLuminance(II)I
    .registers 5
    .param p1, "color"    # I
    .param p2, "alpha"    # I

    .line 63
    invoke-static {p1}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v0

    .line 64
    .local v0, "lum":I
    iget-boolean v1, p0, Lmiui/imagefilters/SpreadFilter;->mIsSpreadBlack:Z

    if-eqz v1, :cond_a

    rsub-int v0, v0, 0xff

    .line 65
    :cond_a
    mul-int/2addr v0, p2

    .line 66
    return v0
.end method

.method private blacklist processPerPixel([IIIII)I
    .registers 21
    .param p1, "pixels"    # [I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 38
    move-object v0, p0

    iget v1, v0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    mul-int v2, v1, v1

    .line 39
    .local v2, "radiusSquare":I
    iget-boolean v3, v0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    const/16 v4, 0xff

    if-eqz v3, :cond_d

    move v3, v4

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    .line 40
    .local v3, "resultA":I
    :goto_e
    const/4 v5, 0x0

    .line 41
    .local v5, "resultRgb":I
    const/4 v6, -0x1

    .line 43
    .local v6, "resultLuminance":I
    neg-int v1, v1

    .local v1, "yCursor":I
    :goto_11
    iget v7, v0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    if-gt v1, v7, :cond_5e

    .line 44
    neg-int v7, v7

    .local v7, "xCursor":I
    :goto_16
    iget v8, v0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    if-gt v7, v8, :cond_55

    .line 45
    mul-int v8, v1, v1

    mul-int v9, v7, v7

    add-int/2addr v8, v9

    if-le v8, v2, :cond_28

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    goto :goto_52

    .line 47
    :cond_28
    add-int v8, p2, v7

    add-int v9, p3, v1

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-static {v10, v8, v9, v11, v12}, Lmiui/imagefilters/SpreadFilter;->getColor([IIIII)I

    move-result v8

    .line 48
    .local v8, "color":I
    ushr-int/lit8 v9, v8, 0x18

    and-int/2addr v9, v4

    .line 49
    .local v9, "alpha":I
    invoke-direct {p0, v8, v9}, Lmiui/imagefilters/SpreadFilter;->getLuminance(II)I

    move-result v13

    .line 50
    .local v13, "lum":I
    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 51
    if-ne v6, v13, :cond_44

    .line 52
    move v5, v8

    .line 55
    :cond_44
    iget-boolean v14, v0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    if-eqz v14, :cond_4d

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_51

    :cond_4d
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_51
    move v3, v14

    .line 44
    .end local v8    # "color":I
    .end local v9    # "alpha":I
    .end local v13    # "lum":I
    :goto_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_55
    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    .line 43
    .end local v7    # "xCursor":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_5e
    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    .line 59
    .end local v1    # "yCursor":I
    shl-int/lit8 v1, v3, 0x18

    const v4, 0xffffff

    and-int/2addr v4, v5

    or-int/2addr v1, v4

    return v1
.end method


# virtual methods
.method public whitelist processData(Lmiui/imagefilters/ImageData;)V
    .registers 15
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    .line 23
    iget v6, p1, Lmiui/imagefilters/ImageData;->width:I

    .line 24
    .local v6, "width":I
    iget v7, p1, Lmiui/imagefilters/ImageData;->height:I

    .line 25
    .local v7, "height":I
    iget-object v8, p1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 26
    .local v8, "pixels":[I
    invoke-virtual {p1}, Lmiui/imagefilters/ImageData;->getBackPixels()[I

    move-result-object v9

    .line 28
    .local v9, "backPixels":[I
    const/4 v0, 0x0

    move v10, v0

    .local v10, "y":I
    :goto_c
    add-int/lit8 v0, v7, -0x1

    if-gt v10, v0, :cond_2c

    .line 29
    const/4 v0, 0x0

    move v11, v0

    .local v11, "x":I
    :goto_12
    add-int/lit8 v0, v6, -0x1

    if-gt v11, v0, :cond_29

    .line 30
    mul-int v0, v10, v6

    add-int v12, v0, v11

    .line 31
    .local v12, "colorIndex":I
    move-object v0, p0

    move-object v1, v8

    move v2, v11

    move v3, v10

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/SpreadFilter;->processPerPixel([IIIII)I

    move-result v0

    aput v0, v9, v12

    .line 29
    .end local v12    # "colorIndex":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 28
    .end local v11    # "x":I
    :cond_29
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 34
    .end local v10    # "y":I
    :cond_2c
    invoke-virtual {p1}, Lmiui/imagefilters/ImageData;->swapPixels()V

    .line 35
    return-void
.end method

.method public whitelist setIsAlphaSpread(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 18
    iput-boolean p1, p0, Lmiui/imagefilters/SpreadFilter;->mIsAlphaSpread:Z

    .line 19
    return-void
.end method

.method public whitelist setIsSpreadBlack(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 14
    iput-boolean p1, p0, Lmiui/imagefilters/SpreadFilter;->mIsSpreadBlack:Z

    .line 15
    return-void
.end method

.method public whitelist setRadius(I)V
    .registers 2
    .param p1, "radius"    # I

    .line 10
    iput p1, p0, Lmiui/imagefilters/SpreadFilter;->mRadius:I

    .line 11
    return-void
.end method
