.class public Lmiui/util/font/MiProFontManager;
.super Ljava/lang/Object;
.source "MiProFontManager.java"

# interfaces
.implements Lmiui/util/font/IFontManager;
.implements Lmiui/util/font/IFontCacheOwner;


# instance fields
.field private blacklist mMiProCache:Lmiui/util/font/FontCache;

.field private blacklist mMitypeCache:Lmiui/util/font/FontCache;

.field private blacklist mMitypeMonoCache:Lmiui/util/font/FontCache;

.field private blacklist mNewDefaultTypefaces:[Landroid/graphics/Typeface;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Typeface;

    iput-object v0, p0, Lmiui/util/font/MiProFontManager;->mNewDefaultTypefaces:[Landroid/graphics/Typeface;

    .line 17
    new-instance v0, Lmiui/util/font/FontCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lmiui/util/font/FontCache;-><init>(I)V

    iput-object v0, p0, Lmiui/util/font/MiProFontManager;->mMiProCache:Lmiui/util/font/FontCache;

    .line 18
    new-instance v0, Lmiui/util/font/FontCache;

    invoke-direct {v0, v1}, Lmiui/util/font/FontCache;-><init>(I)V

    iput-object v0, p0, Lmiui/util/font/MiProFontManager;->mMitypeMonoCache:Lmiui/util/font/FontCache;

    .line 19
    new-instance v0, Lmiui/util/font/FontCache;

    invoke-direct {v0, v1}, Lmiui/util/font/FontCache;-><init>(I)V

    iput-object v0, p0, Lmiui/util/font/MiProFontManager;->mMitypeCache:Lmiui/util/font/FontCache;

    .line 20
    return-void
.end method

.method private blacklist doReplaceWithVarFont(Landroid/graphics/Typeface;IFZZZ)Landroid/graphics/Typeface;
    .registers 16
    .param p1, "oldTypeface"    # Landroid/graphics/Typeface;
    .param p2, "weight"    # I
    .param p3, "textSize"    # F
    .param p4, "isBold"    # Z
    .param p5, "isItalic"    # Z
    .param p6, "allowCreate"    # Z

    .line 74
    invoke-static {p1}, Lmiui/util/font/FontNameUtil;->getMiproNamesByStyle(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "fontNames":[Ljava/lang/String;
    invoke-static {v0, p2}, Lmiui/util/font/FontNameUtil;->changeFontNameGradeByWeight([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {p3}, Lmiui/util/font/VFUtils;->getScaleTextSize(F)F

    move-result v8

    .line 77
    .local v8, "scaledTextSize":F
    sget-object v1, Lmiui/util/font/FontNameUtil;->MIUI_NAMES:[Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/util/font/FontNameUtil;->isNameOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 78
    sget-object v1, Lmiui/util/font/FontType;->MIUI:Lmiui/util/font/FontType;

    iget-object v4, p0, Lmiui/util/font/MiProFontManager;->mMiProCache:Lmiui/util/font/FontCache;

    move v2, v8

    move-object v3, v0

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Lmiui/util/font/VFUtils;->getVarFont(Lmiui/util/font/FontType;F[Ljava/lang/String;Lmiui/util/font/FontCache;ZZZ)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 80
    :cond_22
    const-string v1, "mitype-mono"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/font/FontNameUtil;->isNameOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 81
    sget-object v1, Lmiui/util/font/FontType;->MITYPE_MONO:Lmiui/util/font/FontType;

    iget-object v4, p0, Lmiui/util/font/MiProFontManager;->mMitypeMonoCache:Lmiui/util/font/FontCache;

    move v2, v8

    move-object v3, v0

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Lmiui/util/font/VFUtils;->getVarFont(Lmiui/util/font/FontType;F[Ljava/lang/String;Lmiui/util/font/FontCache;ZZZ)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 83
    :cond_3c
    const-string v1, "mitype"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/font/FontNameUtil;->isNameOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 84
    sget-object v1, Lmiui/util/font/FontType;->MITYPE:Lmiui/util/font/FontType;

    iget-object v4, p0, Lmiui/util/font/MiProFontManager;->mMitypeCache:Lmiui/util/font/FontCache;

    move v2, v8

    move-object v3, v0

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Lmiui/util/font/VFUtils;->getVarFont(Lmiui/util/font/FontType;F[Ljava/lang/String;Lmiui/util/font/FontCache;ZZZ)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 87
    :cond_56
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist clearFont()V
    .registers 4

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_c

    .line 49
    iget-object v1, p0, Lmiui/util/font/MiProFontManager;->mNewDefaultTypefaces:[Landroid/graphics/Typeface;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    .end local v0    # "i":I
    :cond_c
    iget-object v0, p0, Lmiui/util/font/MiProFontManager;->mMiProCache:Lmiui/util/font/FontCache;

    invoke-virtual {v0}, Lmiui/util/font/FontCache;->clear()V

    .line 52
    return-void
.end method

.method public blacklist getBaseFont(I)Landroid/graphics/Typeface;
    .registers 3
    .param p1, "style"    # I

    .line 56
    iget-object v0, p0, Lmiui/util/font/MiProFontManager;->mNewDefaultTypefaces:[Landroid/graphics/Typeface;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getReplacedFont(Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;
    .registers 15
    .param p1, "font"    # Landroid/graphics/Typeface;
    .param p2, "weight"    # I
    .param p3, "style"    # I
    .param p4, "size"    # F

    .line 66
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v7, v2

    goto :goto_9

    :cond_8
    move v7, v1

    .line 67
    .local v7, "isBold":Z
    :goto_9
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_f

    move v8, v2

    goto :goto_10

    :cond_f
    move v8, v1

    .line 68
    .local v8, "isItalic":Z
    :goto_10
    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p4

    invoke-direct/range {v3 .. v9}, Lmiui/util/font/MiProFontManager;->doReplaceWithVarFont(Landroid/graphics/Typeface;IFZZZ)Landroid/graphics/Typeface;

    move-result-object v0

    .line 69
    .local v0, "newFont":Landroid/graphics/Typeface;
    if-eqz v0, :cond_1d

    move-object v1, v0

    goto :goto_1e

    :cond_1d
    move-object v1, p1

    :goto_1e
    return-object v1
.end method

.method public blacklist isFontCached(Landroid/graphics/Typeface;)Z
    .registers 5
    .param p1, "font"    # Landroid/graphics/Typeface;

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "cache":Lmiui/util/font/FontCache;
    invoke-static {p1}, Lmiui/util/font/FontNameUtil;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "fontNames":[Ljava/lang/String;
    sget-object v2, Lmiui/util/font/FontNameUtil;->MIUI_NAMES:[Ljava/lang/String;

    invoke-static {v1, v2}, Lmiui/util/font/FontNameUtil;->isNameOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 27
    iget-object v0, p0, Lmiui/util/font/MiProFontManager;->mMiProCache:Lmiui/util/font/FontCache;

    goto :goto_2d

    .line 28
    :cond_10
    const-string v2, "mitype-mono"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/util/font/FontNameUtil;->isNameOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 29
    iget-object v0, p0, Lmiui/util/font/MiProFontManager;->mMitypeMonoCache:Lmiui/util/font/FontCache;

    goto :goto_2d

    .line 30
    :cond_1f
    const-string v2, "mitype"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/util/font/FontNameUtil;->isNameOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 31
    iget-object v0, p0, Lmiui/util/font/MiProFontManager;->mMitypeCache:Lmiui/util/font/FontCache;

    .line 33
    :cond_2d
    :goto_2d
    if-eqz v0, :cond_37

    invoke-virtual {v0, p1}, Lmiui/util/font/FontCache;->isFontCached(Landroid/graphics/Typeface;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x1

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    return v2
.end method

.method public blacklist isFontMatched(Landroid/graphics/Typeface;)Z
    .registers 3
    .param p1, "font"    # Landroid/graphics/Typeface;

    .line 61
    invoke-static {p1}, Lmiui/util/font/FontNameUtil;->isMiuiFont(Landroid/graphics/Typeface;)Z

    move-result v0

    return v0
.end method

.method public blacklist loadFont()V
    .registers 12

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_27

    .line 39
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    move v8, v3

    goto :goto_d

    :cond_c
    move v8, v2

    .line 40
    .local v8, "isBold":Z
    :goto_d
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_13

    move v9, v3

    goto :goto_14

    :cond_13
    move v9, v2

    .line 41
    .local v9, "isItalic":Z
    :goto_14
    iget-object v1, p0, Lmiui/util/font/MiProFontManager;->mNewDefaultTypefaces:[Landroid/graphics/Typeface;

    sget-object v4, Lmiui/util/font/FontType;->MIUI:Lmiui/util/font/FontType;

    const/high16 v5, 0x41800000    # 16.0f

    sget-object v6, Lmiui/util/font/FontNameUtil;->MIUI_NAMES:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Lmiui/util/font/VFUtils;->getVarFont(Lmiui/util/font/FontType;F[Ljava/lang/String;Lmiui/util/font/FontCache;ZZZ)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v0

    .line 38
    .end local v8    # "isBold":Z
    .end local v9    # "isItalic":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    .end local v0    # "i":I
    :cond_27
    return-void
.end method
