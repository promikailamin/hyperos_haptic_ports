.class public Lcom/miui/mishare/app/view/ArrowPopupWindowHelper;
.super Ljava/lang/Object;
.source "ArrowPopupWindowHelper.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outlineProvider"    # Landroid/view/ViewOutlineProvider;

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/mishare/app/view/ArrowPopupWindowHelper;->getPopupElevation(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    .line 18
    return-void
.end method

.method private static blacklist getPopupElevation(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
