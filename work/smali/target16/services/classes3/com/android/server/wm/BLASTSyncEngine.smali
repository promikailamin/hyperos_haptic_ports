.class public Lcom/android/server/wm/BLASTSyncEngine;
.super Ljava/lang/Object;
.source "BLASTSyncEngine.java"


# instance fields
.field public final mActiveSyncs:Ljava/util/ArrayList;

.field public final mHandler:Landroid/os/Handler;

.field public mNextSyncId:I

.field public final mOnIdleListeners:Ljava/util/ArrayList;

.field public final mPendingSyncSets:Ljava/util/ArrayList;

.field public final mTmpFinishQueue:Ljava/util/ArrayList;

.field public final mTmpFringe:Ljava/util/ArrayList;

.field public final mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActiveSyncs(Lcom/android/server/wm/BLASTSyncEngine;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/BLASTSyncEngine;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnIdleListeners(Lcom/android/server/wm/BLASTSyncEngine;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mOnIdleListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingSyncSets(Lcom/android/server/wm/BLASTSyncEngine;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTmpFringe(Lcom/android/server/wm/BLASTSyncEngine;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mTmpFringe:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveFromDependencies(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->removeFromDependencies(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 469
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BLASTSyncEngine;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V
    .registers 4

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 451
    iput v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mOnIdleListeners:Ljava/util/ArrayList;

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mTmpFinishQueue:Ljava/util/ArrayList;

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mTmpFringe:Ljava/util/ArrayList;

    .line 474
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 475
    iput-object p2, p0, Lcom/android/server/wm/BLASTSyncEngine;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abort(I)V
    .registers 2

    .line 559
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object p1

    .line 560
    invoke-static {p1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->-$$Nest$mfinishNow(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->removeFromDependencies(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    return-void
.end method

.method public addOnIdleListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 657
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mOnIdleListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    .registers 3

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->-$$Nest$maddToSync(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public final getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .registers 4

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 567
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncGroup is not started yet id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .registers 4

    const/4 v0, 0x0

    .line 514
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 515
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget v1, v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    if-eq v1, p1, :cond_18

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 516
    :cond_18
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasActiveSync()Z
    .registers 1

    .line 522
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public hasPendingSyncSets()Z
    .registers 1

    .line 653
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onSurfacePlacement()V
    .registers 8

    .line 589
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_86

    .line 592
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mTmpFinishQueue:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 596
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 597
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mTmpFinishQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_86

    if-gtz v0, :cond_33

    .line 599
    const-string v1, "BLASTSyncEngine"

    const-string v2, "Trying to finish more syncs than theoretically possible. This should never happen. Most likely a dependency cycle wasn\'t detected."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    add-int/lit8 v0, v0, -0x1

    .line 603
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mTmpFinishQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 604
    iget-object v3, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_47

    goto :goto_22

    .line 607
    :cond_47
    invoke-static {v1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->-$$Nest$mtryFinish(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto :goto_22

    :cond_4e
    move v4, v2

    .line 610
    :goto_4f
    iget-object v5, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_22

    .line 611
    iget-object v5, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 612
    iget-object v6, v5, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    goto :goto_83

    :cond_68
    if-lt v2, v3, :cond_6b

    goto :goto_83

    .line 615
    :cond_6b
    iget-object v5, v5, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_74

    goto :goto_83

    .line 618
    :cond_74
    iget-object v5, p0, Lcom/android/server/wm/BLASTSyncEngine;->mTmpFinishQueue:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    invoke-virtual {v5, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    :goto_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_86
    :goto_86
    return-void
.end method

.method public prepareSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;Ljava/lang/String;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .registers 9

    .line 483
    new-instance v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget v3, p0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;-><init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;Lcom/android/server/wm/BLASTSyncEngine-IA;)V

    return-object v0
.end method

.method public queueSyncSet(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5

    .line 645
    new-instance v0, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;-><init>(Lcom/android/server/wm/BLASTSyncEngine-IA;)V

    .line 646
    invoke-static {v0, p1}, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->-$$Nest$fputmStartSync(Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;Ljava/lang/Runnable;)V

    .line 647
    invoke-static {v0, p2}, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->-$$Nest$fputmApplySync(Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;Ljava/lang/Runnable;)V

    .line 648
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeFromDependencies(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 578
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 579
    iget-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 580
    iget-object v3, v2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_25

    .line 581
    :cond_1b
    iget-object v2, v2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x1

    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_28
    if-nez v1, :cond_2b

    return-void

    .line 585
    :cond_2b
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    return-void
.end method

.method public scheduleTimeout(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;J)V
    .registers 4

    .line 527
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOnTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setReady(I)V
    .registers 3

    const/4 v0, 0x1

    .line 548
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    return-void
.end method

.method public setReady(IZ)Z
    .registers 3

    .line 544
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->-$$Nest$msetReady(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)Z

    move-result p0

    return p0
.end method

.method public setSyncMethod(II)V
    .registers 4

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object p0

    .line 536
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 540
    iput p2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    return-void

    .line 537
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not allow to change sync method after adding group member, id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;JLjava/lang/String;Z)I
    .registers 6

    .line 488
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/BLASTSyncEngine;->prepareSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;Ljava/lang/String;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object p1

    .line 489
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    .line 490
    iget p0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    return p0
.end method

.method public startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 5

    const-wide/16 v0, 0x1388

    const/4 v2, 0x0

    .line 494
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    return-void
.end method

.method public startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V
    .registers 10

    .line 498
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    if-nez p4, :cond_2e

    if-eqz v0, :cond_2e

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncGroup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": Started when there is other active SyncGroup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BLASTSyncEngine"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_2e
    iget-object v3, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iput-boolean p4, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mIgnoreIndirectMembers:Z

    .line 507
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    aget-boolean v1, v3, v1

    if-eqz v1, :cond_5f

    iget v1, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v3, v1

    if-eqz p4, :cond_45

    if-eqz v0, :cond_45

    const-string p4, "(in parallel) "

    goto :goto_47

    :cond_45
    const-string p4, ""

    :goto_47
    iget-object v0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3, p4, v0}, [Ljava/lang/Object;

    move-result-object p4

    const-wide v3, -0x2956de0d3d93c33fL    # -2.9512502947194385E109

    invoke-static {v1, v3, v4, v2, p4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 509
    :cond_5f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/BLASTSyncEngine;->scheduleTimeout(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;J)V

    return-void
.end method
