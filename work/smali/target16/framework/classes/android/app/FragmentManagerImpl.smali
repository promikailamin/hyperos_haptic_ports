.class final Landroid/app/FragmentManagerImpl;
.super Landroid/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Landroid/app/FragmentManagerImpl$PopBackStackState;,
        Landroid/app/FragmentManagerImpl$OpGenerator;,
        Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
    }
.end annotation


# static fields
.field static greylist-max-o DEBUG:Z = false

.field static final greylist-max-o TAG:Ljava/lang/String; = "FragmentManager"

.field static final greylist-max-o TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final greylist-max-o TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final greylist-max-o USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final greylist-max-o VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field greylist mActive:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mAllowOldReentrantBehavior:Z

.field greylist-max-o mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mContainer:Landroid/app/FragmentContainer;

.field greylist-max-o mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mCurState:I

.field greylist-max-o mDestroyed:Z

.field greylist-max-o mExecCommit:Ljava/lang/Runnable;

.field greylist-max-o mExecutingActions:Z

.field greylist-max-o mHavePendingDeferredStart:Z

.field greylist-max-o mHost:Landroid/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field

.field final greylist-max-o mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/util/Pair<",
            "Landroid/app/FragmentManager$FragmentLifecycleCallbacks;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field greylist-max-o mNeedMenuInvalidate:Z

.field greylist-max-o mNextFragmentIndex:I

.field greylist-max-o mNoTransactionsBecause:Ljava/lang/String;

.field greylist-max-o mParent:Landroid/app/Fragment;

.field greylist-max-o mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mPrimaryNav:Landroid/app/Fragment;

.field greylist-max-o mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

.field greylist-max-o mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mStateBundle:Landroid/os/Bundle;

.field greylist mStateSaved:Z

.field greylist-max-o mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcompleteExecute(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->completeExecute(Landroid/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleCommit(Landroid/app/FragmentManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->scheduleCommit()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 643
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 3

    .line 641
    invoke-direct {p0}, Landroid/app/FragmentManager;-><init>()V

    .line 692
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 695
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 705
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 708
    iput v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 728
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 740
    new-instance v0, Landroid/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$1;-><init>(Landroid/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method private greylist-max-o addAddedFragments(Landroid/util/ArraySet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2423
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 2424
    return-void

    .line 2427
    :cond_6
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2428
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2429
    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_42

    .line 2430
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/Fragment;

    .line 2431
    iget v2, v3, Landroid/app/Fragment;->mState:I

    if-ge v2, v4, :cond_3f

    .line 2432
    invoke-virtual {v3}, Landroid/app/Fragment;->getNextAnim()I

    move-result v5

    invoke-virtual {v3}, Landroid/app/Fragment;->getNextTransition()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 2433
    iget-object v2, v3, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_3f

    iget-boolean v2, v3, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_3f

    iget-boolean v2, v3, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_3f

    .line 2434
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2429
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 2438
    :cond_42
    return-void
.end method

.method private greylist-max-o burpActive()V
    .registers 4

    .line 2950
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_24

    .line 2951
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_24

    .line 2952
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_21

    .line 2953
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 2951
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 2957
    :cond_24
    return-void
.end method

.method private greylist-max-o checkStateLoss()V
    .registers 4

    .line 1882
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v0, :cond_24

    .line 1886
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 1890
    return-void

    .line 1887
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1883
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o cleanupExec()V
    .registers 2

    .line 2053
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2054
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2055
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2056
    return-void
.end method

.method private greylist-max-o completeExecute(Landroid/app/BackStackRecord;ZZZ)V
    .registers 12

    .line 2325
    if-eqz p2, :cond_6

    .line 2326
    invoke-virtual {p1, p4}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_9

    .line 2328
    :cond_6
    invoke-virtual {p1}, Landroid/app/BackStackRecord;->executeOps()V

    .line 2330
    :goto_9
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2332
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2333
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2334
    if-eqz p3, :cond_28

    .line 2335
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    goto :goto_29

    .line 2334
    :cond_28
    move-object v0, p0

    .line 2337
    :goto_29
    if-eqz p4, :cond_30

    .line 2338
    iget p2, v0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p2, v6}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2341
    :cond_30
    iget-object p2, v0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz p2, :cond_5d

    .line 2342
    iget-object p2, v0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    .line 2343
    const/4 p3, 0x0

    move p4, p3

    :goto_3c
    if-ge p4, p2, :cond_5d

    .line 2346
    iget-object v1, v0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 2347
    if-eqz v1, :cond_5a

    iget-object v2, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_5a

    iget-boolean v2, v1, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_5a

    iget v2, v1, Landroid/app/Fragment;->mContainerId:I

    .line 2348
    invoke-virtual {p1, v2}, Landroid/app/BackStackRecord;->interactsWith(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2349
    iput-boolean p3, v1, Landroid/app/Fragment;->mIsNewlyAdded:Z

    .line 2343
    :cond_5a
    add-int/lit8 p4, p4, 0x1

    goto :goto_3c

    .line 2353
    :cond_5d
    return-void
.end method

.method private greylist-max-o dispatchMoveToState(I)V
    .registers 4

    .line 3048
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mAllowOldReentrantBehavior:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 3049
    invoke-virtual {p0, p1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    goto :goto_12

    .line 3052
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3053
    invoke-virtual {p0, p1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_16

    .line 3055
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3056
    nop

    .line 3058
    :goto_12
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3059
    return-void

    .line 3055
    :catchall_16
    move-exception p1

    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3056
    throw p1
.end method

.method private greylist-max-o endAnimatingAwayFragments()V
    .registers 5

    .line 2456
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2457
    :goto_d
    nop

    :goto_e
    if-ge v1, v0, :cond_2a

    .line 2458
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 2459
    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 2461
    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 2457
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2464
    :cond_2a
    return-void
.end method

.method private greylist-max-o ensureExecReady(Z)V
    .registers 4

    .line 2005
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-nez v0, :cond_43

    .line 2009
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3b

    .line 2013
    if-nez p1, :cond_19

    .line 2014
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2017
    :cond_19
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez p1, :cond_2b

    .line 2018
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    .line 2019
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    .line 2021
    :cond_2b
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2023
    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_30
    invoke-direct {p0, v0, v0}, Landroid/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_37

    .line 2025
    iput-boolean p1, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2026
    nop

    .line 2027
    return-void

    .line 2025
    :catchall_37
    move-exception v0

    iput-boolean p1, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2026
    throw v0

    .line 2010
    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2006
    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static greylist-max-o executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2400
    nop

    :goto_1
    if-ge p2, p3, :cond_2d

    .line 2401
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackStackRecord;

    .line 2402
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2403
    const/4 v2, 0x1

    if-eqz v1, :cond_24

    .line 2404
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2407
    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    .line 2408
    :goto_20
    invoke-virtual {v0, v2}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    .line 2409
    goto :goto_2a

    .line 2410
    :cond_24
    invoke-virtual {v0, v2}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2411
    invoke-virtual {v0}, Landroid/app/BackStackRecord;->executeOps()V

    .line 2400
    :goto_2a
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 2414
    :cond_2d
    return-void
.end method

.method private greylist-max-o executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2181
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackStackRecord;

    iget-boolean v6, v0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2182
    nop

    .line 2183
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 2184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    goto :goto_1a

    .line 2186
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2188
    :goto_1a
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2189
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 2190
    const/4 v1, 0x0

    move v2, p3

    move v7, v1

    :goto_28
    const/4 v8, 0x1

    if-ge v2, p4, :cond_56

    .line 2191
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/BackStackRecord;

    .line 2192
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 2193
    if-nez v9, :cond_44

    .line 2194
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v9, v0}, Landroid/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_49

    .line 2196
    :cond_44
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Landroid/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;)V

    .line 2198
    :goto_49
    if-nez v7, :cond_52

    iget-boolean v5, v5, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v5, :cond_50

    goto :goto_52

    :cond_50
    move v7, v1

    goto :goto_53

    :cond_52
    :goto_52
    move v7, v8

    .line 2190
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 2200
    :cond_56
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2202
    if-nez v6, :cond_66

    .line 2203
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2206
    :cond_66
    invoke-static/range {p1 .. p4}, Landroid/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2208
    nop

    .line 2209
    if-eqz v6, :cond_82

    .line 2210
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2211
    invoke-direct {p0, v5}, Landroid/app/FragmentManagerImpl;->addAddedFragments(Landroid/util/ArraySet;)V

    .line 2212
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/util/ArraySet;)I

    move-result v9

    .line 2214
    invoke-direct {p0, v5}, Landroid/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Landroid/util/ArraySet;)V

    move v4, v9

    goto :goto_83

    .line 2209
    :cond_82
    move v4, p4

    .line 2217
    :goto_83
    if-eq v4, p3, :cond_94

    if-eqz v6, :cond_94

    .line 2219
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2221
    iget v3, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v3, v8}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2224
    :cond_94
    move v3, p3

    :goto_95
    if-ge v3, p4, :cond_bb

    .line 2225
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BackStackRecord;

    .line 2226
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2227
    if-eqz v5, :cond_b5

    iget v5, v4, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v5, :cond_b5

    .line 2228
    iget v5, v4, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v5}, Landroid/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 2229
    const/4 v5, -0x1

    iput v5, v4, Landroid/app/BackStackRecord;->mIndex:I

    .line 2231
    :cond_b5
    invoke-virtual {v4}, Landroid/app/BackStackRecord;->runOnCommitRunnables()V

    .line 2224
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 2234
    :cond_bb
    if-eqz v7, :cond_c0

    .line 2235
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 2237
    :cond_c0
    return-void
.end method

.method private greylist-max-o executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2087
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2088
    :goto_d
    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_82

    .line 2089
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    .line 2090
    const/4 v4, -0x1

    if-eqz p1, :cond_3b

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-$$Nest$fgetmIsBack(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 2091
    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-$$Nest$fgetmRecord(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2092
    if-eq v5, v4, :cond_3b

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 2093
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    .line 2094
    goto :goto_7f

    .line 2097
    :cond_3b
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v5

    if-nez v5, :cond_51

    if-eqz p1, :cond_7f

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-$$Nest$fgetmRecord(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v5

    .line 2098
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroid/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 2099
    :cond_51
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2100
    add-int/lit8 v2, v2, -0x1

    .line 2101
    add-int/lit8 v0, v0, -0x1

    .line 2103
    if-eqz p1, :cond_7c

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-$$Nest$fgetmIsBack(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v5

    if-nez v5, :cond_7c

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-$$Nest$fgetmRecord(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v5

    .line 2104
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_7c

    .line 2105
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 2107
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_7f

    .line 2109
    :cond_7c
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    .line 2088
    :cond_7f
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2113
    :cond_82
    return-void
.end method

.method private greylist-max-o findFragmentUnder(Landroid/app/Fragment;)Landroid/app/Fragment;
    .registers 6

    .line 2372
    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2373
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 2375
    const/4 v2, 0x0

    if-eqz v0, :cond_29

    if-nez v1, :cond_a

    goto :goto_29

    .line 2379
    :cond_a
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2380
    add-int/lit8 p1, p1, -0x1

    :goto_12
    if-ltz p1, :cond_28

    .line 2381
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 2382
    iget-object v3, v1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v3, v0, :cond_25

    iget-object v3, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_25

    .line 2384
    return-object v1

    .line 2380
    :cond_25
    add-int/lit8 p1, p1, -0x1

    goto :goto_12

    .line 2387
    :cond_28
    return-object v2

    .line 2376
    :cond_29
    :goto_29
    return-object v2
.end method

.method private greylist-max-o forcePostponedTransactions()V
    .registers 3

    .line 2444
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 2445
    :goto_4
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2446
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_4

    .line 2449
    :cond_19
    return-void
.end method

.method private greylist-max-o generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2478
    nop

    .line 2479
    monitor-enter p0

    .line 2480
    :try_start_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_3b

    .line 2484
    :cond_10
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2485
    move v2, v1

    :goto_17
    if-ge v1, v0, :cond_29

    .line 2486
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerImpl$OpGenerator;

    invoke-interface {v3, p1, p2}, Landroid/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 2485
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 2488
    :cond_29
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2489
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2490
    monitor-exit p0

    .line 2491
    return v2

    .line 2481
    :cond_3b
    :goto_3b
    monitor-exit p0

    return v1

    .line 2490
    :catchall_3d
    move-exception p1

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method private greylist-max-o makeRemovedFragmentsInvisible(Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2247
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 2248
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1c

    .line 2249
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 2250
    iget-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    if-nez v3, :cond_19

    .line 2251
    invoke-virtual {v2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 2252
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 2248
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2255
    :cond_1c
    return-void
.end method

.method static greylist-max-o modifiesAlpha(Landroid/animation/Animator;)Z
    .registers 6

    .line 773
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 774
    return v0

    .line 776
    :cond_4
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    .line 777
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 778
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 779
    move v1, v0

    :goto_10
    array-length v3, p0

    if-ge v1, v3, :cond_46

    .line 780
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "alpha"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 781
    return v2

    .line 779
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 784
    :cond_25
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_46

    .line 785
    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    .line 786
    move v1, v0

    :goto_30
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_47

    .line 787
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v3}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 788
    return v2

    .line 786
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 784
    :cond_46
    nop

    .line 792
    :cond_47
    return v0
.end method

.method private greylist-max-o popBackStackImmediate(Ljava/lang/String;II)Z
    .registers 12

    .line 875
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 876
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 878
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    if-eqz v1, :cond_1c

    if-gez p2, :cond_1c

    if-nez p1, :cond_1c

    .line 881
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    iget-object v1, v1, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 882
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 884
    return v0

    .line 888
    :cond_1c
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    .line 889
    if-eqz p1, :cond_3d

    .line 890
    iput-boolean v0, v2, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 892
    :try_start_2c
    iget-object p2, v2, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object p3, v2, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_37

    .line 894
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 895
    goto :goto_3d

    .line 894
    :catchall_37
    move-exception v0

    move-object p1, v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 895
    throw p1

    .line 898
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 899
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    .line 900
    return p1
.end method

.method private greylist-max-o postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/util/ArraySet;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroid/util/ArraySet<",
            "Landroid/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .line 2272
    nop

    .line 2273
    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_4
    if-lt v0, p3, :cond_5b

    .line 2274
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord;

    .line 2275
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2276
    invoke-virtual {v2}, Landroid/app/BackStackRecord;->isPostponed()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_27

    add-int/lit8 v4, v0, 0x1

    .line 2277
    invoke-virtual {v2, p1, v4, p4}, Landroid/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x1

    goto :goto_28

    :cond_27
    move v4, v5

    .line 2278
    :goto_28
    if-eqz v4, :cond_58

    .line 2279
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v4, :cond_35

    .line 2280
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2282
    :cond_35
    new-instance v4, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-direct {v4, v2, v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Landroid/app/BackStackRecord;Z)V

    .line 2284
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2285
    invoke-virtual {v2, v4}, Landroid/app/BackStackRecord;->setOnStartPostponedListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V

    .line 2288
    if-eqz v3, :cond_48

    .line 2289
    invoke-virtual {v2}, Landroid/app/BackStackRecord;->executeOps()V

    goto :goto_4b

    .line 2291
    :cond_48
    invoke-virtual {v2, v5}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    .line 2295
    :goto_4b
    add-int/lit8 v1, v1, -0x1

    .line 2296
    if-eq v0, v1, :cond_55

    .line 2297
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2298
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2302
    :cond_55
    invoke-direct {p0, p5}, Landroid/app/FragmentManagerImpl;->addAddedFragments(Landroid/util/ArraySet;)V

    .line 2273
    :cond_58
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 2305
    :cond_5b
    return v1
.end method

.method private greylist-max-o removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2131
    if-eqz p1, :cond_70

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_70

    .line 2135
    :cond_9
    if-eqz p2, :cond_68

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_68

    .line 2140
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2142
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2143
    nop

    .line 2144
    const/4 v1, 0x0

    move v2, v1

    :goto_1f
    if-ge v1, v0, :cond_62

    .line 2145
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    iget-boolean v3, v3, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2146
    if-nez v3, :cond_5f

    .line 2148
    if-eq v2, v1, :cond_30

    .line 2149
    invoke-direct {p0, p1, p2, v2, v1}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2153
    :cond_30
    add-int/lit8 v2, v1, 0x1

    .line 2154
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 2155
    :goto_3e
    if-ge v2, v0, :cond_59

    .line 2156
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 2157
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    iget-boolean v3, v3, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_59

    .line 2158
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 2161
    :cond_59
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2162
    nop

    .line 2163
    add-int/lit8 v1, v2, -0x1

    .line 2144
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 2166
    :cond_62
    if-eq v2, v0, :cond_67

    .line 2167
    invoke-direct {p0, p1, p2, v2, v0}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2169
    :cond_67
    return-void

    .line 2136
    :cond_68
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2132
    :cond_70
    :goto_70
    return-void
.end method

.method public static greylist-max-o reverseTransit(I)I
    .registers 1

    .line 3478
    nop

    .line 3479
    sparse-switch p0, :sswitch_data_12

    const/4 p0, 0x0

    goto :goto_10

    .line 3484
    :sswitch_6
    nop

    .line 3485
    const/16 p0, 0x1001

    goto :goto_10

    .line 3487
    :sswitch_a
    const/16 p0, 0x1003

    goto :goto_10

    .line 3481
    :sswitch_d
    nop

    .line 3482
    const/16 p0, 0x2002

    .line 3490
    :goto_10
    return p0

    nop

    :sswitch_data_12
    .sparse-switch
        0x1001 -> :sswitch_d
        0x1003 -> :sswitch_a
        0x2002 -> :sswitch_6
    .end sparse-switch
.end method

.method private greylist-max-o scheduleCommit()V
    .registers 5

    .line 1931
    monitor-enter p0

    .line 1932
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 1933
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 1934
    :goto_12
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1f

    move v1, v2

    .line 1935
    :cond_1f
    if-nez v0, :cond_23

    if-eqz v1, :cond_39

    .line 1936
    :cond_23
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1937
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1939
    :cond_39
    monitor-exit p0

    .line 1940
    return-void

    .line 1939
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method private greylist-max-o setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V
    .registers 4

    .line 808
    if-eqz p1, :cond_14

    if-nez p2, :cond_5

    goto :goto_14

    .line 811
    :cond_5
    invoke-static {p1, p2}, Landroid/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 812
    new-instance v0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v0, p1}, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 814
    :cond_13
    return-void

    .line 809
    :cond_14
    :goto_14
    return-void
.end method

.method private static greylist-max-o setRetaining(Landroid/app/FragmentManagerNonConfig;)V
    .registers 4

    .line 2593
    if-nez p0, :cond_3

    .line 2594
    return-void

    .line 2596
    :cond_3
    invoke-virtual {p0}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 2597
    if-eqz v0, :cond_1d

    .line 2598
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 2599
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/Fragment;->mRetaining:Z

    .line 2600
    goto :goto_d

    .line 2602
    :cond_1d
    invoke-virtual {p0}, Landroid/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object p0

    .line 2603
    if-eqz p0, :cond_37

    .line 2604
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManagerNonConfig;

    .line 2605
    invoke-static {v0}, Landroid/app/FragmentManagerImpl;->setRetaining(Landroid/app/FragmentManagerNonConfig;)V

    .line 2606
    goto :goto_27

    .line 2608
    :cond_37
    return-void
.end method

.method static greylist-max-o shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z
    .registers 4

    .line 796
    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    if-nez p1, :cond_6

    goto :goto_1c

    .line 799
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_1a

    .line 800
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 801
    invoke-static {p1}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    nop

    .line 799
    :goto_1b
    return v0

    .line 797
    :cond_1c
    :goto_1c
    return v0
.end method

.method private greylist-max-o throwException(Ljava/lang/RuntimeException;)V
    .registers 9

    .line 748
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    new-instance v0, Landroid/util/LogWriter;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 750
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/16 v3, 0x400

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 751
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    const-string v3, "Failed dumping state"

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_35

    .line 752
    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :try_start_25
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v6, v5, v2, v4}, Landroid/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_34

    .line 755
    :catch_2d
    move-exception v0

    .line 756
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 757
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    :goto_34
    goto :goto_47

    .line 760
    :cond_35
    const-string v0, "Fragment manager state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :try_start_3a
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v2, v0}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_40

    .line 766
    goto :goto_47

    .line 763
    :catch_40
    move-exception v0

    .line 764
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 765
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    :goto_47
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 769
    throw p1
.end method

.method public static greylist-max-o transitToStyleIndex(IZ)I
    .registers 2

    .line 3495
    nop

    .line 3496
    sparse-switch p0, :sswitch_data_1a

    const/4 p0, -0x1

    goto :goto_18

    .line 3503
    :sswitch_6
    if-eqz p1, :cond_a

    .line 3504
    const/4 p0, 0x2

    goto :goto_b

    .line 3505
    :cond_a
    const/4 p0, 0x3

    .line 3506
    :goto_b
    goto :goto_18

    .line 3508
    :sswitch_c
    if-eqz p1, :cond_10

    .line 3509
    const/4 p0, 0x4

    goto :goto_11

    .line 3510
    :cond_10
    const/4 p0, 0x5

    :goto_11
    goto :goto_18

    .line 3498
    :sswitch_12
    if-eqz p1, :cond_16

    .line 3499
    const/4 p0, 0x0

    goto :goto_17

    .line 3500
    :cond_16
    const/4 p0, 0x1

    .line 3501
    :goto_17
    nop

    .line 3513
    :goto_18
    return p0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x1001 -> :sswitch_12
        0x1003 -> :sswitch_c
        0x2002 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method greylist-max-o addBackStackState(Landroid/app/BackStackRecord;)V
    .registers 3

    .line 2519
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2522
    :cond_b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2523
    return-void
.end method

.method public greylist-max-o addFragment(Landroid/app/Fragment;Z)V
    .registers 6

    .line 1711
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    .line 1713
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_6c

    .line 1714
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 1717
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1718
    :try_start_2e
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_50

    .line 1720
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1721
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1722
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_40

    .line 1723
    iput-boolean v1, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    .line 1725
    :cond_40
    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_4a

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_4a

    .line 1726
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1728
    :cond_4a
    if-eqz p2, :cond_6c

    .line 1729
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    goto :goto_6c

    .line 1719
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1

    .line 1715
    :cond_53
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment already added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1732
    :cond_6c
    :goto_6c
    return-void
.end method

.method public whitelist addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3

    .line 915
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 916
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 918
    :cond_b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    return-void
.end method

.method public greylist-max-o allocBackStackIndex(Landroid/app/BackStackRecord;)I
    .registers 6

    .line 1943
    monitor-enter p0

    .line 1944
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_e

    goto :goto_4f

    .line 1954
    :cond_e
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1955
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_48

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_48
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1957
    monitor-exit p0

    return v0

    .line 1945
    :cond_4f
    :goto_4f
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_5a

    .line 1946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1948
    :cond_5a
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1949
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_86

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_86
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1951
    monitor-exit p0

    return v0

    .line 1959
    :catchall_8d
    move-exception p1

    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_8d

    throw p1
.end method

.method public greylist-max-o attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback<",
            "*>;",
            "Landroid/app/FragmentContainer;",
            "Landroid/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 2961
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_18

    .line 2962
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 2963
    iput-object p2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    .line 2964
    iput-object p3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    .line 2965
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->getTargetSdk()I

    move-result p1

    const/16 p2, 0x19

    if-gt p1, p2, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-boolean p1, p0, Landroid/app/FragmentManagerImpl;->mAllowOldReentrantBehavior:Z

    .line 2966
    return-void

    .line 2961
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o attachFragment(Landroid/app/Fragment;)V
    .registers 5

    .line 1808
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_1c
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_7e

    .line 1810
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1811
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-nez v0, :cond_7e

    .line 1812
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 1815
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_4b

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_4b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1817
    :try_start_4e
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_62

    .line 1819
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1820
    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_7e

    iget-boolean p1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz p1, :cond_7e

    .line 1821
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_7e

    .line 1818
    :catchall_62
    move-exception p1

    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p1

    .line 1813
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1825
    :cond_7e
    :goto_7e
    return-void
.end method

.method public whitelist beginTransaction()Landroid/app/FragmentTransaction;
    .registers 2

    .line 818
    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method greylist-max-o completeShowHideFragment(Landroid/app/Fragment;)V
    .registers 8

    .line 1514
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_66

    .line 1515
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransition()I

    move-result v0

    iget-boolean v3, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1516
    xor-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    .line 1515
    invoke-virtual {p0, p1, v0, v3, v4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1517
    if-eqz v0, :cond_4a

    .line 1518
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1519
    iget-boolean v3, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_3c

    .line 1520
    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1521
    invoke-virtual {p1, v2}, Landroid/app/Fragment;->setHideReplaced(Z)V

    goto :goto_41

    .line 1523
    :cond_2a
    iget-object v3, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1524
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1525
    if-eqz v3, :cond_33

    .line 1526
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1530
    :cond_33
    new-instance v5, Landroid/app/FragmentManagerImpl$3;

    invoke-direct {v5, p0, v3, v4}, Landroid/app/FragmentManagerImpl$3;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1540
    goto :goto_41

    .line 1542
    :cond_3c
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1544
    :goto_41
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v3, v0}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1545
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_66

    .line 1547
    :cond_4a
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_57

    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-nez v0, :cond_57

    .line 1548
    const/16 v0, 0x8

    goto :goto_58

    .line 1549
    :cond_57
    move v0, v2

    .line 1550
    :goto_58
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1551
    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1552
    invoke-virtual {p1, v2}, Landroid/app/Fragment;->setHideReplaced(Z)V

    .line 1556
    :cond_66
    :goto_66
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_74

    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_74

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_74

    .line 1557
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1559
    :cond_74
    iput-boolean v2, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    .line 1560
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1561
    return-void
.end method

.method public greylist-max-o detachFragment(Landroid/app/Fragment;)V
    .registers 6

    .line 1790
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_1c
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_5e

    .line 1792
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1793
    iget-boolean v1, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_5e

    .line 1795
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_44

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove from detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_44
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1797
    :try_start_47
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1798
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_5b

    .line 1799
    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_57

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_57

    .line 1800
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1802
    :cond_57
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    goto :goto_5e

    .line 1798
    :catchall_5b
    move-exception p1

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p1

    .line 1805
    :cond_5e
    :goto_5e
    return-void
.end method

.method public greylist-max-o dispatchActivityCreated()V
    .registers 2

    .line 3004
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3005
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3006
    return-void
.end method

.method public greylist-max-o dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 3108
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 3109
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3110
    if-eqz v1, :cond_16

    .line 3111
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3108
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3114
    :cond_19
    return-void
.end method

.method public greylist-max-o dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    .line 3199
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    .line 3200
    return v1

    .line 3202
    :cond_7
    move v0, v1

    :goto_8
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 3203
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 3204
    if-eqz v3, :cond_21

    .line 3205
    invoke-virtual {v3, p1}, Landroid/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3206
    return v2

    .line 3202
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3210
    :cond_24
    return v1
.end method

.method public greylist-max-o dispatchCreate()V
    .registers 2

    .line 2999
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3000
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3001
    return-void
.end method

.method public greylist-max-o dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 10

    .line 3135
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    .line 3136
    return v1

    .line 3138
    :cond_7
    nop

    .line 3139
    nop

    .line 3140
    const/4 v0, 0x0

    move v3, v1

    move v4, v3

    :goto_c
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_33

    .line 3141
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 3142
    if-eqz v5, :cond_30

    .line 3143
    invoke-virtual {v5, p1, p2}, Landroid/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 3144
    nop

    .line 3145
    if-nez v0, :cond_2c

    .line 3146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3148
    :cond_2c
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    .line 3140
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3153
    :cond_33
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz p1, :cond_56

    .line 3154
    nop

    :goto_38
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_56

    .line 3155
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Fragment;

    .line 3156
    if-eqz v0, :cond_50

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_53

    .line 3157
    :cond_50
    invoke-virtual {p1}, Landroid/app/Fragment;->onDestroyOptionsMenu()V

    .line 3154
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 3162
    :cond_56
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 3164
    return v4
.end method

.method public greylist-max-o dispatchDestroy()V
    .registers 2

    .line 3031
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    .line 3032
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3033
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3034
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 3035
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    .line 3036
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    .line 3037
    return-void
.end method

.method public greylist-max-o dispatchDestroyView()V
    .registers 2

    .line 3027
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3028
    return-void
.end method

.method public greylist-max-o dispatchLowMemory()V
    .registers 3

    .line 3117
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 3118
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3119
    if-eqz v1, :cond_16

    .line 3120
    invoke-virtual {v1}, Landroid/app/Fragment;->performLowMemory()V

    .line 3117
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3123
    :cond_19
    return-void
.end method

.method public greylist-max-o dispatchMultiWindowModeChanged(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3066
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 3067
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3068
    if-eqz v1, :cond_17

    .line 3069
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 3066
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3072
    :cond_1a
    return-void
.end method

.method public greylist-max-o dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 5

    .line 3076
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 3077
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3078
    if-eqz v1, :cond_17

    .line 3079
    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->performMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 3076
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3082
    :cond_1a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    .line 3318
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14

    .line 3319
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3320
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 3321
    check-cast v0, Landroid/app/FragmentManagerImpl;

    .line 3322
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3325
    :cond_14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3326
    if-eqz p3, :cond_32

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3327
    :cond_32
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 3329
    :cond_39
    goto :goto_1a

    .line 3330
    :cond_3a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V
    .registers 7

    .line 3271
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14

    .line 3272
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3273
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 3274
    check-cast v0, Landroid/app/FragmentManagerImpl;

    .line 3275
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    .line 3278
    :cond_14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3279
    if-eqz p3, :cond_32

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3280
    :cond_32
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V

    .line 3282
    :cond_39
    goto :goto_1a

    .line 3283
    :cond_3a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    .line 3302
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14

    .line 3303
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3304
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 3305
    check-cast v0, Landroid/app/FragmentManagerImpl;

    .line 3306
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3309
    :cond_14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3310
    if-eqz p3, :cond_32

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3311
    :cond_32
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 3313
    :cond_39
    goto :goto_1a

    .line 3314
    :cond_3a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V
    .registers 6

    .line 3439
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14

    .line 3440
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3441
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 3442
    check-cast v0, Landroid/app/FragmentManagerImpl;

    .line 3443
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V

    .line 3446
    :cond_14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3447
    if-eqz p2, :cond_32

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3448
    :cond_32
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3450
    :cond_39
    goto :goto_1a

    .line 3451
    :cond_3a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V
    .registers 6

    .line 3454
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14

    .line 3455
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3456
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 3457
    check-cast v0, Landroid/app/FragmentManagerImpl;

    .line 3458
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V

    .line 3461
    :cond_14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3462
    if-eqz p2, :cond_32

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3463
    :cond_32
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3465
    :cond_39
    goto :goto_1a

    .line 3466
    :cond_3a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V
    .registers 6

    .line 3379
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14

    .line 3380
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3381
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 3382
    check-cast v0, Landroid/app/FragmentManagerImpl;

    .line 3383
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V

    .line 3386
    :cond_14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3387
    if-eqz p2, :cond_32

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3388
    :cond_32
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3390
    :cond_39
    goto :goto_1a

    .line 3391
    :cond_3a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V
    .registers 7

    .line 3256
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14

    .line 3257
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3258
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 3259
    check-cast v0, Landroid/app/FragmentManagerImpl;

    .line 3260
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    .line 3263
    :cond_14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3264
    if-eqz p3, :cond_32

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3265
    :cond_32
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V

    .line 3267
    :cond_39
    goto :goto_1a

    .line 3268
    :cond_3a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    .line 3287
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14

    .line 3288
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3289
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 3290
    check-cast v0, Landroid/app/FragmentManagerImpl;

    .line 3291
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3294
    :cond_14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3295
    if-eqz p3, :cond_32

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3296
    :cond_32
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 3298
    :cond_39
    goto :goto_1a

    .line 3299
    :cond_3a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V
    .registers 6

    .line 3364
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14

    .line 3365
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3366
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 3367
    check-cast v0, Landroid/app/FragmentManagerImpl;

    .line 3368
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V

    .line 3371
    :cond_14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3372
    if-eqz p2, :cond_32

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3373
    :cond_32
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3375
    :cond_39
    goto :goto_1a

    .line 3376
    :cond_3a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7

    .line 3409
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14

    .line 3410
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3411
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 3412
    check-cast v0, Landroid/app/FragmentManagerImpl;

    .line 3413
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3416
    :cond_14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3417
    if-eqz p3, :cond_32

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3418
    :cond_32
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 3420
    :cond_39
    goto :goto_1a

    .line 3421
    :cond_3a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V
    .registers 6

    .line 3349
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14

    .line 3350
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3351
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 3352
    check-cast v0, Landroid/app/FragmentManagerImpl;

    .line 3353
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V

    .line 3356
    :cond_14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3357
    if-eqz p2, :cond_32

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3358
    :cond_32
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3360
    :cond_39
    goto :goto_1a

    .line 3361
    :cond_3a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V
    .registers 6

    .line 3394
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14

    .line 3395
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3396
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 3397
    check-cast v0, Landroid/app/FragmentManagerImpl;

    .line 3398
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V

    .line 3401
    :cond_14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3402
    if-eqz p2, :cond_32

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3403
    :cond_32
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3405
    :cond_39
    goto :goto_1a

    .line 3406
    :cond_3a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .registers 8

    .line 3334
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14

    .line 3335
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3336
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 3337
    check-cast v0, Landroid/app/FragmentManagerImpl;

    .line 3338
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 3341
    :cond_14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3342
    if-eqz p4, :cond_32

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3343
    :cond_32
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 3345
    :cond_39
    goto :goto_1a

    .line 3346
    :cond_3a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V
    .registers 6

    .line 3424
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_14

    .line 3425
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3426
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_14

    .line 3427
    check-cast v0, Landroid/app/FragmentManagerImpl;

    .line 3428
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V

    .line 3431
    :cond_14
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3432
    if-eqz p2, :cond_32

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3433
    :cond_32
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3435
    :cond_39
    goto :goto_1a

    .line 3436
    :cond_3a
    return-void
.end method

.method public greylist-max-o dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    .line 3184
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    .line 3185
    return v1

    .line 3187
    :cond_7
    move v0, v1

    :goto_8
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 3188
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 3189
    if-eqz v3, :cond_21

    .line 3190
    invoke-virtual {v3, p1}, Landroid/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3191
    return v2

    .line 3187
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3195
    :cond_24
    return v1
.end method

.method public greylist-max-o dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4

    .line 3214
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 3215
    return-void

    .line 3217
    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 3218
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3219
    if-eqz v1, :cond_1c

    .line 3220
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3217
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3223
    :cond_1f
    return-void
.end method

.method public greylist-max-o dispatchPause()V
    .registers 2

    .line 3019
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3020
    return-void
.end method

.method public greylist-max-o dispatchPictureInPictureModeChanged(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3089
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 3090
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3091
    if-eqz v1, :cond_17

    .line 3092
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 3089
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3095
    :cond_1a
    return-void
.end method

.method public greylist-max-o dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 5

    .line 3099
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 3100
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3101
    if-eqz v1, :cond_17

    .line 3102
    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->performPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 3099
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3105
    :cond_1a
    return-void
.end method

.method public greylist-max-o dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    .line 3168
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    .line 3169
    return v1

    .line 3171
    :cond_7
    nop

    .line 3172
    move v0, v1

    :goto_9
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 3173
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 3174
    if-eqz v3, :cond_22

    .line 3175
    invoke-virtual {v3, p1}, Landroid/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 3176
    move v0, v2

    .line 3172
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3180
    :cond_25
    return v0
.end method

.method public greylist-max-o dispatchResume()V
    .registers 2

    .line 3014
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3015
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3016
    return-void
.end method

.method public greylist-max-o dispatchStart()V
    .registers 2

    .line 3009
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3010
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3011
    return-void
.end method

.method public greylist-max-o dispatchStop()V
    .registers 2

    .line 3023
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3024
    return-void
.end method

.method public greylist-max-o dispatchTrimMemory(I)V
    .registers 4

    .line 3126
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 3127
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3128
    if-eqz v1, :cond_16

    .line 3129
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performTrimMemory(I)V

    .line 3126
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3132
    :cond_19
    return-void
.end method

.method greylist-max-o doPendingDeferredStart()V
    .registers 6

    .line 2495
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_2f

    .line 2496
    nop

    .line 2497
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_8
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_28

    .line 2498
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 2499
    if-eqz v3, :cond_25

    iget-object v4, v3, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v4, :cond_25

    .line 2500
    iget-object v3, v3, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v3

    or-int/2addr v2, v3

    .line 2497
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2503
    :cond_28
    if-nez v2, :cond_2f

    .line 2504
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 2505
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 2508
    :cond_2f
    return-void
.end method

.method public whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_5e

    .line 1000
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1001
    if-lez v1, :cond_5e

    .line 1002
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1003
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1004
    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    move v3, v2

    :goto_39
    if-ge v3, v1, :cond_5e

    .line 1006
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 1007
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1008
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1009
    if-eqz v4, :cond_5b

    .line 1010
    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1005
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 1016
    :cond_5e
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1017
    if-lez v1, :cond_93

    .line 1018
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    const-string v3, "Added Fragments:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    move v3, v2

    :goto_6f
    if-ge v3, v1, :cond_93

    .line 1021
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 1022
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1023
    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1025
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v4}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 1030
    :cond_93
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v1, :cond_cc

    .line 1031
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1032
    if-lez v1, :cond_cc

    .line 1033
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Fragments Created Menus:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    move v3, v2

    :goto_a8
    if-ge v3, v1, :cond_cc

    .line 1035
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 1036
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1037
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 1042
    :cond_cc
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v1, :cond_108

    .line 1043
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1044
    if-lez v1, :cond_108

    .line 1045
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Back Stack:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    move v3, v2

    :goto_e1
    if-ge v3, v1, :cond_108

    .line 1047
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BackStackRecord;

    .line 1048
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1049
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1046
    add-int/lit8 v3, v3, 0x1

    goto :goto_e1

    .line 1055
    :cond_108
    monitor-enter p0

    .line 1056
    :try_start_109
    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz p2, :cond_13e

    .line 1057
    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1058
    if-lez p2, :cond_13e

    .line 1059
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack Indices:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    move p4, v2

    :goto_11e
    if-ge p4, p2, :cond_13e

    .line 1061
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackStackRecord;

    .line 1062
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1063
    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1060
    add-int/lit8 p4, p4, 0x1

    goto :goto_11e

    .line 1068
    :cond_13e
    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz p2, :cond_160

    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_160

    .line 1069
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1070
    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    :cond_160
    monitor-exit p0
    :try_end_161
    .catchall {:try_start_109 .. :try_end_161} :catchall_20d

    .line 1074
    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz p2, :cond_196

    .line 1075
    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1076
    if-lez p2, :cond_196

    .line 1077
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Pending Actions:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    nop

    :goto_176
    if-ge v2, p2, :cond_196

    .line 1079
    iget-object p4, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/FragmentManagerImpl$OpGenerator;

    .line 1080
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1081
    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1078
    add-int/lit8 v2, v2, 0x1

    goto :goto_176

    .line 1086
    :cond_196
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1088
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1089
    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz p2, :cond_1c9

    .line 1090
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1092
    :cond_1c9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1093
    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1094
    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1095
    iget-boolean p2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz p2, :cond_1fb

    .line 1096
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1097
    iget-boolean p2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1099
    :cond_1fb
    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz p2, :cond_20c

    .line 1100
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNoTransactionsBecause="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1101
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    :cond_20c
    return-void

    .line 1072
    :catchall_20d
    move-exception p1

    :try_start_20e
    monitor-exit p0
    :try_end_20f
    .catchall {:try_start_20e .. :try_end_20f} :catchall_20d

    throw p1
.end method

.method public greylist-max-o enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V
    .registers 4

    .line 1905
    if-nez p2, :cond_5

    .line 1906
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1908
    :cond_5
    monitor-enter p0

    .line 1909
    :try_start_6
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_f

    goto :goto_24

    .line 1916
    :cond_f
    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez p2, :cond_1a

    .line 1917
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1919
    :cond_1a
    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1920
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->scheduleCommit()V

    .line 1921
    monitor-exit p0

    .line 1922
    return-void

    .line 1910
    :cond_24
    :goto_24
    if-eqz p2, :cond_28

    .line 1912
    monitor-exit p0

    return-void

    .line 1914
    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1921
    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw p1
.end method

.method greylist-max-o ensureInflatedFragmentView(Landroid/app/Fragment;)V
    .registers 5

    .line 1491
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p1, Landroid/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_3a

    .line 1492
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1494
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3a

    .line 1495
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1496
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2c

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1497
    :cond_2c
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1498
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1501
    :cond_3a
    return-void
.end method

.method public greylist-max-o execPendingActions()Z
    .registers 5

    .line 2062
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2064
    const/4 v1, 0x0

    .line 2065
    :goto_5
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2066
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2068
    :try_start_11
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1e

    .line 2070
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 2071
    nop

    .line 2072
    move v1, v0

    goto :goto_5

    .line 2070
    :catchall_1e
    move-exception v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 2071
    throw v0

    .line 2075
    :cond_23
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2076
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    .line 2078
    return v1
.end method

.method public greylist-max-o execSingleAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V
    .registers 4

    .line 2030
    if-eqz p2, :cond_b

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_b

    .line 2032
    :cond_a
    return-void

    .line 2034
    :cond_b
    invoke-direct {p0, p2}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2035
    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Landroid/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 2036
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2038
    :try_start_1b
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    .line 2040
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 2041
    goto :goto_2b

    .line 2040
    :catchall_26
    move-exception p1

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 2041
    throw p1

    .line 2044
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2045
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    .line 2046
    return-void
.end method

.method public whitelist executePendingTransactions()Z
    .registers 2

    .line 823
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    .line 824
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 825
    return v0
.end method

.method public whitelist findFragmentById(I)Landroid/app/Fragment;
    .registers 5

    .line 1829
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1830
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1831
    if-eqz v1, :cond_19

    iget v2, v1, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_19

    .line 1832
    return-object v1

    .line 1829
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1835
    :cond_1c
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_3c

    .line 1837
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_28
    if-ltz v0, :cond_3c

    .line 1838
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1839
    if-eqz v1, :cond_39

    iget v2, v1, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_39

    .line 1840
    return-object v1

    .line 1837
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 1844
    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .registers 5

    .line 1848
    if-eqz p1, :cond_22

    .line 1850
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_22

    .line 1851
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1852
    if-eqz v1, :cond_1f

    iget-object v2, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1853
    return-object v1

    .line 1850
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1857
    :cond_22
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_48

    if-eqz p1, :cond_48

    .line 1859
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_30
    if-ltz v0, :cond_48

    .line 1860
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1861
    if-eqz v1, :cond_45

    iget-object v2, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1862
    return-object v1

    .line 1859
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    .line 1866
    :cond_48
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .registers 4

    .line 1870
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 1871
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_24

    .line 1872
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1873
    if-eqz v1, :cond_21

    invoke-virtual {v1, p1}, Landroid/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1874
    return-object v1

    .line 1871
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1878
    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o freeBackStackIndex(I)V
    .registers 5

    .line 1988
    monitor-enter p0

    .line 1989
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1990
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 1991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1993
    :cond_12
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_2e
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1995
    monitor-exit p0

    .line 1996
    return-void

    .line 1995
    :catchall_39
    move-exception p1

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public whitelist getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;
    .registers 3

    .line 910
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/FragmentManager$BackStackEntry;

    return-object p1
.end method

.method public whitelist getBackStackEntryCount()I
    .registers 2

    .line 905
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;
    .registers 7

    .line 939
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 940
    if-ne p1, v0, :cond_9

    .line 941
    const/4 p1, 0x0

    return-object p1

    .line 943
    :cond_9
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 944
    if-nez v0, :cond_38

    .line 945
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ": index "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 948
    :cond_38
    return-object v0
.end method

.method public whitelist getFragments()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 953
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 954
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 956
    :cond_b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 957
    :try_start_e
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 958
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v1
.end method

.method greylist-max-o getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .registers 1

    .line 3613
    return-object p0
.end method

.method public whitelist getPrimaryNavigationFragment()Landroid/app/Fragment;
    .registers 2

    .line 3236
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    return-object v0
.end method

.method greylist-max-o getTargetSdk()I
    .registers 2

    .line 2973
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_15

    .line 2974
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2975
    if-eqz v0, :cond_15

    .line 2976
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2977
    if-eqz v0, :cond_15

    .line 2978
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0

    .line 2982
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o hideFragment(Landroid/app/Fragment;)V
    .registers 4

    .line 1764
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_1c
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-nez v0, :cond_28

    .line 1766
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1769
    iget-boolean v1, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    .line 1771
    :cond_28
    return-void
.end method

.method public whitelist invalidateOptionsMenu()V
    .registers 3

    .line 3470
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    .line 3471
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    goto :goto_12

    .line 3473
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 3475
    :goto_12
    return-void
.end method

.method public whitelist isDestroyed()Z
    .registers 2

    .line 976
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method greylist-max-o isStateAtLeast(I)Z
    .registers 3

    .line 1162
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public whitelist isStateSaved()Z
    .registers 2

    .line 1894
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    return v0
.end method

.method greylist-max-r loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;
    .registers 6

    .line 1108
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1109
    if-eqz v0, :cond_b

    .line 1110
    return-object v0

    .line 1113
    :cond_b
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v0

    if-eqz v0, :cond_22

    .line 1114
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1115
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result p1

    .line 1114
    invoke-static {v0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    .line 1116
    if-eqz p1, :cond_22

    .line 1117
    return-object p1

    .line 1121
    :cond_22
    const/4 p1, 0x0

    if-nez p2, :cond_26

    .line 1122
    return-object p1

    .line 1125
    :cond_26
    invoke-static {p2, p3}, Landroid/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result p2

    .line 1126
    if-gez p2, :cond_2d

    .line 1127
    return-object p1

    .line 1130
    :cond_2d
    if-nez p4, :cond_3d

    iget-object p3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p3}, Landroid/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result p3

    if-eqz p3, :cond_3d

    .line 1131
    iget-object p3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p3}, Landroid/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    .line 1133
    :cond_3d
    if-nez p4, :cond_40

    .line 1134
    return-object p1

    .line 1137
    :cond_40
    iget-object p3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p3}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/android/internal/R$styleable;->FragmentAnimation:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 1139
    const/4 p4, 0x0

    invoke-virtual {p3, p2, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 1140
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1142
    if-nez p2, :cond_57

    .line 1143
    return-object p1

    .line 1146
    :cond_57
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o makeActive(Landroid/app/Fragment;)V
    .registers 4

    .line 1685
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_5

    .line 1686
    return-void

    .line 1689
    :cond_5
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    .line 1690
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_1b

    .line 1691
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 1693
    :cond_1b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1694
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allocated fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_3e
    return-void
.end method

.method greylist-max-o makeInactive(Landroid/app/Fragment;)V
    .registers 5

    .line 1698
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_5

    .line 1699
    return-void

    .line 1702
    :cond_5
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeing fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_21
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1706
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    .line 1707
    invoke-virtual {p1}, Landroid/app/Fragment;->initState()V

    .line 1708
    return-void
.end method

.method greylist-max-o moveFragmentToExpectedState(Landroid/app/Fragment;)V
    .registers 12

    .line 1570
    if-nez p1, :cond_3

    .line 1571
    return-void

    .line 1573
    :cond_3
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 1574
    iget-boolean v1, p1, Landroid/app/Fragment;->mRemoving:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    .line 1575
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1576
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v6, v0

    goto :goto_1e

    .line 1578
    :cond_17
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v6, v0

    goto :goto_1e

    .line 1574
    :cond_1d
    move v6, v0

    .line 1582
    :goto_1e
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransition()I

    move-result v7

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1584
    iget-object p1, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_7a

    .line 1586
    invoke-direct {p0, v5}, Landroid/app/FragmentManagerImpl;->findFragmentUnder(Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object p1

    .line 1587
    if-eqz p1, :cond_4e

    .line 1588
    iget-object p1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1590
    iget-object v0, v5, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1591
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 1592
    iget-object v1, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1593
    if-ge v1, p1, :cond_4e

    .line 1594
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1595
    iget-object v1, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1598
    :cond_4e
    iget-boolean p1, v5, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz p1, :cond_7a

    iget-object p1, v5, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_7a

    .line 1600
    iget-object p1, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 1601
    iput-boolean v3, v5, Landroid/app/Fragment;->mIsNewlyAdded:Z

    .line 1603
    invoke-virtual {v5}, Landroid/app/Fragment;->getNextTransition()I

    move-result p1

    invoke-virtual {v5}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v0

    invoke-virtual {p0, v5, p1, v2, v0}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object p1

    .line 1604
    if-eqz p1, :cond_7a

    .line 1605
    iget-object v0, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1606
    iget-object v0, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1607
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1611
    :cond_7a
    iget-boolean p1, v5, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_81

    .line 1612
    invoke-virtual {p0, v5}, Landroid/app/FragmentManagerImpl;->completeShowHideFragment(Landroid/app/Fragment;)V

    .line 1614
    :cond_81
    return-void
.end method

.method greylist-max-o moveToState(IZ)V
    .registers 7

    .line 1626
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_f

    if-nez p1, :cond_7

    goto :goto_f

    .line 1627
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1630
    :cond_f
    :goto_f
    if-nez p2, :cond_16

    iget p2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ne p2, p1, :cond_16

    .line 1631
    return-void

    .line 1634
    :cond_16
    iput p1, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 1636
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz p1, :cond_8a

    .line 1637
    nop

    .line 1640
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1641
    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_26
    if-ge v0, p1, :cond_41

    .line 1642
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 1643
    invoke-virtual {p0, v2}, Landroid/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/app/Fragment;)V

    .line 1644
    iget-object v3, v2, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v3, :cond_3e

    .line 1645
    iget-object v2, v2, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v2

    or-int/2addr v1, v2

    .line 1641
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1651
    :cond_41
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 1652
    move v0, p2

    :goto_48
    if-ge v0, p1, :cond_71

    .line 1653
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 1654
    if-eqz v2, :cond_6e

    iget-boolean v3, v2, Landroid/app/Fragment;->mRemoving:Z

    if-nez v3, :cond_5c

    iget-boolean v3, v2, Landroid/app/Fragment;->mDetached:Z

    if-eqz v3, :cond_6e

    :cond_5c
    iget-boolean v3, v2, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-nez v3, :cond_6e

    .line 1655
    invoke-virtual {p0, v2}, Landroid/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/app/Fragment;)V

    .line 1656
    iget-object v3, v2, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v3, :cond_6e

    .line 1657
    iget-object v2, v2, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v2

    or-int/2addr v1, v2

    .line 1652
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 1662
    :cond_71
    if-nez v1, :cond_76

    .line 1663
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1666
    :cond_76
    iget-boolean p1, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz p1, :cond_8a

    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz p1, :cond_8a

    iget p1, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_8a

    .line 1667
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    .line 1668
    iput-boolean p2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1671
    :cond_8a
    return-void
.end method

.method greylist-max-o moveToState(Landroid/app/Fragment;)V
    .registers 8

    .line 1487
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1488
    return-void
.end method

.method greylist-max-o moveToState(Landroid/app/Fragment;IIIZ)V
    .registers 22

    .line 1168
    move-object/from16 v2, p1

    .line 1173
    iget-boolean v0, v2, Landroid/app/Fragment;->mAdded:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_f

    iget-boolean v0, v2, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_c

    goto :goto_f

    :cond_c
    move/from16 v0, p2

    goto :goto_14

    :cond_f
    :goto_f
    move/from16 v0, p2

    if-le v0, v7, :cond_14

    .line 1174
    move v0, v7

    .line 1176
    :cond_14
    :goto_14
    iget-boolean v1, v2, Landroid/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_2a

    iget v1, v2, Landroid/app/Fragment;->mState:I

    if-le v0, v1, :cond_2a

    .line 1177
    iget v0, v2, Landroid/app/Fragment;->mState:I

    if-nez v0, :cond_28

    invoke-virtual {v2}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1179
    move v0, v7

    goto :goto_2a

    .line 1182
    :cond_28
    iget v0, v2, Landroid/app/Fragment;->mState:I

    .line 1187
    :cond_2a
    :goto_2a
    iget-boolean v1, v2, Landroid/app/Fragment;->mDeferStart:Z

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz v1, :cond_38

    iget v1, v2, Landroid/app/Fragment;->mState:I

    if-ge v1, v8, :cond_38

    if-le v0, v9, :cond_38

    .line 1188
    move v10, v9

    goto :goto_39

    .line 1190
    :cond_38
    move v10, v0

    :goto_39
    iget v0, v2, Landroid/app/Fragment;->mState:I

    const/4 v11, 0x2

    const-string v12, "FragmentManager"

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-gt v0, v10, :cond_2ef

    .line 1194
    iget-boolean v0, v2, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_4b

    iget-boolean v0, v2, Landroid/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_4b

    .line 1195
    return-void

    .line 1197
    :cond_4b
    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 1202
    invoke-virtual {v2, v13}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    .line 1203
    invoke-virtual {v2}, Landroid/app/Fragment;->getStateAfterAnimating()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    move-object v15, v2

    goto :goto_65

    .line 1197
    :cond_62
    move-object/from16 v1, p0

    move-object v15, v2

    .line 1205
    :goto_65
    iget v0, v15, Landroid/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_498

    move v7, v10

    goto/16 :goto_2ec

    .line 1207
    :pswitch_6d
    if-lez v10, :cond_199

    .line 1208
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_8a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto CREATED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_8a
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_c3

    .line 1210
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:view_state"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v15, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1212
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_state"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1214
    iget-object v0, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v0, :cond_b0

    .line 1215
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_req_state"

    invoke-virtual {v0, v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v15, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 1218
    :cond_b0
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v15, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 1220
    iget-boolean v0, v15, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_c3

    .line 1221
    iput-boolean v7, v15, Landroid/app/Fragment;->mDeferStart:Z

    .line 1222
    if-le v10, v9, :cond_c3

    .line 1223
    move v10, v9

    .line 1228
    :cond_c3
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v0, v15, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 1229
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    iput-object v0, v15, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    .line 1230
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_d4

    .line 1231
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    goto :goto_da

    :cond_d4
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;

    move-result-object v0

    :goto_da
    iput-object v0, v15, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1235
    iget-object v0, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    const-string v2, "Fragment "

    if-eqz v0, :cond_12d

    .line 1236
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v3, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v3, v3, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-ne v0, v3, :cond_103

    .line 1241
    iget-object v0, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v0, v0, Landroid/app/Fragment;->mState:I

    if-ge v0, v7, :cond_101

    .line 1242
    move-object v0, v2

    iget-object v2, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    goto :goto_12e

    .line 1241
    :cond_101
    move-object v0, v2

    goto :goto_12e

    .line 1237
    :cond_103
    move-object v0, v2

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " declared target fragment "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1235
    :cond_12d
    move-object v0, v2

    .line 1246
    :goto_12e
    iget-object v2, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v15, v2, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    .line 1247
    iput-boolean v14, v15, Landroid/app/Fragment;->mCalled:Z

    .line 1248
    iget-object v2, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1249
    iget-boolean v2, v15, Landroid/app/Fragment;->mCalled:Z

    if-eqz v2, :cond_17c

    .line 1253
    iget-object v0, v15, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    if-nez v0, :cond_150

    .line 1254
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, v15}, Landroid/app/FragmentHostCallback;->onAttachFragment(Landroid/app/Fragment;)V

    goto :goto_155

    .line 1256
    :cond_150
    iget-object v0, v15, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v15}, Landroid/app/Fragment;->onAttachFragment(Landroid/app/Fragment;)V

    .line 1258
    :goto_155
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v15, v0, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    .line 1260
    iget-boolean v0, v15, Landroid/app/Fragment;->mIsCreated:Z

    if-nez v0, :cond_172

    .line 1261
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v15, v0, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1262
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v15, v0}, Landroid/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1263
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v15, v0, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_179

    .line 1265
    :cond_172
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v15, v0, v7}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    .line 1266
    iput v7, v15, Landroid/app/Fragment;->mState:I

    .line 1268
    :goto_179
    iput-boolean v14, v15, Landroid/app/Fragment;->mRetaining:Z

    goto :goto_199

    .line 1250
    :cond_17c
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1275
    :cond_199
    :goto_199
    :pswitch_199
    invoke-virtual/range {p0 .. p1}, Landroid/app/FragmentManagerImpl;->ensureInflatedFragmentView(Landroid/app/Fragment;)V

    .line 1277
    if-le v10, v7, :cond_29d

    .line 1278
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1b9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_1b9
    iget-boolean v0, v15, Landroid/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_288

    .line 1280
    nop

    .line 1281
    iget v0, v15, Landroid/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_23e

    .line 1282
    iget v0, v15, Landroid/app/Fragment;->mContainerId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1e8

    .line 1283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for a container view with no id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1288
    :cond_1e8
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iget v2, v15, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v2}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 1289
    if-nez v2, :cond_23f

    iget-boolean v0, v15, Landroid/app/Fragment;->mRestored:Z

    if-nez v0, :cond_23f

    .line 1292
    :try_start_1f9
    invoke-virtual {v15}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v15, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_203
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f9 .. :try_end_203} :catch_204

    .line 1295
    goto :goto_208

    .line 1293
    :catch_204
    move-exception v0

    .line 1294
    const-string/jumbo v0, "unknown"

    .line 1296
    :goto_208
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No view found for id 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v15, Landroid/app/Fragment;->mContainerId:I

    .line 1298
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") for fragment "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1296
    invoke-direct {v1, v3}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_23f

    .line 1281
    :cond_23e
    move-object v2, v13

    .line 1303
    :cond_23f
    :goto_23f
    iput-object v2, v15, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1304
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v15, v0}, Landroid/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v3, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v15, v0, v2, v3}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1306
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_288

    .line 1307
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v14}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1308
    if-eqz v2, :cond_25f

    .line 1309
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1311
    :cond_25f
    iget-boolean v0, v15, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_26a

    .line 1312
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1314
    :cond_26a
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v15, v0, v2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1315
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v15, v0, v2, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1319
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_285

    iget-object v0, v15, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_285

    goto :goto_286

    :cond_285
    move v7, v14

    :goto_286
    iput-boolean v7, v15, Landroid/app/Fragment;->mIsNewlyAdded:Z

    .line 1324
    :cond_288
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v15, v0}, Landroid/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1325
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v15, v0, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1326
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_29b

    .line 1327
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v15, v0}, Landroid/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1329
    :cond_29b
    iput-object v13, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1333
    :cond_29d
    :pswitch_29d
    if-le v10, v11, :cond_2a1

    .line 1334
    iput v9, v15, Landroid/app/Fragment;->mState:I

    .line 1338
    :cond_2a1
    :pswitch_2a1
    if-le v10, v9, :cond_2c4

    .line 1339
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2be

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto STARTED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_2be
    invoke-virtual {v15}, Landroid/app/Fragment;->performStart()V

    .line 1341
    invoke-virtual {v1, v15, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V

    .line 1345
    :cond_2c4
    :pswitch_2c4
    if-le v10, v8, :cond_2eb

    .line 1346
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2e1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto RESUMED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_2e1
    invoke-virtual {v15}, Landroid/app/Fragment;->performResume()V

    .line 1348
    invoke-virtual {v1, v15, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V

    .line 1350
    iput-object v13, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1351
    iput-object v13, v15, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_2eb
    move v7, v10

    :goto_2ec
    move-object v2, v15

    goto/16 :goto_464

    .line 1354
    :cond_2ef
    move-object/from16 v1, p0

    move-object v15, v2

    iget v0, v15, Landroid/app/Fragment;->mState:I

    if-le v0, v10, :cond_462

    .line 1355
    iget v0, v15, Landroid/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_4a6

    move-object v2, v15

    goto/16 :goto_463

    .line 1357
    :pswitch_2fe
    const/4 v0, 0x5

    if-ge v10, v0, :cond_322

    .line 1358
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_31c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom RESUMED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_31c
    invoke-virtual {v15}, Landroid/app/Fragment;->performPause()V

    .line 1360
    invoke-virtual {v1, v15, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V

    .line 1364
    :cond_322
    :pswitch_322
    if-ge v10, v8, :cond_345

    .line 1365
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_33f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom STARTED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_33f
    invoke-virtual {v15}, Landroid/app/Fragment;->performStop()V

    .line 1367
    invoke-virtual {v1, v15, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V

    .line 1372
    :cond_345
    :pswitch_345
    if-ge v10, v11, :cond_400

    .line 1373
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_362

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_362
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_375

    .line 1377
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, v15}, Landroid/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_375

    iget-object v0, v15, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_375

    .line 1378
    invoke-virtual/range {p0 .. p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 1381
    :cond_375
    invoke-virtual {v15}, Landroid/app/Fragment;->performDestroyView()V

    .line 1382
    invoke-virtual {v1, v15, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V

    .line 1383
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3f8

    iget-object v0, v15, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3f8

    .line 1384
    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->getTargetSdk()I

    move-result v0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_397

    .line 1386
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1387
    iget-object v0, v15, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1389
    :cond_397
    nop

    .line 1390
    iget v0, v1, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lez v0, :cond_3bd

    iget-boolean v0, v1, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_3bd

    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1391
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3bd

    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1392
    invoke-virtual {v0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3bd

    .line 1393
    move/from16 v0, p3

    move/from16 v2, p4

    invoke-virtual {v1, v15, v0, v14, v2}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    move-object v6, v0

    goto :goto_3be

    .line 1396
    :cond_3bd
    move-object v6, v13

    :goto_3be
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 1397
    if-eqz v6, :cond_3ef

    .line 1398
    iget-object v2, v15, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1399
    iget-object v3, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1400
    nop

    .line 1401
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1402
    invoke-virtual {v15, v6}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    .line 1403
    invoke-virtual {v15, v10}, Landroid/app/Fragment;->setStateAfterAnimating(I)V

    .line 1404
    new-instance v0, Landroid/app/FragmentManagerImpl$2;

    move-object/from16 v5, p1

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Landroid/app/FragmentManagerImpl$2;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;)V

    move-object v2, v4

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1420
    iget-object v0, v2, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1421
    iget-object v0, v2, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {v1, v0, v6}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1422
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    goto :goto_3f0

    .line 1397
    :cond_3ef
    move-object v2, v15

    .line 1425
    :goto_3f0
    iget-object v0, v2, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, v2, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3f9

    .line 1383
    :cond_3f8
    move-object v2, v15

    .line 1427
    :goto_3f9
    iput-object v13, v2, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1428
    iput-object v13, v2, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1429
    iput-boolean v14, v2, Landroid/app/Fragment;->mInLayout:Z

    goto :goto_403

    .line 1372
    :cond_400
    move-object v2, v15

    goto :goto_403

    .line 1355
    :pswitch_402
    move-object v2, v15

    .line 1433
    :goto_403
    if-ge v10, v7, :cond_463

    .line 1434
    iget-boolean v0, v1, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_419

    .line 1435
    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_419

    .line 1442
    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    .line 1443
    invoke-virtual {v2, v13}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    .line 1444
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1447
    :cond_419
    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_423

    .line 1452
    invoke-virtual {v2, v10}, Landroid/app/Fragment;->setStateAfterAnimating(I)V

    .line 1453
    goto :goto_464

    .line 1455
    :cond_423
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_43e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom CREATED: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_43e
    iget-boolean v0, v2, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_449

    .line 1457
    invoke-virtual {v2}, Landroid/app/Fragment;->performDestroy()V

    .line 1458
    invoke-virtual {v1, v2, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V

    goto :goto_44b

    .line 1460
    :cond_449
    iput v14, v2, Landroid/app/Fragment;->mState:I

    .line 1463
    :goto_44b
    invoke-virtual {v2}, Landroid/app/Fragment;->performDetach()V

    .line 1464
    invoke-virtual {v1, v2, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V

    .line 1465
    if-nez p5, :cond_463

    .line 1466
    iget-boolean v0, v2, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_45b

    .line 1467
    invoke-virtual/range {p0 .. p1}, Landroid/app/FragmentManagerImpl;->makeInactive(Landroid/app/Fragment;)V

    goto :goto_463

    .line 1469
    :cond_45b
    iput-object v13, v2, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 1470
    iput-object v13, v2, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    .line 1471
    iput-object v13, v2, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    goto :goto_463

    .line 1354
    :cond_462
    move-object v2, v15

    .line 1479
    :cond_463
    :goto_463
    move v7, v10

    :goto_464
    iget v0, v2, Landroid/app/Fragment;->mState:I

    if-eq v0, v7, :cond_497

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveToState: Fragment state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not updated inline; expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/app/Fragment;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    iput v7, v2, Landroid/app/Fragment;->mState:I

    .line 1484
    :cond_497
    return-void

    :pswitch_data_498
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_199
        :pswitch_29d
        :pswitch_2a1
        :pswitch_2c4
    .end packed-switch

    :pswitch_data_4a6
    .packed-switch 0x1
        :pswitch_402
        :pswitch_345
        :pswitch_345
        :pswitch_322
        :pswitch_2fe
    .end packed-switch
.end method

.method public greylist noteStateNotSaved()V
    .registers 4

    .line 2987
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 2988
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2989
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2990
    nop

    :goto_d
    if-ge v0, v1, :cond_1f

    .line 2991
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 2992
    if-eqz v2, :cond_1c

    .line 2993
    invoke-virtual {v2}, Landroid/app/Fragment;->noteStateNotSaved()V

    .line 2990
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2996
    :cond_1f
    return-void
.end method

.method public whitelist onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 17

    .line 3518
    move-object/from16 v2, p4

    const-string v3, "fragment"

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_c

    .line 3519
    return-object v4

    .line 3522
    :cond_c
    const-string v3, "class"

    invoke-interface {v2, v4, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3523
    sget-object v5, Lcom/android/internal/R$styleable;->Fragment:[I

    .line 3524
    invoke-virtual {p3, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3525
    const/4 v6, 0x0

    if-nez v3, :cond_21

    .line 3526
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_22

    .line 3525
    :cond_21
    move-object v7, v3

    .line 3528
    :goto_22
    const/4 v3, 0x1

    const/4 v8, -0x1

    invoke-virtual {v5, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 3529
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3530
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3532
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 3533
    :cond_36
    if-ne v6, v8, :cond_5e

    if-ne v9, v8, :cond_5e

    if-eqz v10, :cond_3d

    goto :goto_5e

    .line 3534
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3542
    :cond_5e
    :goto_5e
    if-eq v9, v8, :cond_65

    invoke-virtual {p0, v9}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    goto :goto_66

    :cond_65
    move-object v5, v4

    .line 3543
    :goto_66
    if-nez v5, :cond_6e

    if-eqz v10, :cond_6e

    .line 3544
    invoke-virtual {p0, v10}, Landroid/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 3546
    :cond_6e
    if-nez v5, :cond_76

    if-eq v6, v8, :cond_76

    .line 3547
    invoke-virtual {p0, v6}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    .line 3550
    :cond_76
    sget-boolean v8, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_ab

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onCreateView: id=0x"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3551
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " fname="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " existing="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3550
    const-string v11, "FragmentManager"

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    :cond_ab
    if-nez v5, :cond_d8

    .line 3554
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v5, p3, v7, v4}, Landroid/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v5

    .line 3555
    iput-boolean v3, v5, Landroid/app/Fragment;->mFromLayout:Z

    .line 3556
    if-eqz v9, :cond_b9

    move v1, v9

    goto :goto_ba

    :cond_b9
    move v1, v6

    :goto_ba
    iput v1, v5, Landroid/app/Fragment;->mFragmentId:I

    .line 3557
    iput v6, v5, Landroid/app/Fragment;->mContainerId:I

    .line 3558
    iput-object v10, v5, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 3559
    iput-boolean v3, v5, Landroid/app/Fragment;->mInLayout:Z

    .line 3560
    iput-object p0, v5, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 3561
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v1, v5, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 3562
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v5, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v5, v1, v2, v4}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3563
    invoke-virtual {p0, v5, v3}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    move-object v1, v5

    goto :goto_f2

    .line 3564
    :cond_d8
    iget-boolean v1, v5, Landroid/app/Fragment;->mInLayout:Z

    if-nez v1, :cond_140

    .line 3574
    iput-boolean v3, v5, Landroid/app/Fragment;->mInLayout:Z

    .line 3575
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v1, v5, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 3579
    iget-boolean v1, v5, Landroid/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_f1

    .line 3580
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v5, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v5, v1, v2, v4}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3588
    :cond_f1
    move-object v1, v5

    :goto_f2
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ge v2, v3, :cond_103

    iget-boolean v2, v1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v2, :cond_103

    .line 3589
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    goto :goto_106

    .line 3591
    :cond_103
    invoke-virtual {p0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    .line 3594
    :goto_106
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_121

    .line 3598
    if-eqz v9, :cond_111

    .line 3599
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 3601
    :cond_111
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11e

    .line 3602
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3604
    :cond_11e
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    return-object v0

    .line 3595
    :cond_121
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3567
    :cond_140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Duplicate id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3568
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", or parent id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3569
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    .line 3609
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o performPendingDeferredStart(Landroid/app/Fragment;)V
    .registers 9

    .line 1150
    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_19

    .line 1151
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_c

    .line 1153
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1154
    return-void

    .line 1156
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    .line 1157
    iget v3, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1159
    :cond_19
    return-void
.end method

.method public whitelist popBackStack()V
    .registers 5

    .line 830
    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v3}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 831
    return-void
.end method

.method public whitelist popBackStack(II)V
    .registers 5

    .line 852
    if-ltz p1, :cond_d

    .line 855
    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 856
    return-void

    .line 853
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist popBackStack(Ljava/lang/String;I)V
    .registers 5

    .line 841
    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 842
    return-void
.end method

.method public whitelist popBackStackImmediate()Z
    .registers 4

    .line 835
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 836
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public whitelist popBackStackImmediate(II)Z
    .registers 5

    .line 860
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 861
    if-ltz p1, :cond_b

    .line 864
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result p1

    return p1

    .line 862
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist popBackStackImmediate(Ljava/lang/String;I)Z
    .registers 4

    .line 846
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 847
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method greylist-max-o popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 2527
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2528
    return v1

    .line 2530
    :cond_6
    const/4 v0, 0x1

    if-nez p3, :cond_2d

    if-gez p4, :cond_2d

    and-int/lit8 v2, p5, 0x1

    if-nez v2, :cond_2d

    .line 2531
    iget-object p3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    .line 2532
    if-gez p3, :cond_19

    .line 2533
    return v1

    .line 2535
    :cond_19
    iget-object p4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/BackStackRecord;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2536
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2537
    goto/16 :goto_af

    .line 2538
    :cond_2d
    nop

    .line 2539
    if-nez p3, :cond_35

    if-ltz p4, :cond_33

    goto :goto_35

    :cond_33
    const/4 p3, -0x1

    goto :goto_87

    .line 2542
    :cond_35
    :goto_35
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 2543
    :goto_3c
    if-ltz v2, :cond_5d

    .line 2544
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    .line 2545
    if-eqz p3, :cond_53

    invoke-virtual {v3}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 2546
    goto :goto_5d

    .line 2548
    :cond_53
    if-ltz p4, :cond_5a

    iget v3, v3, Landroid/app/BackStackRecord;->mIndex:I

    if-ne p4, v3, :cond_5a

    .line 2549
    goto :goto_5d

    .line 2551
    :cond_5a
    add-int/lit8 v2, v2, -0x1

    .line 2552
    goto :goto_3c

    .line 2553
    :cond_5d
    :goto_5d
    if-gez v2, :cond_60

    .line 2554
    return v1

    .line 2556
    :cond_60
    and-int/2addr p5, v0

    if-eqz p5, :cond_86

    .line 2557
    add-int/lit8 v2, v2, -0x1

    .line 2559
    :goto_65
    if-ltz v2, :cond_84

    .line 2560
    iget-object p5, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/BackStackRecord;

    .line 2561
    if-eqz p3, :cond_7b

    invoke-virtual {p5}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    :cond_7b
    if-ltz p4, :cond_84

    iget p5, p5, Landroid/app/BackStackRecord;->mIndex:I

    if-ne p4, p5, :cond_84

    .line 2563
    :cond_81
    add-int/lit8 v2, v2, -0x1

    .line 2564
    goto :goto_65

    .line 2570
    :cond_84
    move p3, v2

    goto :goto_87

    .line 2556
    :cond_86
    move p3, v2

    .line 2570
    :goto_87
    iget-object p4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v0

    if-ne p3, p4, :cond_91

    .line 2571
    return v1

    .line 2573
    :cond_91
    iget-object p4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v0

    :goto_98
    if-le p4, p3, :cond_af

    .line 2574
    iget-object p5, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/BackStackRecord;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2573
    add-int/lit8 p4, p4, -0x1

    goto :goto_98

    .line 2578
    :cond_af
    :goto_af
    return v0
.end method

.method public whitelist putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V
    .registers 7

    .line 930
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_25

    .line 931
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 934
    :cond_25
    iget p3, p3, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 935
    return-void
.end method

.method public whitelist registerFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .registers 5

    .line 3241
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3242
    return-void
.end method

.method public greylist-max-o removeFragment(Landroid/app/Fragment;)V
    .registers 5

    .line 1735
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_29
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v0

    .line 1737
    iget-boolean v1, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_33

    if-nez v0, :cond_4c

    .line 1746
    :cond_33
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1747
    :try_start_36
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1748
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_4d

    .line 1749
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_47

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_47

    .line 1750
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1752
    :cond_47
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1753
    iput-boolean v1, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1755
    :cond_4c
    return-void

    .line 1748
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public whitelist removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3

    .line 923
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 924
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 926
    :cond_9
    return-void
.end method

.method greylist-max-o reportBackStackChanged()V
    .registers 3

    .line 2511
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 2512
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 2513
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 2512
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2516
    :cond_1b
    return-void
.end method

.method greylist-max-o restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V
    .registers 14

    .line 2819
    if-nez p1, :cond_3

    return-void

    .line 2820
    :cond_3
    check-cast p1, Landroid/app/FragmentManagerState;

    .line 2821
    iget-object v0, p1, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    if-nez v0, :cond_a

    return-void

    .line 2823
    :cond_a
    nop

    .line 2827
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_af

    .line 2828
    invoke-virtual {p2}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v2

    .line 2829
    invoke-virtual {p2}, Landroid/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v3

    .line 2830
    if-eqz v2, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1f

    :cond_1e
    move v4, v1

    .line 2831
    :goto_1f
    move v5, v1

    :goto_20
    if-ge v5, v4, :cond_b0

    .line 2832
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Fragment;

    .line 2833
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_45

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreAllState: re-attaching retained "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    :cond_45
    move v7, v1

    .line 2835
    :goto_46
    iget-object v8, p1, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v8, v8

    if-ge v7, v8, :cond_58

    iget-object v8, p1, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v8, v8, v7

    iget v8, v8, Landroid/app/FragmentState;->mIndex:I

    iget v9, v6, Landroid/app/Fragment;->mIndex:I

    if-eq v8, v9, :cond_58

    .line 2836
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 2838
    :cond_58
    iget-object v8, p1, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v8, v8

    if-ne v7, v8, :cond_7a

    .line 2839
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find active fragment with index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2842
    :cond_7a
    iget-object v8, p1, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v7, v8, v7

    .line 2843
    iput-object v6, v7, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 2844
    iput-object v0, v6, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2845
    iput v1, v6, Landroid/app/Fragment;->mBackStackNesting:I

    .line 2846
    iput-boolean v1, v6, Landroid/app/Fragment;->mInLayout:Z

    .line 2847
    iput-boolean v1, v6, Landroid/app/Fragment;->mAdded:Z

    .line 2848
    iput-object v0, v6, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 2849
    iget-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v8, :cond_ab

    .line 2850
    iget-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v9}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2851
    iget-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:view_state"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    iput-object v8, v6, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2853
    iget-object v7, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v7, v6, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2831
    :cond_ab
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_20

    .line 2827
    :cond_af
    move-object v3, v0

    .line 2860
    :cond_b0
    new-instance v2, Landroid/util/SparseArray;

    iget-object v4, p1, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v4, v4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 2861
    move v2, v1

    :goto_bb
    iget-object v4, p1, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v4, v4

    if-ge v2, v4, :cond_114

    .line 2862
    iget-object v4, p1, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v4, v4, v2

    .line 2863
    if-eqz v4, :cond_111

    .line 2864
    nop

    .line 2865
    if-eqz v3, :cond_d6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_d6

    .line 2866
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/FragmentManagerNonConfig;

    goto :goto_d7

    .line 2868
    :cond_d6
    move-object v5, v0

    :goto_d7
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/app/FragmentState;->instantiate(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;Landroid/app/FragmentManagerNonConfig;)Landroid/app/Fragment;

    move-result-object v5

    .line 2869
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_108

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreAllState: active #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    :cond_108
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v7, v5, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2874
    iput-object v0, v4, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 2861
    :cond_111
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 2879
    :cond_114
    if-eqz p2, :cond_168

    .line 2880
    invoke-virtual {p2}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object p2

    .line 2881
    if-eqz p2, :cond_121

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_122

    :cond_121
    move v2, v1

    .line 2882
    :goto_122
    move v3, v1

    :goto_123
    if-ge v3, v2, :cond_168

    .line 2883
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 2884
    iget v5, v4, Landroid/app/Fragment;->mTargetIndex:I

    if-ltz v5, :cond_165

    .line 2885
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v6, v4, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    iput-object v5, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 2886
    iget-object v5, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-nez v5, :cond_165

    .line 2887
    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-attaching retained fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " target no longer exists: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    iput-object v0, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 2882
    :cond_165
    add-int/lit8 v3, v3, 0x1

    goto :goto_123

    .line 2896
    :cond_168
    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 2897
    iget-object p2, p1, Landroid/app/FragmentManagerState;->mAdded:[I

    if-eqz p2, :cond_1ed

    .line 2898
    move p2, v1

    :goto_172
    iget-object v2, p1, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v2, v2

    if-ge p2, v2, :cond_1ed

    .line 2899
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v3, p1, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 2900
    if-nez v2, :cond_1a4

    .line 2901
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No instantiated fragment for index #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v5, v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2904
    :cond_1a4
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    .line 2905
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_1ce

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAllState: added #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    :cond_1ce
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e5

    .line 2909
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2910
    :try_start_1d9
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2911
    monitor-exit v3

    .line 2898
    add-int/lit8 p2, p2, 0x1

    goto :goto_172

    .line 2911
    :catchall_1e2
    move-exception p1

    monitor-exit v3
    :try_end_1e4
    .catchall {:try_start_1d9 .. :try_end_1e4} :catchall_1e2

    throw p1

    .line 2907
    :cond_1e5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already added!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2916
    :cond_1ed
    iget-object p2, p1, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    if-eqz p2, :cond_264

    .line 2917
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v0, v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2918
    move p2, v1

    :goto_1fc
    iget-object v0, p1, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v0, v0

    if-ge p2, v0, :cond_266

    .line 2919
    iget-object v0, p1, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    aget-object v0, v0, p2

    invoke-virtual {v0, p0}, Landroid/app/BackStackState;->instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;

    move-result-object v0

    .line 2920
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_253

    .line 2921
    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreAllState: back stack #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    new-instance v2, Landroid/util/LogWriter;

    const/4 v3, 0x2

    const-string v4, "FragmentManager"

    invoke-direct {v2, v3, v4}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 2924
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    const/16 v4, 0x400

    invoke-direct {v3, v2, v1, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 2925
    const-string v2, "  "

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2926
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 2928
    :cond_253
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2929
    iget v2, v0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v2, :cond_261

    .line 2930
    iget v2, v0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v2, v0}, Landroid/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/app/BackStackRecord;)V

    .line 2918
    :cond_261
    add-int/lit8 p2, p2, 0x1

    goto :goto_1fc

    .line 2934
    :cond_264
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2937
    :cond_266
    iget p2, p1, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    if-ltz p2, :cond_276

    .line 2938
    iget-object p2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Fragment;

    iput-object p2, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    .line 2941
    :cond_276
    iget p1, p1, Landroid/app/FragmentManagerState;->mNextFragmentIndex:I

    iput p1, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 2942
    return-void
.end method

.method greylist-max-o retainNonConfig()Landroid/app/FragmentManagerNonConfig;
    .registers 2

    .line 2582
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    invoke-static {v0}, Landroid/app/FragmentManagerImpl;->setRetaining(Landroid/app/FragmentManagerNonConfig;)V

    .line 2583
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    return-object v0
.end method

.method greylist-max-o saveAllState()Landroid/os/Parcelable;
    .registers 14

    .line 2708
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 2709
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    .line 2710
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2712
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2713
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 2715
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v2, :cond_1e5

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_1d

    goto/16 :goto_1e5

    .line 2720
    :cond_1d
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2721
    new-array v3, v2, [Landroid/app/FragmentState;

    .line 2722
    nop

    .line 2723
    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_29
    const-string v7, " has cleared index: "

    const-string v8, "Failure saving state: active "

    const-string v9, ": "

    const-string v10, "FragmentManager"

    if-ge v5, v2, :cond_fa

    .line 2724
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Fragment;

    .line 2725
    if-eqz v11, :cond_f6

    .line 2726
    iget v6, v11, Landroid/app/Fragment;->mIndex:I

    if-gez v6, :cond_64

    .line 2727
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v11, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2732
    :cond_64
    nop

    .line 2734
    new-instance v6, Landroid/app/FragmentState;

    invoke-direct {v6, v11}, Landroid/app/FragmentState;-><init>(Landroid/app/Fragment;)V

    .line 2735
    aput-object v6, v3, v5

    .line 2737
    iget v7, v11, Landroid/app/Fragment;->mState:I

    if-lez v7, :cond_cd

    iget-object v7, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v7, :cond_cd

    .line 2738
    invoke-virtual {p0, v11}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2740
    iget-object v7, v11, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v7, :cond_d1

    .line 2741
    iget-object v7, v11, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v7, v7, Landroid/app/Fragment;->mIndex:I

    if-gez v7, :cond_ab

    .line 2742
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure saving state: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " has target not in fragment manager: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, v11, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2746
    :cond_ab
    iget-object v7, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v7, :cond_b6

    .line 2747
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2749
    :cond_b6
    iget-object v7, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v8, "android:target_state"

    iget-object v12, v11, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {p0, v7, v8, v12}, Landroid/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 2751
    iget v7, v11, Landroid/app/Fragment;->mTargetRequestCode:I

    if-eqz v7, :cond_d1

    .line 2752
    iget-object v7, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v8, "android:target_req_state"

    iget v12, v11, Landroid/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d1

    .line 2759
    :cond_cd
    iget-object v7, v11, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v7, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2762
    :cond_d1
    :goto_d1
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_f5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saved state of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    :cond_f5
    move v6, v0

    :cond_f6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_29

    .line 2767
    :cond_fa
    if-nez v6, :cond_107

    .line 2768
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_106

    const-string/jumbo v0, "saveAllState: no fragments!"

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    :cond_106
    return-object v1

    .line 2772
    :cond_107
    nop

    .line 2773
    nop

    .line 2776
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2777
    if-lez v0, :cond_17b

    .line 2778
    new-array v2, v0, [I

    .line 2779
    move v5, v4

    :goto_114
    if-ge v5, v0, :cond_17c

    .line 2780
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Fragment;

    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    aput v6, v2, v5

    .line 2781
    aget v6, v2, v5

    if-gez v6, :cond_14f

    .line 2782
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 2783
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v2, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2782
    invoke-direct {p0, v6}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2786
    :cond_14f
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_178

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveAllState: adding fragment #"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 2787
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2786
    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    :cond_178
    add-int/lit8 v5, v5, 0x1

    goto :goto_114

    .line 2777
    :cond_17b
    move-object v2, v1

    .line 2792
    :cond_17c
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c8

    .line 2793
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2794
    if-lez v0, :cond_1c8

    .line 2795
    new-array v1, v0, [Landroid/app/BackStackState;

    .line 2796
    nop

    :goto_18b
    if-ge v4, v0, :cond_1c8

    .line 2797
    new-instance v5, Landroid/app/BackStackState;

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/BackStackRecord;

    invoke-direct {v5, p0, v6}, Landroid/app/BackStackState;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V

    aput-object v5, v1, v4

    .line 2798
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_1c5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveAllState: adding back stack #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2799
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2798
    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    :cond_1c5
    add-int/lit8 v4, v4, 0x1

    goto :goto_18b

    .line 2804
    :cond_1c8
    new-instance v0, Landroid/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/app/FragmentManagerState;-><init>()V

    .line 2805
    iput-object v3, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    .line 2806
    iput-object v2, v0, Landroid/app/FragmentManagerState;->mAdded:[I

    .line 2807
    iput-object v1, v0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    .line 2808
    iget v1, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v1, v0, Landroid/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 2809
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    if-eqz v1, :cond_1e1

    .line 2810
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    iget v1, v1, Landroid/app/Fragment;->mIndex:I

    iput v1, v0, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 2812
    :cond_1e1
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->saveNonConfig()V

    .line 2813
    return-object v0

    .line 2716
    :cond_1e5
    :goto_1e5
    return-object v1
.end method

.method greylist-max-o saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;
    .registers 5

    .line 2672
    nop

    .line 2674
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v0, :cond_c

    .line 2675
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2677
    :cond_c
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 2678
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2679
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 2680
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2681
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    move-object v1, v0

    .line 2684
    :cond_25
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 2685
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 2687
    :cond_2c
    iget-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_3f

    .line 2688
    if-nez v1, :cond_38

    .line 2689
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 2691
    :cond_38
    const-string v0, "android:view_state"

    iget-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2694
    :cond_3f
    iget-boolean v0, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_52

    .line 2695
    if-nez v1, :cond_4b

    .line 2696
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 2699
    :cond_4b
    const-string v0, "android:user_visible_hint"

    iget-boolean p1, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2702
    :cond_52
    return-object v1
.end method

.method public whitelist saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;
    .registers 5

    .line 963
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_25

    .line 964
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 967
    :cond_25
    iget v0, p1, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x0

    if-lez v0, :cond_36

    .line 968
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object p1

    .line 969
    if-eqz p1, :cond_35

    new-instance v1, Landroid/app/Fragment$SavedState;

    invoke-direct {v1, p1}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    :cond_35
    return-object v1

    .line 971
    :cond_36
    return-object v1
.end method

.method greylist-max-o saveFragmentViewState(Landroid/app/Fragment;)V
    .registers 4

    .line 2656
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 2657
    return-void

    .line 2659
    :cond_5
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_11

    .line 2660
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_16

    .line 2662
    :cond_11
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2664
    :goto_16
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2665
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 2666
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2667
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 2669
    :cond_2c
    return-void
.end method

.method greylist-max-o saveNonConfig()V
    .registers 9

    .line 2611
    nop

    .line 2612
    nop

    .line 2613
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_84

    .line 2614
    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    move-object v4, v3

    :goto_b
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_86

    .line 2615
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 2616
    if-eqz v5, :cond_81

    .line 2617
    iget-boolean v6, v5, Landroid/app/Fragment;->mRetainInstance:Z

    if-eqz v6, :cond_54

    .line 2618
    if-nez v3, :cond_28

    .line 2619
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2621
    :cond_28
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2622
    iget-object v6, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v6, :cond_34

    iget-object v6, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    goto :goto_35

    :cond_34
    const/4 v6, -0x1

    :goto_35
    iput v6, v5, Landroid/app/Fragment;->mTargetIndex:I

    .line 2623
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_54

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "retainNonConfig: keeping retained "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FragmentManager"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    :cond_54
    iget-object v6, v5, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v6, :cond_62

    .line 2627
    iget-object v6, v5, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v6}, Landroid/app/FragmentManagerImpl;->saveNonConfig()V

    .line 2628
    iget-object v5, v5, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v5, v5, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    goto :goto_64

    .line 2632
    :cond_62
    iget-object v5, v5, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 2635
    :goto_64
    if-nez v4, :cond_7c

    if-eqz v5, :cond_7c

    .line 2636
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2637
    move v6, v0

    :goto_74
    if-ge v6, v2, :cond_7c

    .line 2638
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2637
    add-int/lit8 v6, v6, 0x1

    goto :goto_74

    .line 2642
    :cond_7c
    if-eqz v4, :cond_81

    .line 2643
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2614
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2613
    :cond_84
    move-object v3, v1

    move-object v4, v3

    .line 2648
    :cond_86
    if-nez v3, :cond_8d

    if-nez v4, :cond_8d

    .line 2649
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    goto :goto_94

    .line 2651
    :cond_8d
    new-instance v0, Landroid/app/FragmentManagerNonConfig;

    invoke-direct {v0, v3, v4}, Landroid/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 2653
    :goto_94
    return-void
.end method

.method public greylist-max-o setBackStackIndex(ILandroid/app/BackStackRecord;)V
    .registers 7

    .line 1963
    monitor-enter p0

    .line 1964
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1967
    :cond_c
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1968
    if-ge p1, v0, :cond_40

    .line 1969
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :cond_3a
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    .line 1972
    :cond_40
    :goto_40
    if-ge v0, p1, :cond_7b

    .line 1973
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1974
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_53

    .line 1975
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1977
    :cond_53
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6f

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_6f
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1979
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 1981
    :cond_7b
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_a1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :cond_a1
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1984
    :goto_a6
    monitor-exit p0

    .line 1985
    return-void

    .line 1984
    :catchall_a8
    move-exception p1

    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_a8

    throw p1
.end method

.method public greylist-max-o setPrimaryNavigationFragment(Landroid/app/Fragment;)V
    .registers 5

    .line 3227
    if-eqz p1, :cond_3a

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_17

    iget-object v0, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_3a

    .line 3228
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-ne v0, p0, :cond_17

    goto :goto_3a

    .line 3229
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not an active fragment of FragmentManager "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3232
    :cond_3a
    :goto_3a
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    .line 3233
    return-void
.end method

.method public greylist-max-o showFragment(Landroid/app/Fragment;)V
    .registers 4

    .line 1780
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :cond_1d
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2a

    .line 1782
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1785
    iget-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    .line 1787
    :cond_2a
    return-void
.end method

.method greylist-max-o startPendingDeferredFragments()V
    .registers 3

    .line 1674
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    return-void

    .line 1676
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1677
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1678
    if-eqz v1, :cond_1b

    .line 1679
    invoke-virtual {p0, v1}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    .line 1676
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1682
    :cond_1e
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 982
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v1, :cond_26

    .line 986
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_2b

    .line 988
    :cond_26
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 990
    :goto_2b
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist unregisterFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .registers 6

    .line 3245
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 3246
    :try_start_3
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_21

    .line 3247
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v3, p1, :cond_1e

    .line 3248
    iget-object p1, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 3249
    goto :goto_21

    .line 3246
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3252
    :cond_21
    :goto_21
    monitor-exit v0

    .line 3253
    return-void

    .line 3252
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method
