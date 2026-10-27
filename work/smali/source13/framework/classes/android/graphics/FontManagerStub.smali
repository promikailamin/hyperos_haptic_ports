.class public interface abstract Landroid/graphics/FontManagerStub;
.super Ljava/lang/Object;
.source "FontManagerStub.java"


# direct methods
.method public static blacklist get()Landroid/graphics/FontManagerStub;
    .registers 1

    .line 22
    const-class v0, Landroid/graphics/FontManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontManagerStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist checkFont(Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;
.end method

.method public abstract blacklist createFallbackFontWithMiuiFamily(Landroid/graphics/Typeface$CustomFallbackBuilder;Ljava/util/List;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface;
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
.end method

.method public blacklist drawTextBegin(Landroid/graphics/Canvas;Landroid/graphics/Paint;Z)I
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "postAlpha"    # Z

    .line 51
    const/16 v0, 0xff

    return v0
.end method

.method public blacklist drawTextEnd(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "alphaValue"    # I

    .line 53
    return-void
.end method

.method public abstract blacklist getCreateFromFamilyName()[Ljava/lang/String;
.end method

.method public abstract blacklist getReplacedFont(Landroid/graphics/Typeface;IF)Landroid/graphics/Typeface;
.end method

.method public abstract blacklist getReplacedFontFamily(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/FontConfig$FontFamily;
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
.end method

.method public abstract blacklist getReplacedFontWithWeight(Landroid/graphics/Typeface;II)Landroid/graphics/Typeface;
.end method

.method public abstract blacklist isMiuiFontName(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isMiuiVariationFont(Landroid/graphics/Typeface;)Z
.end method

.method public blacklist isSupportMiuiFont()Z
    .registers 2

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist onCreateWithVariation(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Ljava/util/List;)V
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
.end method

.method public abstract blacklist useVarFont(Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;
.end method
