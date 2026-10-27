.class public Lmiui/imagefilters/HslFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "HslFilter.java"


# instance fields
.field private blacklist mHueAdjust:F

.field private blacklist mHueModify:F

.field private blacklist mLightnessAdjust:F

.field private blacklist mLightnessModify:F

.field private blacklist mSaturationAdjust:F

.field private blacklist mSaturationModify:F

.field public whitelist useHsv:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 4
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    .line 5
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    .line 6
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    .line 8
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    .line 9
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    .line 10
    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    return-void
.end method


# virtual methods
.method public whitelist processData(Lmiui/imagefilters/ImageData;)V
    .registers 21
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    .line 63
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lmiui/imagefilters/ImageData;->width:I

    .line 64
    .local v2, "width":I
    iget v3, v1, Lmiui/imagefilters/ImageData;->height:I

    .line 65
    .local v3, "height":I
    iget-object v4, v1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 66
    .local v4, "pixels":[I
    const/4 v5, 0x3

    new-array v5, v5, [F

    .line 68
    .local v5, "triple":[F
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_e
    if-ge v6, v2, :cond_d9

    .line 69
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_11
    if-ge v7, v3, :cond_d5

    .line 71
    mul-int v8, v7, v2

    add-int/2addr v8, v6

    .line 72
    .local v8, "colorIndex":I
    aget v9, v4, v8

    .line 75
    .local v9, "rgb":I
    iget-boolean v10, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    if-eqz v10, :cond_20

    .line 76
    invoke-static {v9, v5}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsv(I[F)V

    goto :goto_23

    .line 78
    :cond_20
    invoke-static {v9, v5}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(I[F)V

    .line 80
    :goto_23
    const/4 v10, 0x0

    aget v10, v5, v10

    .line 81
    .local v10, "h":F
    const/4 v11, 0x1

    aget v11, v5, v11

    .line 82
    .local v11, "s":F
    const/4 v12, 0x2

    aget v12, v5, v12

    .line 85
    .local v12, "l":F
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    const/4 v14, 0x0

    if-nez v13, :cond_38

    .line 86
    iget v10, v0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    goto :goto_50

    .line 87
    :cond_38
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_50

    .line 88
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    add-float/2addr v10, v13

    .line 89
    const/high16 v13, 0x43b40000    # 360.0f

    cmpl-float v15, v10, v13

    if-ltz v15, :cond_4b

    .line 90
    sub-float/2addr v10, v13

    goto :goto_50

    .line 91
    :cond_4b
    cmpg-float v15, v10, v14

    if-gez v15, :cond_50

    .line 92
    add-float/2addr v10, v13

    .line 97
    :cond_50
    :goto_50
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v13, :cond_5d

    .line 98
    iget v11, v0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    goto :goto_8f

    .line 99
    :cond_5d
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_8f

    .line 100
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    cmpg-float v16, v13, v14

    if-gtz v16, :cond_6f

    .line 101
    add-float/2addr v13, v15

    mul-float/2addr v11, v13

    move v15, v14

    goto :goto_89

    .line 103
    :cond_6f
    const/high16 v16, 0x40000000    # 2.0f

    mul-float v13, v13, v16

    invoke-static {v15, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 104
    .local v13, "multipleFactor":F
    iget v14, v0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    const/high16 v18, 0x3f000000    # 0.5f

    sub-float v14, v14, v18

    mul-float v14, v14, v16

    .line 105
    .local v14, "additionFactor":F
    add-float v16, v13, v15

    mul-float v11, v11, v16

    .line 106
    const/4 v15, 0x0

    cmpl-float v17, v14, v15

    if-lez v17, :cond_89

    .line 107
    add-float/2addr v11, v14

    .line 110
    .end local v13    # "multipleFactor":F
    .end local v14    # "additionFactor":F
    :cond_89
    :goto_89
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v15, v11, v13}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v11

    .line 114
    :cond_8f
    :goto_8f
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_9a

    .line 115
    iget v12, v0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    goto :goto_b7

    .line 116
    :cond_9a
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_b7

    .line 117
    iget v13, v0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    const/4 v14, 0x0

    cmpg-float v14, v13, v14

    if-gtz v14, :cond_ae

    .line 118
    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v13, v14

    mul-float/2addr v12, v13

    goto :goto_b7

    .line 120
    :cond_ae
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v15, v14, v12

    sub-float v13, v14, v13

    mul-float/2addr v15, v13

    sub-float v12, v14, v15

    .line 126
    :cond_b7
    :goto_b7
    iget-boolean v13, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    if-eqz v13, :cond_c0

    .line 127
    invoke-static {v10, v11, v12}, Lmiui/imagefilters/ImageFilterUtils;->HsvToRgb(FFF)I

    move-result v13

    .local v13, "newRgb":I
    goto :goto_c4

    .line 129
    .end local v13    # "newRgb":I
    :cond_c0
    invoke-static {v10, v11, v12}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb(FFF)I

    move-result v13

    .line 133
    .restart local v13    # "newRgb":I
    :goto_c4
    const v14, 0xffffff

    and-int/2addr v14, v13

    aget v15, v4, v8

    const/high16 v16, -0x1000000

    and-int v15, v15, v16

    or-int/2addr v14, v15

    aput v14, v4, v8

    .line 69
    .end local v8    # "colorIndex":I
    .end local v9    # "rgb":I
    .end local v10    # "h":F
    .end local v11    # "s":F
    .end local v12    # "l":F
    .end local v13    # "newRgb":I
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11

    .line 68
    .end local v7    # "y":I
    :cond_d5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    .line 136
    .end local v6    # "x":I
    :cond_d9
    return-void
.end method

.method public whitelist setHueAdjust(F)V
    .registers 4
    .param p1, "hue"    # F

    .line 41
    const/high16 v0, -0x3ccc0000    # -180.0f

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueAdjust:F

    .line 42
    return-void
.end method

.method public whitelist setHueModify(F)V
    .registers 4
    .param p1, "hue"    # F

    .line 18
    const/4 v0, 0x0

    const v1, 0x43b3fffd    # 359.9999f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mHueModify:F

    .line 19
    return-void
.end method

.method public whitelist setLightnessAdjust(F)V
    .registers 4
    .param p1, "lightness"    # F

    .line 56
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 57
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessAdjust:F

    .line 58
    return-void
.end method

.method public whitelist setLightnessModify(F)V
    .registers 4
    .param p1, "lightness"    # F

    .line 33
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 34
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mLightnessModify:F

    .line 35
    return-void
.end method

.method public whitelist setSaturationAdjust(F)V
    .registers 4
    .param p1, "saturation"    # F

    .line 48
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 49
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationAdjust:F

    .line 50
    return-void
.end method

.method public whitelist setSaturationModify(F)V
    .registers 4
    .param p1, "saturation"    # F

    .line 25
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 26
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/HslFilter;->mSaturationModify:F

    .line 27
    return-void
.end method
