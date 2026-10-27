.class public abstract Lcom/android/internal/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mHasStableIds:Z

.field private final blacklist mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 6347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6348
    new-instance v0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    .line 6349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final blacklist bindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 6451
    iput p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6452
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6453
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 6455
    :cond_e
    const/16 v0, 0x207

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6458
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6459
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 6460
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 6461
    iget-object p1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 6462
    instance-of p2, p1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz p2, :cond_31

    .line 6463
    check-cast p1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iput-boolean v1, p1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6465
    :cond_31
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 6466
    return-void
.end method

.method public final blacklist createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 6436
    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6437
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 6438
    iput p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 6439
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 6440
    return-object p1
.end method

.method public abstract blacklist getItemCount()I
.end method

.method public blacklist getItemId(I)J
    .registers 4

    .line 6509
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getItemViewType(I)I
    .registers 2

    .line 6481
    const/4 p1, 0x0

    return p1
.end method

.method public final blacklist hasObservers()Z
    .registers 2

    .line 6619
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final blacklist hasStableIds()Z
    .registers 2

    .line 6527
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final blacklist notifyDataSetChanged()V
    .registers 2

    .line 6706
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 6707
    return-void
.end method

.method public final blacklist notifyItemChanged(I)V
    .registers 4

    .line 6722
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 6723
    return-void
.end method

.method public final blacklist notifyItemChanged(ILjava/lang/Object;)V
    .registers 5

    .line 6750
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 6751
    return-void
.end method

.method public final blacklist notifyItemInserted(I)V
    .registers 4

    .line 6815
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 6816
    return-void
.end method

.method public final blacklist notifyItemMoved(II)V
    .registers 4

    .line 6830
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 6831
    return-void
.end method

.method public final blacklist notifyItemRangeChanged(II)V
    .registers 4

    .line 6768
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 6769
    return-void
.end method

.method public final blacklist notifyItemRangeChanged(IILjava/lang/Object;)V
    .registers 5

    .line 6798
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 6799
    return-void
.end method

.method public final blacklist notifyItemRangeInserted(II)V
    .registers 4

    .line 6849
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 6850
    return-void
.end method

.method public final blacklist notifyItemRangeRemoved(II)V
    .registers 4

    .line 6883
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 6884
    return-void
.end method

.method public final blacklist notifyItemRemoved(I)V
    .registers 4

    .line 6866
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 6867
    return-void
.end method

.method public blacklist onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2

    .line 6665
    return-void
.end method

.method public abstract blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6426
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 6427
    return-void
.end method

.method public abstract blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public blacklist onDetachedFromRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2

    .line 6674
    return-void
.end method

.method public blacklist onFailedToRecycleView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .line 6585
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 6599
    return-void
.end method

.method public blacklist onViewDetachedFromWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 6611
    return-void
.end method

.method public blacklist onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 6548
    return-void
.end method

.method public blacklist registerAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V
    .registers 3

    .line 6639
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 6640
    return-void
.end method

.method public blacklist setHasStableIds(Z)V
    .registers 3

    .line 6493
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_9

    .line 6497
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 6498
    return-void

    .line 6494
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist unregisterAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V
    .registers 3

    .line 6653
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 6654
    return-void
.end method
