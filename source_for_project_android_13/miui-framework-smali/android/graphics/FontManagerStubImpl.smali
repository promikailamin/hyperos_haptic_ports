.class public Landroid/graphics/FontManagerStubImpl;
.super Ljava/lang/Object;
.source "FontManagerStubImpl.java"

# interfaces
.implements Landroid/graphics/FontManagerStub;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FontManagerStub"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist checkFont(Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;
    .registers 4
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "textSize"    # F

    .line 34
    invoke-static {p1, p2}, Lmiui/util/TypefaceUtils;->checkFont(Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createFallbackFontWithMiuiFamily(Landroid/graphics/Typeface$CustomFallbackBuilder;Ljava/util/List;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface;
    .registers 6
    .param p1, "builder"    # Landroid/graphics/Typeface$CustomFallbackBuilder;
    .param p3, "fallbackName"    # Ljava/lang/String;
    .param p4, "style"    # Landroid/graphics/fonts/FontStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface$CustomFallbackBuilder;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/FontStyle;",
            ")",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    .line 50
    .local p2, "families":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamily;>;"
    invoke-static {p1, p2, p3, p4}, Lmiui/util/TypefaceHelper;->createFallbackFontWithMiuiFamily(Landroid/graphics/Typeface$CustomFallbackBuilder;Ljava/util/List;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist drawTextBegin(Landroid/graphics/Canvas;Landroid/graphics/Paint;Z)I
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "postAlpha"    # Z

    .line 87
    invoke-static {}, Lmiui/util/font/MultiLangHelper;->getTextOverlap()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p3, :cond_c

    if-eqz p2, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 88
    .local v0, "alphaOptimizerEnabled":Z
    :goto_d
    const/16 v1, 0xff

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    .line 89
    .local v2, "alphaValue":I
    :goto_17
    if-ge v2, v1, :cond_24

    .line 90
    if-eqz p1, :cond_1f

    .line 91
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    .line 93
    :cond_1f
    if-eqz p2, :cond_24

    .line 94
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    :cond_24
    return v2
.end method

.method public blacklist drawTextEnd(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "alphaValue"    # I

    .line 102
    const/16 v0, 0xff

    if-ge p3, v0, :cond_e

    .line 103
    if-eqz p1, :cond_9

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    :cond_9
    if-eqz p2, :cond_e

    .line 107
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 110
    :cond_e
    return-void
.end method

.method public blacklist getCreateFromFamilyName()[Ljava/lang/String;
    .registers 2

    .line 71
    sget-object v0, Lmiui/util/TypefaceHelper;->CREATE_FROM_FAMILIES:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getReplacedFont(Landroid/graphics/Typeface;IF)Landroid/graphics/Typeface;
    .registers 5
    .param p1, "font"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I
    .param p3, "textSize"    # F

    .line 56
    invoke-static {p1, p2, p3}, Lmiui/util/TypefaceUtils;->getReplacedFont(Landroid/graphics/Typeface;IF)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getReplacedFontFamily(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/FontConfig$FontFamily;
    .registers 6
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;
    .param p4, "variant"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/text/FontConfig$FontFamily;"
        }
    .end annotation

    .line 82
    .local p1, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    invoke-static {p1, p2, p3, p4}, Lmiui/util/TypefaceUtils;->getReplacedFontFamily(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/FontConfig$FontFamily;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getReplacedFontWithWeight(Landroid/graphics/Typeface;II)Landroid/graphics/Typeface;
    .registers 5
    .param p1, "font"    # Landroid/graphics/Typeface;
    .param p2, "weight"    # I
    .param p3, "style"    # I

    .line 61
    invoke-static {p1, p2, p3}, Lmiui/util/TypefaceUtils;->getReplacedFontWithWeight(Landroid/graphics/Typeface;II)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isMiuiFontName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lmiui/util/TypefaceHelper;->isMiuiFontName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isMiuiVariationFont(Landroid/graphics/Typeface;)Z
    .registers 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .line 44
    invoke-static {p1}, Lmiui/util/TypefaceUtils;->isMiuiVariationFont(Landroid/graphics/Typeface;)Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportMiuiFont()Z
    .registers 2

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onCreateWithVariation(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Ljava/util/List;)V
    .registers 4
    .param p1, "family"    # Landroid/graphics/Typeface;
    .param p2, "font"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Landroid/graphics/Typeface;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p3, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    invoke-static {p1, p2, p3}, Lmiui/util/TypefaceUtils;->onCreateWithVariation(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Ljava/util/List;)V

    .line 67
    return-void
.end method

.method public blacklist useVarFont(Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;
    .registers 4
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "textSize"    # F

    .line 39
    invoke-static {p1, p2}, Lmiui/util/TypefaceUtils;->useVarFont(Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method
