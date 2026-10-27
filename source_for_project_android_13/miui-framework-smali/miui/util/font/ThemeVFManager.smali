.class public Lmiui/util/font/ThemeVFManager;
.super Lmiui/util/font/BaseThemeFontManager;
.source "ThemeVFManager.java"

# interfaces
.implements Lmiui/util/font/IFontCacheOwner;


# instance fields
.field blacklist mDefault:Landroid/graphics/Typeface;

.field blacklist mDefaultBold:Landroid/graphics/Typeface;

.field blacklist mDefaultBoldItalic:Landroid/graphics/Typeface;

.field blacklist mDefaultItalic:Landroid/graphics/Typeface;

.field blacklist mFontCache:Lmiui/util/font/FontCache;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Lmiui/util/font/BaseThemeFontManager;-><init>()V

    .line 12
    new-instance v0, Lmiui/util/font/FontCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lmiui/util/font/FontCache;-><init>(I)V

    iput-object v0, p0, Lmiui/util/font/ThemeVFManager;->mFontCache:Lmiui/util/font/FontCache;

    return-void
.end method

.method private blacklist doReplaceWithVarFont(Landroid/graphics/Typeface;IZZZ)Landroid/graphics/Typeface;
    .registers 14
    .param p1, "font"    # Landroid/graphics/Typeface;
    .param p2, "weight"    # I
    .param p3, "isBold"    # Z
    .param p4, "isItalic"    # Z
    .param p5, "allowCreate"    # Z

    .line 76
    invoke-static {p1}, Lmiui/util/font/FontNameUtil;->getMiproNamesByStyle(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "fontNames":[Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lmiui/util/font/ThemeVFManager;->updateTypefaceName([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_19

    .line 79
    sget-object v1, Lmiui/util/font/FontType;->MIUI:Lmiui/util/font/FontType;

    const/high16 v2, -0x40800000    # -1.0f

    iget-object v4, p0, Lmiui/util/font/ThemeVFManager;->mFontCache:Lmiui/util/font/FontCache;

    move-object v3, v0

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lmiui/util/font/VFUtils;->getVarFont(Lmiui/util/font/FontType;F[Ljava/lang/String;Lmiui/util/font/FontCache;ZZZ)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 81
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist updateName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "weight"    # I

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "newName":Ljava/lang/String;
    const-string v1, "mipro"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lmiui/util/font/FontNameUtil;->isNameOf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const-string v3, "theme-var"

    if-eqz v2, :cond_14

    .line 101
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 102
    :cond_14
    const-string v1, "miui"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lmiui/util/font/FontNameUtil;->isNameOf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 103
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 104
    :cond_25
    const-string v1, "mitype-mono"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lmiui/util/font/FontNameUtil;->isNameOf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 105
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 106
    :cond_36
    const-string v1, "mitype"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lmiui/util/font/FontNameUtil;->isNameOf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 107
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_46
    :goto_46
    if-eqz v0, :cond_6f

    .line 110
    invoke-static {v0, p2}, Lmiui/util/font/FontNameUtil;->changeNameGradeByWeight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "gradeName":Ljava/lang/String;
    if-eqz v1, :cond_50

    .line 112
    move-object v0, v1

    goto :goto_69

    .line 113
    :cond_50
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-regular"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_69
    :goto_69
    iget v2, p0, Lmiui/util/font/ThemeVFManager;->mThemeFontVer:I

    invoke-static {v0, v2}, Lmiui/util/font/FontNameUtil;->setVersion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .end local v1    # "gradeName":Ljava/lang/String;
    :cond_6f
    return-object v0
.end method

.method private blacklist updateTypefaceName([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7
    .param p1, "fontNames"    # [Ljava/lang/String;
    .param p2, "weight"    # I

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "newFontNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_1c

    .line 87
    aget-object v2, p1, v1

    invoke-direct {p0, v2, p2}, Lmiui/util/font/ThemeVFManager;->updateName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "newName":Ljava/lang/String;
    if-eqz v2, :cond_19

    .line 89
    if-nez v0, :cond_17

    .line 90
    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    .line 92
    :cond_17
    aput-object v2, v0, v1

    .line 86
    .end local v2    # "newName":Ljava/lang/String;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 95
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public blacklist clearFont()V
    .registers 2

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/font/ThemeVFManager;->mDefaultBold:Landroid/graphics/Typeface;

    iput-object v0, p0, Lmiui/util/font/ThemeVFManager;->mDefault:Landroid/graphics/Typeface;

    .line 56
    iget-object v0, p0, Lmiui/util/font/ThemeVFManager;->mFontCache:Lmiui/util/font/FontCache;

    invoke-virtual {v0}, Lmiui/util/font/FontCache;->clear()V

    .line 57
    return-void
.end method

.method public blacklist getBaseFont(I)Landroid/graphics/Typeface;
    .registers 6
    .param p1, "style"    # I

    .line 61
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 62
    .local v0, "isBold":Z
    :goto_9
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_e

    move v1, v2

    .line 63
    .local v1, "isItalic":Z
    :cond_e
    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    .line 64
    iget-object v2, p0, Lmiui/util/font/ThemeVFManager;->mDefaultBoldItalic:Landroid/graphics/Typeface;

    return-object v2

    .line 66
    :cond_15
    if-eqz v0, :cond_1a

    .line 67
    iget-object v2, p0, Lmiui/util/font/ThemeVFManager;->mDefaultBold:Landroid/graphics/Typeface;

    return-object v2

    .line 69
    :cond_1a
    if-eqz v1, :cond_1f

    .line 70
    iget-object v2, p0, Lmiui/util/font/ThemeVFManager;->mDefaultItalic:Landroid/graphics/Typeface;

    return-object v2

    .line 72
    :cond_1f
    iget-object v2, p0, Lmiui/util/font/ThemeVFManager;->mDefault:Landroid/graphics/Typeface;

    return-object v2
.end method

.method public blacklist getReplacedFont(Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;
    .registers 15
    .param p1, "font"    # Landroid/graphics/Typeface;
    .param p2, "weight"    # I
    .param p3, "style"    # I
    .param p4, "size"    # F

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "newFont":Landroid/graphics/Typeface;
    invoke-virtual {p0, p1}, Lmiui/util/font/ThemeVFManager;->isFontMatched(Landroid/graphics/Typeface;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    if-eq v1, p3, :cond_25

    .line 46
    :cond_d
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_15

    move v7, v3

    goto :goto_16

    :cond_15
    move v7, v2

    .line 47
    .local v7, "isBold":Z
    :goto_16
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1c

    move v8, v3

    goto :goto_1d

    :cond_1c
    move v8, v2

    .line 48
    .local v8, "isItalic":Z
    :goto_1d
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v4 .. v9}, Lmiui/util/font/ThemeVFManager;->doReplaceWithVarFont(Landroid/graphics/Typeface;IZZZ)Landroid/graphics/Typeface;

    move-result-object v0

    .line 50
    .end local v7    # "isBold":Z
    .end local v8    # "isItalic":Z
    :cond_25
    if-eqz v0, :cond_29

    move-object v1, v0

    goto :goto_2a

    :cond_29
    move-object v1, p1

    :goto_2a
    return-object v1
.end method

.method blacklist getThemePrefix()Ljava/lang/String;
    .registers 2

    .line 20
    const-string v0, "theme-var"

    return-object v0
.end method

.method public blacklist isFontCached(Landroid/graphics/Typeface;)Z
    .registers 3
    .param p1, "font"    # Landroid/graphics/Typeface;

    .line 39
    iget-object v0, p0, Lmiui/util/font/ThemeVFManager;->mFontCache:Lmiui/util/font/FontCache;

    invoke-virtual {v0, p1}, Lmiui/util/font/FontCache;->isFontCached(Landroid/graphics/Typeface;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist isFontMatched(Landroid/graphics/Typeface;)Z
    .registers 2

    .line 10
    invoke-super {p0, p1}, Lmiui/util/font/BaseThemeFontManager;->isFontMatched(Landroid/graphics/Typeface;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist loadFont()V
    .registers 1

    .line 10
    invoke-super {p0}, Lmiui/util/font/BaseThemeFontManager;->loadFont()V

    return-void
.end method

.method blacklist loadThemeFont()V
    .registers 13

    .line 25
    const-string v0, "theme-var-regular"

    .line 26
    .local v0, "defaultName":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget v3, p0, Lmiui/util/font/ThemeVFManager;->mThemeFontVer:I

    invoke-static {v0, v3}, Lmiui/util/font/FontNameUtil;->setVersion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 27
    .local v2, "defaultNames":[Ljava/lang/String;
    sget-object v5, Lmiui/util/font/FontType;->MIUI:Lmiui/util/font/FontType;

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v7, v2

    invoke-static/range {v5 .. v11}, Lmiui/util/font/VFUtils;->getVarFont(Lmiui/util/font/FontType;F[Ljava/lang/String;Lmiui/util/font/FontCache;ZZZ)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lmiui/util/font/ThemeVFManager;->mDefault:Landroid/graphics/Typeface;

    .line 29
    if-eqz v3, :cond_3f

    .line 30
    invoke-static {v3, v2}, Lmiui/util/font/FontNameUtil;->setFontNames(Landroid/graphics/Typeface;[Ljava/lang/String;)V

    .line 31
    iget-object v3, p0, Lmiui/util/font/ThemeVFManager;->mDefault:Landroid/graphics/Typeface;

    const/4 v4, -0x1

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {p0, v3, v4, v1, v5}, Lmiui/util/font/ThemeVFManager;->getReplacedFont(Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/font/ThemeVFManager;->mDefaultBold:Landroid/graphics/Typeface;

    .line 32
    iget-object v1, p0, Lmiui/util/font/ThemeVFManager;->mDefault:Landroid/graphics/Typeface;

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v4, v3, v5}, Lmiui/util/font/ThemeVFManager;->getReplacedFont(Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/font/ThemeVFManager;->mDefaultItalic:Landroid/graphics/Typeface;

    .line 33
    iget-object v1, p0, Lmiui/util/font/ThemeVFManager;->mDefault:Landroid/graphics/Typeface;

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v4, v3, v5}, Lmiui/util/font/ThemeVFManager;->getReplacedFont(Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/font/ThemeVFManager;->mDefaultBoldItalic:Landroid/graphics/Typeface;

    .line 35
    :cond_3f
    return-void
.end method
