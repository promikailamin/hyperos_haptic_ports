.class public Lmiui/freedrag/MiuiFreeDragViewUtils;
.super Ljava/lang/Object;
.source "MiuiFreeDragViewUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist dragViewIsPerceptible(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 21
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-le v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 21
    :goto_18
    return v0
.end method

.method private static blacklist getViewRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8
    .param p0, "view"    # Landroid/view/View;

    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 30
    .local v0, "xy":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 31
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v4, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-direct {v1, v3, v5, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static blacklist isTouchOnDragView(Landroid/view/View;II)Z
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .line 13
    invoke-static {p0}, Lmiui/freedrag/MiuiFreeDragViewUtils;->dragViewIsPerceptible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 14
    return v1

    .line 16
    :cond_8
    invoke-static {p0}, Lmiui/freedrag/MiuiFreeDragViewUtils;->getViewRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 17
    .local v0, "viewRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_15

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method
