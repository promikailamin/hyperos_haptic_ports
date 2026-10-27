.class Lcom/android/internal/widget/LinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


# static fields
.field static final blacklist INVALID_LAYOUT:I = -0x80000000

.field static final blacklist ITEM_DIRECTION_HEAD:I = -0x1

.field static final blacklist ITEM_DIRECTION_TAIL:I = 0x1

.field static final blacklist LAYOUT_END:I = 0x1

.field static final blacklist LAYOUT_START:I = -0x1

.field static final blacklist SCROLLING_OFFSET_NaN:I = -0x80000000

.field static final blacklist TAG:Ljava/lang/String; = "LLM#LayoutState"


# instance fields
.field blacklist mAvailable:I

.field blacklist mCurrentPosition:I

.field blacklist mExtra:I

.field blacklist mInfinite:Z

.field blacklist mIsPreLayout:Z

.field blacklist mItemDirection:I

.field blacklist mLastScrollDelta:I

.field blacklist mLayoutDirection:I

.field blacklist mOffset:I

.field blacklist mRecycle:Z

.field blacklist mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mScrollingOffset:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 2035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 2095
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 2102
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 2114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void
.end method

.method private blacklist nextViewFromScrapList()Landroid/view/View;
    .registers 6

    .line 2151
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2152
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2f

    .line 2153
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2154
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 2155
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2156
    goto :goto_2c

    .line 2158
    :cond_20
    iget v4, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    if-ne v4, v3, :cond_2c

    .line 2159
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 2160
    return-object v2

    .line 2152
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2163
    :cond_2f
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist assignPositionFromScrapList()V
    .registers 2

    .line 2167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 2168
    return-void
.end method

.method public blacklist assignPositionFromScrapList(Landroid/view/View;)V
    .registers 2

    .line 2171
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 2172
    if-nez p1, :cond_a

    .line 2173
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    goto :goto_16

    .line 2175
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 2176
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 2178
    :goto_16
    return-void
.end method

.method blacklist hasMore(Lcom/android/internal/widget/RecyclerView$State;)Z
    .registers 3

    .line 2125
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method blacklist log()V
    .registers 3

    .line 2210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", layoutDir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LLM#LayoutState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    return-void
.end method

.method blacklist next(Lcom/android/internal/widget/RecyclerView$Recycler;)Landroid/view/View;
    .registers 4

    .line 2135
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 2136
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->nextViewFromScrapList()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 2138
    :cond_9
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    .line 2139
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 2140
    return-object p1
.end method

.method public blacklist nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;
    .registers 9

    .line 2181
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2182
    nop

    .line 2183
    nop

    .line 2187
    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_42

    .line 2188
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2189
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 2190
    if-eq v4, p1, :cond_3f

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 2191
    goto :goto_3f

    .line 2193
    :cond_28
    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    mul-int/2addr v5, v6

    .line 2195
    if-gez v5, :cond_35

    .line 2196
    goto :goto_3f

    .line 2198
    :cond_35
    if-ge v5, v2, :cond_3f

    .line 2199
    nop

    .line 2200
    nop

    .line 2201
    if-nez v5, :cond_3d

    .line 2202
    move-object v1, v4

    goto :goto_42

    .line 2201
    :cond_3d
    move-object v1, v4

    move v2, v5

    .line 2187
    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2206
    :cond_42
    :goto_42
    return-object v1
.end method
