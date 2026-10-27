.class Lcom/android/internal/widget/ViewPager$ViewPositionComparator;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/view/View;Landroid/view/View;)I
    .registers 5

    .line 2874
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 2875
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 2876
    iget-boolean v0, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    iget-boolean v1, p2, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eq v0, v1, :cond_1a

    .line 2877
    iget-boolean p1, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, -0x1

    :goto_19
    return p1

    .line 2879
    :cond_1a
    iget p1, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    iget p2, p2, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
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

    .line 2871
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
