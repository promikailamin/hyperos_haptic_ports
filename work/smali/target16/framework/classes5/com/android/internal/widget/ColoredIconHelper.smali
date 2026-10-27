.class final Lcom/android/internal/widget/ColoredIconHelper;
.super Ljava/lang/Object;
.source "ColoredIconHelper.java"


# static fields
.field static final blacklist COLOR_INVALID:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static blacklist applyGrayTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZI)V
    .registers 6

    .line 42
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 43
    return-void

    .line 45
    :cond_4
    if-eqz p2, :cond_27

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 48
    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    const/16 p3, 0x20

    const/4 v1, 0x0

    if-ne p2, p3, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    .line 50
    :goto_19
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/ContrastColorUtil;->resolveColor(Landroid/content/Context;IZ)I

    move-result p0

    .line 51
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 52
    goto :goto_30

    .line 54
    :cond_27
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 56
    :goto_30
    return-void
.end method
