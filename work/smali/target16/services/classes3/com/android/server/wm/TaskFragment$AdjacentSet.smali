.class public Lcom/android/server/wm/TaskFragment$AdjacentSet;
.super Ljava/lang/Object;
.source "TaskFragment.java"


# instance fields
.field public final mAdjacentSet:Landroid/util/ArraySet;


# direct methods
.method public static bridge synthetic -$$Nest$mclear(Lcom/android/server/wm/TaskFragment$AdjacentSet;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->clear()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremove(Lcom/android/server/wm/TaskFragment$AdjacentSet;Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->remove(Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAsAdjacent(Lcom/android/server/wm/TaskFragment$AdjacentSet;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->setAsAdjacent()V

    return-void
.end method

.method public constructor <init>(Landroid/util/ArraySet;)V
    .registers 5

    .line 3618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3619
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_29

    if-le v0, v1, :cond_26

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_26

    .line 3626
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1e

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 3627
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not yet support 3+ adjacent for non-Task TFs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3632
    :cond_26
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    return-void

    .line 3621
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adjacent TaskFragments must contain at least two TaskFragments, but only "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " were provided."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs constructor <init>([Lcom/android/server/wm/TaskFragment;)V
    .registers 3

    .line 3615
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;-><init>(Landroid/util/ArraySet;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 4

    .line 3663
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1d

    .line 3664
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    const/4 v2, 0x0

    .line 3666
    invoke-static {v1, v2}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    const/4 v2, 0x0

    .line 3667
    invoke-static {v1, v2}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmDelayLastActivityRemoval(Lcom/android/server/wm/TaskFragment;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3669
    :cond_1d
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public contains(Lcom/android/server/wm/TaskFragment;)Z
    .registers 2

    .line 3674
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 3717
    :cond_4
    instance-of v0, p1, Lcom/android/server/wm/TaskFragment$AdjacentSet;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/android/server/wm/TaskFragment$AdjacentSet;

    .line 3720
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public forAllTaskFragments(Ljava/util/function/Consumer;Lcom/android/server/wm/TaskFragment;)V
    .registers 5

    .line 3682
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 3683
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    if-eq v1, p2, :cond_17

    .line 3685
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public forAllTaskFragments(Ljava/util/function/Predicate;Lcom/android/server/wm/TaskFragment;)Z
    .registers 6

    .line 3696
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1f

    .line 3697
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragment;

    if-ne v2, p2, :cond_15

    goto :goto_1c

    .line 3701
    :cond_15
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    :goto_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final remove(Lcom/android/server/wm/TaskFragment;)V
    .registers 3

    const/4 v0, 0x0

    .line 3652
    invoke-static {p1, v0}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    const/4 v0, 0x0

    .line 3653
    invoke-static {p1, v0}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmDelayLastActivityRemoval(Lcom/android/server/wm/TaskFragment;Z)V

    .line 3654
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3655
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_19

    .line 3657
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->clear()V

    :cond_19
    return-void
.end method

.method public final setAsAdjacent()V
    .registers 3

    .line 3637
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    const/4 v1, 0x0

    .line 3638
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fgetmAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragment$AdjacentSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_37

    .line 3643
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_24
    if-ltz v0, :cond_37

    .line 3644
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    .line 3645
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->removeFromAdjacentTaskFragments()V

    .line 3646
    invoke-static {v1, p0}, Lcom/android/server/wm/TaskFragment;->-$$Nest$fputmAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_37
    :goto_37
    return-void
.end method

.method public size()I
    .registers 1

    .line 3709
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 3725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3726
    const-string v1, "AdjacentSet{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3727
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_26

    if-eqz v2, :cond_1a

    .line 3730
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3732
    :cond_1a
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;->mAdjacentSet:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 3734
    :cond_26
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3735
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
