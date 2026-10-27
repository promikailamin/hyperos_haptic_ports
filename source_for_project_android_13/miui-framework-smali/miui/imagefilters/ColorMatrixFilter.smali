.class public Lmiui/imagefilters/ColorMatrixFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "ColorMatrixFilter.java"


# instance fields
.field private blacklist mColorMatrix:[F


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist processData(Lmiui/imagefilters/ImageData;)V
    .registers 40
    .param p1, "imgData"    # Lmiui/imagefilters/ImageData;

    .line 18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    if-eqz v2, :cond_12d

    array-length v2, v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_f

    goto/16 :goto_12d

    .line 20
    :cond_f
    iget v2, v1, Lmiui/imagefilters/ImageData;->width:I

    .line 21
    .local v2, "width":I
    iget v3, v1, Lmiui/imagefilters/ImageData;->height:I

    .line 22
    .local v3, "height":I
    iget-object v4, v1, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 24
    .local v4, "pixels":[I
    iget-object v5, v0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    const/4 v6, 0x0

    aget v7, v5, v6

    .line 25
    .local v7, "a":F
    const/4 v8, 0x1

    aget v8, v5, v8

    .line 26
    .local v8, "b":F
    const/4 v9, 0x2

    aget v9, v5, v9

    .line 27
    .local v9, "c":F
    const/4 v10, 0x3

    aget v10, v5, v10

    .line 28
    .local v10, "d":F
    const/4 v11, 0x4

    aget v11, v5, v11

    .line 29
    .local v11, "e":F
    const/4 v12, 0x5

    aget v12, v5, v12

    .line 30
    .local v12, "f":F
    const/4 v13, 0x6

    aget v13, v5, v13

    .line 31
    .local v13, "g":F
    const/4 v14, 0x7

    aget v14, v5, v14

    .line 32
    .local v14, "h":F
    const/16 v15, 0x8

    aget v15, v5, v15

    .line 33
    .local v15, "i":F
    const/16 v16, 0x9

    aget v16, v5, v16

    .line 34
    .local v16, "j":F
    const/16 v17, 0xa

    aget v17, v5, v17

    .line 35
    .local v17, "k":F
    const/16 v18, 0xb

    aget v18, v5, v18

    .line 36
    .local v18, "l":F
    const/16 v19, 0xc

    aget v19, v5, v19

    .line 37
    .local v19, "m":F
    const/16 v20, 0xd

    aget v20, v5, v20

    .line 38
    .local v20, "n":F
    const/16 v21, 0xe

    aget v21, v5, v21

    .line 39
    .local v21, "o":F
    const/16 v22, 0xf

    aget v22, v5, v22

    .line 40
    .local v22, "p":F
    const/16 v23, 0x10

    aget v23, v5, v23

    .line 41
    .local v23, "q":F
    const/16 v24, 0x11

    aget v24, v5, v24

    .line 42
    .local v24, "r":F
    const/16 v25, 0x12

    aget v25, v5, v25

    .line 43
    .local v25, "s":F
    const/16 v26, 0x13

    aget v5, v5, v26

    .line 45
    .local v5, "t":F
    const/16 v26, 0x0

    move/from16 v6, v26

    .local v6, "y":I
    :goto_63
    add-int/lit8 v0, v3, -0x1

    if-gt v6, v0, :cond_12c

    .line 46
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_68
    add-int/lit8 v1, v2, -0x1

    if-gt v0, v1, :cond_111

    .line 47
    mul-int v1, v6, v2

    add-int/2addr v1, v0

    .line 48
    .local v1, "colorIndex":I
    move/from16 v26, v2

    .end local v2    # "width":I
    .local v26, "width":I
    aget v2, v4, v1

    .line 49
    .local v2, "color":I
    move/from16 v28, v3

    .end local v3    # "height":I
    .local v28, "height":I
    ushr-int/lit8 v3, v2, 0x10

    move/from16 v29, v6

    .end local v6    # "y":I
    .local v29, "y":I
    const/16 v6, 0xff

    and-int/2addr v3, v6

    .line 50
    .local v3, "R":I
    move/from16 v30, v0

    .end local v0    # "x":I
    .local v30, "x":I
    ushr-int/lit8 v0, v2, 0x8

    and-int/2addr v0, v6

    .line 51
    .local v0, "G":I
    and-int/lit16 v6, v2, 0xff

    .line 52
    .local v6, "B":I
    move/from16 v32, v1

    .end local v1    # "colorIndex":I
    .local v32, "colorIndex":I
    ushr-int/lit8 v1, v2, 0x18

    move/from16 v33, v2

    const/16 v2, 0xff

    .end local v2    # "color":I
    .local v33, "color":I
    and-int/2addr v1, v2

    .line 54
    .local v1, "A":I
    int-to-float v2, v3

    mul-float/2addr v2, v7

    move/from16 v34, v7

    .end local v7    # "a":F
    .local v34, "a":F
    int-to-float v7, v0

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    int-to-float v7, v6

    mul-float/2addr v7, v9

    add-float/2addr v2, v7

    int-to-float v7, v1

    mul-float/2addr v7, v10

    add-float/2addr v2, v7

    add-float/2addr v2, v11

    float-to-int v2, v2

    move/from16 v35, v8

    const/4 v7, 0x0

    const/16 v8, 0xff

    .end local v8    # "b":F
    .local v35, "b":F
    invoke-static {v7, v2, v8}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v2

    .line 55
    .local v2, "newR":I
    int-to-float v7, v3

    mul-float/2addr v7, v12

    int-to-float v8, v0

    mul-float/2addr v8, v13

    add-float/2addr v7, v8

    int-to-float v8, v6

    mul-float/2addr v8, v14

    add-float/2addr v7, v8

    int-to-float v8, v1

    mul-float/2addr v8, v15

    add-float/2addr v7, v8

    add-float v7, v7, v16

    float-to-int v7, v7

    move/from16 v36, v9

    const/4 v8, 0x0

    const/16 v9, 0xff

    .end local v9    # "c":F
    .local v36, "c":F
    invoke-static {v8, v7, v9}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v7

    .line 56
    .local v7, "newG":I
    int-to-float v8, v3

    mul-float v8, v8, v17

    int-to-float v9, v0

    mul-float v9, v9, v18

    add-float/2addr v8, v9

    int-to-float v9, v6

    mul-float v9, v9, v19

    add-float/2addr v8, v9

    int-to-float v9, v1

    mul-float v9, v9, v20

    add-float/2addr v8, v9

    add-float v8, v8, v21

    float-to-int v8, v8

    move/from16 v37, v10

    const/4 v9, 0x0

    const/16 v10, 0xff

    .end local v10    # "d":F
    .local v37, "d":F
    invoke-static {v9, v8, v10}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v8

    .line 57
    .local v8, "newB":I
    int-to-float v9, v3

    mul-float v9, v9, v22

    int-to-float v10, v0

    mul-float v10, v10, v23

    add-float/2addr v9, v10

    int-to-float v10, v6

    mul-float v10, v10, v24

    add-float/2addr v9, v10

    int-to-float v10, v1

    mul-float v10, v10, v25

    add-float/2addr v9, v10

    add-float/2addr v9, v5

    float-to-int v9, v9

    move/from16 v27, v0

    const/16 v0, 0xff

    const/4 v10, 0x0

    .end local v0    # "G":I
    .local v27, "G":I
    invoke-static {v10, v9, v0}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v0

    .line 59
    .local v0, "newA":I
    shl-int/lit8 v9, v0, 0x18

    shl-int/lit8 v31, v2, 0x10

    or-int v9, v9, v31

    shl-int/lit8 v31, v7, 0x8

    or-int v9, v9, v31

    or-int/2addr v9, v8

    aput v9, v4, v32

    .line 46
    .end local v0    # "newA":I
    .end local v1    # "A":I
    .end local v2    # "newR":I
    .end local v3    # "R":I
    .end local v6    # "B":I
    .end local v7    # "newG":I
    .end local v8    # "newB":I
    .end local v27    # "G":I
    .end local v32    # "colorIndex":I
    .end local v33    # "color":I
    add-int/lit8 v0, v30, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v28

    move/from16 v6, v29

    move/from16 v7, v34

    move/from16 v8, v35

    move/from16 v9, v36

    move/from16 v10, v37

    .end local v30    # "x":I
    .local v0, "x":I
    goto/16 :goto_68

    .end local v26    # "width":I
    .end local v28    # "height":I
    .end local v29    # "y":I
    .end local v34    # "a":F
    .end local v35    # "b":F
    .end local v36    # "c":F
    .end local v37    # "d":F
    .local v2, "width":I
    .local v3, "height":I
    .local v6, "y":I
    .local v7, "a":F
    .local v8, "b":F
    .restart local v9    # "c":F
    .restart local v10    # "d":F
    :cond_111
    move/from16 v30, v0

    move/from16 v26, v2

    move/from16 v28, v3

    move/from16 v29, v6

    move/from16 v34, v7

    move/from16 v35, v8

    move/from16 v36, v9

    move/from16 v37, v10

    const/4 v10, 0x0

    .line 45
    .end local v0    # "x":I
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v6    # "y":I
    .end local v7    # "a":F
    .end local v8    # "b":F
    .end local v9    # "c":F
    .end local v10    # "d":F
    .restart local v26    # "width":I
    .restart local v28    # "height":I
    .restart local v29    # "y":I
    .restart local v34    # "a":F
    .restart local v35    # "b":F
    .restart local v36    # "c":F
    .restart local v37    # "d":F
    add-int/lit8 v6, v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, v37

    .end local v29    # "y":I
    .restart local v6    # "y":I
    goto/16 :goto_63

    .line 62
    .end local v6    # "y":I
    .end local v26    # "width":I
    .end local v28    # "height":I
    .end local v34    # "a":F
    .end local v35    # "b":F
    .end local v36    # "c":F
    .end local v37    # "d":F
    .restart local v2    # "width":I
    .restart local v3    # "height":I
    .restart local v7    # "a":F
    .restart local v8    # "b":F
    .restart local v9    # "c":F
    .restart local v10    # "d":F
    :cond_12c
    return-void

    .line 18
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "pixels":[I
    .end local v5    # "t":F
    .end local v7    # "a":F
    .end local v8    # "b":F
    .end local v9    # "c":F
    .end local v10    # "d":F
    .end local v11    # "e":F
    .end local v12    # "f":F
    .end local v13    # "g":F
    .end local v14    # "h":F
    .end local v15    # "i":F
    .end local v16    # "j":F
    .end local v17    # "k":F
    .end local v18    # "l":F
    .end local v19    # "m":F
    .end local v20    # "n":F
    .end local v21    # "o":F
    .end local v22    # "p":F
    .end local v23    # "q":F
    .end local v24    # "r":F
    .end local v25    # "s":F
    :cond_12d
    :goto_12d
    return-void
.end method

.method public whitelist setColorMatrix([F)V
    .registers 2
    .param p1, "colorMatrix"    # [F

    .line 13
    iput-object p1, p0, Lmiui/imagefilters/ColorMatrixFilter;->mColorMatrix:[F

    .line 14
    return-void
.end method
