.class public Lmiui/util/font/ThemeFontManager;
.super Lmiui/util/font/BaseThemeFontManager;
.source "ThemeFontManager.java"


# static fields
.field private static final blacklist ROBOTO_REGULAR:Ljava/lang/String; = "Roboto-Regular.ttf"


# instance fields
.field private blacklist mSysThemeFont:Lmiui/util/font/ThemeFontInfo;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lmiui/util/font/BaseThemeFontManager;-><init>()V

    .line 20
    invoke-direct {p0}, Lmiui/util/font/ThemeFontManager;->createSysThemeFontInfo()V

    .line 21
    return-void
.end method

.method private blacklist createSysThemeFontInfo()V
    .registers 12

    .line 75
    new-instance v0, Lmiui/util/font/ThemeFontInfo;

    invoke-direct {v0}, Lmiui/util/font/ThemeFontInfo;-><init>()V

    iput-object v0, p0, Lmiui/util/font/ThemeFontManager;->mSysThemeFont:Lmiui/util/font/ThemeFontInfo;

    .line 76
    const-string v1, "sans-serif"

    const-string v2, "sans-serif-thin"

    const-string v3, "sans-serif-light"

    const-string v4, "sans-serif-medium"

    const-string v5, "sans-serif-black"

    const-string v6, "sans-serif-regular"

    const-string v7, "arial"

    const-string v8, "helvetica"

    const-string v9, "tahoma"

    const-string v10, "verdana"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/util/font/ThemeFontInfo;->names:[Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lmiui/util/font/ThemeFontManager;->mSysThemeFont:Lmiui/util/font/ThemeFontInfo;

    const-string v1, "Roboto-Regular.ttf"

    iput-object v1, v0, Lmiui/util/font/ThemeFontInfo;->file:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lmiui/util/font/ThemeFontManager;->mSysThemeFont:Lmiui/util/font/ThemeFontInfo;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_34

    iput-object v1, v0, Lmiui/util/font/ThemeFontInfo;->weights:[I

    .line 101
    return-void

    nop

    :array_34
    .array-data 4
        0x190
        0x64
        0x12c
        0x1f4
        0x384
        0x2bc
        0x190
        0x190
        0x190
        0x190
    .end array-data
.end method


# virtual methods
.method public blacklist clearFont()V
    .registers 2

    .line 47
    iget-object v0, p0, Lmiui/util/font/ThemeFontManager;->mSysThemeFont:Lmiui/util/font/ThemeFontInfo;

    invoke-virtual {v0}, Lmiui/util/font/ThemeFontInfo;->clear()V

    .line 48
    return-void
.end method

.method public blacklist getBaseFont(I)Landroid/graphics/Typeface;
    .registers 5
    .param p1, "style"    # I

    .line 52
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_7

    const/16 v0, 0x2bc

    goto :goto_9

    :cond_7
    const/16 v0, 0x190

    .line 53
    .local v0, "weight":I
    :goto_9
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 54
    .local v1, "isItalic":Z
    :goto_10
    iget-object v2, p0, Lmiui/util/font/ThemeFontManager;->mSysThemeFont:Lmiui/util/font/ThemeFontInfo;

    invoke-virtual {v2, v0, v1}, Lmiui/util/font/ThemeFontInfo;->getFont(IZ)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getReplacedFont(Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;
    .registers 8
    .param p1, "font"    # Landroid/graphics/Typeface;
    .param p2, "weight"    # I
    .param p3, "style"    # I
    .param p4, "size"    # F

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "newFont":Landroid/graphics/Typeface;
    invoke-virtual {p0, p1}, Lmiui/util/font/ThemeFontManager;->isFontMatched(Landroid/graphics/Typeface;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    if-eq v1, p3, :cond_21

    .line 37
    :cond_d
    invoke-virtual {p0, p1}, Lmiui/util/font/ThemeFontManager;->tryConvertToSysFontName(Landroid/graphics/Typeface;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "fontName":Ljava/lang/String;
    iget-object v2, p0, Lmiui/util/font/ThemeFontManager;->mSysThemeFont:Lmiui/util/font/ThemeFontInfo;

    iget-object v2, v2, Lmiui/util/font/ThemeFontInfo;->names:[Ljava/lang/String;

    invoke-static {v1, v2}, Lmiui/util/font/FontNameUtil;->isNameOf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 39
    iget-object v2, p0, Lmiui/util/font/ThemeFontManager;->mSysThemeFont:Lmiui/util/font/ThemeFontInfo;

    invoke-virtual {v2, v1, p3}, Lmiui/util/font/ThemeFontInfo;->getThemeFontWithStyle(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 42
    .end local v1    # "fontName":Ljava/lang/String;
    :cond_21
    if-eqz v0, :cond_25

    move-object v1, v0

    goto :goto_26

    :cond_25
    move-object v1, p1

    :goto_26
    return-object v1
.end method

.method blacklist getThemePrefix()Ljava/lang/String;
    .registers 2

    .line 25
    const-string v0, "theme-"

    return-object v0
.end method

.method public bridge synthetic blacklist isFontMatched(Landroid/graphics/Typeface;)Z
    .registers 2

    .line 13
    invoke-super {p0, p1}, Lmiui/util/font/BaseThemeFontManager;->isFontMatched(Landroid/graphics/Typeface;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist loadFont()V
    .registers 1

    .line 13
    invoke-super {p0}, Lmiui/util/font/BaseThemeFontManager;->loadFont()V

    return-void
.end method

.method blacklist loadThemeFont()V
    .registers 4

    .line 30
    iget-object v0, p0, Lmiui/util/font/ThemeFontManager;->mSysThemeFont:Lmiui/util/font/ThemeFontInfo;

    invoke-virtual {p0}, Lmiui/util/font/ThemeFontManager;->getThemePrefix()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lmiui/util/font/ThemeFontManager;->mThemeFontVer:I

    invoke-virtual {v0, v1, v2}, Lmiui/util/font/ThemeFontInfo;->loadThemeFont(Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method blacklist tryConvertToSysFontName(Landroid/graphics/Typeface;)Ljava/lang/String;
    .registers 8
    .param p1, "font"    # Landroid/graphics/Typeface;

    .line 58
    invoke-static {p1}, Lmiui/util/font/FontNameUtil;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "fontNames":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_a

    .line 61
    const-string v1, "sans-serif"

    .local v1, "fontName":Ljava/lang/String;
    goto :goto_3d

    .line 63
    .end local v1    # "fontName":Ljava/lang/String;
    :cond_a
    const-string v1, "theme-var"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/util/font/FontNameUtil;->isNameOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    aget-object v2, v0, v3

    goto :goto_24

    .line 64
    :cond_1a
    aget-object v2, v0, v3

    invoke-virtual {p0}, Lmiui/util/font/ThemeFontManager;->getThemePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/util/font/FontNameUtil;->getOriName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_24
    nop

    .line 65
    .local v2, "fontName":Ljava/lang/String;
    sget-object v3, Lmiui/util/font/FontNameUtil;->DEFAULT_FONT_NAMES:[Ljava/lang/String;

    invoke-static {v2, v3}, Lmiui/util/font/FontNameUtil;->isNameOf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 66
    const-string v3, "mipro"

    const-string v4, "mitype"

    const-string v5, "miui"

    filled-new-array {v3, v4, v5, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmiui/util/font/FontNameUtil;->toSysFontName(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v2    # "fontName":Ljava/lang/String;
    .restart local v1    # "fontName":Ljava/lang/String;
    goto :goto_3d

    .line 65
    .end local v1    # "fontName":Ljava/lang/String;
    .restart local v2    # "fontName":Ljava/lang/String;
    :cond_3c
    move-object v1, v2

    .line 71
    .end local v2    # "fontName":Ljava/lang/String;
    .restart local v1    # "fontName":Ljava/lang/String;
    :goto_3d
    return-object v1
.end method
