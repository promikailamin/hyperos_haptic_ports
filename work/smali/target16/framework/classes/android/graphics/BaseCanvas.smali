.class public abstract Landroid/graphics/BaseCanvas;
.super Ljava/lang/Object;
.source "BaseCanvas.java"


# instance fields
.field private blacklist mAllowHwFeaturesInSwMode:Z

.field protected greylist-max-o mDensity:I

.field protected greylist mNativeCanvasWrapper:J

.field protected greylist-max-o mScreenDensity:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    .line 70
    iput v0, p0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 71
    iput-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    return-void
.end method

.method protected static final greylist-max-o checkRange(III)V
    .registers 4

    .line 86
    or-int v0, p1, p2

    if-ltz v0, :cond_8

    add-int/2addr p1, p2

    if-gt p1, p0, :cond_8

    .line 89
    return-void

    .line 87
    :cond_8
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method private static native greylist-max-o nDrawArc(JFFFFFFZJ)V
.end method

.method private static native blacklist nDrawBitmap(JJFFFFFFFFJII)V
.end method

.method private static native blacklist nDrawBitmap(JJFFJIII)V
.end method

.method private static native greylist-max-o nDrawBitmap(J[IIIFFIIZJ)V
.end method

.method private static native blacklist nDrawBitmapMatrix(JJJJ)V
.end method

.method private static native blacklist nDrawBitmapMesh(JJII[FI[IIJ)V
.end method

.method private static native greylist-max-o nDrawCircle(JFFFJ)V
.end method

.method private static native greylist-max-o nDrawColor(JII)V
.end method

.method private static native blacklist nDrawColor(JJJI)V
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V
.end method

.method private static native blacklist nDrawGlyphs(J[I[FIIIJJ)V
.end method

.method private static native greylist-max-o nDrawLine(JFFFFJ)V
.end method

.method private static native greylist-max-o nDrawLines(J[FIIJ)V
.end method

.method private static native blacklist nDrawMesh(JJIJ)V
.end method

.method private static native greylist-max-o nDrawNinePatch(JJJFFFFJII)V
.end method

.method private static native greylist-max-o nDrawOval(JFFFFJ)V
.end method

.method private static native greylist-max-o nDrawPaint(JJ)V
.end method

.method private static native greylist-max-o nDrawPath(JJJ)V
.end method

.method private static native greylist-max-o nDrawPoint(JFFJ)V
.end method

.method private static native greylist-max-o nDrawPoints(J[FIIJ)V
.end method

.method private static native greylist-max-o nDrawRect(JFFFFJ)V
.end method

.method private static native greylist-max-o nDrawRegion(JJJ)V
.end method

.method private static native greylist-max-o nDrawRoundRect(JFFFFFFJ)V
.end method

.method private static native greylist-max-o nDrawText(JLjava/lang/String;IIFFIJ)V
.end method

.method private static native greylist-max-o nDrawText(J[CIIFFIJ)V
.end method

.method private static native greylist-max-o nDrawTextOnPath(JLjava/lang/String;JFFIJ)V
.end method

.method private static native greylist-max-o nDrawTextOnPath(J[CIIJFFIJ)V
.end method

.method private static native greylist-max-o nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V
.end method

.method private static native greylist-max-o nDrawTextRun(J[CIIIIFFZJJ)V
.end method

.method private static native greylist-max-o nDrawVertices(JII[FI[FI[II[SIIJ)V
.end method

.method private static native blacklist nPunchHole(JFFFFFFF)V
.end method

.method private blacklist throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V
    .registers 3

    .line 738
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_11

    if-nez p1, :cond_9

    goto :goto_11

    .line 741
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V

    .line 742
    return-void

    .line 739
    :cond_11
    :goto_11
    return-void
.end method

.method private blacklist throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V
    .registers 3

    .line 745
    if-nez p1, :cond_3

    .line 746
    return-void

    .line 748
    :cond_3
    instance-of v0, p1, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_f

    .line 749
    check-cast p1, Landroid/graphics/BitmapShader;

    iget-object p1, p1, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V

    goto :goto_32

    .line 750
    :cond_f
    instance-of v0, p1, Landroid/graphics/RuntimeShader;

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->onHwFeatureInSwMode()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_22

    .line 751
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Software rendering doesn\'t support RuntimeShader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 753
    :cond_22
    :goto_22
    instance-of v0, p1, Landroid/graphics/ComposeShader;

    if-eqz v0, :cond_32

    .line 754
    check-cast p1, Landroid/graphics/ComposeShader;

    iget-object v0, p1, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V

    .line 755
    iget-object p1, p1, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V

    .line 757
    :cond_32
    :goto_32
    return-void
.end method

.method private greylist-max-o throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 730
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_1d

    .line 731
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->onHwFeatureInSwMode()Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_1d

    .line 732
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Software rendering doesn\'t support hardware bitmaps"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 735
    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public greylist-max-o drawARGB(IIII)V
    .registers 5

    .line 118
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    .line 119
    return-void
.end method

.method public greylist-max-o drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .registers 20

    .line 105
    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 106
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 106
    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide v0, v1

    move v2, p1

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseCanvas;->nDrawArc(JFFFFFFZJ)V

    .line 108
    return-void
.end method

.method public greylist-max-o drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .registers 15

    .line 112
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 113
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/BaseCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 115
    return-void
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .registers 16

    .line 122
    invoke-virtual {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 123
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 124
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    .line 125
    if-eqz p4, :cond_13

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_15

    :cond_13
    const-wide/16 v4, 0x0

    :goto_15
    move-wide v6, v4

    iget v8, p0, Landroid/graphics/BaseCanvas;->mDensity:I

    iget v9, p0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    iget v10, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 124
    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JJFFJIII)V

    .line 127
    return-void
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .registers 12

    .line 130
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 131
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v4

    .line 132
    if-eqz p3, :cond_14

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide p1

    goto :goto_16

    :cond_14
    const-wide/16 p1, 0x0

    :goto_16
    move-wide v6, p1

    .line 131
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawBitmapMatrix(JJJJ)V

    .line 133
    return-void
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 27

    .line 137
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v2, :cond_63

    .line 140
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 141
    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 142
    if-nez v3, :cond_15

    const-wide/16 v3, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_19
    move-wide/from16 v17, v3

    .line 145
    if-nez v1, :cond_29

    .line 146
    nop

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    goto :goto_36

    .line 150
    :cond_29
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 151
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 152
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 153
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v3

    move v3, v1

    move/from16 v1, v21

    .line 156
    :goto_36
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move-wide v9, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    int-to-float v4, v4

    int-to-float v5, v5

    int-to-float v11, v1

    int-to-float v12, v3

    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v13, v1

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v14, v1

    iget v1, v2, Landroid/graphics/Rect;->right:I

    int-to-float v15, v1

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    move-object/from16 v2, p1

    iget v2, v2, Landroid/graphics/Bitmap;->mDensity:I

    move-wide/from16 v19, v9

    move v10, v5

    move-wide/from16 v5, v19

    move/from16 v19, v0

    move/from16 v16, v1

    move/from16 v20, v2

    move v9, v4

    invoke-static/range {v5 .. v20}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    .line 159
    return-void

    .line 138
    :cond_63
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 26

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v2, :cond_5c

    .line 166
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 167
    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 168
    if-nez v3, :cond_15

    const-wide/16 v3, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_19
    move-wide/from16 v17, v3

    .line 171
    if-nez v1, :cond_2e

    .line 172
    nop

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    move v11, v1

    move v12, v3

    move v9, v4

    move v10, v9

    goto :goto_3e

    .line 176
    :cond_2e
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    .line 177
    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    .line 178
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 179
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    move v12, v1

    move v11, v3

    move v9, v4

    move v10, v5

    .line 182
    :goto_3e
    iget-wide v5, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    iget v13, v2, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->top:F

    iget v15, v2, Landroid/graphics/RectF;->right:F

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    move-object/from16 v2, p1

    iget v2, v2, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v19, v0

    move/from16 v16, v1

    move/from16 v20, v2

    invoke-static/range {v5 .. v20}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    .line 185
    return-void

    .line 164
    :cond_5c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public greylist-max-o drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .registers 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    move/from16 v7, p6

    move-object/from16 v0, p9

    if-ltz v7, :cond_59

    .line 194
    if-ltz p7, :cond_51

    .line 197
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v7, :cond_49

    .line 200
    add-int/lit8 v1, p7, -0x1

    mul-int/2addr v1, p3

    add-int/2addr v1, p2

    .line 201
    array-length v2, p1

    .line 202
    if-ltz p2, :cond_43

    add-int v3, p2, v7

    if-gt v3, v2, :cond_43

    if-ltz v1, :cond_43

    add-int/2addr v1, v7

    if-gt v1, v2, :cond_43

    .line 206
    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 208
    if-eqz v7, :cond_42

    if-nez p7, :cond_26

    goto :goto_42

    .line 212
    :cond_26
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 213
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_31

    :cond_2f
    const-wide/16 v3, 0x0

    :goto_31
    move-wide v10, v3

    .line 212
    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide v0, v1

    move-object v2, p1

    invoke-static/range {v0 .. v11}, Landroid/graphics/BaseCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    .line 214
    return-void

    .line 209
    :cond_42
    :goto_42
    return-void

    .line 204
    :cond_43
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 198
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "abs(stride) must be >= width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 222
    return-void
.end method

.method public greylist-max-o drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .registers 21

    .line 227
    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v0, p8

    or-int v1, p2, p3

    or-int/2addr v1, v7

    or-int/2addr v1, v9

    if-ltz v1, :cond_41

    .line 230
    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 231
    if-eqz p2, :cond_40

    if-nez p3, :cond_16

    goto :goto_40

    .line 234
    :cond_16
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    mul-int/2addr v1, v2

    .line 236
    move-object/from16 v6, p4

    array-length v2, v6

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, v7, v3}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 237
    if-eqz v8, :cond_29

    .line 239
    array-length v2, v8

    invoke-static {v2, v9, v1}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 241
    :cond_29
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v3

    .line 243
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    goto :goto_38

    :cond_36
    const-wide/16 v10, 0x0

    .line 241
    :goto_38
    move v5, p3

    move-wide v0, v1

    move-wide v2, v3

    move v4, p2

    invoke-static/range {v0 .. v11}, Landroid/graphics/BaseCanvas;->nDrawBitmapMesh(JJII[FI[IIJ)V

    .line 244
    return-void

    .line 232
    :cond_40
    :goto_40
    return-void

    .line 228
    :cond_41
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public greylist-max-o drawCircle(FFFLandroid/graphics/Paint;)V
    .registers 12

    .line 247
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 248
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawCircle(JFFFJ)V

    .line 249
    return-void
.end method

.method public greylist-max-o drawColor(I)V
    .registers 5

    .line 252
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    .line 253
    return-void
.end method

.method public blacklist drawColor(ILandroid/graphics/BlendMode;)V
    .registers 5

    .line 264
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    .line 265
    return-void
.end method

.method public greylist-max-o drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 5

    .line 256
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget p2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    .line 257
    return-void
.end method

.method public blacklist drawColor(JLandroid/graphics/BlendMode;)V
    .registers 12

    .line 272
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 273
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    .line 274
    invoke-virtual {p3}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object p3

    iget v7, p3, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    .line 273
    move-wide v5, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->nDrawColor(JJJI)V

    .line 275
    return-void
.end method

.method public blacklist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 24

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 417
    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 418
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 419
    move v5, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 420
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 422
    iget v8, v2, Landroid/graphics/RectF;->left:F

    .line 423
    iget v9, v2, Landroid/graphics/RectF;->top:F

    .line 424
    iget v10, v2, Landroid/graphics/RectF;->right:F

    .line 425
    iget v11, v2, Landroid/graphics/RectF;->bottom:F

    .line 426
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 428
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    .line 426
    move/from16 v12, p5

    move/from16 v13, p6

    move v2, v5

    move v5, v1

    move-wide v0, v6

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-static/range {v0 .. v15}, Landroid/graphics/BaseCanvas;->nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V

    .line 429
    return-void
.end method

.method public blacklist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .registers 22

    .line 437
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v2, p3

    move-object/from16 v11, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 438
    if-eqz v11, :cond_3a

    if-eqz v6, :cond_3a

    array-length v4, v11

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3a

    array-length v4, v6

    if-ne v4, v5, :cond_3a

    .line 443
    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 444
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 445
    move v5, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 446
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 448
    iget v7, v2, Landroid/graphics/RectF;->left:F

    .line 449
    iget v8, v2, Landroid/graphics/RectF;->top:F

    .line 450
    iget v9, v2, Landroid/graphics/RectF;->right:F

    .line 451
    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    .line 452
    iget-wide v12, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 454
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    .line 452
    move v2, v5

    move v5, v1

    move-wide v0, v12

    move-wide v12, v14

    invoke-static/range {v0 .. v13}, Landroid/graphics/BaseCanvas;->nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V

    .line 455
    return-void

    .line 440
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both inner and outer radii arrays must contain exactly 8 values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V
    .registers 19

    .line 490
    const-string v0, "glyphIds must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 491
    const-string/jumbo v0, "positions must not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 492
    const-string v0, "font must not be null."

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 493
    const-string/jumbo v0, "paint must not be null."

    move-object/from16 v4, p7

    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 494
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 496
    const-string v0, " of elements"

    if-ltz p2, :cond_64

    add-int v5, p2, p5

    array-length v6, p1

    if-gt v5, v6, :cond_64

    .line 500
    if-ltz p4, :cond_43

    mul-int/lit8 v5, p5, 0x2

    add-int/2addr v5, p4

    array-length v6, p3

    if-gt v5, v6, :cond_43

    .line 505
    iget-wide v5, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 506
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v7

    invoke-virtual {v4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 505
    move-object v2, p1

    move v4, p2

    move-object v3, p3

    move-wide v0, v5

    move v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseCanvas;->nDrawGlyphs(J[I[FIIIJJ)V

    .line 507
    return-void

    .line 501
    :cond_43
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "positions must have at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, p5, 0x2

    add-int/2addr v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_64
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glyphIds must have at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, p2, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o drawLine(FFFFLandroid/graphics/Paint;)V
    .registers 14

    .line 279
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 280
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawLine(JFFFFJ)V

    .line 281
    return-void
.end method

.method public greylist-max-o drawLines([FIILandroid/graphics/Paint;)V
    .registers 12

    .line 285
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 286
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawLines(J[FIIJ)V

    .line 287
    return-void
.end method

.method public greylist-max-o drawLines([FLandroid/graphics/Paint;)V
    .registers 5

    .line 290
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 291
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/BaseCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 292
    return-void
.end method

.method public whitelist drawMesh(Landroid/graphics/Mesh;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)V
    .registers 11

    .line 689
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->onHwFeatureInSwMode()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_16

    .line 690
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "software rendering doesn\'t support meshes"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 692
    :cond_16
    :goto_16
    if-nez p2, :cond_1a

    .line 693
    sget-object p2, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    .line 695
    :cond_1a
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Mesh;->getNativeWrapperInstance()J

    move-result-wide v2

    .line 696
    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object p1

    iget v4, p1, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    .line 695
    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawMesh(JJIJ)V

    .line 697
    return-void
.end method

.method public greylist-max-o drawOval(FFFFLandroid/graphics/Paint;)V
    .registers 14

    .line 295
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 296
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawOval(JFFFFJ)V

    .line 297
    return-void
.end method

.method public greylist-max-o drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 9

    .line 300
    if-eqz p1, :cond_13

    .line 303
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 304
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 305
    return-void

    .line 301
    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public greylist-max-o drawPaint(Landroid/graphics/Paint;)V
    .registers 6

    .line 308
    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 309
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BaseCanvas;->nDrawPaint(JJ)V

    .line 310
    return-void
.end method

.method public greylist-max-o drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 24

    .line 313
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 314
    invoke-virtual {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 315
    invoke-direct {v0, v2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 316
    if-nez v2, :cond_15

    const-wide/16 v4, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    :goto_19
    move-wide/from16 v16, v4

    .line 317
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v8

    move-object/from16 v2, p1

    iget-wide v10, v2, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v12, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v13, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v14, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v1

    iget v0, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 319
    invoke-virtual {v2}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v19

    .line 317
    move/from16 v18, v0

    invoke-static/range {v6 .. v19}, Landroid/graphics/BaseCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 320
    return-void
.end method

.method public greylist-max-o drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 24

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 324
    invoke-virtual {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 325
    invoke-direct {v0, v2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 326
    if-nez v2, :cond_15

    const-wide/16 v4, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    :goto_19
    move-wide/from16 v16, v4

    .line 327
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v8

    move-object/from16 v2, p1

    iget-wide v10, v2, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v12, v1, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/RectF;->top:F

    iget v14, v1, Landroid/graphics/RectF;->right:F

    iget v15, v1, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 329
    invoke-virtual {v2}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v19

    .line 327
    move/from16 v18, v0

    invoke-static/range {v6 .. v19}, Landroid/graphics/BaseCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 330
    return-void
.end method

.method public greylist-max-o drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 9

    .line 333
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 334
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->nDrawPath(JJJ)V

    .line 335
    return-void
.end method

.method public greylist-max-o drawPoint(FFLandroid/graphics/Paint;)V
    .registers 10

    .line 343
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 344
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->nDrawPoint(JFFJ)V

    .line 345
    return-void
.end method

.method public greylist-max-o drawPoints([FIILandroid/graphics/Paint;)V
    .registers 12

    .line 349
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 350
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawPoints(J[FIIJ)V

    .line 351
    return-void
.end method

.method public greylist-max-o drawPoints([FLandroid/graphics/Paint;)V
    .registers 5

    .line 354
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 355
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/BaseCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 356
    return-void
.end method

.method public greylist-max-o drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 376
    return-void
.end method

.method public greylist-max-o drawPosText([CII[FLandroid/graphics/Paint;)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    if-ltz p2, :cond_27

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_27

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_27

    .line 365
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 366
    const/4 v0, 0x0

    :goto_10
    if-ge v0, p3, :cond_26

    .line 367
    add-int v3, p2, v0

    mul-int/lit8 v1, v0, 0x2

    aget v5, p4, v1

    add-int/lit8 v1, v1, 0x1

    aget v6, p4, v1

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 369
    :cond_26
    return-void

    .line 363
    :cond_27
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public greylist-max-o drawRGB(III)V
    .registers 4

    .line 395
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    .line 396
    return-void
.end method

.method public greylist-max-o drawRect(FFFFLandroid/graphics/Paint;)V
    .registers 14

    .line 379
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 380
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawRect(JFFFFJ)V

    .line 381
    return-void
.end method

.method public greylist-max-o drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 10

    .line 384
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 385
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 386
    return-void
.end method

.method public greylist-max-o drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 11

    .line 389
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 390
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 391
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    .line 390
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawRect(JFFFFJ)V

    .line 392
    return-void
.end method

.method public blacklist drawRegion(Landroid/graphics/Region;Landroid/graphics/Paint;)V
    .registers 9

    .line 338
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 339
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->nDrawRegion(JJJ)V

    .line 340
    return-void
.end method

.method public greylist-max-o drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .registers 18

    .line 400
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 401
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 402
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 401
    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-wide v0, v1

    move v2, p1

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->nDrawRoundRect(JFFFFFFJ)V

    .line 403
    return-void
.end method

.method public greylist-max-o drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 13

    .line 406
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 407
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 408
    return-void
.end method

.method public greylist-max-o drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .registers 18

    .line 522
    move-object/from16 v6, p6

    or-int v0, p2, p3

    sub-int v5, p3, p2

    or-int/2addr v0, v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_61

    .line 525
    invoke-direct {p0, v6}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 526
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_4b

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_4b

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_1f

    goto :goto_4b

    .line 530
    :cond_1f
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_30

    .line 531
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_60

    .line 534
    :cond_30
    invoke-static {v5}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 535
    const/4 v4, 0x0

    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 536
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v8, v6, Landroid/graphics/Paint;->mBidiFlags:I

    .line 537
    invoke-virtual {v6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 536
    move v6, p4

    move/from16 v7, p5

    move-object v3, v0

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->nDrawText(J[CIIFFIJ)V

    .line 538
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_60

    .line 528
    :cond_4b
    :goto_4b
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget v7, v6, Landroid/graphics/Paint;->mBidiFlags:I

    .line 529
    invoke-virtual {v6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 528
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 540
    :goto_60
    return-void

    .line 523
    :cond_61
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public greylist-max-o drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .registers 15

    .line 543
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 544
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v7, p4, Landroid/graphics/Paint;->mBidiFlags:I

    .line 545
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 544
    const/4 v3, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 546
    return-void
.end method

.method public greylist-max-o drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .registers 19

    .line 550
    move-object/from16 v0, p6

    or-int v1, p2, p3

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_25

    .line 553
    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 554
    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 555
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 554
    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v11}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 556
    return-void

    .line 551
    :cond_25
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public greylist-max-o drawText([CIIFFLandroid/graphics/Paint;)V
    .registers 19

    .line 511
    move-object/from16 v0, p6

    or-int v1, p2, p3

    add-int v2, p2, p3

    or-int/2addr v1, v2

    array-length v2, p1

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_23

    .line 515
    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 516
    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 517
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 516
    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v11}, Landroid/graphics/BaseCanvas;->nDrawText(J[CIIFFIJ)V

    .line 518
    return-void

    .line 513
    :cond_23
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public greylist-max-o drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 18

    .line 571
    move-object/from16 v0, p5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    .line 572
    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 573
    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v5

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 574
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 573
    move-object v4, p1

    move v7, p3

    move/from16 v8, p4

    invoke-static/range {v2 .. v11}, Landroid/graphics/BaseCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJ)V

    .line 576
    :cond_1e
    return-void
.end method

.method public greylist-max-o drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 22

    .line 560
    move-object/from16 v0, p7

    if-ltz p2, :cond_25

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_25

    .line 563
    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 564
    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 565
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v7

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 566
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    .line 564
    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v2 .. v13}, Landroid/graphics/BaseCanvas;->nDrawTextOnPath(J[CIIJFFIJ)V

    .line 567
    return-void

    .line 561
    :cond_25
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public blacklist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .registers 24

    .line 651
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v2

    sub-int v4, p3, p2

    sub-int v6, p5, p4

    .line 652
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 653
    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v12

    .line 651
    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v13}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 654
    return-void
.end method

.method public greylist-max-o drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .registers 27

    .line 601
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p9

    if-eqz v1, :cond_e8

    .line 604
    if-eqz v9, :cond_df

    .line 607
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    sub-int v6, p2, p4

    or-int/2addr v2, v6

    sub-int v7, p3, p2

    or-int/2addr v2, v7

    sub-int v3, p5, p3

    or-int/2addr v2, v3

    .line 608
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v3, v3, p5

    or-int/2addr v2, v3

    if-ltz v2, :cond_d9

    .line 612
    invoke-direct {v0, v9}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 613
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_b6

    instance-of v2, v1, Landroid/text/SpannedString;

    if-nez v2, :cond_b6

    instance-of v2, v1, Landroid/text/SpannableString;

    if-eqz v2, :cond_3b

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    goto/16 :goto_be

    .line 617
    :cond_3b
    instance-of v2, v1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_57

    .line 618
    move-object v0, v1

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V

    goto/16 :goto_d8

    .line 621
    :cond_57
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    instance-of v0, v1, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_92

    .line 622
    move-object v0, v1

    check-cast v0, Landroid/text/PrecomputedText;

    .line 623
    invoke-virtual {v0, v2}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v8

    .line 624
    invoke-virtual {v0, v8}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v9

    if-gt v3, v9, :cond_8f

    .line 625
    invoke-virtual {v0, v8}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v1

    .line 626
    invoke-virtual {v0, v8}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, Landroid/text/MeasuredParagraph;->getMeasuredText()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    sub-int/2addr v2, v1

    sub-int/2addr v3, v1

    sub-int/2addr v4, v1

    sub-int/2addr v5, v1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    .line 634
    return-void

    .line 624
    :cond_8f
    move-object/from16 v0, p0

    goto :goto_94

    .line 621
    :cond_92
    move-object/from16 v0, p0

    .line 637
    :goto_94
    sub-int v9, v5, v4

    .line 638
    nop

    .line 639
    invoke-static {v9}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 640
    const/4 v3, 0x0

    invoke-static {v1, v4, v5, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 641
    iget-wide v3, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 642
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v13

    .line 641
    const/4 v8, 0x0

    const-wide/16 v15, 0x0

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object v5, v2

    invoke-static/range {v3 .. v16}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 644
    invoke-static {v5}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_d8

    .line 613
    :cond_b6
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 615
    :goto_be
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 615
    move v8, v2

    move-object v2, v0

    move-wide v0, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v8

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v11}, Landroid/graphics/BaseCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V

    .line 646
    :goto_d8
    return-void

    .line 609
    :cond_d9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 605
    :cond_df
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_e8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .registers 24

    .line 581
    move-object/from16 v1, p9

    if-eqz p1, :cond_49

    .line 584
    if-eqz v1, :cond_40

    .line 587
    or-int v3, p2, p3

    or-int v3, v3, p4

    or-int v3, v3, p5

    sub-int v4, p2, p4

    or-int/2addr v3, v4

    add-int v4, p4, p5

    add-int v5, p2, p3

    sub-int v5, v4, v5

    or-int/2addr v3, v5

    array-length v5, p1

    sub-int/2addr v5, v4

    or-int/2addr v3, v5

    if-ltz v3, :cond_3a

    .line 593
    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 594
    iget-wide v3, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 595
    invoke-virtual {v1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 594
    const-wide/16 v12, 0x0

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide v0, v3

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-static/range {v0 .. v13}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 596
    return-void

    .line 590
    :cond_3a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 585
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .registers 30

    .line 660
    move-object/from16 v0, p0

    move/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v4, p3

    array-length v1, v4

    move/from16 v5, p4

    invoke-static {v1, v5, v3}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 661
    if-eqz v6, :cond_1b

    .line 662
    array-length v1, v6

    move/from16 v7, p6

    invoke-static {v1, v7, v3}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_1d

    .line 661
    :cond_1b
    move/from16 v7, p6

    .line 664
    :goto_1d
    if-eqz v8, :cond_28

    .line 665
    array-length v1, v8

    div-int/lit8 v2, v3, 0x2

    move/from16 v9, p8

    invoke-static {v1, v9, v2}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_2a

    .line 664
    :cond_28
    move/from16 v9, p8

    .line 667
    :goto_2a
    if-eqz v10, :cond_35

    .line 668
    array-length v1, v10

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-static {v1, v11, v12}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_39

    .line 667
    :cond_35
    move/from16 v11, p10

    move/from16 v12, p11

    .line 670
    :goto_39
    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 671
    iget-wide v13, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    .line 673
    invoke-virtual {v1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    .line 671
    move-wide v15, v13

    move-wide v13, v0

    move-wide v0, v15

    invoke-static/range {v0 .. v14}, Landroid/graphics/BaseCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    .line 674
    return-void
.end method

.method public greylist-max-o isHardwareAccelerated()Z
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHwFeaturesInSwModeEnabled()Z
    .registers 2

    .line 718
    iget-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    return v0
.end method

.method protected blacklist onHwFeatureInSwMode()Z
    .registers 2

    .line 726
    iget-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist punchHole(FFFFFFF)V
    .registers 17

    .line 704
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/BaseCanvas;->nPunchHole(JFFFFFFF)V

    .line 705
    return-void
.end method

.method public blacklist setHwFeaturesInSwModeEnabled(Z)V
    .registers 2

    .line 711
    iput-boolean p1, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    .line 712
    return-void
.end method

.method protected greylist-max-o throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_38

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_34

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_34

    .line 79
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a non-premultiplied bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_34
    :goto_34
    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V

    .line 83
    return-void

    .line 75
    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a recycled bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
