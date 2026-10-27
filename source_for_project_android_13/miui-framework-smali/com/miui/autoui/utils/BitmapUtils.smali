.class public Lcom/miui/autoui/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/autoui/utils/BitmapUtils$BITMAP_OPERATION;
    }
.end annotation


# static fields
.field private static final blacklist BLURRED_BITMAPS_LOCK:Ljava/lang/Object;

.field private static final blacklist TAG:Ljava/lang/String; = "BitmapUtils"

.field private static blacklist mBlurBitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/miui/autoui/utils/BitmapKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/miui/autoui/utils/BitmapUtils$1;

    invoke-direct {v0}, Lcom/miui/autoui/utils/BitmapUtils$1;-><init>()V

    sput-object v0, Lcom/miui/autoui/utils/BitmapUtils;->mBlurBitmaps:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/autoui/utils/BitmapUtils;->BLURRED_BITMAPS_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist cloneShader(Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;
    .registers 7
    .param p0, "originShader"    # Landroid/graphics/BitmapShader;

    .line 271
    const-string v0, "mTileX"

    invoke-static {p0, v0}, Lcom/miui/autoui/utils/ReflectUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 272
    .local v0, "tileX":I
    const-string v1, "mTileY"

    invoke-static {p0, v1}, Lcom/miui/autoui/utils/ReflectUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 273
    .local v1, "tileY":I
    new-instance v2, Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v0}, Lcom/miui/autoui/utils/BitmapUtils;->covertMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v4

    invoke-static {v1}, Lcom/miui/autoui/utils/BitmapUtils;->covertMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 274
    .local v2, "newShader":Landroid/graphics/BitmapShader;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 275
    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0, v3}, Landroid/graphics/BitmapShader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 276
    invoke-virtual {v2, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 277
    return-object v2
.end method

.method private static blacklist covertMode(I)Landroid/graphics/Shader$TileMode;
    .registers 2
    .param p0, "value"    # I

    .line 281
    packed-switch p0, :pswitch_data_c

    .line 287
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 285
    :pswitch_6
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 283
    :pswitch_9
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist createAverageColorBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 238
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 239
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 240
    .local v9, "height":I
    mul-int v0, v8, v9

    new-array v10, v0, [I

    .line 241
    .local v10, "srcPixelsAll":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 242
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    .local v0, "mutableBitmap":Landroid/graphics/Bitmap;
    const/16 v1, 0xa

    invoke-static {v10, v1, v8, v9}, Lcom/miui/autoui/utils/NativeImageProcess;->getAverageColorFromPixels([IIII)I

    move-result v1

    .line 245
    .local v1, "color":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAverageColorFromPixels color = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BitmapUtils"

    invoke-static {v3, v2}, Lcom/miui/autoui/AutoUILogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 247
    return-object v0
.end method

.method private static blacklist findAlmostEqual(Lcom/miui/autoui/utils/BitmapKey;Ljava/util/Map;)Ljava/util/Optional;
    .registers 5
    .param p0, "bitmapKey"    # Lcom/miui/autoui/utils/BitmapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/autoui/utils/BitmapKey;",
            "Ljava/util/Map<",
            "Lcom/miui/autoui/utils/BitmapKey;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/miui/autoui/utils/BitmapKey;",
            ">;"
        }
    .end annotation

    .line 251
    .local p1, "blurredBitmapMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/autoui/utils/BitmapKey;Landroid/graphics/Bitmap;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 252
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 254
    :cond_b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 255
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/autoui/utils/BitmapKey;Landroid/graphics/Bitmap;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autoui/utils/BitmapKey;

    invoke-virtual {v2, p0}, Lcom/miui/autoui/utils/BitmapKey;->isAlmostEquals(Lcom/miui/autoui/utils/BitmapKey;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autoui/utils/BitmapKey;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 258
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/autoui/utils/BitmapKey;Landroid/graphics/Bitmap;>;"
    :cond_36
    goto :goto_13

    .line 259
    :cond_37
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getShaderBitmap(Lcom/miui/autoui/AutoUIParams;)Ljava/util/Optional;
    .registers 7
    .param p0, "params"    # Lcom/miui/autoui/AutoUIParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/autoui/AutoUIParams;",
            ")",
            "Ljava/util/Optional<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUIParams;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 106
    .local v0, "originPaint":Landroid/graphics/Paint;
    if-nez v0, :cond_b

    .line 107
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 109
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    .line 110
    .local v1, "shader":Landroid/graphics/Shader;
    instance-of v2, v1, Landroid/graphics/BitmapShader;

    if-nez v2, :cond_18

    .line 111
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    return-object v2

    .line 113
    :cond_18
    move-object v2, v1

    check-cast v2, Landroid/graphics/BitmapShader;

    .line 114
    .local v2, "originShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v2}, Landroid/graphics/BitmapShader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 115
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_2a

    goto :goto_2f

    .line 118
    :cond_2a
    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    return-object v4

    .line 116
    :cond_2f
    :goto_2f
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist isTransParentBitmap(Landroid/graphics/Bitmap;II)Z
    .registers 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 101
    invoke-static {p0, p1, p2}, Lcom/miui/autoui/utils/NativeImageProcess;->isTransParentBitmap(Landroid/graphics/Bitmap;II)Z

    move-result v0

    return v0
.end method

.method public static blacklist needUpdateBitmap(Landroid/view/View;Landroid/graphics/Bitmap;)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 263
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_b

    goto :goto_14

    .line 266
    :cond_b
    invoke-static {p0, p1}, Lcom/miui/autoui/utils/BitmapKey;->obtain(Landroid/view/View;Landroid/graphics/Bitmap;)Lcom/miui/autoui/utils/BitmapKey;

    move-result-object v0

    .line 267
    .local v0, "bitmapKey":Lcom/miui/autoui/utils/BitmapKey;
    invoke-virtual {v0}, Lcom/miui/autoui/utils/BitmapKey;->isValid()Z

    move-result v1

    return v1

    .line 264
    .end local v0    # "bitmapKey":Lcom/miui/autoui/utils/BitmapKey;
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist obtainBlurBitmap(Landroid/view/View;Landroid/graphics/Bitmap;IILjava/util/Map;)Landroid/graphics/Bitmap;
    .registers 21
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dstBlurWidth"    # I
    .param p3, "dstBlurHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/Bitmap;",
            "II",
            "Ljava/util/Map<",
            "Lcom/miui/autoui/utils/BitmapKey;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 197
    .local p4, "blurBitmaps":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/autoui/utils/BitmapKey;Landroid/graphics/Bitmap;>;"
    move/from16 v0, p2

    move/from16 v1, p3

    const/high16 v2, 0x3e800000    # 0.25f

    .line 201
    .local v2, "scale":F
    invoke-static/range {p0 .. p1}, Lcom/miui/autoui/utils/BitmapKey;->obtain(Landroid/view/View;Landroid/graphics/Bitmap;)Lcom/miui/autoui/utils/BitmapKey;

    move-result-object v3

    .line 202
    .local v3, "bitmapKey":Lcom/miui/autoui/utils/BitmapKey;
    sget-object v4, Lcom/miui/autoui/utils/BitmapUtils;->mBlurBitmaps:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/miui/autoui/utils/BitmapUtils;->findAlmostEqual(Lcom/miui/autoui/utils/BitmapKey;Ljava/util/Map;)Ljava/util/Optional;

    move-result-object v4

    .line 203
    .local v4, "sameBitmapKey":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/miui/autoui/utils/BitmapKey;>;"
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 204
    sget-object v5, Lcom/miui/autoui/utils/BitmapUtils;->mBlurBitmaps:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 205
    .local v5, "blurBitmap":Landroid/graphics/Bitmap;
    return-object v5

    .line 208
    .end local v5    # "blurBitmap":Landroid/graphics/Bitmap;
    :cond_23
    invoke-static/range {p0 .. p0}, Lcom/miui/autoui/utils/ViewProcessor;->getViewExtras(Landroid/view/View;)Lcom/miui/autoui/ViewExtras;

    move-result-object v5

    .line 209
    .local v5, "viewExtras":Lcom/miui/autoui/ViewExtras;
    invoke-virtual {v5}, Lcom/miui/autoui/ViewExtras;->getViewPolicy()I

    move-result v6

    const/16 v7, 0x11

    const/4 v8, 0x1

    if-ne v6, v7, :cond_35

    .line 211
    invoke-static/range {p1 .. p1}, Lcom/miui/autoui/utils/BitmapUtils;->createAverageColorBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, "blurBitmap":Landroid/graphics/Bitmap;
    goto :goto_95

    .line 212
    .end local v6    # "blurBitmap":Landroid/graphics/Bitmap;
    :cond_35
    invoke-virtual {v5}, Lcom/miui/autoui/ViewExtras;->getViewPolicy()I

    move-result v6

    const/16 v7, 0x12

    if-eq v6, v7, :cond_93

    int-to-float v6, v0

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v6, v7

    .line 213
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-lez v6, :cond_93

    int-to-float v6, v1

    mul-float/2addr v6, v7

    .line 214
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-gtz v6, :cond_50

    goto :goto_93

    .line 222
    :cond_50
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 223
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 224
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    move-object/from16 v9, p1

    move-object v14, v6

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 226
    .local v7, "resizeBmp":Landroid/graphics/Bitmap;
    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v7, v9}, Lcom/miui/autoui/utils/NativeImageProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 228
    .local v9, "blurBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-lt v10, v11, :cond_82

    .line 229
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v10, v8

    goto :goto_88

    :cond_82
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    :goto_88
    const/4 v11, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 228
    invoke-static {v9, v10, v11, v8, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v6, v9

    goto :goto_95

    .line 218
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "resizeBmp":Landroid/graphics/Bitmap;
    .end local v9    # "blurBitmap":Landroid/graphics/Bitmap;
    :cond_93
    :goto_93
    move-object/from16 v6, p1

    .line 231
    .local v6, "blurBitmap":Landroid/graphics/Bitmap;
    :goto_95
    invoke-static {v6, v0, v1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 233
    move-object/from16 v7, p4

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-object v6
.end method

.method private static blacklist obtainBlurBitmap(Landroid/view/View;Landroid/graphics/Bitmap;Ljava/util/Map;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Lcom/miui/autoui/utils/BitmapKey;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 193
    .local p2, "blurBitmaps":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/autoui/utils/BitmapKey;Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/miui/autoui/utils/BitmapUtils;->obtainBlurBitmap(Landroid/view/View;Landroid/graphics/Bitmap;IILjava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtainMergeBlurBitmap(Landroid/view/View;Landroid/graphics/Bitmap;IIILcom/miui/autoui/AutoUIParams;)Landroid/graphics/Bitmap;
    .registers 23
    .param p0, "view"    # Landroid/view/View;
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "dstWidth"    # I
    .param p3, "dstBlurWidth"    # I
    .param p4, "dstBlurHeight"    # I
    .param p5, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 80
    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    sget-object v5, Lcom/miui/autoui/utils/BitmapUtils;->BLURRED_BITMAPS_LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 82
    nop

    .line 83
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v1, v0, v6}, Lcom/miui/autoui/utils/NativeImageProcess;->filletCutting(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    .local v0, "filletBitmap":Landroid/graphics/Bitmap;
    sget-object v6, Lcom/miui/autoui/utils/BitmapUtils;->mBlurBitmaps:Ljava/util/Map;
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_70

    move-object/from16 v7, p0

    :try_start_1c
    invoke-static {v7, v1, v2, v3, v6}, Lcom/miui/autoui/utils/BitmapUtils;->obtainBlurBitmap(Landroid/view/View;Landroid/graphics/Bitmap;IILjava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 85
    .local v6, "blurBitmap":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 86
    .local v8, "expectedBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    .local v9, "newCanvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 88
    .local v10, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x0

    invoke-virtual {v9, v6, v11, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/4 v15, 0x0

    invoke-direct {v12, v15, v15, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 90
    .local v12, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    sub-int v13, v13, p2

    div-int/lit8 v13, v13, 0x2

    .line 91
    .local v13, "left":I
    new-instance v14, Landroid/graphics/Rect;

    add-int v11, v13, p2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/4 v1, 0x0

    invoke-direct {v14, v13, v1, v11, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v14

    .line 92
    .local v1, "dst":Landroid/graphics/Rect;
    invoke-virtual {v9, v0, v12, v1, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 93
    invoke-static {v0}, Lcom/miui/autoui/utils/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    invoke-virtual {v4, v8}, Lcom/miui/autoui/AutoUIParams;->setBitmap(Landroid/graphics/Bitmap;)Lcom/miui/autoui/AutoUIParams;

    .line 95
    new-instance v11, Landroid/graphics/RectF;

    int-to-float v14, v2

    int-to-float v15, v3

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "filletBitmap":Landroid/graphics/Bitmap;
    .local v16, "filletBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v11, v0, v0, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v11}, Lcom/miui/autoui/AutoUIParams;->setRectF(Landroid/graphics/RectF;)Lcom/miui/autoui/AutoUIParams;

    .line 96
    monitor-exit v5

    return-object v8

    .line 97
    .end local v1    # "dst":Landroid/graphics/Rect;
    .end local v6    # "blurBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "expectedBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "newCanvas":Landroid/graphics/Canvas;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v12    # "srcRect":Landroid/graphics/Rect;
    .end local v13    # "left":I
    .end local v16    # "filletBitmap":Landroid/graphics/Bitmap;
    :catchall_70
    move-exception v0

    move-object/from16 v7, p0

    :goto_73
    monitor-exit v5
    :try_end_74
    .catchall {:try_start_1c .. :try_end_74} :catchall_75

    throw v0

    :catchall_75
    move-exception v0

    goto :goto_73
.end method

.method public static blacklist obtainMergeBlurBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Bitmap;Lcom/miui/autoui/AutoUIParams;)Landroid/graphics/Bitmap;
    .registers 19
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p2, "src"    # Landroid/graphics/Bitmap;
    .param p3, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 51
    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 52
    .local v2, "realWidth":I
    sget-object v3, Lcom/miui/autoui/utils/BitmapUtils;->BLURRED_BITMAPS_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 53
    :try_start_10
    sget-object v0, Lcom/miui/autoui/utils/BitmapUtils;->mBlurBitmaps:Ljava/util/Map;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_70

    move-object v4, p0

    :try_start_13
    invoke-static {p0, v1, v0}, Lcom/miui/autoui/utils/BitmapUtils;->obtainBlurBitmap(Landroid/view/View;Landroid/graphics/Bitmap;Ljava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    .local v0, "blurBitmap":Landroid/graphics/Bitmap;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 55
    .local v5, "expectedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/autoui/ViewExtras;->getViewPolicy()I

    move-result v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_28

    .line 57
    monitor-exit v3

    return-object v5

    .line 60
    :cond_28
    nop

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v1, v6, v7}, Lcom/miui/autoui/utils/NativeImageProcess;->filletCutting(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 62
    .local v6, "filletBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .local v7, "newCanvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 66
    .local v8, "paint":Landroid/graphics/Paint;
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 67
    .local v9, "srcRect":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v10, v2

    div-int/lit8 v10, v10, 0x2

    .line 68
    .local v10, "left":I
    new-instance v11, Landroid/graphics/Rect;

    add-int v13, v10, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v11, v10, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    .local v11, "dst":Landroid/graphics/Rect;
    invoke-virtual {v7, v6, v9, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 70
    if-eq v6, v1, :cond_67

    .line 71
    invoke-static {v6}, Lcom/miui/autoui/utils/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V
    :try_end_67
    .catchall {:try_start_13 .. :try_end_67} :catchall_6e

    .line 73
    :cond_67
    move-object/from16 v12, p3

    :try_start_69
    invoke-virtual {v12, v5}, Lcom/miui/autoui/AutoUIParams;->setBitmap(Landroid/graphics/Bitmap;)Lcom/miui/autoui/AutoUIParams;

    .line 74
    monitor-exit v3

    return-object v5

    .line 75
    .end local v0    # "blurBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "expectedBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "filletBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "newCanvas":Landroid/graphics/Canvas;
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v9    # "srcRect":Landroid/graphics/Rect;
    .end local v10    # "left":I
    .end local v11    # "dst":Landroid/graphics/Rect;
    :catchall_6e
    move-exception v0

    goto :goto_72

    :catchall_70
    move-exception v0

    move-object v4, p0

    :goto_72
    move-object/from16 v12, p3

    :goto_74
    monitor-exit v3
    :try_end_75
    .catchall {:try_start_69 .. :try_end_75} :catchall_76

    throw v0

    :catchall_76
    move-exception v0

    goto :goto_74
.end method

.method public static blacklist obtainMergeShaderBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Lcom/miui/autoui/AutoUIParams;I)V
    .registers 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewInfo"    # Lcom/miui/autoui/ViewExtras;
    .param p2, "params"    # Lcom/miui/autoui/AutoUIParams;
    .param p3, "type"    # I

    .line 123
    invoke-static {p2}, Lcom/miui/autoui/utils/BitmapUtils;->getShaderBitmap(Lcom/miui/autoui/AutoUIParams;)Ljava/util/Optional;

    move-result-object v0

    .line 124
    .local v0, "bitmapOptional":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 125
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 126
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0, v1}, Lcom/miui/autoui/utils/BitmapUtils;->needUpdateBitmap(Landroid/view/View;Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 127
    invoke-virtual {p2}, Lcom/miui/autoui/AutoUIParams;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 128
    .local v2, "originPaint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 129
    .local v3, "newPaint":Landroid/graphics/Paint;
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 130
    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/BitmapShader;

    if-eqz v4, :cond_55

    .line 131
    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v4

    check-cast v4, Landroid/graphics/BitmapShader;

    .line 132
    .local v4, "originShader":Landroid/graphics/BitmapShader;
    invoke-static {v4}, Lcom/miui/autoui/utils/BitmapUtils;->cloneShader(Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    move-result-object v5

    .line 133
    .local v5, "newShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 134
    const/4 v6, 0x0

    .line 135
    .local v6, "blurBitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x1

    if-ne p3, v7, :cond_40

    .line 136
    invoke-static {p0, p1, v1, p2}, Lcom/miui/autoui/utils/BitmapUtils;->obtainMergeBlurBitmap(Landroid/view/View;Lcom/miui/autoui/ViewExtras;Landroid/graphics/Bitmap;Lcom/miui/autoui/AutoUIParams;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_47

    .line 137
    :cond_40
    const/4 v7, 0x2

    if-ne p3, v7, :cond_47

    .line 138
    invoke-static {v1}, Lcom/miui/autoui/utils/BitmapUtils;->obtainSplitBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 140
    :cond_47
    :goto_47
    if-eqz v6, :cond_4f

    .line 141
    invoke-virtual {v5, v6}, Landroid/graphics/BitmapShader;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    invoke-virtual {p2, v3}, Lcom/miui/autoui/AutoUIParams;->setPaint(Landroid/graphics/Paint;)Lcom/miui/autoui/AutoUIParams;

    .line 144
    :cond_4f
    invoke-virtual {v5, v6}, Landroid/graphics/BitmapShader;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    invoke-virtual {p2, v3}, Lcom/miui/autoui/AutoUIParams;->setPaint(Landroid/graphics/Paint;)Lcom/miui/autoui/AutoUIParams;

    .line 149
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "originPaint":Landroid/graphics/Paint;
    .end local v3    # "newPaint":Landroid/graphics/Paint;
    .end local v4    # "originShader":Landroid/graphics/BitmapShader;
    .end local v5    # "newShader":Landroid/graphics/BitmapShader;
    .end local v6    # "blurBitmap":Landroid/graphics/Bitmap;
    :cond_55
    return-void
.end method

.method private static blacklist obtainSplitBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 15
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .line 155
    sget-object v0, Lcom/miui/autoui/utils/BitmapUtils;->BLURRED_BITMAPS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 157
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 158
    .local v2, "height":I
    div-int/lit8 v3, v1, 0x2

    .line 161
    .local v3, "halfWidth":I
    const/4 v4, 0x0

    invoke-static {p0, v4, v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 162
    .local v5, "leftBitmap":Landroid/graphics/Bitmap;
    invoke-static {p0, v3, v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 165
    .local v4, "rightBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v6

    .line 166
    .local v6, "scale":F
    nop

    .line 167
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    .line 166
    const/4 v8, 0x1

    invoke-static {v5, v7, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 168
    .local v7, "scaledLeftBitmap":Landroid/graphics/Bitmap;
    nop

    .line 169
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-int v9, v9

    .line 168
    invoke-static {v4, v9, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 172
    .local v8, "scaledRightBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {v1, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 173
    .local v9, "resultBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 174
    .local v10, "canvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v12, v12, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 175
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    sub-int v13, v1, v13

    int-to-float v13, v13

    invoke-virtual {v10, v8, v13, v12, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 178
    invoke-static {v5}, Lcom/miui/autoui/utils/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    invoke-static {v4}, Lcom/miui/autoui/utils/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    invoke-static {v7}, Lcom/miui/autoui/utils/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    invoke-static {v8}, Lcom/miui/autoui/utils/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    monitor-exit v0

    return-object v9

    .line 183
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "halfWidth":I
    .end local v4    # "rightBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "leftBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "scale":F
    .end local v7    # "scaledLeftBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "scaledRightBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method private static blacklist recycleBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 187
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 188
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 190
    :cond_b
    return-void
.end method
