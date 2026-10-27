.class public Lcom/android/internal/widget/WatchHeaderListView;
.super Landroid/widget/ListView;
.source "WatchHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;
    }
.end annotation


# instance fields
.field private blacklist mTopPanel:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method private blacklist wrapAdapterIfNecessary()V
    .registers 3

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eqz v1, :cond_1f

    .line 113
    instance-of v0, v0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;

    if-nez v0, :cond_11

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView;->wrapHeaderListAdapterInternal()V

    .line 117
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->setTopPanel(Landroid/view/View;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView;->dispatchDataSetObserverOnChangedInternal()V

    .line 120
    :cond_1f
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 57
    iget-object p2, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-nez p2, :cond_8

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/WatchHeaderListView;->setTopPanel(Landroid/view/View;)V

    .line 62
    return-void

    .line 60
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "WatchHeaderListView can host only one header"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected blacklist findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 96
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 97
    if-nez v0, :cond_1d

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eq v1, p2, :cond_1d

    iget-object p2, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    .line 98
    invoke-virtual {p2}, Landroid/view/View;->isRootNamespace()Z

    move-result p2

    if-nez p2, :cond_1d

    .line 99
    iget-object p2, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 101
    :cond_1d
    return-object v0
.end method

.method protected blacklist findViewTraversal(I)Landroid/view/View;
    .registers 4

    .line 77
    invoke-super {p0, p1}, Landroid/widget/ListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 78
    if-nez v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-nez v1, :cond_19

    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 81
    :cond_19
    return-object v0
.end method

.method protected blacklist findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 4

    .line 86
    invoke-super {p0, p1}, Landroid/widget/ListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 87
    if-nez v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-nez v1, :cond_19

    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 90
    :cond_19
    return-object v0
.end method

.method public whitelist getHeaderViewsCount()I
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_1b

    .line 107
    :cond_9
    invoke-super {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_19

    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    const/4 v1, 0x1

    :goto_1a
    add-int/2addr v0, v1

    .line 106
    :goto_1b
    return v0
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/WatchHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 71
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView;->wrapAdapterIfNecessary()V

    .line 73
    return-void
.end method

.method public blacklist setTopPanel(Landroid/view/View;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    .line 66
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView;->wrapAdapterIfNecessary()V

    .line 67
    return-void
.end method

.method protected blacklist wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")",
            "Landroid/widget/HeaderViewListAdapter;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    return-object v0
.end method
