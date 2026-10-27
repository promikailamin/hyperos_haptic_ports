.class Lcom/android/internal/widget/ScrollbarHelper;
.super Ljava/lang/Object;
.source "ScrollbarHelper.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;Z)I
    .registers 7

    .line 64
    invoke-virtual {p4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    if-eqz p0, :cond_35

    if-eqz p2, :cond_35

    if-nez p3, :cond_11

    goto :goto_35

    .line 68
    :cond_11
    if-nez p5, :cond_23

    .line 69
    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 71
    :cond_23
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    .line 72
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    .line 73
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 66
    :cond_35
    :goto_35
    const/4 p0, 0x0

    return p0
.end method

.method static blacklist computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;ZZ)I
    .registers 11

    .line 33
    invoke-virtual {p4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_70

    if-eqz p2, :cond_70

    if-nez p3, :cond_12

    goto :goto_70

    .line 37
    :cond_12
    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 38
    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 37
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 39
    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 40
    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 41
    if-eqz p6, :cond_38

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, -0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_3c

    .line 43
    :cond_38
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 44
    :goto_3c
    if-nez p5, :cond_3f

    .line 45
    return p0

    .line 47
    :cond_3f
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p5

    .line 48
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p6

    sub-int/2addr p5, p6

    .line 47
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    .line 49
    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p6

    .line 50
    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p6, p3

    .line 49
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    .line 51
    int-to-float p4, p5

    int-to-float p3, p3

    div-float/2addr p4, p3

    .line 53
    int-to-float p0, p0

    mul-float/2addr p0, p4

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    .line 54
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    .line 53
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    .line 35
    :cond_70
    :goto_70
    return v1
.end method

.method static blacklist computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;Z)I
    .registers 7

    .line 83
    invoke-virtual {p4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_3b

    if-eqz p2, :cond_3b

    if-nez p3, :cond_11

    goto :goto_3b

    .line 87
    :cond_11
    if-nez p5, :cond_18

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    return p0

    .line 91
    :cond_18
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p5

    .line 92
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p5, p1

    .line 93
    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 94
    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 93
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 97
    int-to-float p2, p5

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    return p0

    .line 85
    :cond_3b
    :goto_3b
    const/4 p0, 0x0

    return p0
.end method
