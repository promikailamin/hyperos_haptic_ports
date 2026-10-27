.class Lcom/android/internal/widget/helper/ItemTouchHelper$3;
.super Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

.field final synthetic blacklist val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field final synthetic blacklist val$swipeDir:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFFILcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 604
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iput p9, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    iput-object p10, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 607
    invoke-super {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 608
    iget-boolean p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->mOverridden:Z

    if-eqz p1, :cond_8

    .line 609
    return-void

    .line 611
    :cond_8
    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz p1, :cond_1a

    .line 613
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_33

    .line 617
    :cond_1a
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->mIsPendingCleanup:Z

    .line 619
    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-lez p1, :cond_33

    .line 622
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->postDispatchSwipe(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    .line 626
    :cond_33
    :goto_33
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_46

    .line 627
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;->val$prevSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 629
    :cond_46
    return-void
.end method
