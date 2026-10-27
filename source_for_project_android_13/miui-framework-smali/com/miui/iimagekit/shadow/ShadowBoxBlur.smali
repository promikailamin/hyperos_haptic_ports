.class public Lcom/miui/iimagekit/shadow/ShadowBoxBlur;
.super Ljava/lang/Object;
.source "ShadowBoxBlur.java"


# static fields
.field static final blacklist ITERATIONS:I = 0x2

.field static final blacklist RADIUS_NUM:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist boxBlurHorizontal([IIII)V
    .registers 26
    .param p0, "pixels"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "halfRange"    # I

    .line 19
    move/from16 v0, p1

    move/from16 v1, p3

    const/4 v2, 0x0

    .line 20
    .local v2, "index":I
    new-array v3, v0, [I

    .line 22
    .local v3, "newColors":[I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_8
    move/from16 v5, p2

    if-ge v4, v5, :cond_a1

    .line 23
    const/4 v6, 0x0

    .line 24
    .local v6, "hits":I
    const-wide/16 v7, 0x0

    .line 25
    .local v7, "r":J
    const-wide/16 v9, 0x0

    .line 26
    .local v9, "g":J
    const-wide/16 v11, 0x0

    .line 27
    .local v11, "b":J
    neg-int v13, v1

    .local v13, "x":I
    :goto_14
    if-ge v13, v0, :cond_8e

    .line 28
    sub-int v14, v13, v1

    add-int/lit8 v14, v14, -0x1

    .line 29
    .local v14, "oldPixel":I
    if-ltz v14, :cond_3c

    .line 30
    add-int v15, v2, v14

    aget v15, p0, v15

    .line 31
    .local v15, "color":I
    if-eqz v15, :cond_37

    .line 32
    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v5

    move/from16 v16, v4

    .end local v4    # "y":I
    .local v16, "y":I
    int-to-long v4, v5

    sub-long/2addr v7, v4

    .line 33
    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v9, v4

    .line 34
    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v11, v4

    goto :goto_39

    .line 31
    .end local v16    # "y":I
    .restart local v4    # "y":I
    :cond_37
    move/from16 v16, v4

    .line 36
    .end local v4    # "y":I
    .restart local v16    # "y":I
    :goto_39
    add-int/lit8 v6, v6, -0x1

    goto :goto_3e

    .line 29
    .end local v15    # "color":I
    .end local v16    # "y":I
    .restart local v4    # "y":I
    :cond_3c
    move/from16 v16, v4

    .line 39
    .end local v4    # "y":I
    .restart local v16    # "y":I
    :goto_3e
    add-int v4, v13, v1

    .line 40
    .local v4, "newPixel":I
    if-ge v4, v0, :cond_62

    .line 41
    add-int v5, v2, v4

    aget v5, p0, v5

    .line 42
    .local v5, "color":I
    if-eqz v5, :cond_5d

    .line 43
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v15

    move/from16 v17, v14

    .end local v14    # "oldPixel":I
    .local v17, "oldPixel":I
    int-to-long v14, v15

    add-long/2addr v7, v14

    .line 44
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v9, v14

    .line 45
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v11, v14

    goto :goto_5f

    .line 42
    .end local v17    # "oldPixel":I
    .restart local v14    # "oldPixel":I
    :cond_5d
    move/from16 v17, v14

    .line 47
    .end local v14    # "oldPixel":I
    .restart local v17    # "oldPixel":I
    :goto_5f
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 40
    .end local v5    # "color":I
    .end local v17    # "oldPixel":I
    .restart local v14    # "oldPixel":I
    :cond_62
    move/from16 v17, v14

    .line 50
    .end local v14    # "oldPixel":I
    .restart local v17    # "oldPixel":I
    :goto_64
    if-ltz v13, :cond_7f

    .line 51
    const/16 v5, 0xff

    int-to-long v14, v6

    div-long v14, v7, v14

    long-to-int v14, v14

    move-wide/from16 v18, v7

    .end local v7    # "r":J
    .local v18, "r":J
    int-to-long v7, v6

    div-long v7, v9, v7

    long-to-int v7, v7

    move-wide/from16 v20, v9

    .end local v9    # "g":J
    .local v20, "g":J
    int-to-long v8, v6

    div-long v8, v11, v8

    long-to-int v8, v8

    invoke-static {v5, v14, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v3, v13

    goto :goto_83

    .line 50
    .end local v18    # "r":J
    .end local v20    # "g":J
    .restart local v7    # "r":J
    .restart local v9    # "g":J
    :cond_7f
    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    .line 27
    .end local v4    # "newPixel":I
    .end local v7    # "r":J
    .end local v9    # "g":J
    .end local v17    # "oldPixel":I
    .restart local v18    # "r":J
    .restart local v20    # "g":J
    :goto_83
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, p2

    move/from16 v4, v16

    move-wide/from16 v7, v18

    move-wide/from16 v9, v20

    goto :goto_14

    .end local v16    # "y":I
    .end local v18    # "r":J
    .end local v20    # "g":J
    .local v4, "y":I
    .restart local v7    # "r":J
    .restart local v9    # "g":J
    :cond_8e
    move/from16 v16, v4

    .line 56
    .end local v4    # "y":I
    .end local v13    # "x":I
    .restart local v16    # "y":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_91
    if-ge v4, v0, :cond_9c

    .line 57
    add-int v5, v2, v4

    aget v13, v3, v4

    aput v13, p0, v5

    .line 56
    add-int/lit8 v4, v4, 0x1

    goto :goto_91

    .line 60
    .end local v4    # "x":I
    :cond_9c
    add-int/2addr v2, v0

    .line 22
    .end local v6    # "hits":I
    .end local v7    # "r":J
    .end local v9    # "g":J
    .end local v11    # "b":J
    add-int/lit8 v4, v16, 0x1

    .end local v16    # "y":I
    .local v4, "y":I
    goto/16 :goto_8

    .line 62
    .end local v4    # "y":I
    :cond_a1
    return-void
.end method

.method private static blacklist boxBlurVertical([IIII)V
    .registers 26
    .param p0, "pixels"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "halfRange"    # I

    .line 66
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    new-array v3, v1, [I

    .line 67
    .local v3, "newColors":[I
    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    mul-int/2addr v4, v0

    .line 68
    .local v4, "oldPixelOffset":I
    mul-int v5, v2, v0

    .line 70
    .local v5, "newPixelOffset":I
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_f
    if-ge v6, v0, :cond_c0

    .line 71
    const/4 v7, 0x0

    .line 72
    .local v7, "hits":I
    const-wide/16 v8, 0x0

    .line 73
    .local v8, "r":J
    const-wide/16 v10, 0x0

    .line 74
    .local v10, "g":J
    const-wide/16 v12, 0x0

    .line 75
    .local v12, "b":J
    neg-int v14, v2

    mul-int/2addr v14, v0

    add-int/2addr v14, v6

    .line 76
    .local v14, "index":I
    neg-int v15, v2

    .local v15, "y":I
    :goto_1c
    if-ge v15, v1, :cond_a1

    .line 77
    sub-int v16, v15, v2

    add-int/lit8 v16, v16, -0x1

    .line 78
    .local v16, "oldPixel":I
    if-ltz v16, :cond_48

    .line 79
    add-int v17, v14, v4

    aget v17, p0, v17

    .line 80
    .local v17, "color":I
    if-eqz v17, :cond_41

    .line 81
    move/from16 v18, v4

    .end local v4    # "oldPixelOffset":I
    .local v18, "oldPixelOffset":I
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->red(I)I

    move-result v4

    move-object/from16 v19, v3

    .end local v3    # "newColors":[I
    .local v19, "newColors":[I
    int-to-long v3, v4

    sub-long/2addr v8, v3

    .line 82
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v10, v3

    .line 83
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v12, v3

    goto :goto_45

    .line 80
    .end local v18    # "oldPixelOffset":I
    .end local v19    # "newColors":[I
    .restart local v3    # "newColors":[I
    .restart local v4    # "oldPixelOffset":I
    :cond_41
    move-object/from16 v19, v3

    move/from16 v18, v4

    .line 85
    .end local v3    # "newColors":[I
    .end local v4    # "oldPixelOffset":I
    .restart local v18    # "oldPixelOffset":I
    .restart local v19    # "newColors":[I
    :goto_45
    add-int/lit8 v7, v7, -0x1

    goto :goto_4c

    .line 78
    .end local v17    # "color":I
    .end local v18    # "oldPixelOffset":I
    .end local v19    # "newColors":[I
    .restart local v3    # "newColors":[I
    .restart local v4    # "oldPixelOffset":I
    :cond_48
    move-object/from16 v19, v3

    move/from16 v18, v4

    .line 88
    .end local v3    # "newColors":[I
    .end local v4    # "oldPixelOffset":I
    .restart local v18    # "oldPixelOffset":I
    .restart local v19    # "newColors":[I
    :goto_4c
    add-int v3, v15, v2

    .line 89
    .local v3, "newPixel":I
    if-ge v3, v1, :cond_70

    .line 90
    add-int v4, v14, v5

    aget v4, p0, v4

    .line 91
    .local v4, "color":I
    if-eqz v4, :cond_6b

    .line 92
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v2

    move/from16 v17, v3

    .end local v3    # "newPixel":I
    .local v17, "newPixel":I
    int-to-long v2, v2

    add-long/2addr v8, v2

    .line 93
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v10, v2

    .line 94
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v12, v2

    goto :goto_6d

    .line 91
    .end local v17    # "newPixel":I
    .restart local v3    # "newPixel":I
    :cond_6b
    move/from16 v17, v3

    .line 96
    .end local v3    # "newPixel":I
    .restart local v17    # "newPixel":I
    :goto_6d
    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    .line 89
    .end local v4    # "color":I
    .end local v17    # "newPixel":I
    .restart local v3    # "newPixel":I
    :cond_70
    move/from16 v17, v3

    .line 99
    .end local v3    # "newPixel":I
    .restart local v17    # "newPixel":I
    :goto_72
    if-ltz v15, :cond_92

    .line 100
    int-to-long v3, v7

    div-long v3, v8, v3

    long-to-int v3, v3

    move/from16 v20, v3

    int-to-long v2, v7

    div-long v2, v10, v2

    long-to-int v2, v2

    move v3, v5

    .end local v5    # "newPixelOffset":I
    .local v3, "newPixelOffset":I
    int-to-long v4, v7

    div-long v4, v12, v4

    long-to-int v4, v4

    const/16 v5, 0xff

    move/from16 v21, v20

    move/from16 v20, v3

    move/from16 v3, v21

    .end local v3    # "newPixelOffset":I
    .local v20, "newPixelOffset":I
    invoke-static {v5, v3, v2, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v19, v15

    goto :goto_94

    .line 99
    .end local v20    # "newPixelOffset":I
    .restart local v5    # "newPixelOffset":I
    :cond_92
    move/from16 v20, v5

    .line 104
    .end local v5    # "newPixelOffset":I
    .restart local v20    # "newPixelOffset":I
    :goto_94
    add-int/2addr v14, v0

    .line 76
    .end local v16    # "oldPixel":I
    .end local v17    # "newPixel":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p3

    move/from16 v4, v18

    move-object/from16 v3, v19

    move/from16 v5, v20

    goto/16 :goto_1c

    .end local v18    # "oldPixelOffset":I
    .end local v19    # "newColors":[I
    .end local v20    # "newPixelOffset":I
    .local v3, "newColors":[I
    .local v4, "oldPixelOffset":I
    .restart local v5    # "newPixelOffset":I
    :cond_a1
    move-object/from16 v19, v3

    move/from16 v18, v4

    move/from16 v20, v5

    .line 107
    .end local v3    # "newColors":[I
    .end local v4    # "oldPixelOffset":I
    .end local v5    # "newPixelOffset":I
    .end local v15    # "y":I
    .restart local v18    # "oldPixelOffset":I
    .restart local v19    # "newColors":[I
    .restart local v20    # "newPixelOffset":I
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_a8
    if-ge v2, v1, :cond_b4

    .line 108
    mul-int v3, v2, v0

    add-int/2addr v3, v6

    aget v4, v19, v2

    aput v4, p0, v3

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    .line 70
    .end local v2    # "y":I
    .end local v7    # "hits":I
    .end local v8    # "r":J
    .end local v10    # "g":J
    .end local v12    # "b":J
    .end local v14    # "index":I
    :cond_b4
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, p3

    move/from16 v4, v18

    move-object/from16 v3, v19

    move/from16 v5, v20

    goto/16 :goto_f

    .line 111
    .end local v6    # "x":I
    .end local v18    # "oldPixelOffset":I
    .end local v19    # "newColors":[I
    .end local v20    # "newPixelOffset":I
    .restart local v3    # "newColors":[I
    .restart local v4    # "oldPixelOffset":I
    .restart local v5    # "newPixelOffset":I
    :cond_c0
    return-void
.end method

.method public static blacklist doBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .registers 14
    .param p0, "bitmapForBlur"    # Landroid/graphics/Bitmap;
    .param p1, "blurredBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .line 132
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 133
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 134
    .local v9, "height":I
    if-lez v8, :cond_3d

    if-lez v9, :cond_3d

    .line 135
    mul-int v0, v8, v9

    new-array v10, v0, [I

    .line 136
    .local v10, "pixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 137
    invoke-static {v10}, Lcom/miui/iimagekit/shadow/ShadowUtil;->processAlphaChannelBefore([I)V

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2f

    .line 139
    div-int/lit8 v1, p2, 0x2

    invoke-static {v10, v8, v9, v1}, Lcom/miui/iimagekit/shadow/ShadowBoxBlur;->boxBlurHorizontal([IIII)V

    .line 140
    div-int/lit8 v1, p2, 0x2

    invoke-static {v10, v8, v9, v1}, Lcom/miui/iimagekit/shadow/ShadowBoxBlur;->boxBlurVertical([IIII)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 142
    .end local v0    # "i":I
    :cond_2f
    invoke-static {v10}, Lcom/miui/iimagekit/shadow/ShadowUtil;->processAlphaChannelAfter([I)V

    .line 143
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 147
    .end local v10    # "pixels":[I
    :cond_3d
    return-void
.end method

.method public static blacklist saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "mName"    # Ljava/lang/String;

    .line 114
    const-string v0, "BlurAlgorithm"

    const-string v1, "saveBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 120
    :cond_17
    :try_start_17
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 121
    .local v1, "out":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 122
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 123
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_29} :catch_2f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2a

    .end local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_33

    .line 126
    :catch_2a
    move-exception v1

    .line 127
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2f
    move-exception v1

    .line 125
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 128
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_33
    nop

    .line 129
    :goto_34
    return-void
.end method
