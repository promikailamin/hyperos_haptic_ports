.class Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field private final greylist-max-o mIsBack:Z

.field private greylist-max-o mNumPostponed:I

.field private final greylist-max-o mRecord:Landroid/app/BackStackRecord;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsBack(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecord(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;
    .registers 1

    iget-object p0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/app/BackStackRecord;Z)V
    .registers 3

    .line 3678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3679
    iput-boolean p2, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    .line 3680
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    .line 3681
    return-void
.end method


# virtual methods
.method public greylist-max-o cancelTransaction()V
    .registers 5

    .line 3739
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v0, v0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Landroid/app/FragmentManagerImpl;->-$$Nest$mcompleteExecute(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V

    .line 3740
    return-void
.end method

.method public greylist-max-o completeTransaction()V
    .registers 8

    .line 3721
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 3722
    :goto_9
    iget-object v3, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v3, v3, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 3723
    iget-object v4, v3, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3724
    nop

    :goto_14
    if-ge v1, v4, :cond_30

    .line 3725
    iget-object v5, v3, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 3726
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Fragment;->setOnStartEnterTransitionListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V

    .line 3727
    if-eqz v0, :cond_2d

    invoke-virtual {v5}, Landroid/app/Fragment;->isPostponed()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 3728
    invoke-virtual {v5}, Landroid/app/Fragment;->startPostponedEnterTransition()V

    .line 3724
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 3731
    :cond_30
    iget-object v1, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v1, v1, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v3, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-boolean v4, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    xor-int/2addr v0, v2

    invoke-static {v1, v3, v4, v0, v2}, Landroid/app/FragmentManagerImpl;->-$$Nest$mcompleteExecute(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V

    .line 3732
    return-void
.end method

.method public greylist-max-o isReady()Z
    .registers 2

    .line 3711
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o onStartEnterTransition()V
    .registers 2

    .line 3690
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3691
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v0, :cond_b

    .line 3692
    return-void

    .line 3694
    :cond_b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/app/BackStackRecord;

    iget-object v0, v0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-static {v0}, Landroid/app/FragmentManagerImpl;->-$$Nest$mscheduleCommit(Landroid/app/FragmentManagerImpl;)V

    .line 3695
    return-void
.end method

.method public greylist-max-o startListening()V
    .registers 2

    .line 3704
    iget v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    .line 3705
    return-void
.end method
