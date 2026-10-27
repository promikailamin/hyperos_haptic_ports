.class public Lmiui/imagefilters/ConvolutionFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "ConvolutionFilter.java"


# instance fields
.field private blacklist mBias:I

.field private blacklist mDivisor:I

.field private blacklist mIsFilterA:Z

.field private blacklist mIsFilterB:Z

.field private blacklist mIsFilterG:Z

.field private blacklist mIsFilterR:Z

.field private blacklist mIsParamsFormated:Z

.field private blacklist mMatrix:[I

.field private blacklist mMatrixSideLength:I

.field private blacklist mRepeatCount:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterR:Z

    .line 13
    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterG:Z

    .line 14
    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterB:Z

    .line 15
    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterA:Z

    return-void
.end method

.method private declared-synchronized blacklist formatParams()V
    .registers 5

    monitor-enter p0

    .line 49
    :try_start_1
    iget-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_61

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 50
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z

    .line 52
    iget-object v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    if-eqz v1, :cond_5f

    .line 53
    array-length v2, v1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_17

    const/4 v1, 0x3

    iput v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I

    goto :goto_34

    .line 54
    .end local p0    # "this":Lmiui/imagefilters/ConvolutionFilter;
    :cond_17
    array-length v2, v1

    const/16 v3, 0x19

    if-ne v2, v3, :cond_20

    const/4 v1, 0x5

    iput v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I

    goto :goto_34

    .line 56
    :cond_20
    array-length v1, v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I

    .line 57
    mul-int v2, v1, v1

    iget-object v3, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    array-length v3, v3

    if-ne v2, v3, :cond_57

    .line 58
    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v0, :cond_4f

    .line 61
    :goto_34
    iget v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    if-nez v1, :cond_5f

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_39
    iget-object v2, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    array-length v3, v2

    if-ge v1, v3, :cond_48

    .line 63
    iget v3, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    aget v2, v2, v1

    add-int/2addr v3, v2

    iput v3, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 65
    .end local v1    # "i":I
    :cond_48
    iget v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    if-nez v1, :cond_5f

    iput v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    goto :goto_5f

    .line 58
    :cond_4f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "matrixX and matrixY must be odd."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "matrix must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5f
    .catchall {:try_start_8 .. :try_end_5f} :catchall_61

    .line 68
    :cond_5f
    :goto_5f
    monitor-exit p0

    return-void

    .line 48
    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final blacklist getColor([IIIII)I
    .registers 7
    .param p0, "pixels"    # [I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 130
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result p1

    .line 131
    add-int/lit8 v0, p4, -0x1

    invoke-static {v1, p2, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result p2

    .line 132
    mul-int v0, p2, p3

    add-int/2addr v0, p1

    aget v0, p0, v0

    return v0
.end method

.method private blacklist processOnce(Lmiui/imagefilters/ImageData;)V
    .registers 15
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    .line 83
    iget v6, p1, Lmiui/imagefilters/ImageData;->width:I

    .line 84
    .local v6, "width":I
    iget v7, p1, Lmiui/imagefilters/ImageData;->height:I

    .line 85
    .local v7, "height":I
    iget-object v8, p1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 86
    .local v8, "pixels":[I
    invoke-virtual {p1}, Lmiui/imagefilters/ImageData;->getBackPixels()[I

    move-result-object v9

    .line 88
    .local v9, "backPixels":[I
    const/4 v0, 0x0

    move v10, v0

    .local v10, "y":I
    :goto_c
    add-int/lit8 v0, v7, -0x1

    if-gt v10, v0, :cond_2c

    .line 89
    const/4 v0, 0x0

    move v11, v0

    .local v11, "x":I
    :goto_12
    add-int/lit8 v0, v6, -0x1

    if-gt v11, v0, :cond_29

    .line 90
    mul-int v0, v10, v6

    add-int v12, v0, v11

    .line 91
    .local v12, "colorIndex":I
    move-object v0, p0

    move-object v1, v8

    move v2, v11

    move v3, v10

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lmiui/imagefilters/ConvolutionFilter;->processPerPixel([IIIII)I

    move-result v0

    aput v0, v9, v12

    .line 89
    .end local v12    # "colorIndex":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 88
    .end local v11    # "x":I
    :cond_29
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 94
    .end local v10    # "y":I
    :cond_2c
    invoke-virtual {p1}, Lmiui/imagefilters/ImageData;->swapPixels()V

    .line 95
    return-void
.end method

.method private blacklist processPerPixel([IIIII)I
    .registers 24
    .param p1, "pixels"    # [I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 98
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 99
    .local v1, "totalR":I
    const/4 v2, 0x0

    .line 100
    .local v2, "totalG":I
    const/4 v3, 0x0

    .line 101
    .local v3, "totalB":I
    const/4 v4, 0x0

    .line 102
    .local v4, "totalA":I
    iget v5, v0, Lmiui/imagefilters/ConvolutionFilter;->mMatrixSideLength:I

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v5, v5, 0x2

    .line 104
    .local v5, "radius":I
    const/4 v6, 0x0

    .line 105
    .local v6, "i":I
    neg-int v7, v5

    .local v7, "yCursor":I
    :goto_e
    const/16 v8, 0xff

    if-gt v7, v5, :cond_59

    .line 106
    neg-int v9, v5

    .local v9, "xCursor":I
    :goto_13
    if-gt v9, v5, :cond_50

    .line 107
    iget-object v10, v0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    aget v10, v10, v6

    .line 108
    .local v10, "matrixEle":I
    add-int v11, p2, v9

    add-int v12, p3, v7

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-static {v13, v11, v12, v14, v15}, Lmiui/imagefilters/ConvolutionFilter;->getColor([IIIII)I

    move-result v11

    .line 110
    .local v11, "color":I
    iget-boolean v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterR:Z

    if-eqz v12, :cond_30

    ushr-int/lit8 v12, v11, 0x10

    and-int/2addr v12, v8

    mul-int/2addr v12, v10

    add-int/2addr v1, v12

    .line 111
    :cond_30
    iget-boolean v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterG:Z

    if-eqz v12, :cond_39

    ushr-int/lit8 v12, v11, 0x8

    and-int/2addr v12, v8

    mul-int/2addr v12, v10

    add-int/2addr v2, v12

    .line 112
    :cond_39
    iget-boolean v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterB:Z

    if-eqz v12, :cond_41

    and-int/lit16 v12, v11, 0xff

    mul-int/2addr v12, v10

    add-int/2addr v3, v12

    .line 113
    :cond_41
    iget-boolean v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterA:Z

    if-eqz v12, :cond_4a

    ushr-int/lit8 v12, v11, 0x18

    and-int/2addr v12, v8

    mul-int/2addr v12, v10

    add-int/2addr v4, v12

    .line 115
    :cond_4a
    nop

    .end local v10    # "matrixEle":I
    .end local v11    # "color":I
    add-int/lit8 v6, v6, 0x1

    .line 106
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_50
    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v15, p5

    .line 105
    .end local v9    # "xCursor":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_59
    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v15, p5

    .line 119
    .end local v7    # "yCursor":I
    invoke-static/range {p1 .. p5}, Lmiui/imagefilters/ConvolutionFilter;->getColor([IIIII)I

    move-result v7

    .line 121
    .local v7, "color":I
    iget-boolean v9, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterR:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_74

    iget v9, v0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    div-int v9, v1, v9

    iget v11, v0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    add-int/2addr v9, v11

    invoke-static {v10, v9, v8}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v9

    goto :goto_77

    :cond_74
    ushr-int/lit8 v9, v7, 0x10

    and-int/2addr v9, v8

    .line 122
    .local v9, "newR":I
    :goto_77
    iget-boolean v11, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterG:Z

    if-eqz v11, :cond_87

    iget v11, v0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    div-int v11, v2, v11

    iget v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    add-int/2addr v11, v12

    invoke-static {v10, v11, v8}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v11

    goto :goto_8a

    :cond_87
    ushr-int/lit8 v11, v7, 0x8

    and-int/2addr v11, v8

    .line 123
    .local v11, "newG":I
    :goto_8a
    iget-boolean v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterB:Z

    if-eqz v12, :cond_9c

    iget v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    div-int v12, v3, v12

    move/from16 v16, v1

    .end local v1    # "totalR":I
    .local v16, "totalR":I
    iget v1, v0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    add-int/2addr v12, v1

    invoke-static {v10, v12, v8}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v1

    goto :goto_a0

    .end local v16    # "totalR":I
    .restart local v1    # "totalR":I
    :cond_9c
    move/from16 v16, v1

    .end local v1    # "totalR":I
    .restart local v16    # "totalR":I
    and-int/lit16 v1, v7, 0xff

    .line 124
    .local v1, "newB":I
    :goto_a0
    iget-boolean v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterA:Z

    if-eqz v12, :cond_b2

    iget v12, v0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    div-int v12, v4, v12

    move/from16 v17, v2

    .end local v2    # "totalG":I
    .local v17, "totalG":I
    iget v2, v0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    add-int/2addr v12, v2

    invoke-static {v10, v12, v8}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v2

    goto :goto_b7

    .end local v17    # "totalG":I
    .restart local v2    # "totalG":I
    :cond_b2
    move/from16 v17, v2

    .end local v2    # "totalG":I
    .restart local v17    # "totalG":I
    ushr-int/lit8 v2, v7, 0x18

    and-int/2addr v2, v8

    .line 126
    .local v2, "newA":I
    :goto_b7
    shl-int/lit8 v8, v2, 0x18

    shl-int/lit8 v10, v9, 0x10

    or-int/2addr v8, v10

    shl-int/lit8 v10, v11, 0x8

    or-int/2addr v8, v10

    or-int/2addr v8, v1

    return v8
.end method


# virtual methods
.method public whitelist processData(Lmiui/imagefilters/ImageData;)V
    .registers 4
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    .line 72
    iget-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lmiui/imagefilters/ConvolutionFilter;->formatParams()V

    .line 74
    :cond_7
    iget-object v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    if-nez v0, :cond_c

    return-void

    .line 76
    :cond_c
    iget v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mRepeatCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_12

    move v0, v1

    .line 77
    .local v0, "repeatCount":I
    :cond_12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1b

    .line 78
    invoke-direct {p0, p1}, Lmiui/imagefilters/ConvolutionFilter;->processOnce(Lmiui/imagefilters/ImageData;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 80
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public whitelist setBias(I)V
    .registers 2
    .param p1, "bias"    # I

    .line 36
    iput p1, p0, Lmiui/imagefilters/ConvolutionFilter;->mBias:I

    .line 37
    return-void
.end method

.method public whitelist setChannel(Ljava/lang/String;)V
    .registers 4
    .param p1, "channel"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 41
    .local v0, "outRgba":[Z
    invoke-static {p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->checkChannelParam(Ljava/lang/String;[Z)V

    .line 42
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterR:Z

    .line 43
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterG:Z

    .line 44
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterB:Z

    .line 45
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsFilterA:Z

    .line 46
    return-void
.end method

.method public whitelist setDivisor(I)V
    .registers 3
    .param p1, "divisor"    # I

    .line 31
    iput p1, p0, Lmiui/imagefilters/ConvolutionFilter;->mDivisor:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z

    .line 33
    return-void
.end method

.method public whitelist setMatrix([I)V
    .registers 3
    .param p1, "matrix"    # [I

    .line 22
    iput-object p1, p0, Lmiui/imagefilters/ConvolutionFilter;->mMatrix:[I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/imagefilters/ConvolutionFilter;->mIsParamsFormated:Z

    .line 24
    return-void
.end method

.method public whitelist setRepeatCount(I)V
    .registers 2
    .param p1, "count"    # I

    .line 27
    iput p1, p0, Lmiui/imagefilters/ConvolutionFilter;->mRepeatCount:I

    .line 28
    return-void
.end method
