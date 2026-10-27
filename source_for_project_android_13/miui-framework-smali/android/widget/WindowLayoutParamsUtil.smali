.class Landroid/widget/WindowLayoutParamsUtil;
.super Ljava/lang/Object;
.source "WindowLayoutParamsUtil.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getWindowLayoutParams(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 26
    move-object v0, p0

    .line 27
    .local v0, "curView":Landroid/view/View;
    :goto_1
    if-eqz v0, :cond_17

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 29
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_f

    .line 30
    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    return-object v2

    .line 32
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 34
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist isInSystemWindow(Landroid/view/View;)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 20
    invoke-static {p0}, Landroid/widget/WindowLayoutParamsUtil;->getWindowLayoutParams(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 21
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_e

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method
