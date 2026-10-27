.class public Lmiui/theme/IconCustomizerUtils;
.super Ljava/lang/Object;
.source "IconCustomizerUtils.java"


# static fields
.field public static final whitelist ICON_LAYER_MAX_NUM:I = 0x5

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "IconCustomizerUtils"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private static blacklist getAdaptiveDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "foregroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 66
    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 67
    return-object v0

    .line 70
    :cond_6
    instance-of v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_b

    .line 71
    return-object p0

    .line 74
    :cond_b
    instance-of v1, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_15

    .line 75
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 78
    :cond_15
    return-object v0
.end method

.method public static whitelist getAdaptiveIconFromPackage(Landroid/content/Context;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    .local v0, "original":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-static {v1, p0, p1}, Lmiui/theme/IconCustomizerUtils;->scaleDownAIDrawable(Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/AdaptiveIconDrawable;

    move-result-object v1

    return-object v1

    .line 59
    :cond_14
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/theme/IconCustomizerUtils;->getAdaptiveDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist scaleDownAIDrawable(Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/AdaptiveIconDrawable;
    .registers 20
    .param p0, "d"    # Landroid/graphics/drawable/AdaptiveIconDrawable;
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 82
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42d80000    # 108.0f

    mul-float/2addr v2, v3

    .line 83
    .local v2, "normalSize":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 84
    .local v3, "scale":F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 85
    .local v4, "bgd":Landroid/graphics/drawable/Drawable;
    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    const-string v6, ", density="

    const-string v7, " > "

    const-wide v8, 0x3ff3333333333333L    # 1.2

    const-string v10, "IconCustomizerUtils"

    if-eqz v5, :cond_71

    .line 86
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 87
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 88
    .local v11, "size":I
    int-to-double v12, v11

    float-to-double v14, v2

    mul-double/2addr v14, v8

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_71

    .line 89
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bg ,size too large."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    int-to-float v12, v11

    div-float v3, v2, v12

    .line 93
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "size":I
    :cond_71
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 94
    .local v5, "fgd":Landroid/graphics/drawable/Drawable;
    instance-of v11, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v11, :cond_cc

    .line 95
    move-object v11, v5

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 96
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 97
    .local v12, "size":I
    int-to-double v13, v12

    move-object v15, v4

    move-object/from16 v16, v5

    .end local v4    # "bgd":Landroid/graphics/drawable/Drawable;
    .end local v5    # "fgd":Landroid/graphics/drawable/Drawable;
    .local v15, "bgd":Landroid/graphics/drawable/Drawable;
    .local v16, "fgd":Landroid/graphics/drawable/Drawable;
    float-to-double v4, v2

    mul-double/2addr v4, v8

    cmpl-double v4, v13, v4

    if-ltz v4, :cond_cf

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fg ,size too large."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    int-to-float v4, v12

    div-float v4, v2, v4

    .line 100
    .local v4, "scale2":F
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_cf

    .line 94
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "size":I
    .end local v15    # "bgd":Landroid/graphics/drawable/Drawable;
    .end local v16    # "fgd":Landroid/graphics/drawable/Drawable;
    .local v4, "bgd":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "fgd":Landroid/graphics/drawable/Drawable;
    :cond_cc
    move-object v15, v4

    move-object/from16 v16, v5

    .line 103
    .end local v4    # "bgd":Landroid/graphics/drawable/Drawable;
    .end local v5    # "fgd":Landroid/graphics/drawable/Drawable;
    .restart local v15    # "bgd":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "fgd":Landroid/graphics/drawable/Drawable;
    :cond_cf
    :goto_cf
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_110

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", scale down "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    float-to-double v5, v3

    invoke-static {v0, v4, v5, v6}, Lmiui/theme/IconCustomizerUtils;->scaleDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;D)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 106
    .local v4, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    float-to-double v6, v3

    invoke-static {v0, v5, v6, v7}, Lmiui/theme/IconCustomizerUtils;->scaleDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;D)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 107
    .local v5, "fg":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    float-to-double v7, v3

    invoke-static {v0, v6, v7, v8}, Lmiui/theme/IconCustomizerUtils;->scaleDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;D)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 108
    .local v6, "mono":Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v7, v4, v5, v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v7

    .line 110
    .end local v4    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v5    # "fg":Landroid/graphics/drawable/Drawable;
    .end local v6    # "mono":Landroid/graphics/drawable/Drawable;
    :cond_110
    return-object p0
.end method

.method private static blacklist scaleDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;D)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "f"    # D

    .line 115
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_5b

    .line 117
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x1

    .line 118
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 124
    .local v1, "scale":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scale size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", density = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IconCustomizerUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2

    .line 127
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "scale":Landroid/graphics/Bitmap;
    :cond_5b
    return-object p1
.end method

.method public static whitelist transformToAdaptiveIcon([Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p0, "iconBitmaps"    # [Landroid/graphics/Bitmap;

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 31
    .local v1, "iconLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    if-eqz p0, :cond_41

    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_41

    const/4 v2, 0x0

    aget-object v3, p0, v2

    if-eqz v3, :cond_41

    .line 33
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    aget-object v2, p0, v2

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v3

    .line 35
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 36
    .local v2, "drawableNumber":I
    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    .line 37
    .local v3, "iconDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 38
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    if-ge v5, v2, :cond_3b

    .line 39
    add-int/lit8 v6, v5, 0x1

    aget-object v4, p0, v6

    .line 40
    if-eqz v4, :cond_38

    .line 41
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v6, v3, v5

    .line 38
    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 44
    .end local v5    # "i":I
    :cond_3b
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v1, v5

    .line 46
    .end local v2    # "drawableNumber":I
    .end local v3    # "iconDrawables":[Landroid/graphics/drawable/Drawable;
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_41
    invoke-static {v0, v1}, Lmiui/theme/IconCustomizerUtils;->getAdaptiveDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method
