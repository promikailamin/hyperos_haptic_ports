.class Lcom/android/internal/widget/helper/ItemTouchUIUtilImpl;
.super Ljava/lang/Object;
.source "ItemTouchUIUtilImpl.java"

# interfaces
.implements Lcom/android/internal/widget/helper/ItemTouchUIUtil;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist findMaxElevation(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;)F
    .registers 8

    .line 49
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 50
    nop

    .line 51
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1c

    .line 52
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 53
    if-ne v3, p2, :cond_10

    .line 54
    goto :goto_19

    .line 56
    :cond_10
    invoke-virtual {v3}, Landroid/view/View;->getElevation()F

    move-result v3

    .line 57
    cmpl-float v4, v3, v1

    if-lez v4, :cond_19

    .line 58
    move v1, v3

    .line 51
    :cond_19
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 61
    :cond_1c
    return v1
.end method


# virtual methods
.method public blacklist clearView(Landroid/view/View;)V
    .registers 5

    .line 66
    const v0, 0x10203a0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_16

    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_16

    .line 69
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setElevation(F)V

    .line 71
    :cond_16
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 74
    return-void
.end method

.method public blacklist onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .registers 8

    .line 33
    if-eqz p7, :cond_20

    .line 34
    const p1, 0x10203a0

    invoke-virtual {p3, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p6

    .line 36
    if-nez p6, :cond_20

    .line 37
    invoke-virtual {p3}, Landroid/view/View;->getElevation()F

    move-result p6

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    .line 38
    const/high16 p7, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/helper/ItemTouchUIUtilImpl;->findMaxElevation(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;)F

    move-result p2

    add-float/2addr p2, p7

    .line 39
    invoke-virtual {p3, p2}, Landroid/view/View;->setElevation(F)V

    .line 40
    invoke-virtual {p3, p1, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 44
    :cond_20
    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 45
    invoke-virtual {p3, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 46
    return-void
.end method

.method public blacklist onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .registers 8

    .line 83
    return-void
.end method

.method public blacklist onSelected(Landroid/view/View;)V
    .registers 2

    .line 78
    return-void
.end method
