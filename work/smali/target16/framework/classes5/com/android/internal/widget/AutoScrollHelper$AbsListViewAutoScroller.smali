.class public Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;
.super Lcom/android/internal/widget/AutoScrollHelper;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbsListViewAutoScroller"
.end annotation


# instance fields
.field private final greylist-max-o mTarget:Landroid/widget/AbsListView;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/AbsListView;)V
    .registers 2

    .line 877
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    .line 879
    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    .line 880
    return-void
.end method


# virtual methods
.method public greylist-max-o canTargetScrollHorizontally(I)Z
    .registers 2

    .line 890
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o canTargetScrollVertically(I)Z
    .registers 9

    .line 895
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    .line 896
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    .line 897
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 898
    return v2

    .line 901
    :cond_a
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 902
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    .line 903
    add-int v5, v4, v3

    .line 905
    const/4 v6, 0x1

    if-lez p1, :cond_2a

    .line 907
    if-lt v5, v1, :cond_3a

    .line 908
    sub-int/2addr v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    if-gt p1, v0, :cond_29

    .line 910
    return v2

    .line 912
    :cond_29
    goto :goto_3a

    .line 913
    :cond_2a
    if-gez p1, :cond_3b

    .line 915
    if-gtz v4, :cond_3a

    .line 916
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 917
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-ltz p1, :cond_39

    .line 918
    return v2

    .line 920
    :cond_39
    nop

    .line 927
    :cond_3a
    :goto_3a
    return v6

    .line 924
    :cond_3b
    return v2
.end method

.method public greylist-max-o scrollTargetBy(II)V
    .registers 3

    .line 884
    iget-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 885
    return-void
.end method
