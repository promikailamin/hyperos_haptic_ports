.class Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;
.super Landroid/widget/HeaderViewListAdapter;
.source "WatchHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/WatchHeaderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchHeaderListAdapter"
.end annotation


# instance fields
.field private blacklist mTopPanel:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .registers 4
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
            ")V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 130
    return-void
.end method

.method private blacklist getTopPanelCount()I
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 2

    .line 147
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0}, Landroid/widget/HeaderViewListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist getCount()I
    .registers 3

    .line 142
    invoke-super {p0}, Landroid/widget/HeaderViewListAdapter;->getCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 3

    .line 158
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v0

    .line 159
    if-ge p1, v0, :cond_8

    const/4 p1, 0x0

    goto :goto_d

    :cond_8
    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public whitelist getItemId(I)J
    .registers 4

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getHeadersCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_25

    if-lt p1, v0, :cond_25

    .line 166
    sub-int/2addr p1, v0

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 168
    if-ge p1, v0, :cond_25

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    .line 172
    :cond_25
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .registers 4

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getHeadersCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_25

    if-lt p1, v0, :cond_25

    .line 186
    sub-int/2addr p1, v0

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 188
    if-ge p1, v0, :cond_25

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1

    .line 193
    :cond_25
    const/4 p1, -0x2

    return p1
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 177
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v0

    .line 178
    if-ge p1, v0, :cond_9

    .line 179
    iget-object p1, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    goto :goto_e

    :cond_9
    sub-int/2addr p1, v0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 178
    :goto_e
    return-object p1
.end method

.method public whitelist isEnabled(I)Z
    .registers 3

    .line 152
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->getTopPanelCount()I

    move-result v0

    .line 153
    if-ge p1, v0, :cond_8

    const/4 p1, 0x0

    goto :goto_d

    :cond_8
    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/HeaderViewListAdapter;->isEnabled(I)Z

    move-result p1

    :goto_d
    return p1
.end method

.method public blacklist setTopPanel(Landroid/view/View;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->mTopPanel:Landroid/view/View;

    .line 134
    return-void
.end method
