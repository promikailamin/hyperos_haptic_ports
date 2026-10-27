.class public Lmiui/imagefilters/LevelsFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "LevelsFilter.java"


# instance fields
.field private blacklist mInputMax:F

.field private blacklist mInputMiddle:F

.field private blacklist mInputMin:F

.field private blacklist mIsFilterB:Z

.field private blacklist mIsFilterG:Z

.field private blacklist mIsFilterR:Z

.field private blacklist mOutputMax:F

.field private blacklist mOutputMin:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    .line 7
    const/high16 v1, 0x437f0000    # 255.0f

    iput v1, p0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    .line 9
    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    .line 10
    iput v1, p0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterR:Z

    .line 13
    iput-boolean v0, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterG:Z

    .line 14
    iput-boolean v0, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterB:Z

    return-void
.end method

.method private static blacklist interpolate(FFFFFI)I
    .registers 14
    .param p0, "start"    # F
    .param p1, "gamma"    # F
    .param p2, "end"    # F
    .param p3, "outStart"    # F
    .param p4, "outEnd"    # F
    .param p5, "inputValue"    # I

    .line 79
    int-to-float v0, p5

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_7

    float-to-int v0, p3

    return v0

    .line 80
    :cond_7
    int-to-float v0, p5

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_e

    float-to-int v0, p4

    return v0

    .line 82
    :cond_e
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1f

    .line 83
    int-to-float v0, p5

    sub-float/2addr v0, p0

    sub-float v1, p4, p3

    mul-float/2addr v0, v1

    sub-float v1, p2, p0

    div-float/2addr v0, v1

    add-float/2addr v0, p3

    float-to-int v0, v0

    return v0

    .line 85
    :cond_1f
    sub-float v1, p2, p0

    .line 86
    .local v1, "inputRange":F
    sub-float v2, p4, p3

    .line 87
    .local v2, "outRange":F
    int-to-float v3, p5

    sub-float/2addr v3, p0

    div-float/2addr v3, v1

    .line 88
    .local v3, "factor":F
    sub-float v4, v0, v3

    float-to-double v4, v4

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float/2addr v0, v4

    .line 89
    .end local v3    # "factor":F
    .local v0, "factor":F
    mul-float v3, v2, v0

    add-float/2addr v3, p3

    float-to-int v3, v3

    return v3
.end method


# virtual methods
.method public whitelist processData(Lmiui/imagefilters/ImageData;)V
    .registers 21
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    .line 47
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lmiui/imagefilters/ImageData;->width:I

    .line 48
    .local v2, "width":I
    iget v3, v1, Lmiui/imagefilters/ImageData;->height:I

    .line 49
    .local v3, "height":I
    iget-object v4, v1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 51
    .local v4, "pixels":[I
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_b
    if-ge v5, v2, :cond_77

    .line 52
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_e
    if-ge v6, v3, :cond_74

    .line 54
    mul-int v7, v6, v2

    add-int/2addr v7, v5

    .line 55
    .local v7, "colorIndex":I
    aget v8, v4, v7

    .line 56
    .local v8, "argb":I
    const/high16 v9, 0xff0000

    and-int/2addr v9, v8

    ushr-int/lit8 v9, v9, 0x10

    .line 57
    .local v9, "r":I
    const v10, 0xff00

    and-int/2addr v10, v8

    ushr-int/lit8 v17, v10, 0x8

    .line 58
    .local v17, "g":I
    and-int/lit16 v15, v8, 0xff

    .line 61
    .local v15, "b":I
    iget-boolean v10, v0, Lmiui/imagefilters/LevelsFilter;->mIsFilterR:Z

    if-eqz v10, :cond_38

    .line 62
    iget v10, v0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    iget v11, v0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    iget v12, v0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    iget v13, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    iget v14, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    move/from16 v18, v15

    .end local v15    # "b":I
    .local v18, "b":I
    move v15, v9

    invoke-static/range {v10 .. v15}, Lmiui/imagefilters/LevelsFilter;->interpolate(FFFFFI)I

    move-result v9

    goto :goto_3a

    .line 61
    .end local v18    # "b":I
    .restart local v15    # "b":I
    :cond_38
    move/from16 v18, v15

    .line 64
    .end local v15    # "b":I
    .restart local v18    # "b":I
    :goto_3a
    iget-boolean v10, v0, Lmiui/imagefilters/LevelsFilter;->mIsFilterG:Z

    if-eqz v10, :cond_4e

    .line 65
    iget v11, v0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    iget v12, v0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    iget v13, v0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    iget v14, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    iget v15, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    move/from16 v16, v17

    invoke-static/range {v11 .. v16}, Lmiui/imagefilters/LevelsFilter;->interpolate(FFFFFI)I

    move-result v17

    .line 67
    :cond_4e
    iget-boolean v10, v0, Lmiui/imagefilters/LevelsFilter;->mIsFilterB:Z

    if-eqz v10, :cond_63

    .line 68
    iget v10, v0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    iget v11, v0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    iget v12, v0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    iget v13, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    iget v14, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    move/from16 v15, v18

    invoke-static/range {v10 .. v15}, Lmiui/imagefilters/LevelsFilter;->interpolate(FFFFFI)I

    move-result v15

    .end local v18    # "b":I
    .restart local v15    # "b":I
    goto :goto_65

    .line 67
    .end local v15    # "b":I
    .restart local v18    # "b":I
    :cond_63
    move/from16 v15, v18

    .line 72
    .end local v18    # "b":I
    .restart local v15    # "b":I
    :goto_65
    shl-int/lit8 v10, v9, 0x10

    shl-int/lit8 v11, v17, 0x8

    or-int/2addr v10, v11

    or-int/2addr v10, v15

    const/high16 v11, -0x1000000

    and-int/2addr v11, v8

    or-int/2addr v10, v11

    aput v10, v4, v7

    .line 52
    .end local v7    # "colorIndex":I
    .end local v8    # "argb":I
    .end local v9    # "r":I
    .end local v15    # "b":I
    .end local v17    # "g":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 51
    .end local v6    # "y":I
    :cond_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 75
    .end local v5    # "x":I
    :cond_77
    return-void
.end method

.method public whitelist setChannel(Ljava/lang/String;)V
    .registers 4
    .param p1, "channel"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 38
    .local v0, "outRgb":[Z
    invoke-static {p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->checkChannelParam(Ljava/lang/String;[Z)V

    .line 39
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterR:Z

    .line 40
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterG:Z

    .line 41
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterB:Z

    .line 42
    return-void
.end method

.method public whitelist setInputMax(F)V
    .registers 4
    .param p1, "value"    # F

    .line 25
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    .line 26
    return-void
.end method

.method public whitelist setInputMiddle(F)V
    .registers 4
    .param p1, "value"    # F

    .line 21
    const v0, 0x38d1b717    # 1.0E-4f

    const v1, 0x411fff97    # 9.9999f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    .line 22
    return-void
.end method

.method public whitelist setInputMin(F)V
    .registers 4
    .param p1, "value"    # F

    .line 17
    const/4 v0, 0x0

    const/high16 v1, 0x437d0000    # 253.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    .line 18
    return-void
.end method

.method public whitelist setOutputMax(F)V
    .registers 4
    .param p1, "value"    # F

    .line 33
    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    .line 34
    return-void
.end method

.method public whitelist setOutputMin(F)V
    .registers 4
    .param p1, "value"    # F

    .line 29
    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    .line 30
    return-void
.end method
