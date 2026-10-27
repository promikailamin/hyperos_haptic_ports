.class public Lcom/android/server/wm/ActivitySnapshotController;
.super Lcom/android/server/wm/AbsAppSnapshotController;
.source "ActivitySnapshotController.java"


# instance fields
.field public final mOnBackPressedActivities:Landroid/util/ArraySet;

.field final mPendingDeleteActivity:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingLoadActivity:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemoveActivity:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field public final mSavedFilesInOrder:Ljava/util/ArrayList;

.field public final mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

.field public final mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

.field public final mTmpBelowActivities:Ljava/util/ArrayList;

.field public final mTmpTransitionParticipants:Ljava/util/ArrayList;

.field public final mUserSavedFiles:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$UFtlSz8H01SEaT5oyvUlsyj6zTk(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskFragment;)Z
    .registers 3

    .line 535
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-le p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$skAS2XdAF4jBY4e2YOQOtEL1n6A(Lcom/android/server/wm/ActivitySnapshotController;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->lambda$adjustSavedFileOrder$2(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vu49lpFwkreDTHjGOPW9Eij0xec(Lcom/android/server/wm/ActivitySnapshotController;ZLjava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivitySnapshotController;->lambda$getActivityBelow$1(ZLjava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSnapshotLoader(Lcom/android/server/wm/ActivitySnapshotController;)Lcom/android/server/wm/AppSnapshotLoader;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V
    .registers 5

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    .line 72
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    .line 78
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    .line 100
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111014d

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_52

    .line 104
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_52

    const/4 v0, 0x1

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    .line 105
    :goto_53
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->setSnapshotEnabled(Z)V

    .line 106
    iput-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 108
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    .line 111
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v1

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Z)V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 112
    new-instance p2, Lcom/android/server/wm/AppSnapshotLoader;

    invoke-direct {p2, p1}, Lcom/android/server/wm/AppSnapshotLoader;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    iput-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

    .line 113
    new-instance p1, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-direct {p1}, Lcom/android/server/wm/ActivitySnapshotCache;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->initialize(Lcom/android/server/wm/SnapshotCache;)V

    return-void
.end method

.method public static createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;
    .registers 9

    .line 132
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11102ae

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 134
    new-instance v1, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "activity_snapshots"

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;Ljava/lang/String;ZFZ)V

    return-object v1
.end method

.method public static getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I
    .registers 1

    .line 412
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z
    .registers 5

    .line 557
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_1b

    .line 558
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    if-eq p0, v2, :cond_1a

    .line 559
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1a
    :goto_1a
    return v1

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;ZLjava/lang/String;)V
    .registers 5

    .line 483
    iget-object p4, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/wm/ActivitySnapshotController;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;ZLjava/util/ArrayList;)V

    .line 484
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_d
    if-ltz p1, :cond_1d

    .line 485
    iget-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_d

    .line 491
    :cond_1d
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public addOnBackPressedActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 185
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 188
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUserSavedFile(ILandroid/window/TaskSnapshot;[I)V
    .registers 9

    const/4 v0, 0x0

    .line 690
    aget v1, p3, v0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(II)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 692
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Duplicate request for recording activity snapshot "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 696
    :cond_20
    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    :goto_23
    if-ltz v1, :cond_2b

    .line 697
    aget v2, p3, v1

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    .line 699
    :cond_2b
    new-instance v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    invoke-direct {v1, v0, p1}, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;-><init>(II)V

    .line 700
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    move-result-object v2

    .line 701
    array-length v3, p3

    add-int/lit8 v3, v3, -0x1

    :goto_37
    if-ltz v3, :cond_41

    .line 702
    aget v4, p3, v3

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_37

    .line 704
    :cond_41
    iget-object v2, v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v2, p3}, Landroid/util/IntArray;->addAll([I)V

    .line 705
    iget-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    .line 708
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x28

    if-le p1, p2, :cond_5d

    .line 709
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->purgeSavedFile()V

    :cond_5d
    return-void
.end method

.method public final adjustSavedFileOrder(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 567
    new-instance v0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivitySnapshotController;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public beginSnapshotProcess()V
    .registers 2

    .line 202
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 205
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->resetTmpFields()V

    return-void
.end method

.method public final cleanUpUserFiles(I)V
    .registers 6

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 163
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$1;

    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/wm/ActivitySnapshotController$1;-><init>(Lcom/android/server/wm/ActivitySnapshotController;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SnapshotPersistQueue;->sendToQueueLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V

    .line 181
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public clearOnBackPressedActivities()V
    .registers 2

    .line 192
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 195
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;
    .registers 2

    .line 118
    new-instance p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p0}, Lcom/android/server/wm/ActivitySnapshotController;->createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    .line 738
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/AbsAppSnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 741
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2b
    if-ltz v1, :cond_94

    .line 742
    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "UserSavedFile userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 745
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_5d
    if-ltz v4, :cond_6b

    .line 746
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_5d

    .line 748
    :cond_6b
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_71
    if-ltz v2, :cond_91

    .line 749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "SavedFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_71

    :cond_91
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    :cond_94
    return-void
.end method

.method public endSnapshotProcess()V
    .registers 3

    .line 212
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 215
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_1f

    .line 216
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 218
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->postProcess()V

    return-void
.end method

.method public findAppTokenForSnapshot(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 622
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canCaptureSnapshot()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    :cond_b
    return-object p0
.end method

.method public bridge synthetic findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 53
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public findSavedFile(II)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;
    .registers 3

    .line 652
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    move-result-object p0

    .line 653
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    return-object p0
.end method

.method public findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;
    .registers 3

    .line 647
    invoke-static {p1}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 648
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(II)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object p0

    return-object p0
.end method

.method public final getActivityBelow(Lcom/android/server/wm/ActivityRecord;ZLjava/util/ArrayList;)V
    .registers 9

    .line 496
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_70

    .line 500
    :cond_8
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_70

    .line 504
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    .line 505
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eq v2, v3, :cond_65

    .line 506
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_65

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_65

    .line 518
    :cond_26
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskFragment;->isAdjacentTo(Lcom/android/server/wm/TaskFragment;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 523
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/wm/ActivitySnapshotController;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;ZLjava/util/ArrayList;)V

    return-void

    .line 530
    :cond_30
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 531
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_43

    .line 532
    :cond_3d
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 533
    :goto_43
    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/Task;I)V

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_4f

    goto :goto_70

    :cond_4f
    if-eqz p2, :cond_59

    .line 543
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/android/server/wm/ActivitySnapshotController;->isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 544
    :cond_59
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_5c
    new-instance p1, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivitySnapshotController;ZLjava/util/ArrayList;)V

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    return-void

    :cond_65
    :goto_65
    if-eqz p2, :cond_71

    .line 512
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Lcom/android/server/wm/ActivitySnapshotController;->isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_70

    goto :goto_71

    :cond_70
    :goto_70
    return-void

    .line 513
    :cond_71
    :goto_71
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .registers 2

    .line 633
    sget-object p0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSnapshot([Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;
    .registers 8

    .line 146
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    const/4 v0, 0x0

    .line 149
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 150
    iget-object v3, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    array-length v4, p1

    if-eq v3, v4, :cond_18

    goto :goto_3f

    .line 154
    :cond_18
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    move v4, v0

    :goto_1c
    if-ltz v3, :cond_28

    .line 155
    aget-object v5, p1, v3

    invoke-static {v5}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v5

    xor-int/2addr v4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 157
    :cond_28
    iget p1, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    if-ne p1, v4, :cond_3f

    .line 158
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast p0, Lcom/android/server/wm/ActivitySnapshotCache;

    iget-object p1, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->getSnapshotInner(Ljava/lang/Integer;)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0

    :cond_3f
    :goto_3f
    return-object v1
.end method

.method public getTaskDescription(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityManager$TaskDescription;
    .registers 2

    .line 610
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method public bridge synthetic getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;
    .registers 2

    .line 53
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getTaskDescription(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object p0

    return-object p0
.end method

.method public getTopActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 0
    return-object p1
.end method

.method public bridge synthetic getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 53
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getTopActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getUserFiles(I)Landroid/util/SparseArray;
    .registers 4

    .line 638
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 641
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->cleanUpUserFiles(I)V

    .line 643
    :cond_15
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0
.end method

.method public final handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 436
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 439
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    const-string v2, "load-snapshot"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;ZLjava/lang/String;)V

    return-void

    .line 451
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    const-string v2, "remove-snapshot"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;ZLjava/lang/String;)V

    return-void
.end method

.method public final handleTaskTransition(Lcom/android/server/wm/Task;)V
    .registers 6

    .line 456
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_d

    .line 459
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_e

    :goto_d
    return-void

    .line 463
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    .line 466
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    const-string v3, "load-snapshot"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;ZLjava/lang/String;)V

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->adjustSavedFileOrder(Lcom/android/server/wm/Task;)V

    return-void

    .line 473
    :cond_20
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    const-string v1, "remove-snapshot"

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;ZLjava/lang/String;)V

    return-void
.end method

.method public handleTransitionFinish(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 419
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_12
    if-ltz p1, :cond_4e

    .line 420
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 421
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 422
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivitySnapshotController;->handleTaskTransition(Lcom/android/server/wm/Task;)V

    goto :goto_4b

    .line 423
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 424
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 427
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivitySnapshotController;->handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_4b

    .line 429
    :cond_3e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 430
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivitySnapshotController;->handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V

    :cond_4b
    :goto_4b
    add-int/lit8 p1, p1, -0x1

    goto :goto_12

    :cond_4e
    return-void
.end method

.method public hasRecord(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 685
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public initSnapshotScale()F
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x105011c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 125
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public invalidateSnapshot(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 577
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 580
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->removeIfUserSavedFileExist(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$adjustSavedFileOrder$2(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 568
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 570
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 571
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public final synthetic lambda$getActivityBelow$1(ZLjava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V
    .registers 4

    .line 547
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    if-eqz p3, :cond_13

    if-eqz p1, :cond_10

    .line 548
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    .line 549
    invoke-static {p3, p0}, Lcom/android/server/wm/ActivitySnapshotController;->isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 550
    :cond_10
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public loadActivitySnapshot()V
    .registers 6

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_50

    .line 310
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 311
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_16
    if-ltz v1, :cond_2c

    .line 312
    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 313
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 315
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 319
    :cond_2c
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_32
    if-ltz v1, :cond_50

    .line 320
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 321
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->filterExistActivities(Landroid/util/ArraySet;)[Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_43

    goto :goto_4d

    .line 325
    :cond_43
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivitySnapshotController;->getSnapshot([Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;

    move-result-object v4

    if-eqz v4, :cond_4a

    goto :goto_4d

    .line 329
    :cond_4a
    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/ActivitySnapshotController;->loadSnapshotInner([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;)V

    :goto_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_32

    :cond_50
    :goto_50
    return-void
.end method

.method public loadSnapshotInner([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;)V
    .registers 11

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 336
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;

    iget v5, p2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    iget v6, p2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    iget-object v7, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;-><init>(Lcom/android/server/wm/ActivitySnapshotController;[Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SnapshotPersistQueue;->insertQueueAtFirstLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V

    .line 338
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1b

    throw p0
.end method

.method public notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 5

    .line 394
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1e

    .line 397
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_1e

    :cond_e
    if-nez p2, :cond_1e

    .line 403
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->resetTmpFields()V

    .line 404
    iget-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    const/4 v0, 0x0

    const-string v1, "remove-snapshot"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;ZLjava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->postProcess()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 595
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->invalidateSnapshot(Lcom/android/server/wm/ActivityRecord;)Z

    return-void
.end method

.method public onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->invalidateSnapshot(Lcom/android/server/wm/ActivityRecord;)Z

    return-void
.end method

.method public final postProcess()V
    .registers 3

    .line 241
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->loadActivitySnapshot()V

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_1b

    .line 244
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 245
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->removeCachedFiles(Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 248
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_23
    if-ltz v0, :cond_33

    .line 249
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->removeIfUserSavedFileExist(Lcom/android/server/wm/ActivityRecord;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 253
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->resetTmpFields()V

    return-void
.end method

.method public final purgeSavedFile()V
    .registers 9

    .line 714
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x14

    const/4 v2, 0x1

    if-ge v1, v2, :cond_c

    goto :goto_6c

    .line 720
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, v0, -0x15

    :goto_13
    if-ltz v0, :cond_53

    .line 722
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 723
    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    iget v5, v3, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 724
    iget-object v5, v3, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_2e
    if-ltz v5, :cond_4d

    .line 725
    iget-object v6, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v6, Lcom/android/server/wm/ActivitySnapshotCache;

    iget-object v7, v3, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v7, v5}, Landroid/util/IntArray;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    .line 726
    iget-object v6, v3, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v6, v5}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_2e

    .line 728
    :cond_4d
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 730
    :cond_53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_58
    if-ltz v0, :cond_6c

    .line 731
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 732
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v4, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    iget v2, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeSnapshot(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_58

    :cond_6c
    :goto_6c
    return-void
.end method

.method public recordSnapshot(Ljava/util/ArrayList;)V
    .registers 8

    .line 348
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-nez v0, :cond_8e

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_8e

    .line 354
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget v1, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mMaxTotalStoreQueue:I

    .line 355
    invoke-virtual {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->peekWriteQueueSize()I

    move-result v0

    if-ge v0, v1, :cond_87

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 356
    invoke-virtual {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->peekQueueSize()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_23

    goto :goto_87

    .line 360
    :cond_23
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 361
    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4e

    .line 363
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x0

    .line 364
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->recordSnapshotInner(Lcom/android/server/wm/WindowContainer;ZLjava/util/function/Consumer;)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 366
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskSnapshot;

    :cond_40
    if-eqz v0, :cond_8e

    .line 368
    invoke-static {p1}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v2

    aput v2, v1, v3

    .line 369
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->addUserSavedFile(ILandroid/window/TaskSnapshot;[I)V

    return-void

    .line 374
    :cond_4e
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 376
    iget-object v2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v4, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    .line 377
    invoke-virtual {v2, v0, v4}, Lcom/android/server/wm/AbsAppSnapshotController;->snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;

    move-result-object v2

    if-nez v2, :cond_65

    goto :goto_8e

    .line 382
    :cond_65
    :goto_65
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_81

    .line 383
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 384
    iget-object v5, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v5, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-virtual {v5, v4, v2}, Lcom/android/server/wm/ActivitySnapshotCache;->putSnapshot(Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)V

    .line 385
    invoke-static {v4}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 387
    :cond_81
    iget p1, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wm/ActivitySnapshotController;->addUserSavedFile(ILandroid/window/TaskSnapshot;[I)V

    return-void

    .line 357
    :cond_87
    :goto_87
    const-string p0, "WindowManager"

    const-string p1, "Skipping recording activity snapshot, too many requests!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    :goto_8e
    return-void
.end method

.method public final removeCachedFiles(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 657
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 659
    iget-object v0, p1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_24

    .line 660
    iget-object v1, p1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 661
    iget-object v2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v2, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/wm/SnapshotCache;->onIdRemoved(Ljava/lang/Integer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_24
    return-void
.end method

.method public final removeIfUserSavedFileExist(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9

    .line 667
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 669
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    move-result-object v1

    .line 670
    iget-object v2, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_14
    if-ltz v2, :cond_30

    .line 671
    iget-object v4, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v4, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 672
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->remove(I)V

    .line 673
    iget-object v5, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v5, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/SnapshotCache;->onIdRemoved(Ljava/lang/Integer;)V

    .line 674
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 676
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 677
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v0, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->removeSnapshot(II)V

    return v3

    :cond_3f
    const/4 p0, 0x0

    return p0
.end method

.method public resetTmpFields()V
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 227
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public use16BitFormat()Z
    .registers 1

    .line 627
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {p0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->use16BitFormat()Z

    move-result p0

    return p0
.end method
