.class public Landroid/content/UndoManager;
.super Ljava/lang/Object;
.source "UndoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/UndoManager$UndoState;
    }
.end annotation


# static fields
.field public static final greylist-max-o MERGE_MODE_ANY:I = 0x2

.field public static final greylist-max-o MERGE_MODE_NONE:I = 0x0

.field public static final greylist-max-o MERGE_MODE_UNIQUE:I = 0x1


# instance fields
.field private greylist-max-o mCommitId:I

.field private greylist-max-o mHistorySize:I

.field private greylist-max-o mInUndo:Z

.field private greylist-max-o mMerged:Z

.field private greylist-max-o mNextSavedIdx:I

.field private final greylist-max-o mOwners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/UndoOwner;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mRedos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/UndoManager$UndoState;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStateOwners:[Landroid/content/UndoOwner;

.field private greylist-max-o mStateSeq:I

.field private final greylist-max-o mUndos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/UndoManager$UndoState;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mUpdateCount:I

.field private greylist-max-o mWorking:Landroid/content/UndoManager$UndoState;


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    .line 63
    const/16 v0, 0x14

    iput v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    .line 65
    iput v1, p0, Landroid/content/UndoManager;->mCommitId:I

    .line 91
    return-void
.end method

.method private greylist-max-o createWorkingState()V
    .registers 4

    .line 437
    new-instance v0, Landroid/content/UndoManager$UndoState;

    iget v1, p0, Landroid/content/UndoManager;->mCommitId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/content/UndoManager;->mCommitId:I

    invoke-direct {v0, p0, v1}, Landroid/content/UndoManager$UndoState;-><init>(Landroid/content/UndoManager;I)V

    iput-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    .line 438
    iget v0, p0, Landroid/content/UndoManager;->mCommitId:I

    if-gez v0, :cond_14

    .line 439
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/UndoManager;->mCommitId:I

    .line 441
    :cond_14
    return-void
.end method

.method private greylist-max-o pushWorkingState()V
    .registers 5

    .line 599
    iget-object v0, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 601
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    .line 602
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    const/4 v1, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    .line 604
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->commit()V

    .line 605
    const/4 v1, 0x2

    if-lt v0, v1, :cond_37

    .line 609
    iget-object v1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->makeExecuted()V

    goto :goto_37

    .line 612
    :cond_32
    iget-object v1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1}, Landroid/content/UndoManager$UndoState;->destroy()V

    .line 614
    :cond_37
    :goto_37
    iput-object v2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    .line 616
    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-ltz v1, :cond_47

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-le v0, v1, :cond_47

    .line 617
    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 619
    :cond_47
    return-void
.end method


# virtual methods
.method public greylist-max-r addOperation(Landroid/content/UndoOperation;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UndoOperation<",
            "*>;I)V"
        }
    .end annotation

    .line 561
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v0, :cond_57

    .line 564
    invoke-virtual {p1}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v0

    .line 565
    iget-object v0, v0, Landroid/content/UndoOwner;->mManager:Landroid/content/UndoManager;

    if-ne v0, p0, :cond_4f

    .line 569
    if-eqz p2, :cond_49

    iget-boolean v0, p0, Landroid/content/UndoManager;->mMerged:Z

    if-nez v0, :cond_49

    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v0

    if-nez v0, :cond_49

    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_49

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2a

    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->hasMultipleOwners()Z

    move-result p2

    if-nez p2, :cond_49

    .line 572
    :cond_2a
    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->canMerge()Z

    move-result p2

    if-eqz p2, :cond_49

    invoke-virtual {p1}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 573
    iget-object p2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {p2}, Landroid/content/UndoManager$UndoState;->destroy()V

    .line 574
    iput-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    .line 575
    iget-object p2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 576
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/content/UndoManager;->mMerged:Z

    .line 579
    :cond_49
    iget-object p2, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {p2, p1}, Landroid/content/UndoManager$UndoState;->addOperation(Landroid/content/UndoOperation;)V

    .line 580
    return-void

    .line 566
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given operation\'s owner is not in this undo manager."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 562
    :cond_57
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must be called during an update"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-r beginUpdate(Ljava/lang/CharSequence;)V
    .registers 3

    .line 423
    iget-boolean v0, p0, Landroid/content/UndoManager;->mInUndo:Z

    if-nez v0, :cond_1c

    .line 426
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-gtz v0, :cond_10

    .line 427
    invoke-direct {p0}, Landroid/content/UndoManager;->createWorkingState()V

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/UndoManager;->mMerged:Z

    .line 429
    iput v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    .line 432
    :cond_10
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->updateLabel(Ljava/lang/CharSequence;)V

    .line 433
    iget p1, p0, Landroid/content/UndoManager;->mUpdateCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/content/UndoManager;->mUpdateCount:I

    .line 434
    return-void

    .line 424
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t being update while performing undo/redo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-r commitState(Landroid/content/UndoOwner;)I
    .registers 4

    .line 637
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 638
    if-eqz p1, :cond_17

    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 639
    :cond_17
    iget-object p1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {p1, v1}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    .line 640
    iget-object p1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {p1}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result p1

    .line 641
    invoke-direct {p0}, Landroid/content/UndoManager;->pushWorkingState()V

    .line 642
    invoke-direct {p0}, Landroid/content/UndoManager;->createWorkingState()V

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/UndoManager;->mMerged:Z

    .line 644
    return p1

    .line 647
    :cond_2c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v0

    .line 648
    if-eqz v0, :cond_43

    if-eqz p1, :cond_3b

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 649
    :cond_3b
    invoke-virtual {v0, v1}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    .line 650
    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result p1

    return p1

    .line 653
    :cond_43
    const/4 p1, -0x1

    return p1
.end method

.method public greylist-max-r countRedos([Landroid/content/UndoOwner;)I
    .registers 5

    .line 383
    if-nez p1, :cond_9

    .line 384
    iget-object p1, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    .line 387
    :cond_9
    nop

    .line 388
    const/4 v0, 0x0

    move v1, v0

    .line 389
    :goto_c
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, v0}, Landroid/content/UndoManager;->findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    if-ltz v0, :cond_19

    .line 390
    add-int/lit8 v1, v1, 0x1

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 393
    :cond_19
    return v1
.end method

.method public greylist-max-r countUndos([Landroid/content/UndoOwner;)I
    .registers 5

    .line 363
    if-nez p1, :cond_9

    .line 364
    iget-object p1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    .line 367
    :cond_9
    nop

    .line 368
    const/4 v0, 0x0

    move v1, v0

    .line 369
    :goto_c
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, v0}, Landroid/content/UndoManager;->findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    if-ltz v0, :cond_19

    .line 370
    add-int/lit8 v1, v1, 0x1

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 373
    :cond_19
    return v1
.end method

.method public greylist-max-r endUpdate()V
    .registers 3

    .line 588
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v0, :cond_12

    .line 591
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    .line 593
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-nez v0, :cond_11

    .line 594
    invoke-direct {p0}, Landroid/content/UndoManager;->pushWorkingState()V

    .line 596
    :cond_11
    return-void

    .line 589
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called during an update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o findNextState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/UndoManager$UndoState;",
            ">;[",
            "Landroid/content/UndoOwner;",
            "I)I"
        }
    .end annotation

    .line 734
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 736
    if-gez p3, :cond_7

    .line 737
    const/4 p3, 0x0

    .line 739
    :cond_7
    const/4 v1, -0x1

    if-lt p3, v0, :cond_b

    .line 740
    return v1

    .line 742
    :cond_b
    if-nez p2, :cond_e

    .line 743
    return p3

    .line 746
    :cond_e
    :goto_e
    if-ge p3, v0, :cond_20

    .line 747
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    .line 748
    invoke-virtual {p0, v2, p2}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 749
    return p3

    .line 751
    :cond_1d
    add-int/lit8 p3, p3, 0x1

    .line 752
    goto :goto_e

    .line 754
    :cond_20
    return v1
.end method

.method greylist-max-o findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/UndoManager$UndoState;",
            ">;[",
            "Landroid/content/UndoOwner;",
            "I)I"
        }
    .end annotation

    .line 710
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 712
    const/4 v1, -0x1

    if-ne p3, v1, :cond_9

    .line 713
    add-int/lit8 p3, v0, -0x1

    .line 715
    :cond_9
    if-lt p3, v0, :cond_c

    .line 716
    return v1

    .line 718
    :cond_c
    if-nez p2, :cond_f

    .line 719
    return p3

    .line 722
    :cond_f
    :goto_f
    if-ltz p3, :cond_21

    .line 723
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UndoManager$UndoState;

    .line 724
    invoke-virtual {p0, v0, p2}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 725
    return p3

    .line 727
    :cond_1e
    add-int/lit8 p3, p3, -0x1

    .line 728
    goto :goto_f

    .line 730
    :cond_21
    return v1
.end method

.method public greylist-max-r forgetRedos([Landroid/content/UndoOwner;I)I
    .registers 7

    .line 336
    if-gez p2, :cond_8

    .line 337
    iget-object p2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 340
    :cond_8
    nop

    .line 341
    const/4 v0, 0x0

    move v1, v0

    .line 342
    :goto_b
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    if-ge v1, p2, :cond_33

    .line 343
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    .line 344
    if-lez p2, :cond_30

    invoke-virtual {p0, v2, p1}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 345
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    .line 346
    iget-object v2, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 349
    :cond_30
    add-int/lit8 v0, v0, 0x1

    .line 351
    :goto_32
    goto :goto_b

    .line 353
    :cond_33
    return v1
.end method

.method public greylist-max-r forgetUndos([Landroid/content/UndoOwner;I)I
    .registers 7

    .line 314
    if-gez p2, :cond_8

    .line 315
    iget-object p2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 318
    :cond_8
    nop

    .line 319
    const/4 v0, 0x0

    move v1, v0

    .line 320
    :goto_b
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    if-ge v1, p2, :cond_33

    .line 321
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoManager$UndoState;

    .line 322
    if-lez p2, :cond_30

    invoke-virtual {p0, v2, p1}, Landroid/content/UndoManager;->matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 323
    invoke-virtual {v2}, Landroid/content/UndoManager$UndoState;->destroy()V

    .line 324
    iget-object v2, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 327
    :cond_30
    add-int/lit8 v0, v0, 0x1

    .line 329
    :goto_32
    goto :goto_b

    .line 331
    :cond_33
    return v1
.end method

.method public greylist-max-o getHistorySize()I
    .registers 2

    .line 228
    iget v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    return v0
.end method

.method public greylist-max-o getLastOperation(I)Landroid/content/UndoOperation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/UndoOperation<",
            "*>;"
        }
    .end annotation

    .line 501
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getLastOperation(Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UndoOwner;",
            "I)",
            "Landroid/content/UndoOperation<",
            "*>;"
        }
    .end annotation

    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-r getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/UndoOperation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/UndoOwner;",
            "I)TT;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v0, :cond_4b

    .line 535
    if-eqz p3, :cond_44

    iget-boolean v0, p0, Landroid/content/UndoManager;->mMerged:Z

    if-nez v0, :cond_44

    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->hasData()Z

    move-result v0

    if-nez v0, :cond_44

    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v0

    .line 538
    if-eqz v0, :cond_44

    const/4 v1, 0x2

    if-eq p3, v1, :cond_22

    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->hasMultipleOwners()Z

    move-result p3

    if-nez p3, :cond_44

    .line 539
    :cond_22
    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->canMerge()Z

    move-result p3

    if-eqz p3, :cond_44

    invoke-virtual {v0, p1, p2}, Landroid/content/UndoManager$UndoState;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;)Landroid/content/UndoOperation;

    move-result-object p3

    if-eqz p3, :cond_44

    .line 540
    invoke-virtual {p3}, Landroid/content/UndoOperation;->allowMerge()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 541
    iget-object p1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {p1}, Landroid/content/UndoManager$UndoState;->destroy()V

    .line 542
    iput-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    .line 543
    iget-object p1, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 544
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/content/UndoManager;->mMerged:Z

    .line 545
    return-object p3

    .line 550
    :cond_44
    iget-object p3, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {p3, p1, p2}, Landroid/content/UndoManager$UndoState;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;)Landroid/content/UndoOperation;

    move-result-object p1

    return-object p1

    .line 533
    :cond_4b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must be called during an update"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-r getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;
    .registers 6

    .line 95
    if-eqz p1, :cond_5e

    .line 98
    if-eqz p2, :cond_56

    .line 101
    iget-object v0, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UndoOwner;

    .line 102
    if-eqz v0, :cond_49

    .line 103
    iget-object p1, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    if-eq p1, p2, :cond_48

    .line 104
    iget-object p1, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    if-nez p1, :cond_19

    .line 108
    iput-object p2, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    goto :goto_48

    .line 105
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists with data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but giving different data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_48
    :goto_48
    return-object v0

    .line 113
    :cond_49
    new-instance v0, Landroid/content/UndoOwner;

    invoke-direct {v0, p1, p0}, Landroid/content/UndoOwner;-><init>(Ljava/lang/String;Landroid/content/UndoManager;)V

    .line 114
    iput-object p2, v0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    .line 115
    iget-object p2, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-object v0

    .line 99
    :cond_56
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "data can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_5e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "tag can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o getRedoLabel([Landroid/content/UndoOwner;)Ljava/lang/CharSequence;
    .registers 2

    .line 412
    invoke-virtual {p0, p1}, Landroid/content/UndoManager;->getTopRedo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object p1

    .line 413
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/UndoManager$UndoState;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method greylist-max-o getTopRedo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;
    .registers 5

    .line 690
    iget-object v0, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 691
    return-object v1

    .line 693
    :cond_a
    iget-object v0, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-virtual {p0, v0, p1, v2}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result p1

    .line 694
    if-ltz p1, :cond_1c

    iget-object v0, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    :cond_1c
    return-object v1
.end method

.method greylist-max-o getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;
    .registers 5

    .line 682
    iget-object v0, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 683
    return-object v1

    .line 685
    :cond_a
    iget-object v0, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-virtual {p0, v0, p1, v2}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result p1

    .line 686
    if-ltz p1, :cond_1c

    iget-object v0, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    :cond_1c
    return-object v1
.end method

.method public greylist-max-o getUndoLabel([Landroid/content/UndoOwner;)Ljava/lang/CharSequence;
    .registers 2

    .line 402
    invoke-virtual {p0, p1}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object p1

    .line 403
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/UndoManager$UndoState;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public greylist-max-o getUpdateNestingLevel()I
    .registers 2

    .line 478
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    return v0
.end method

.method public greylist-max-o hasOperation(Landroid/content/UndoOwner;)Z
    .registers 3

    .line 490
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v0, :cond_b

    .line 493
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result p1

    return p1

    .line 491
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called during an update"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-r isInUndo()Z
    .registers 2

    .line 309
    iget-boolean v0, p0, Landroid/content/UndoManager;->mInUndo:Z

    return v0
.end method

.method public greylist-max-o isInUpdate()Z
    .registers 2

    .line 447
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method greylist-max-o matchOwners(Landroid/content/UndoManager$UndoState;[Landroid/content/UndoOwner;)Z
    .registers 7

    .line 698
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 699
    return v0

    .line 701
    :cond_4
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    array-length v3, p2

    if-ge v2, v3, :cond_15

    .line 702
    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Landroid/content/UndoManager$UndoState;->matchOwner(Landroid/content/UndoOwner;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 703
    return v0

    .line 701
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 706
    :cond_15
    return v1
.end method

.method public greylist-max-r redo([Landroid/content/UndoOwner;I)I
    .registers 8

    .line 280
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v0, :cond_2e

    .line 284
    nop

    .line 285
    nop

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/UndoManager;->mInUndo:Z

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    .line 289
    :goto_c
    if-lez p2, :cond_2b

    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, p1, v0}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    if-ltz v0, :cond_2b

    .line 290
    iget-object v3, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoManager$UndoState;

    .line 291
    invoke-virtual {v3}, Landroid/content/UndoManager$UndoState;->redo()V

    .line 292
    iget-object v4, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 p2, p2, -0x1

    .line 294
    add-int/lit8 v2, v2, 0x1

    .line 295
    goto :goto_c

    .line 297
    :cond_2b
    iput-boolean v1, p0, Landroid/content/UndoManager;->mInUndo:Z

    .line 299
    return v2

    .line 281
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t be called during an update"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist-max-o removeOwner(Landroid/content/UndoOwner;)V
    .registers 2

    .line 124
    return-void
.end method

.method public greylist-max-r restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 7

    .line 181
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-gtz v0, :cond_36

    .line 184
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 185
    invoke-virtual {p0, v0, v1}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Landroid/content/UndoOwner;

    iput-object v0, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    .line 190
    :goto_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    .line 191
    new-instance v1, Landroid/content/UndoManager$UndoState;

    invoke-direct {v1, p0, p1, p2}, Landroid/content/UndoManager$UndoState;-><init>(Landroid/content/UndoManager;Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 192
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2f

    .line 193
    iget-object v0, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_34

    .line 195
    :cond_2f
    iget-object v0, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 197
    :goto_34
    goto :goto_1a

    .line 198
    :cond_35
    return-void

    .line 182
    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t save state while updating"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist-max-o restoreOwner(Landroid/os/Parcel;)Landroid/content/UndoOwner;
    .registers 5

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    iget-object v1, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    aget-object v1, v1, v0

    .line 203
    if-nez v1, :cond_23

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 206
    new-instance v2, Landroid/content/UndoOwner;

    invoke-direct {v2, v1, p0}, Landroid/content/UndoOwner;-><init>(Ljava/lang/String;Landroid/content/UndoManager;)V

    .line 207
    iput p1, v2, Landroid/content/UndoOwner;->mOpCount:I

    .line 208
    iget-object p1, p0, Landroid/content/UndoManager;->mStateOwners:[Landroid/content/UndoOwner;

    aput-object v2, p1, v0

    .line 209
    iget-object p1, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 211
    :cond_23
    return-object v1
.end method

.method public greylist-max-r saveInstanceState(Landroid/os/Parcel;)V
    .registers 6

    .line 132
    iget v0, p0, Landroid/content/UndoManager;->mUpdateCount:I

    if-gtz v0, :cond_58

    .line 135
    iget v0, p0, Landroid/content/UndoManager;->mStateSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/content/UndoManager;->mStateSeq:I

    .line 136
    iget v0, p0, Landroid/content/UndoManager;->mStateSeq:I

    const/4 v2, 0x0

    if-gtz v0, :cond_11

    .line 137
    iput v2, p0, Landroid/content/UndoManager;->mStateSeq:I

    .line 139
    :cond_11
    iput v2, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    .line 140
    iget v0, p0, Landroid/content/UndoManager;->mHistorySize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Landroid/content/UndoManager;->mOwners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 145
    :goto_27
    if-lez v0, :cond_3a

    .line 146
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    add-int/lit8 v0, v0, -0x1

    .line 148
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v3, p1}, Landroid/content/UndoManager$UndoState;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_27

    .line 150
    :cond_3a
    iget-object v0, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 151
    :goto_40
    if-lez v0, :cond_54

    .line 152
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    add-int/lit8 v0, v0, -0x1

    .line 154
    iget-object v1, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoManager$UndoState;

    invoke-virtual {v1, p1}, Landroid/content/UndoManager$UndoState;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_40

    .line 156
    :cond_54
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void

    .line 133
    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t save state while updating"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist-max-o saveOwner(Landroid/content/UndoOwner;Landroid/os/Parcel;)V
    .registers 5

    .line 160
    iget v0, p1, Landroid/content/UndoOwner;->mStateSeq:I

    iget v1, p0, Landroid/content/UndoManager;->mStateSeq:I

    if-ne v0, v1, :cond_c

    .line 161
    iget p1, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 163
    :cond_c
    iget v0, p0, Landroid/content/UndoManager;->mStateSeq:I

    iput v0, p1, Landroid/content/UndoOwner;->mStateSeq:I

    .line 164
    iget v0, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    iput v0, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    .line 165
    iget v0, p1, Landroid/content/UndoOwner;->mSavedIdx:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p1, Landroid/content/UndoOwner;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget p1, p1, Landroid/content/UndoOwner;->mOpCount:I

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget p1, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/content/UndoManager;->mNextSavedIdx:I

    .line 170
    :goto_29
    return-void
.end method

.method public greylist-max-o setHistorySize(I)V
    .registers 4

    .line 218
    iput p1, p0, Landroid/content/UndoManager;->mHistorySize:I

    .line 219
    iget p1, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-ltz p1, :cond_19

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v0

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    if-le v0, v1, :cond_19

    .line 220
    invoke-virtual {p0, p1}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v0

    iget v1, p0, Landroid/content/UndoManager;->mHistorySize:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 222
    :cond_19
    return-void
.end method

.method public greylist-max-r setUndoLabel(Ljava/lang/CharSequence;)V
    .registers 3

    .line 456
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v0, :cond_a

    .line 459
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->setLabel(Ljava/lang/CharSequence;)V

    .line 460
    return-void

    .line 457
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called during an update"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o suggestUndoLabel(Ljava/lang/CharSequence;)V
    .registers 3

    .line 467
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-eqz v0, :cond_a

    .line 470
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0, p1}, Landroid/content/UndoManager$UndoState;->updateLabel(Ljava/lang/CharSequence;)V

    .line 471
    return-void

    .line 468
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called during an update"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o uncommitState(ILandroid/content/UndoOwner;)Z
    .registers 5

    .line 666
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result v0

    if-ne v0, p1, :cond_1e

    .line 667
    if-eqz p2, :cond_17

    iget-object p1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {p1, p2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 668
    :cond_17
    iget-object p1, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    invoke-virtual {p1, v1}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    move-result p1

    return p1

    .line 671
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_38

    if-eqz p2, :cond_2d

    invoke-virtual {v0, p2}, Landroid/content/UndoManager$UndoState;->hasOperation(Landroid/content/UndoOwner;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 673
    :cond_2d
    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->getCommitId()I

    move-result p2

    if-ne p2, p1, :cond_38

    .line 674
    invoke-virtual {v0, v1}, Landroid/content/UndoManager$UndoState;->setCanMerge(Z)Z

    move-result p1

    return p1

    .line 678
    :cond_38
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-r undo([Landroid/content/UndoOwner;I)I
    .registers 8

    .line 242
    iget-object v0, p0, Landroid/content/UndoManager;->mWorking:Landroid/content/UndoManager$UndoState;

    if-nez v0, :cond_38

    .line 246
    nop

    .line 247
    nop

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/UndoManager;->mInUndo:Z

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/UndoManager;->getTopUndo([Landroid/content/UndoOwner;)Landroid/content/UndoManager$UndoState;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_13

    .line 253
    invoke-virtual {v0}, Landroid/content/UndoManager$UndoState;->makeExecuted()V

    .line 256
    :cond_13
    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_16
    if-lez p2, :cond_35

    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, p1, v0}, Landroid/content/UndoManager;->findPrevState(Ljava/util/ArrayList;[Landroid/content/UndoOwner;I)I

    move-result v0

    if-ltz v0, :cond_35

    .line 257
    iget-object v3, p0, Landroid/content/UndoManager;->mUndos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoManager$UndoState;

    .line 258
    invoke-virtual {v3}, Landroid/content/UndoManager$UndoState;->undo()V

    .line 259
    iget-object v4, p0, Landroid/content/UndoManager;->mRedos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 p2, p2, -0x1

    .line 261
    add-int/lit8 v2, v2, 0x1

    .line 262
    goto :goto_16

    .line 264
    :cond_35
    iput-boolean v1, p0, Landroid/content/UndoManager;->mInUndo:Z

    .line 266
    return v2

    .line 243
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t be called during an update"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
