.class public Lcom/android/internal/util/ContrastColorUtil;
.super Ljava/lang/Object;
.source "ContrastColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ContrastColorUtil"

.field private static blacklist sInstance:Lcom/android/internal/util/ContrastColorUtil;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mGrayscaleBitmapCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mGrayscaleIconMaxSize:I

.field private final blacklist mImageUtils:Lcom/android/internal/util/ImageUtils;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/ContrastColorUtil;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/internal/util/ImageUtils;

    invoke-direct {v0}, Lcom/android/internal/util/ImageUtils;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ContrastColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    .line 60
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleIconMaxSize:I

    .line 77
    return-void
.end method

.method public static blacklist calculateContrast(II)D
    .registers 4
    .param p0, "foregroundColor"    # I
    .param p1, "backgroundColor"    # I

    .line 610
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist calculateLuminance(I)D
    .registers 3
    .param p0, "backgroundColor"    # I

    .line 605
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist changeColorLightness(II)I
    .registers 12
    .param p0, "baseColor"    # I
    .param p1, "amount"    # I

    .line 520
    invoke-static {}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v0

    .line 521
    .local v0, "result":[D
    invoke-static {p0, v0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 522
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    int-to-double v4, p1

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 523
    aget-wide v4, v0, v1

    const/4 v1, 0x1

    aget-wide v6, v0, v1

    const/4 v1, 0x2

    aget-wide v8, v0, v1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v1

    return v1
.end method

.method public static blacklist clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 16
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 250
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_6f

    .line 251
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 252
    .local v0, "ss":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 253
    .local v1, "spans":[Ljava/lang/Object;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 254
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    array-length v4, v1

    :goto_1c
    if-ge v3, v4, :cond_6e

    aget-object v5, v1, v3

    .line 255
    .local v5, "span":Ljava/lang/Object;
    move-object v6, v5

    .line 256
    .local v6, "resultSpan":Ljava/lang/Object;
    instance-of v7, v6, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_2c

    .line 257
    move-object v7, v5

    check-cast v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v7}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v6

    .line 259
    :cond_2c
    instance-of v7, v6, Landroid/text/style/TextAppearanceSpan;

    if-eqz v7, :cond_52

    .line 260
    move-object v7, v6

    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    .line 261
    .local v7, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v8

    if-eqz v8, :cond_51

    .line 262
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    .line 263
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v10

    .line 264
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v11

    .line 265
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v12

    const/4 v13, 0x0

    .line 267
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    move-object v6, v8

    .line 269
    .end local v7    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    :cond_51
    goto :goto_5c

    :cond_52
    instance-of v7, v6, Landroid/text/style/ForegroundColorSpan;

    if-nez v7, :cond_6b

    instance-of v7, v6, Landroid/text/style/BackgroundColorSpan;

    if-eqz v7, :cond_5b

    .line 271
    goto :goto_6b

    .line 273
    :cond_5b
    move-object v6, v5

    .line 275
    :goto_5c
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 276
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 275
    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 254
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "resultSpan":Ljava/lang/Object;
    :cond_6b
    :goto_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 278
    :cond_6e
    return-object v2

    .line 280
    .end local v0    # "ss":Landroid/text/Spanned;
    .end local v1    # "spans":[Ljava/lang/Object;
    .end local v2    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_6f
    return-object p0
.end method

.method public static blacklist compositeColors(II)I
    .registers 3
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .line 621
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->compositeColors(II)I

    move-result v0

    return v0
.end method

.method private static blacklist contrastChange(III)Ljava/lang/String;
    .registers 6
    .param p0, "colorOld"    # I
    .param p1, "colorNew"    # I
    .param p2, "bg"    # I

    .line 450
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 451
    invoke-static {p0, p2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 452
    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 450
    const-string v1, "from %.2f:1 to %.2f:1"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ensureContrast(IIZD)I
    .registers 6
    .param p0, "color"    # I
    .param p1, "bg"    # I
    .param p2, "isBgDarker"    # Z
    .param p3, "minRatio"    # D

    .line 436
    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 437
    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    goto :goto_c

    .line 438
    :cond_8
    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v0

    .line 436
    :goto_c
    return v0
.end method

.method public static blacklist ensureLargeTextContrast(IIZ)I
    .registers 6
    .param p0, "color"    # I
    .param p1, "bg"    # I
    .param p2, "isBgDarker"    # Z

    .line 411
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    const/4 v2, 0x1

    if-eqz p2, :cond_a

    .line 412
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    goto :goto_e

    .line 413
    :cond_a
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v0

    .line 411
    :goto_e
    return v0
.end method

.method public static blacklist ensureTextBackgroundColor(III)I
    .registers 6
    .param p0, "color"    # I
    .param p1, "textColor"    # I
    .param p2, "hintColor"    # I

    .line 445
    const/4 v0, 0x0

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-static {p0, p2, v0, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result p0

    .line 446
    const-wide/high16 v1, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v0

    return v0
.end method

.method public static blacklist ensureTextContrast(IIZ)I
    .registers 5
    .param p0, "color"    # I
    .param p1, "bg"    # I
    .param p2, "isBgDarker"    # Z

    .line 423
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    move-result v0

    return v0
.end method

.method public static blacklist ensureTextContrastOnBlack(I)I
    .registers 5
    .param p0, "color"    # I

    .line 401
    const/high16 v0, -0x1000000

    const/4 v1, 0x1

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    return v0
.end method

.method public static blacklist findAlphaToMeetContrast(IID)I
    .registers 16
    .param p0, "color"    # I
    .param p1, "backgroundColor"    # I
    .param p2, "minRatio"    # D

    .line 337
    move v0, p0

    .line 338
    .local v0, "fg":I
    move v1, p1

    .line 339
    .local v1, "bg":I
    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    cmpl-double v2, v2, p2

    if-ltz v2, :cond_b

    .line 340
    return p0

    .line 342
    :cond_b
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 343
    .local v2, "startAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 344
    .local v3, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 345
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 347
    .local v5, "b":I
    move v6, v2

    .local v6, "low":I
    const/16 v7, 0xff

    .line 348
    .local v7, "high":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1f
    const/16 v9, 0xf

    if-ge v8, v9, :cond_3d

    sub-int v9, v7, v6

    if-lez v9, :cond_3d

    .line 349
    add-int v9, v6, v7

    div-int/lit8 v9, v9, 0x2

    .line 350
    .local v9, "alpha":I
    invoke-static {v9, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 351
    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p2

    if-lez v10, :cond_39

    .line 352
    move v7, v9

    goto :goto_3a

    .line 354
    :cond_39
    move v6, v9

    .line 348
    .end local v9    # "alpha":I
    :goto_3a
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    .line 357
    .end local v8    # "i":I
    :cond_3d
    invoke-static {v7, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method

.method public static blacklist findContrastColor(IIZD)I
    .registers 25
    .param p0, "color"    # I
    .param p1, "other"    # I
    .param p2, "findFg"    # Z
    .param p3, "minRatio"    # D

    .line 301
    if-eqz p2, :cond_5

    move/from16 v0, p0

    goto :goto_7

    :cond_5
    move/from16 v0, p1

    .line 302
    .local v0, "fg":I
    :goto_7
    if-eqz p2, :cond_c

    move/from16 v1, p1

    goto :goto_e

    :cond_c
    move/from16 v1, p0

    .line 303
    .local v1, "bg":I
    :goto_e
    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    cmpl-double v2, v2, p3

    if-ltz v2, :cond_17

    .line 304
    return p0

    .line 307
    :cond_17
    const/4 v2, 0x3

    new-array v2, v2, [D

    .line 308
    .local v2, "lab":[D
    if-eqz p2, :cond_1e

    move v3, v0

    goto :goto_1f

    :cond_1e
    move v3, v1

    :goto_1f
    invoke-static {v3, v2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 310
    const-wide/16 v3, 0x0

    .local v3, "low":D
    const/4 v5, 0x0

    aget-wide v5, v2, v5

    .line 311
    .local v5, "high":D
    const/4 v7, 0x1

    aget-wide v14, v2, v7

    .local v14, "a":D
    const/4 v7, 0x2

    aget-wide v16, v2, v7

    .line 312
    .local v16, "b":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2e
    const/16 v8, 0xf

    if-ge v7, v8, :cond_68

    sub-double v8, v5, v3

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v8, v8, v10

    if-lez v8, :cond_68

    .line 313
    add-double v8, v3, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v18, v8, v10

    .line 314
    .local v18, "l":D
    if-eqz p2, :cond_4f

    .line 315
    move-wide/from16 v8, v18

    move-wide v10, v14

    move-wide/from16 v12, v16

    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v0

    goto :goto_58

    .line 317
    :cond_4f
    move-wide/from16 v8, v18

    move-wide v10, v14

    move-wide/from16 v12, v16

    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v1

    .line 319
    :goto_58
    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v8

    cmpl-double v8, v8, p3

    if-lez v8, :cond_63

    .line 320
    move-wide/from16 v3, v18

    goto :goto_65

    .line 322
    :cond_63
    move-wide/from16 v5, v18

    .line 312
    .end local v18    # "l":D
    :goto_65
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 325
    .end local v7    # "i":I
    :cond_68
    move-wide v8, v3

    move-wide v10, v14

    move-wide/from16 v12, v16

    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v7

    return v7
.end method

.method public static blacklist findContrastColorAgainstDark(IIZD)I
    .registers 16
    .param p0, "color"    # I
    .param p1, "other"    # I
    .param p2, "findFg"    # Z
    .param p3, "minRatio"    # D

    .line 372
    if-eqz p2, :cond_4

    move v0, p0

    goto :goto_5

    :cond_4
    move v0, p1

    .line 373
    .local v0, "fg":I
    :goto_5
    if-eqz p2, :cond_9

    move v1, p1

    goto :goto_a

    :cond_9
    move v1, p0

    .line 374
    .local v1, "bg":I
    :goto_a
    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    cmpl-double v2, v2, p3

    if-ltz v2, :cond_13

    .line 375
    return p0

    .line 378
    :cond_13
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 379
    .local v2, "hsl":[F
    if-eqz p2, :cond_1a

    move v3, v0

    goto :goto_1b

    :cond_1a
    move v3, v1

    :goto_1b
    invoke-static {v3, v2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToHSL(I[F)V

    .line 381
    const/4 v3, 0x2

    aget v4, v2, v3

    .local v4, "low":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 382
    .local v5, "high":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_24
    const/16 v7, 0xf

    if-ge v6, v7, :cond_54

    sub-float v7, v5, v4

    float-to-double v7, v7

    const-wide v9, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v7, v7, v9

    if-lez v7, :cond_54

    .line 383
    add-float v7, v4, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 384
    .local v7, "l":F
    aput v7, v2, v3

    .line 385
    if-eqz p2, :cond_42

    .line 386
    invoke-static {v2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v0

    goto :goto_46

    .line 388
    :cond_42
    invoke-static {v2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v1

    .line 390
    :goto_46
    invoke-static {v0, v1}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v8

    cmpl-double v8, v8, p3

    if-lez v8, :cond_50

    .line 391
    move v5, v7

    goto :goto_51

    .line 393
    :cond_50
    move v4, v7

    .line 382
    .end local v7    # "l":F
    :goto_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 396
    .end local v6    # "i":I
    :cond_54
    aput v5, v2, v3

    .line 397
    invoke-static {v2}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v3

    return v3
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/android/internal/util/ContrastColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_3
    sget-object v1, Lcom/android/internal/util/ContrastColorUtil;->sInstance:Lcom/android/internal/util/ContrastColorUtil;

    if-nez v1, :cond_e

    .line 68
    new-instance v1, Lcom/android/internal/util/ContrastColorUtil;

    invoke-direct {v1, p0}, Lcom/android/internal/util/ContrastColorUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/util/ContrastColorUtil;->sInstance:Lcom/android/internal/util/ContrastColorUtil;

    .line 70
    :cond_e
    sget-object v1, Lcom/android/internal/util/ContrastColorUtil;->sInstance:Lcom/android/internal/util/ContrastColorUtil;

    monitor-exit v0

    return-object v1

    .line 71
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static blacklist getMutedColor(IF)I
    .registers 4
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    .line 590
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->setAlphaComponent(II)I

    move-result v0

    .line 592
    .local v0, "whiteScrim":I
    invoke-static {v0, p0}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result v1

    return v1
.end method

.method public static blacklist getShiftedColor(II)I
    .registers 12
    .param p0, "color"    # I
    .param p1, "amount"    # I

    .line 572
    invoke-static {}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v0

    .line 573
    .local v0, "result":[D
    invoke-static {p0, v0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 574
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1d

    .line 575
    const-wide/16 v2, 0x0

    aget-wide v4, v0, v1

    int-to-double v6, p1

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_29

    .line 577
    :cond_1d
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    aget-wide v4, v0, v1

    int-to-double v6, p1

    add-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 579
    :goto_29
    aget-wide v4, v0, v1

    const/4 v1, 0x1

    aget-wide v6, v0, v1

    const/4 v1, 0x2

    aget-wide v8, v0, v1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v1

    return v1
.end method

.method public static blacklist isColorLight(I)Z
    .registers 5
    .param p0, "backgroundColor"    # I

    .line 626
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist processColor(I)I
    .registers 6
    .param p1, "color"    # I

    .line 284
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 285
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    .line 286
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    .line 287
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    .line 284
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private blacklist processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;
    .registers 12
    .param p1, "span"    # Landroid/text/style/TextAppearanceSpan;

    .line 218
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 219
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_4c

    .line 220
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v1

    .line 221
    .local v1, "colors":[I
    const/4 v2, 0x0

    .line 222
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    array-length v4, v1

    if-ge v3, v4, :cond_2a

    .line 223
    aget v4, v1, v3

    invoke-static {v4}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 227
    if-nez v2, :cond_1e

    .line 228
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 230
    :cond_1e
    aget v4, v1, v3

    invoke-direct {p0, v4}, Lcom/android/internal/util/ContrastColorUtil;->processColor(I)I

    move-result v4

    aput v4, v1, v3

    .line 231
    const/4 v2, 0x1

    .line 222
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 234
    .end local v3    # "i":I
    :cond_2a
    if-eqz v2, :cond_4c

    .line 235
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    .line 236
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v6

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v7

    new-instance v8, Landroid/content/res/ColorStateList;

    .line 237
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v4

    invoke-direct {v8, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 238
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v9

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 235
    return-object v3

    .line 241
    .end local v1    # "colors":[I
    .end local v2    # "changed":Z
    :cond_4c
    return-object p1
.end method

.method public static blacklist resolveColor(Landroid/content/Context;IZ)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I
    .param p2, "defaultBackgroundIsDark"    # Z

    .line 459
    if-nez p1, :cond_11

    .line 460
    if-eqz p2, :cond_8

    .line 461
    const v0, 0x1060222

    goto :goto_b

    .line 462
    :cond_8
    const v0, 0x1060223

    :goto_b
    nop

    .line 463
    .local v0, "res":I
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    .line 465
    .end local v0    # "res":I
    :cond_11
    return p1
.end method

.method public static blacklist resolveContrastColor(Landroid/content/Context;II)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I
    .param p2, "backgroundColor"    # I

    .line 477
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    return v0
.end method

.method public static blacklist resolveContrastColor(Landroid/content/Context;IIZ)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "isDark"    # Z

    .line 493
    invoke-static {p0, p1, p3}, Lcom/android/internal/util/ContrastColorUtil;->resolveColor(Landroid/content/Context;IZ)I

    move-result v0

    .line 495
    .local v0, "resolvedColor":I
    move v1, v0

    .line 496
    .local v1, "color":I
    invoke-static {v1, p2, p3}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    move-result v1

    .line 498
    nop

    .line 508
    return v1
.end method

.method public static blacklist resolveDefaultColor(Landroid/content/Context;IZ)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundColor"    # I
    .param p2, "defaultBackgroundIsDark"    # Z

    .line 552
    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->shouldUseDark(IZ)Z

    move-result v0

    .line 553
    .local v0, "useDark":Z
    if-eqz v0, :cond_e

    .line 554
    const v1, 0x1060223

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    .line 557
    :cond_e
    const v1, 0x1060222

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static blacklist resolvePrimaryColor(Landroid/content/Context;IZ)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundColor"    # I
    .param p2, "defaultBackgroundIsDark"    # Z

    .line 528
    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->shouldUseDark(IZ)Z

    move-result v0

    .line 529
    .local v0, "useDark":Z
    if-eqz v0, :cond_e

    .line 530
    const v1, 0x1060226

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    .line 533
    :cond_e
    const v1, 0x1060225

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static blacklist resolveSecondaryColor(Landroid/content/Context;IZ)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundColor"    # I
    .param p2, "defaultBackgroundIsDark"    # Z

    .line 540
    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->shouldUseDark(IZ)Z

    move-result v0

    .line 541
    .local v0, "useDark":Z
    if-eqz v0, :cond_e

    .line 542
    const v1, 0x106022a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    .line 545
    :cond_e
    const v1, 0x1060229

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static blacklist satisfiesTextContrast(II)Z
    .registers 6
    .param p0, "backgroundColor"    # I
    .param p1, "foregroundColor"    # I

    .line 614
    invoke-static {p1, p0}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist shouldUseDark(IZ)Z
    .registers 6
    .param p0, "backgroundColor"    # I
    .param p1, "defaultBackgroundIsDark"    # Z

    .line 596
    if-nez p0, :cond_5

    .line 597
    xor-int/lit8 v0, p1, 0x1

    return v0

    .line 601
    :cond_5
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fc6edb1281d81ceL    # 0.17912878474

    cmpl-double v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method


# virtual methods
.method public blacklist invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 184
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_67

    .line 185
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 186
    .local v0, "ss":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 187
    .local v1, "spans":[Ljava/lang/Object;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 188
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    array-length v4, v1

    :goto_1c
    if-ge v3, v4, :cond_66

    aget-object v5, v1, v3

    .line 189
    .local v5, "span":Ljava/lang/Object;
    move-object v6, v5

    .line 190
    .local v6, "resultSpan":Ljava/lang/Object;
    instance-of v7, v6, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_2c

    .line 191
    move-object v7, v5

    check-cast v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v7}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v6

    .line 193
    :cond_2c
    instance-of v7, v6, Landroid/text/style/TextAppearanceSpan;

    if-eqz v7, :cond_3d

    .line 194
    move-object v7, v5

    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {p0, v7}, Lcom/android/internal/util/ContrastColorUtil;->processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v7

    .line 196
    .local v7, "processedSpan":Landroid/text/style/TextAppearanceSpan;
    if-eq v7, v6, :cond_3b

    .line 197
    move-object v6, v7

    goto :goto_3c

    .line 200
    :cond_3b
    move-object v6, v5

    .line 202
    .end local v7    # "processedSpan":Landroid/text/style/TextAppearanceSpan;
    :goto_3c
    goto :goto_54

    :cond_3d
    instance-of v7, v6, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_53

    .line 203
    move-object v7, v6

    check-cast v7, Landroid/text/style/ForegroundColorSpan;

    .line 204
    .local v7, "originalSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v8

    .line 205
    .local v8, "foregroundColor":I
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v8}, Lcom/android/internal/util/ContrastColorUtil;->processColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object v6, v9

    .line 206
    .end local v7    # "originalSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v8    # "foregroundColor":I
    goto :goto_54

    .line 207
    :cond_53
    move-object v6, v5

    .line 209
    :goto_54
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 210
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 209
    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 188
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "resultSpan":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 212
    :cond_66
    return-object v2

    .line 214
    .end local v0    # "ss":Landroid/text/Spanned;
    .end local v1    # "spans":[Ljava/lang/Object;
    .end local v2    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_67
    return-object p1
.end method

.method public blacklist isGrayscaleIcon(Landroid/content/Context;I)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableResId"    # I

    .line 164
    const/4 v0, 0x0

    if-eqz p2, :cond_26

    .line 166
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_b} :catch_c

    return v0

    .line 167
    :catch_c
    move-exception v1

    .line 168
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drawable not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContrastColorUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v0

    .line 172
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_26
    return v0
.end method

.method public blacklist isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .line 143
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 144
    return v0

    .line 146
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 152
    return v0

    .line 150
    :pswitch_c
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 148
    :pswitch_15
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

.method public blacklist isGrayscaleIcon(Landroid/graphics/Bitmap;)Z
    .registers 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleIconMaxSize:I

    if-gt v0, v1, :cond_62

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleIconMaxSize:I

    if-le v0, v1, :cond_11

    goto :goto_62

    .line 93
    :cond_11
    sget-object v0, Lcom/android/internal/util/ContrastColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_14
    iget-object v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 95
    .local v1, "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_36

    .line 96
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 97
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 100
    .end local v1    # "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_5f

    .line 103
    iget-object v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    monitor-enter v1

    .line 104
    :try_start_3a
    iget-object v2, p0, Lcom/android/internal/util/ContrastColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/ImageUtils;->isGrayscale(Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 109
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    .line 110
    .local v3, "generationId":I
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_5c

    .line 111
    monitor-enter v0

    .line 112
    :try_start_46
    iget-object v1, p0, Lcom/android/internal/util/ContrastColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    monitor-exit v0

    .line 114
    return v2

    .line 113
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_46 .. :try_end_5b} :catchall_59

    throw v1

    .line 110
    .end local v2    # "result":Z
    .end local v3    # "generationId":I
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0

    .line 100
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1

    .line 90
    :cond_62
    :goto_62
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    .registers 7
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 125
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 126
    return v0

    .line 127
    :cond_4
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    .line 128
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 129
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v0, v2

    :cond_1d
    return v0

    .line 130
    .end local v1    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1e
    instance-of v1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_37

    .line 131
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 132
    .local v1, "ad":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    .line 133
    .local v3, "count":I
    if-lez v3, :cond_36

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_36

    move v0, v2

    :cond_36
    return v0

    .line 134
    .end local v1    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "count":I
    :cond_37
    instance-of v1, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_3c

    .line 136
    return v2

    .line 138
    :cond_3c
    return v0
.end method
