.class abstract Lmiui/util/font/BaseThemeFontManager;
.super Ljava/lang/Object;
.source "BaseThemeFontManager.java"

# interfaces
.implements Lmiui/util/font/IFontManager;


# instance fields
.field blacklist mThemeFontVer:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/font/BaseThemeFontManager;->mThemeFontVer:I

    return-void
.end method


# virtual methods
.method abstract blacklist getThemePrefix()Ljava/lang/String;
.end method

.method public blacklist isFontMatched(Landroid/graphics/Typeface;)Z
    .registers 8
    .param p1, "font"    # Landroid/graphics/Typeface;

    .line 17
    invoke-static {p1}, Lmiui/util/font/FontNameUtil;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "fontNames":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_22

    aget-object v4, v0, v3

    .line 19
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/util/font/BaseThemeFontManager;->getThemePrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    iget v5, p0, Lmiui/util/font/BaseThemeFontManager;->mThemeFontVer:I

    .line 20
    invoke-static {v4, v5}, Lmiui/util/font/FontNameUtil;->isVersionMatched(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 21
    const/4 v1, 0x1

    return v1

    .line 18
    .end local v4    # "name":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 24
    :cond_22
    return v2
.end method

.method public blacklist loadFont()V
    .registers 2

    .line 11
    iget v0, p0, Lmiui/util/font/BaseThemeFontManager;->mThemeFontVer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/util/font/BaseThemeFontManager;->mThemeFontVer:I

    .line 12
    invoke-virtual {p0}, Lmiui/util/font/BaseThemeFontManager;->loadThemeFont()V

    .line 13
    return-void
.end method

.method abstract blacklist loadThemeFont()V
.end method
