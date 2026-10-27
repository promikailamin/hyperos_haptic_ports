.class public Lmiui/util/font/DefaultFontManager;
.super Ljava/lang/Object;
.source "DefaultFontManager.java"

# interfaces
.implements Lmiui/util/font/IFontManager;


# instance fields
.field private blacklist mDefTypeface:[Landroid/graphics/Typeface;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Typeface;

    iput-object v0, p0, Lmiui/util/font/DefaultFontManager;->mDefTypeface:[Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public blacklist clearFont()V
    .registers 1

    .line 24
    return-void
.end method

.method public blacklist getBaseFont(I)Landroid/graphics/Typeface;
    .registers 3
    .param p1, "style"    # I

    .line 28
    iget-object v0, p0, Lmiui/util/font/DefaultFontManager;->mDefTypeface:[Landroid/graphics/Typeface;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getReplacedFont(Landroid/graphics/Typeface;IIF)Landroid/graphics/Typeface;
    .registers 12
    .param p1, "font"    # Landroid/graphics/Typeface;
    .param p2, "weight"    # I
    .param p3, "style"    # I
    .param p4, "size"    # F

    .line 33
    invoke-static {p1}, Lmiui/util/font/FontNameUtil;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "fontNames":[Ljava/lang/String;
    const-string v1, "mipro"

    const-string v2, "miui"

    const-string v3, "mitype"

    const-string v4, "theme-"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lmiui/util/font/FontNameUtil;->isNameOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 37
    const/4 v5, 0x0

    aget-object v6, v0, v5

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lmiui/util/font/FontNameUtil;->toSysFontName(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "newFontName":Ljava/lang/String;
    aget-object v2, v0, v5

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 44
    .end local v1    # "newFontName":Ljava/lang/String;
    :cond_32
    return-object p1
.end method

.method public blacklist isFontMatched(Landroid/graphics/Typeface;)Z
    .registers 4
    .param p1, "font"    # Landroid/graphics/Typeface;

    .line 49
    invoke-static {p1}, Lmiui/util/font/FontNameUtil;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "fontNames":[Ljava/lang/String;
    array-length v1, v0

    if-eqz v1, :cond_12

    sget-object v1, Lmiui/util/font/FontNameUtil;->DEFAULT_FONT_NAMES:[Ljava/lang/String;

    .line 51
    invoke-static {v0, v1}, Lmiui/util/font/FontNameUtil;->isNameOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x1

    .line 50
    :goto_13
    return v1
.end method

.method public blacklist loadFont()V
    .registers 4

    .line 16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    .line 17
    iget-object v1, p0, Lmiui/util/font/DefaultFontManager;->mDefTypeface:[Landroid/graphics/Typeface;

    const-string v2, "sans-serif"

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v0

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19
    .end local v0    # "i":I
    :cond_11
    return-void
.end method
