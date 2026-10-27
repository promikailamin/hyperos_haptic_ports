.class Lcom/android/internal/widget/RecyclerView$5;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/ChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/RecyclerView;->initChildrenHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 683
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addView(Landroid/view/View;I)V
    .registers 4

    .line 691
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 692
    iget-object p2, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    .line 693
    return-void
.end method

.method public blacklist attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .line 731
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 732
    if-eqz v0, :cond_2f

    .line 733
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2c

    .line 734
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Called attach on a child which is not detached: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 740
    :cond_2c
    :goto_2c
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 742
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    # invokes: Lcom/android/internal/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->access$000(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 743
    return-void
.end method

.method public blacklist detachViewFromParent(I)V
    .registers 5

    .line 747
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 748
    if-eqz v0, :cond_37

    .line 749
    invoke-static {v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 750
    if-eqz v0, :cond_37

    .line 751
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_32

    .line 752
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called detach on an already detached child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 758
    :cond_32
    :goto_32
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 761
    :cond_37
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    # invokes: Lcom/android/internal/widget/RecyclerView;->detachViewFromParent(I)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/RecyclerView;->access$100(Lcom/android/internal/widget/RecyclerView;I)V

    .line 762
    return-void
.end method

.method public blacklist getChildAt(I)Landroid/view/View;
    .registers 3

    .line 711
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getChildCount()I
    .registers 2

    .line 686
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public blacklist getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 725
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist indexOfChild(Landroid/view/View;)I
    .registers 3

    .line 697
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public blacklist onEnteredHiddenState(Landroid/view/View;)V
    .registers 3

    .line 766
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 767
    if-eqz p1, :cond_b

    .line 768
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-static {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$monEnteredHiddenState(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView;)V

    .line 770
    :cond_b
    return-void
.end method

.method public blacklist onLeftHiddenState(Landroid/view/View;)V
    .registers 3

    .line 774
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 775
    if-eqz p1, :cond_b

    .line 776
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-static {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$monLeftHiddenState(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView;)V

    .line 778
    :cond_b
    return-void
.end method

.method public blacklist removeAllViews()V
    .registers 5

    .line 716
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$5;->getChildCount()I

    move-result v0

    .line 717
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 718
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 717
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 720
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->removeAllViews()V

    .line 721
    return-void
.end method

.method public blacklist removeViewAt(I)V
    .registers 4

    .line 702
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_d

    .line 704
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 706
    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->removeViewAt(I)V

    .line 707
    return-void
.end method
