.class Lmiui/util/font/VFUtils;
.super Ljava/lang/Object;
.source "VFUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "VFUtils"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getScaleTextSize(F)F
    .registers 3
    .param p0, "textSize"    # F

    .line 39
    invoke-static {}, Lmiui/util/TypefaceUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_9

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_15

    .line 41
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, p0, v1

    .line 40
    :goto_15
    return v1
.end method

.method public static blacklist getStackTrace(I)Ljava/lang/String;
    .registers 5
    .param p0, "length"    # I

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 46
    .local v0, "traces":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    add-int/lit8 v2, p0, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 47
    .local v1, "count":I
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getVarFont(Lmiui/util/font/FontType;F[Ljava/lang/String;Lmiui/util/font/FontCache;ZZZ)Landroid/graphics/Typeface;
    .registers 24
    .param p0, "type"    # Lmiui/util/font/FontType;
    .param p1, "textSize"    # F
    .param p2, "fontNames"    # [Ljava/lang/String;
    .param p3, "cache"    # Lmiui/util/font/FontCache;
    .param p4, "isBold"    # Z
    .param p5, "isItalic"    # Z
    .param p6, "allowCreate"    # Z

    .line 20
    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-static {v8, v10}, Lmiui/util/font/FontNameUtil;->getGradeIndex([Ljava/lang/String;Z)I

    move-result v12

    .line 21
    .local v12, "weightIdx":I
    move/from16 v13, p1

    invoke-static {v12, v13, v0}, Lmiui/util/font/FontWght;->getScaleWght(IFLmiui/util/font/FontType;)I

    move-result v14

    .line 22
    .local v14, "scaleWght":I
    if-eqz v9, :cond_1b

    .line 23
    invoke-virtual {v9, v8, v14, v10, v11}, Lmiui/util/font/FontCache;->getCachedFont([Ljava/lang/String;IZZ)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 24
    .local v1, "font":Landroid/graphics/Typeface;
    :goto_1c
    if-nez v1, :cond_4c

    if-eqz p6, :cond_4c

    .line 25
    invoke-static {v0, v14, v11}, Lmiui/util/TypefaceHelper;->createVarFont(Lmiui/util/font/FontType;IZ)Landroid/graphics/Typeface;

    move-result-object v15

    .line 26
    .end local v1    # "font":Landroid/graphics/Typeface;
    .local v15, "font":Landroid/graphics/Typeface;
    if-eqz v15, :cond_4b

    .line 27
    invoke-static {v15, v8}, Lmiui/util/font/FontNameUtil;->setFontNames(Landroid/graphics/Typeface;[Ljava/lang/String;)V

    .line 28
    if-eqz v11, :cond_2d

    const/4 v1, 0x2

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    or-int v7, v10, v1

    .line 29
    .local v7, "style":I
    invoke-virtual {v15, v7}, Landroid/graphics/Typeface;->setStyle(I)V

    .line 30
    if-eqz v9, :cond_49

    .line 31
    invoke-static/range {p1 .. p1}, Lmiui/util/font/FontScaleRules;->getSizeGrade(F)I

    move-result v5

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object v3, v15

    move v4, v14

    move/from16 v6, p4

    move/from16 v16, v7

    .end local v7    # "style":I
    .local v16, "style":I
    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lmiui/util/font/FontCache;->cacheFont([Ljava/lang/String;Landroid/graphics/Typeface;IIZZ)V

    goto :goto_4b

    .line 30
    .end local v16    # "style":I
    .restart local v7    # "style":I
    :cond_49
    move/from16 v16, v7

    .line 35
    .end local v7    # "style":I
    :cond_4b
    :goto_4b
    move-object v1, v15

    .end local v15    # "font":Landroid/graphics/Typeface;
    .restart local v1    # "font":Landroid/graphics/Typeface;
    :cond_4c
    return-object v1
.end method
