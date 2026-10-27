.class Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# static fields
.field private static final TITLE:Ljava/lang/String; = "WatermarkSurface"


# instance fields
.field private final mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private final mDeltaX:I

.field private final mDeltaY:I

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mText:Ljava/lang/String;

.field private final mTextHeight:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextWidth:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;[Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .registers 26
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "tokens"    # [Ljava/lang/String;
    .param p4, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 57
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v0, "WatermarkSurface"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 67
    .local v7, "len":I
    and-int/lit8 v7, v7, -0x2

    .line 68
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1e
    if-ge v8, v7, :cond_6a

    .line 69
    aget-object v9, v3, v6

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 70
    .local v9, "c1":I
    aget-object v10, v3, v6

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 71
    .local v10, "c2":I
    const/16 v11, 0x46

    const/16 v12, 0x66

    const/16 v13, 0x41

    const/16 v14, 0x61

    if-lt v9, v14, :cond_3f

    if-gt v9, v12, :cond_3f

    add-int/lit8 v15, v9, -0x61

    add-int/lit8 v15, v15, 0xa

    .end local v9    # "c1":I
    .local v15, "c1":I
    goto :goto_4a

    .line 72
    .end local v15    # "c1":I
    .restart local v9    # "c1":I
    :cond_3f
    if-lt v9, v13, :cond_48

    if-gt v9, v11, :cond_48

    add-int/lit8 v15, v9, -0x41

    add-int/lit8 v15, v15, 0xa

    .end local v9    # "c1":I
    .restart local v15    # "c1":I
    goto :goto_4a

    .line 73
    .end local v15    # "c1":I
    .restart local v9    # "c1":I
    :cond_48
    add-int/lit8 v15, v9, -0x30

    .line 74
    .end local v9    # "c1":I
    .restart local v15    # "c1":I
    :goto_4a
    if-lt v10, v14, :cond_53

    if-gt v10, v12, :cond_53

    add-int/lit8 v9, v10, -0x61

    add-int/lit8 v9, v9, 0xa

    .end local v10    # "c2":I
    .local v9, "c2":I
    goto :goto_5e

    .line 75
    .end local v9    # "c2":I
    .restart local v10    # "c2":I
    :cond_53
    if-lt v10, v13, :cond_5c

    if-gt v10, v11, :cond_5c

    add-int/lit8 v9, v10, -0x41

    add-int/lit8 v9, v9, 0xa

    .end local v10    # "c2":I
    .restart local v9    # "c2":I
    goto :goto_5e

    .line 76
    .end local v9    # "c2":I
    .restart local v10    # "c2":I
    :cond_5c
    add-int/lit8 v9, v10, -0x30

    .line 77
    .end local v10    # "c2":I
    .restart local v9    # "c2":I
    :goto_5e
    mul-int/lit8 v10, v15, 0x10

    add-int/2addr v10, v9

    rsub-int v10, v10, 0xff

    int-to-char v10, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .end local v9    # "c2":I
    .end local v15    # "c1":I
    add-int/lit8 v8, v8, 0x2

    goto :goto_1e

    .line 79
    .end local v8    # "i":I
    :cond_6a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    .line 84
    const/16 v9, 0x14

    const/4 v10, 0x1

    invoke-static {v3, v10, v10, v9, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v9

    .line 87
    .local v9, "fontSize":I
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    .line 88
    int-to-float v12, v9

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    sget-object v12, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v12, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 91
    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    .line 92
    .local v10, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {v11, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v1, Lcom/android/server/wm/Watermark;->mTextWidth:I

    .line 93
    iget v12, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v13, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v12, v13

    iput v12, v1, Lcom/android/server/wm/Watermark;->mTextHeight:I

    .line 95
    const/4 v13, 0x2

    mul-int/2addr v8, v13

    invoke-static {v3, v13, v6, v8, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v8

    iput v8, v1, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 97
    const/4 v8, 0x3

    mul-int/2addr v12, v8

    invoke-static {v3, v8, v6, v12, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v8

    iput v8, v1, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 99
    const/4 v8, 0x4

    const/high16 v12, -0x50000000

    invoke-static {v3, v8, v6, v12, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v8

    .line 101
    .local v8, "shadowColor":I
    const/4 v12, 0x5

    const v13, 0x60ffffff

    invoke-static {v3, v12, v6, v13, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v12

    .line 103
    .local v12, "color":I
    const/4 v13, 0x6

    const/4 v14, 0x7

    invoke-static {v3, v13, v6, v14, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v13

    .line 105
    .local v13, "shadowRadius":I
    const/16 v14, 0x8

    invoke-static {v3, v14, v6, v6, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v14

    .line 107
    .local v14, "shadowDx":I
    const/16 v15, 0x9

    invoke-static {v3, v15, v6, v6, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v6

    .line 110
    .local v6, "shadowDy":I
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    int-to-float v15, v13

    int-to-float v2, v14

    int-to-float v3, v6

    invoke-virtual {v11, v15, v2, v3, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 113
    const/4 v2, 0x0

    .line 115
    .local v2, "ctrl":Landroid/view/SurfaceControl;
    :try_start_d8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 116
    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const/4 v11, -0x3

    .line 118
    invoke-virtual {v3, v11}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 119
    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    move-object v2, v3

    .line 121
    const v3, 0xf4240

    invoke-virtual {v4, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 122
    const/4 v11, 0x0

    invoke-virtual {v3, v2, v11, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 123
    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-static {v2, v4, v3, v0}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    :try_end_108
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_d8 .. :try_end_108} :catch_109

    .line 127
    goto :goto_10a

    .line 126
    :catch_109
    move-exception v0

    .line 128
    :goto_10a
    iput-object v2, v1, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 129
    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const-string v16, "WatermarkSurface"

    move-object v15, v0

    move-object/from16 v17, v2

    invoke-direct/range {v15 .. v20}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 131
    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    .line 132
    return-void
.end method


# virtual methods
.method drawIfNeeded()V
    .registers 15

    .line 144
    iget-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    if-nez v0, :cond_5

    .line 145
    return-void

    .line 148
    :cond_5
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 149
    .local v0, "dw":I
    iget v1, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 151
    .local v1, "dh":I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 152
    iget-object v3, p0, Lcom/android/server/wm/Watermark;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 153
    const/4 v3, 0x0

    .line 155
    .local v3, "c":Landroid/graphics/Canvas;
    :try_start_15
    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v4
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1c} :catch_1e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_15 .. :try_end_1c} :catch_1e

    move-object v3, v4

    .line 157
    goto :goto_1f

    .line 156
    :catch_1e
    move-exception v4

    .line 158
    :goto_1f
    if-eqz v3, :cond_5f

    .line 159
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 161
    iget v2, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 162
    .local v2, "deltaX":I
    iget v4, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 166
    .local v4, "deltaY":I
    iget v5, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int v6, v0, v5

    div-int/2addr v6, v2

    .line 167
    .local v6, "div":I
    add-int v7, v0, v5

    mul-int v8, v6, v2

    sub-int/2addr v7, v8

    .line 168
    .local v7, "rem":I
    div-int/lit8 v8, v2, 0x4

    .line 169
    .local v8, "qdelta":I
    if-lt v7, v8, :cond_3c

    sub-int v9, v2, v8

    if-le v7, v9, :cond_3f

    .line 170
    :cond_3c
    div-int/lit8 v9, v2, 0x3

    add-int/2addr v2, v9

    .line 173
    :cond_3f
    iget v9, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    neg-int v9, v9

    .line 174
    .local v9, "y":I
    neg-int v5, v5

    .line 175
    .local v5, "x":I
    :cond_43
    :goto_43
    iget v10, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    add-int/2addr v10, v1

    if-ge v9, v10, :cond_5a

    .line 176
    iget-object v10, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    int-to-float v11, v5

    int-to-float v12, v9

    iget-object v13, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 177
    add-int/2addr v5, v2

    .line 178
    if-lt v5, v0, :cond_43

    .line 179
    iget v10, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v10, v0

    sub-int/2addr v5, v10

    .line 180
    add-int/2addr v9, v4

    goto :goto_43

    .line 183
    :cond_5a
    iget-object v10, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 185
    .end local v2    # "deltaX":I
    .end local v4    # "deltaY":I
    .end local v5    # "x":I
    .end local v6    # "div":I
    .end local v7    # "rem":I
    .end local v8    # "qdelta":I
    .end local v9    # "y":I
    :cond_5f
    return-void
.end method

.method positionSurface(IILandroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 135
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    if-eq v0, p2, :cond_14

    .line 136
    :cond_8
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 137
    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 141
    :cond_14
    return-void
.end method
