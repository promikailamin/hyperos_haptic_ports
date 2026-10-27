.class Landroid/content/res/DrawableCache;
.super Landroid/content/res/ThemedResourceCache;
.source "DrawableCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ThemedResourceCache<",
        "Landroid/graphics/drawable/Drawable$ConstantState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/content/res/ThemedResourceCache;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public greylist-max-r getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 45
    invoke-virtual {p0, p1, p2, p4}, Landroid/content/res/DrawableCache;->get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 46
    if-eqz p1, :cond_d

    .line 47
    invoke-virtual {p1, p3, p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 50
    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o shouldInvalidateEntry(Landroid/graphics/drawable/Drawable$ConstantState;I)Z
    .registers 3

    .line 55
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p1

    invoke-static {p2, p1}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist shouldInvalidateEntry(Ljava/lang/Object;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 27
    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/DrawableCache;->shouldInvalidateEntry(Landroid/graphics/drawable/Drawable$ConstantState;I)Z

    move-result p1

    return p1
.end method
