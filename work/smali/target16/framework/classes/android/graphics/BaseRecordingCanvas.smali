.class public Landroid/graphics/BaseRecordingCanvas;
.super Landroid/graphics/Canvas;
.source "BaseRecordingCanvas.java"


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/graphics/Canvas;-><init>(J)V

    .line 52
    return-void
.end method

.method private static native blacklist nDrawArc(JFFFFFFZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmap(JJFFFFFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmap(JJFFJIII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmap(J[IIIFFIIZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmapMatrix(JJJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmapMesh(JJII[FI[IIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawCircle(JFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawColor(JII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawColor(JJJI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawGlyphs(J[I[FIIIJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawLine(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawLines(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawMesh(JJIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawNinePatch(JJJFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawOval(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPaint(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPath(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPoint(JFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPoints(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawRect(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawRegion(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawRoundRect(JFFFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawText(JLjava/lang/String;IIFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawText(J[CIIFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextOnPath(JLjava/lang/String;JFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextOnPath(J[CIIJFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextRun(J[CIIIIFFZJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawVertices(JII[FI[FI[II[SIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nPunchHole(JFFFFFFF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public final whitelist drawARGB(IIII)V
    .registers 5

    .line 70
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->drawColor(I)V

    .line 71
    return-void
.end method

.method public final whitelist drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .registers 20

    .line 57
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 58
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 57
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawArc(JFFFFFFZJ)V

    .line 59
    return-void
.end method

.method public final whitelist drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .registers 15

    .line 64
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/BaseRecordingCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 66
    return-void
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .registers 16

    .line 76
    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 77
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    .line 78
    if-eqz p4, :cond_10

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_12

    :cond_10
    const-wide/16 v4, 0x0

    :goto_12
    move-wide v6, v4

    iget v8, p0, Landroid/graphics/BaseRecordingCanvas;->mDensity:I

    iget v9, p0, Landroid/graphics/BaseRecordingCanvas;->mScreenDensity:I

    iget v10, p1, Landroid/graphics/Bitmap;->mDensity:I

    .line 77
    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(JJFFJIII)V

    .line 80
    return-void
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .registers 12

    .line 85
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v4

    .line 86
    if-eqz p3, :cond_11

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide p1

    goto :goto_13

    :cond_11
    const-wide/16 p1, 0x0

    :goto_13
    move-wide v6, p1

    .line 85
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmapMatrix(JJJJ)V

    .line 87
    return-void
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 27

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v2, :cond_5e

    .line 95
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 96
    if-nez p4, :cond_10

    const-wide/16 v3, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_14
    move-wide/from16 v17, v3

    .line 99
    if-nez v1, :cond_24

    .line 100
    nop

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    goto :goto_31

    .line 104
    :cond_24
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 105
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 106
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 107
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v3

    move v3, v1

    move/from16 v1, v21

    .line 110
    :goto_31
    iget-wide v6, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

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

    iget v0, v0, Landroid/graphics/BaseRecordingCanvas;->mScreenDensity:I

    move-object/from16 v2, p1

    iget v2, v2, Landroid/graphics/Bitmap;->mDensity:I

    move-wide/from16 v19, v9

    move v10, v5

    move-wide/from16 v5, v19

    move/from16 v19, v0

    move/from16 v16, v1

    move/from16 v20, v2

    move v9, v4

    invoke-static/range {v5 .. v20}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    .line 113
    return-void

    .line 93
    :cond_5e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 26

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v2, :cond_57

    .line 121
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 122
    if-nez p4, :cond_10

    const-wide/16 v3, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_14
    move-wide/from16 v17, v3

    .line 125
    if-nez v1, :cond_29

    .line 126
    nop

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    move v11, v1

    move v12, v3

    move v9, v4

    move v10, v9

    goto :goto_39

    .line 130
    :cond_29
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    .line 131
    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    .line 132
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 133
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    move v12, v1

    move v11, v3

    move v9, v4

    move v10, v5

    .line 136
    :goto_39
    iget-wide v5, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    iget v13, v2, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->top:F

    iget v15, v2, Landroid/graphics/RectF;->right:F

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/BaseRecordingCanvas;->mScreenDensity:I

    move-object/from16 v2, p1

    iget v2, v2, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v19, v0

    move/from16 v16, v1

    move/from16 v20, v2

    invoke-static/range {v5 .. v20}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    .line 139
    return-void

    .line 119
    :cond_57
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .registers 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    move/from16 v7, p6

    if-ltz v7, :cond_53

    .line 150
    if-ltz p7, :cond_4b

    .line 153
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v7, :cond_43

    .line 156
    add-int/lit8 v0, p7, -0x1

    mul-int/2addr v0, p3

    add-int/2addr v0, p2

    .line 157
    array-length v1, p1

    .line 158
    if-ltz p2, :cond_3d

    add-int v2, p2, v7

    if-gt v2, v1, :cond_3d

    if-ltz v0, :cond_3d

    add-int/2addr v0, v7

    if-gt v0, v1, :cond_3d

    .line 163
    if-eqz v7, :cond_3c

    if-nez p7, :cond_21

    goto :goto_3c

    .line 167
    :cond_21
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 168
    if-eqz p9, :cond_2a

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    goto :goto_2c

    :cond_2a
    const-wide/16 v2, 0x0

    :goto_2c
    move-wide v10, v2

    .line 167
    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v11}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    .line 169
    return-void

    .line 164
    :cond_3c
    :goto_3c
    return-void

    .line 160
    :cond_3d
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 154
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "abs(stride) must be >= width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
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

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 179
    return-void
.end method

.method public final whitelist drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .registers 21

    .line 185
    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    or-int v0, p2, p3

    or-int/2addr v0, v7

    or-int/2addr v0, v9

    if-ltz v0, :cond_3b

    .line 188
    if-eqz p2, :cond_3a

    if-nez p3, :cond_11

    goto :goto_3a

    .line 191
    :cond_11
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p3, 0x1

    mul-int/2addr v0, v1

    .line 193
    move-object/from16 v6, p4

    array-length v1, v6

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v7, v2}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    .line 194
    if-eqz v8, :cond_24

    .line 196
    array-length v1, v8

    invoke-static {v1, v9, v0}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    .line 198
    :cond_24
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v2

    .line 200
    if-eqz p8, :cond_31

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    goto :goto_33

    :cond_31
    const-wide/16 v4, 0x0

    :goto_33
    move-wide v10, v4

    .line 198
    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v11}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmapMesh(JJII[FI[IIJ)V

    .line 201
    return-void

    .line 189
    :cond_3a
    :goto_3a
    return-void

    .line 186
    :cond_3b
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final whitelist drawCircle(FFFLandroid/graphics/Paint;)V
    .registers 12

    .line 205
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseRecordingCanvas;->nDrawCircle(JFFFJ)V

    .line 206
    return-void
.end method

.method public final whitelist drawColor(I)V
    .registers 5

    .line 210
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JII)V

    .line 211
    return-void
.end method

.method public final whitelist drawColor(ILandroid/graphics/BlendMode;)V
    .registers 5

    .line 220
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JII)V

    .line 221
    return-void
.end method

.method public final whitelist drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 5

    .line 215
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget p2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JII)V

    .line 216
    return-void
.end method

.method public final whitelist drawColor(JLandroid/graphics/BlendMode;)V
    .registers 12

    .line 225
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 226
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    .line 227
    invoke-virtual {p3}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object p3

    iget v7, p3, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    .line 226
    move-wide v5, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JJJI)V

    .line 228
    return-void
.end method

.method public final whitelist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 24

    .line 404
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    iget-wide v2, v2, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move-wide v3, v2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-wide v4, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    move-wide v5, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v8, v1, Landroid/graphics/RectF;->left:F

    iget v9, v1, Landroid/graphics/RectF;->top:F

    iget v10, v1, Landroid/graphics/RectF;->right:F

    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    .line 407
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    .line 404
    move-wide v12, v5

    move v5, v0

    move-wide v0, v12

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-static/range {v0 .. v15}, Landroid/graphics/BaseRecordingCanvas;->nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V

    .line 408
    return-void
.end method

.method public final whitelist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .registers 22

    .line 413
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    iget-wide v2, v2, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move-wide v3, v2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-wide v4, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    move-wide v5, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v7, v1, Landroid/graphics/RectF;->left:F

    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget v9, v1, Landroid/graphics/RectF;->right:F

    iget v10, v1, Landroid/graphics/RectF;->bottom:F

    .line 416
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    .line 413
    move-wide v14, v5

    move v5, v0

    move-wide v0, v14

    move-object/from16 v6, p2

    move-object/from16 v11, p4

    invoke-static/range {v0 .. v13}, Landroid/graphics/BaseRecordingCanvas;->nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V

    .line 417
    return-void
.end method

.method public whitelist drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V
    .registers 19

    .line 428
    const-string v0, "glyphIds must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 429
    const-string/jumbo v0, "positions must not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    const-string v0, "font must not be null."

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 431
    const-string/jumbo v0, "paint must not be null."

    move-object/from16 v4, p7

    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 432
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 434
    const-string v0, " of elements"

    if-ltz p2, :cond_64

    add-int v5, p2, p5

    array-length v6, p1

    if-gt v5, v6, :cond_64

    .line 438
    if-ltz p4, :cond_43

    mul-int/lit8 v5, p5, 0x2

    add-int/2addr v5, p4

    array-length v6, p3

    if-gt v5, v6, :cond_43

    .line 443
    iget-wide v5, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 444
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v7

    invoke-virtual {v4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 443
    move-object v2, p1

    move v4, p2

    move-object v3, p3

    move-wide v0, v5

    move v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawGlyphs(J[I[FIIIJJ)V

    .line 445
    return-void

    .line 439
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

    .line 435
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

.method public final whitelist drawLine(FFFFLandroid/graphics/Paint;)V
    .registers 14

    .line 233
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawLine(JFFFFJ)V

    .line 234
    return-void
.end method

.method public final whitelist drawLines([FIILandroid/graphics/Paint;)V
    .registers 12

    .line 239
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseRecordingCanvas;->nDrawLines(J[FIIJ)V

    .line 240
    return-void
.end method

.method public final whitelist drawLines([FLandroid/graphics/Paint;)V
    .registers 5

    .line 244
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/BaseRecordingCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 245
    return-void
.end method

.method public final whitelist drawMesh(Landroid/graphics/Mesh;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)V
    .registers 11

    .line 618
    if-nez p2, :cond_4

    .line 619
    sget-object p2, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    .line 621
    :cond_4
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Mesh;->getNativeWrapperInstance()J

    move-result-wide v2

    .line 622
    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object p1

    iget v4, p1, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    .line 621
    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseRecordingCanvas;->nDrawMesh(JJIJ)V

    .line 623
    return-void
.end method

.method public final whitelist drawOval(FFFFLandroid/graphics/Paint;)V
    .registers 14

    .line 250
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawOval(JFFFFJ)V

    .line 251
    return-void
.end method

.method public final whitelist drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 9

    .line 255
    if-eqz p1, :cond_10

    .line 258
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 259
    return-void

    .line 256
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final whitelist drawPaint(Landroid/graphics/Paint;)V
    .registers 6

    .line 263
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BaseRecordingCanvas;->nDrawPaint(JJ)V

    .line 264
    return-void
.end method

.method public final whitelist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 23

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 270
    invoke-virtual {v0, v2}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 271
    if-nez p3, :cond_10

    const-wide/16 v3, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_14
    move-wide v15, v3

    .line 272
    iget-wide v5, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    move-object/from16 v2, p1

    iget-wide v9, v2, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v13, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v1

    iget v0, v0, Landroid/graphics/BaseRecordingCanvas;->mDensity:I

    .line 274
    invoke-virtual {v2}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v18

    .line 272
    move/from16 v17, v0

    invoke-static/range {v5 .. v18}, Landroid/graphics/BaseRecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 275
    return-void
.end method

.method public final whitelist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 23

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 281
    invoke-virtual {v0, v2}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 282
    if-nez p3, :cond_10

    const-wide/16 v3, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_14
    move-wide v15, v3

    .line 283
    iget-wide v5, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    move-object/from16 v2, p1

    iget-wide v9, v2, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v12, v1, Landroid/graphics/RectF;->top:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v14, v1, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/BaseRecordingCanvas;->mDensity:I

    .line 285
    invoke-virtual {v2}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v18

    .line 283
    move/from16 v17, v0

    invoke-static/range {v5 .. v18}, Landroid/graphics/BaseRecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 286
    return-void
.end method

.method public final whitelist drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 9

    .line 290
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->nDrawPath(JJJ)V

    .line 291
    return-void
.end method

.method public final whitelist drawPicture(Landroid/graphics/Picture;)V
    .registers 3

    .line 300
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    .line 301
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->save()I

    move-result v0

    .line 302
    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 303
    invoke-virtual {p0, v0}, Landroid/graphics/BaseRecordingCanvas;->restoreToCount(I)V

    .line 304
    return-void
.end method

.method public final whitelist drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .registers 5

    .line 308
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->save()I

    .line 309
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;->translate(FF)V

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_31

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_31

    .line 311
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 312
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    .line 311
    invoke-virtual {p0, v0, p2}, Landroid/graphics/BaseRecordingCanvas;->scale(FF)V

    .line 314
    :cond_31
    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 315
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->restore()V

    .line 316
    return-void
.end method

.method public final whitelist drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .registers 5

    .line 320
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->save()I

    .line 321
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;->translate(FF)V

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_2d

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_2d

    .line 323
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-virtual {p0, v0, p2}, Landroid/graphics/BaseRecordingCanvas;->scale(FF)V

    .line 325
    :cond_2d
    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 326
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->restore()V

    .line 327
    return-void
.end method

.method public final whitelist drawPoint(FFLandroid/graphics/Paint;)V
    .registers 10

    .line 331
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->nDrawPoint(JFFJ)V

    .line 332
    return-void
.end method

.method public final whitelist drawPoints([FIILandroid/graphics/Paint;)V
    .registers 12

    .line 337
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseRecordingCanvas;->nDrawPoints(J[FIIJ)V

    .line 338
    return-void
.end method

.method public final whitelist drawPoints([FLandroid/graphics/Paint;)V
    .registers 5

    .line 342
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/BaseRecordingCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 343
    return-void
.end method

.method public final whitelist drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 365
    return-void
.end method

.method public final whitelist drawPosText([CII[FLandroid/graphics/Paint;)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    if-ltz p2, :cond_24

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_24

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_24

    .line 354
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p3, :cond_23

    .line 355
    add-int v3, p2, v0

    mul-int/lit8 v1, v0, 0x2

    aget v5, p4, v1

    add-int/lit8 v1, v1, 0x1

    aget v6, p4, v1

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseRecordingCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 357
    :cond_23
    return-void

    .line 352
    :cond_24
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final whitelist drawRGB(III)V
    .registers 4

    .line 386
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->drawColor(I)V

    .line 387
    return-void
.end method

.method public final whitelist drawRect(FFFFLandroid/graphics/Paint;)V
    .registers 14

    .line 370
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawRect(JFFFFJ)V

    .line 371
    return-void
.end method

.method public final whitelist drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 10

    .line 375
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

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/BaseRecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 376
    return-void
.end method

.method public final whitelist drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 11

    .line 380
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 381
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    .line 380
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawRect(JFFFFJ)V

    .line 382
    return-void
.end method

.method public whitelist drawRegion(Landroid/graphics/Region;Landroid/graphics/Paint;)V
    .registers 9

    .line 295
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->nDrawRegion(JJJ)V

    .line 296
    return-void
.end method

.method public final whitelist drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .registers 18

    .line 392
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 393
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 392
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->nDrawRoundRect(JFFFFFFJ)V

    .line 394
    return-void
.end method

.method public final whitelist drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 13

    .line 398
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 399
    return-void
.end method

.method public final whitelist drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .registers 19

    .line 461
    or-int v1, p2, p3

    sub-int v6, p3, p2

    or-int/2addr v1, v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_69

    .line 464
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4f

    instance-of v1, p1, Landroid/text/SpannedString;

    if-nez v1, :cond_4f

    instance-of v1, p1, Landroid/text/SpannableString;

    if-eqz v1, :cond_1c

    move-object/from16 v4, p6

    goto :goto_51

    .line 468
    :cond_1c
    instance-of v1, p1, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_30

    .line 469
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_68

    .line 472
    :cond_30
    move-object/from16 v4, p6

    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v5

    .line 473
    const/4 v7, 0x0

    invoke-static {p1, p2, p3, v5, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 474
    iget-wide v2, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v9, v4, Landroid/graphics/Paint;->mBidiFlags:I

    .line 475
    invoke-virtual {v4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 474
    move-object v4, v5

    const/4 v5, 0x0

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v11}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(J[CIIFFIJ)V

    .line 476
    invoke-static {v4}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_68

    .line 464
    :cond_4f
    move-object/from16 v4, p6

    .line 466
    :goto_51
    iget-wide v5, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v7, v4, Landroid/graphics/Paint;->mBidiFlags:I

    .line 467
    invoke-virtual {v4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 466
    move v3, p2

    move v4, p3

    move-object v2, v0

    move-wide v0, v5

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 478
    :goto_68
    return-void

    .line 462
    :cond_69
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final whitelist drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .registers 15

    .line 482
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v7, p4, Landroid/graphics/Paint;->mBidiFlags:I

    .line 483
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 482
    const/4 v3, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 484
    return-void
.end method

.method public final whitelist drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .registers 17

    .line 489
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_20

    .line 492
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v2, p6

    iget v7, v2, Landroid/graphics/Paint;->mBidiFlags:I

    .line 493
    invoke-virtual {v2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 492
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 494
    return-void

    .line 490
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final whitelist drawText([CIIFFLandroid/graphics/Paint;)V
    .registers 18

    .line 450
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_1f

    .line 454
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 455
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 454
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(J[CIIFFIJ)V

    .line 456
    return-void

    .line 452
    :cond_1f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final whitelist drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 16

    .line 510
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 511
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v3

    iget v7, p5, Landroid/graphics/Paint;->mBidiFlags:I

    .line 512
    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    .line 511
    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJ)V

    .line 514
    :cond_18
    return-void
.end method

.method public final whitelist drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 21

    .line 499
    if-ltz p2, :cond_21

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_21

    .line 502
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 503
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v6

    move-object/from16 v0, p7

    iget v10, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 504
    invoke-virtual {v0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    .line 502
    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextOnPath(J[CIIJFFIJ)V

    .line 505
    return-void

    .line 500
    :cond_21
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .registers 24

    .line 590
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v2

    sub-int v4, p3, p2

    sub-int v6, p5, p4

    .line 591
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 592
    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v12

    .line 590
    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v13}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 593
    return-void
.end method

.method public final whitelist drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .registers 26

    .line 540
    move-object/from16 v0, p1

    if-eqz v0, :cond_e6

    .line 543
    if-eqz p9, :cond_dd

    .line 546
    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    sub-int v5, p2, p4

    or-int/2addr v1, v5

    sub-int v6, p3, p2

    or-int/2addr v1, v6

    sub-int v2, p5, p3

    or-int/2addr v1, v2

    .line 547
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v2, v2, p5

    or-int/2addr v1, v2

    if-ltz v1, :cond_d7

    .line 551
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_b4

    instance-of v1, v0, Landroid/text/SpannedString;

    if-nez v1, :cond_b4

    instance-of v1, v0, Landroid/text/SpannableString;

    if-eqz v1, :cond_36

    move-object/from16 v7, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    goto/16 :goto_be

    .line 555
    :cond_36
    instance-of v1, v0, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_53

    .line 556
    check-cast v0, Landroid/text/GraphicsOperations;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V

    goto/16 :goto_d6

    .line 559
    :cond_53
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v1, v6

    move/from16 v6, p5

    instance-of v7, v0, Landroid/text/PrecomputedText;

    if-eqz v7, :cond_8f

    .line 560
    move-object v7, v0

    check-cast v7, Landroid/text/PrecomputedText;

    .line 561
    invoke-virtual {v7, v2}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v8

    .line 562
    invoke-virtual {v7, v8}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v9

    if-gt v3, v9, :cond_8c

    .line 563
    invoke-virtual {v7, v8}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v0

    .line 564
    invoke-virtual {v7, v8}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v1

    .line 566
    invoke-virtual {v1}, Landroid/text/MeasuredParagraph;->getMeasuredText()Landroid/graphics/text/MeasuredText;

    move-result-object v1

    sub-int/2addr v2, v0

    sub-int/2addr v3, v0

    sub-int/2addr v4, v0

    sub-int v5, v6, v0

    move-object/from16 v0, p0

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    .line 572
    return-void

    .line 562
    :cond_8c
    move-object/from16 v7, p0

    goto :goto_91

    .line 559
    :cond_8f
    move-object/from16 v7, p0

    .line 575
    :goto_91
    sub-int v8, v6, v4

    .line 576
    nop

    .line 577
    invoke-static {v8}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 578
    const/4 v3, 0x0

    invoke-static {v0, v4, v6, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 579
    move-object v4, v2

    iget-wide v2, v7, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 580
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    .line 579
    const/4 v7, 0x0

    const-wide/16 v14, 0x0

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move v6, v1

    invoke-static/range {v2 .. v15}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 582
    invoke-static {v4}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_d6

    .line 551
    :cond_b4
    move-object/from16 v7, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    .line 553
    :goto_be
    iget-wide v7, v7, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 553
    move/from16 v9, p8

    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v0

    move-wide v0, v7

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v11}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V

    .line 584
    :goto_d6
    return-void

    .line 548
    :cond_d7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 544
    :cond_dd
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_e6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .registers 24

    .line 520
    if-eqz p1, :cond_43

    .line 523
    if-eqz p9, :cond_3a

    .line 526
    or-int v0, p2, p3

    or-int v0, v0, p4

    or-int v0, v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    add-int v1, p4, p5

    add-int v3, p2, p3

    sub-int v3, v1, v3

    or-int/2addr v0, v3

    array-length v3, p1

    sub-int/2addr v3, v1

    or-int/2addr v0, v3

    if-ltz v0, :cond_34

    .line 532
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 533
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    .line 532
    const-wide/16 v12, 0x0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v13}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 534
    return-void

    .line 529
    :cond_34
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 524
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .registers 28

    .line 600
    move/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v4, p3

    array-length v0, v4

    move/from16 v5, p4

    invoke-static {v0, v5, v3}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    .line 601
    if-eqz v6, :cond_19

    .line 602
    array-length v0, v6

    move/from16 v7, p6

    invoke-static {v0, v7, v3}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    goto :goto_1b

    .line 601
    :cond_19
    move/from16 v7, p6

    .line 604
    :goto_1b
    if-eqz v8, :cond_26

    .line 605
    array-length v0, v8

    div-int/lit8 v1, v3, 0x2

    move/from16 v9, p8

    invoke-static {v0, v9, v1}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    goto :goto_28

    .line 604
    :cond_26
    move/from16 v9, p8

    .line 607
    :goto_28
    if-eqz v10, :cond_33

    .line 608
    array-length v0, v10

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-static {v0, v11, v12}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    goto :goto_37

    .line 607
    :cond_33
    move/from16 v11, p10

    move/from16 v12, p11

    .line 610
    :goto_37
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v2, p1

    iget v2, v2, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    .line 612
    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v13

    .line 610
    invoke-static/range {v0 .. v14}, Landroid/graphics/BaseRecordingCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    .line 613
    return-void
.end method

.method public blacklist punchHole(FFFFFFF)V
    .registers 17

    .line 631
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/BaseRecordingCanvas;->nPunchHole(JFFFFFFF)V

    .line 632
    return-void
.end method
