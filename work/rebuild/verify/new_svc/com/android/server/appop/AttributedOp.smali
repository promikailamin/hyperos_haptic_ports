.class public final Lcom/android/server/appop/AttributedOp;
.super Ljava/lang/Object;
.source "AttributedOp.java"


# instance fields
.field public mAccessEvents:Landroid/util/LongSparseArray;

.field public final mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field public mInProgressEvents:Landroid/util/ArrayMap;

.field public mPausedInProgressEvents:Landroid/util/ArrayMap;

.field public mRejectEvents:Landroid/util/LongSparseArray;

.field public final parent:Lcom/android/server/appop/AppOpsService$Op;

.field public final persistentDeviceId:Ljava/lang/String;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 90
    iput-object p2, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    return-void
.end method


# virtual methods
.method public accessed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 22

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v10, p6

    move-wide v1, v8

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 111
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-wide v8, v1

    .line 114
    iget-object p1, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object p1, p1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    move v3, v2

    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v11, -0x1

    const/4 v13, 0x0

    const/4 v10, 0x0

    move v0, v3

    move-object v3, v1

    move v1, v0

    move-object v0, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v12, p7

    invoke-interface/range {v0 .. v13}, Lcom/android/server/appop/HistoricalRegistryInterface;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIZ)V

    return-void
.end method

.method public accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 21

    .line 137
    invoke-static/range {p9 .. p10}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v1

    .line 139
    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v3, :cond_10

    .line 140
    new-instance v3, Landroid/util/LongSparseArray;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    :cond_10
    const/4 v3, -0x1

    if-eq p5, v3, :cond_23

    .line 145
    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-virtual {v3, p5, v4, v5, v6}, Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;->acquire(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    :goto_21
    move-object v8, v0

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_21

    .line 149
    :goto_25
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v3, :cond_3a

    .line 151
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v9, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v3 .. v9}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    return-void

    .line 154
    :cond_3a
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/app/AppOpsManager$NoteOpEvent;

    move-wide/from16 p6, p1

    move-wide/from16 p8, p3

    move-object p5, v0

    move-object/from16 p10, v8

    invoke-direct/range {p5 .. p10}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    move-object p1, p5

    invoke-virtual {p0, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public final add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .registers 12

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    if-nez p2, :cond_6

    goto :goto_31

    .line 576
    :cond_6
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p0, :cond_31

    .line 578
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 579
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 580
    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v4, :cond_2b

    .line 582
    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-lez v4, :cond_2e

    .line 583
    :cond_2b
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_31
    :goto_31
    return-object p1
.end method

.method public add(Lcom/android/server/appop/AttributedOp;)V
    .registers 7

    .line 600
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 602
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 603
    iget-object v0, p1, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_17

    :cond_15
    iget-object v0, p1, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 604
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " app-ops, running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 604
    const-string v2, "AppOps"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_42
    if-ge v2, v1, :cond_57

    .line 609
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 611
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->finish()V

    .line 612
    iget-object v4, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {v4, v3}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 616
    :cond_57
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    iget-object v1, p1, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/appop/AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 617
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    iget-object p1, p1, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/appop/AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    return-void
.end method

.method public createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;
    .registers 16

    .line 665
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 668
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 669
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 670
    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v0, :cond_1d

    .line 673
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    :cond_1d
    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_53

    .line 677
    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 679
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v7

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v6

    new-instance v8, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 680
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v9

    .line 681
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v11

    sub-long v11, v1, v11

    const-wide/16 v13, 0x0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 682
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 679
    invoke-virtual {v0, v6, v7, v8}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 686
    :cond_53
    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v1}, Lcom/android/server/appop/AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 688
    new-instance v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result p0

    invoke-direct {v2, v3, p0, v0, v1}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    return-object v2
.end method

.method public createPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 24

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 406
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    return-void
.end method

.method public final deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .registers 8

    if-nez p1, :cond_3

    return-object p1

    .line 655
    :cond_3
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    .line 656
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, p0}, Landroid/util/LongSparseArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_d
    if-ge v1, p0, :cond_24

    .line 658
    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    new-instance v4, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-direct {v4, v5}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(Landroid/app/AppOpsManager$NoteOpEvent;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_24
    return-object v0
.end method

.method public doForAllInProgressStartOpEvents(Ljava/util/function/Consumer;)V
    .registers 6

    .line 269
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 270
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    :goto_b
    if-nez p0, :cond_e

    goto :goto_2e

    .line 275
    :cond_e
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 276
    new-instance v1, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_2e

    .line 278
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final finishOrPause(Landroid/os/IBinder;ZZ)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 315
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    goto :goto_14

    :cond_13
    const/4 v3, -0x1

    :goto_14
    if-gez v3, :cond_1a

    .line 317
    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/AttributedOp;->finishPossiblyPaused(Landroid/os/IBinder;Z)V

    return-void

    .line 321
    :cond_1a
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    const/4 v4, 0x1

    if-nez v2, :cond_2a

    .line 323
    iget v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    sub-int/2addr v5, v4

    iput v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 326
    :cond_2a
    iget v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    if-eqz v5, :cond_30

    if-eqz v2, :cond_e0

    :cond_30
    if-nez v2, :cond_3a

    .line 328
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->finish()V

    .line 329
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 332
    :cond_3a
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v3, :cond_45

    .line 333
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 336
    :cond_45
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_57

    .line 337
    new-instance v3, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    move-object v11, v3

    goto :goto_58

    :cond_57
    move-object v11, v4

    .line 340
    :goto_58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v7

    sub-long v9, v5, v7

    .line 341
    new-instance v6, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 342
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v7

    invoke-direct/range {v6 .. v11}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 344
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v7

    invoke-static {v5, v7}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 347
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v3, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v8, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v9, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v10, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 348
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v13

    .line 349
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v14

    invoke-virtual {v6}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v15

    invoke-virtual {v6}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v17

    .line 350
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v19

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v20

    .line 347
    invoke-interface/range {v7 .. v20}, Lcom/android/server/appop/HistoricalRegistryInterface;->increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJII)V

    if-nez v2, :cond_e0

    .line 353
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {v2, v1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 354
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 355
    iput-object v4, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez p2, :cond_e0

    .line 358
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v2

    if-nez v2, :cond_e0

    .line 359
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v5, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v6, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 360
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v8

    .line 361
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v10

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v11

    const/4 v9, 0x0

    .line 359
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    :cond_e0
    return-void
.end method

.method public final finishPossiblyPaused(Landroid/os/IBinder;Z)V
    .registers 5

    .line 371
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    const-string v1, "AppOps"

    if-nez v0, :cond_e

    .line 372
    const-string p0, "No ops running or paused"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 376
    :cond_e
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1c

    .line 378
    const-string p0, "No op running or paused for the client"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    if-eqz p2, :cond_1f

    goto :goto_49

    .line 386
    :cond_1f
    iget-object p2, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 387
    iget v0, p2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    if-nez v0, :cond_49

    .line 389
    invoke-virtual {p2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->finish()V

    .line 390
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 391
    iget-object p1, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object p1, p1, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {p1, p2}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 392
    iget-object p1, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_49

    const/4 p1, 0x0

    .line 393
    iput-object p1, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_49
    :goto_49
    return-void
.end method

.method public finished(Landroid/os/IBinder;)V
    .registers 3

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public final finished(Landroid/os/IBinder;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    return-void
.end method

.method public hasAnyTime()Z
    .registers 2

    .line 642
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_14

    :cond_a
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-eqz p0, :cond_16

    .line 643
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    if-lez p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public hasInProgressEvent(Ljava/util/function/Predicate;)Z
    .registers 5

    .line 630
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    :goto_b
    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    .line 631
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_2d

    :cond_15
    move v1, v0

    .line 634
    :goto_16
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 635
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2d
    :goto_2d
    return v0
.end method

.method public isPaused()Z
    .registers 1

    .line 625
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 621
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onClientDeath(Landroid/os/IBinder;)V
    .registers 5

    .line 481
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 482
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v1

    if-nez v1, :cond_13

    .line 483
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_2e

    .line 486
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 487
    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_1e

    :cond_1c
    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 488
    :goto_1e
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-eqz v1, :cond_29

    const/4 v2, 0x1

    .line 490
    iput v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 493
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;)V

    .line 494
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_11

    throw p0
.end method

.method public onUidStateChanged(I)V
    .registers 28

    move-object/from16 v0, p0

    .line 503
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_119

    .line 507
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 509
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_1b

    :cond_19
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 511
    :goto_1b
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 512
    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    move-object v15, v1

    move v1, v2

    :goto_2b
    if-ge v1, v13, :cond_119

    .line 514
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-eqz v2, :cond_110

    .line 516
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v3

    move/from16 v7, p1

    if-eq v3, v7, :cond_110

    .line 517
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v23

    .line 518
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v24

    .line 522
    :try_start_49
    iget v3, v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    const/4 v4, 0x1

    .line 523
    iput v4, v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 524
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v5

    .line 526
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;Z)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_59} :catch_eb

    if-eqz v5, :cond_a5

    move v6, v1

    .line 531
    :try_start_5c
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v1
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_60} :catch_a2

    move-object v8, v2

    :try_start_61
    invoke-virtual {v8}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v2

    move v9, v3

    .line 532
    invoke-virtual {v5}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v3

    move v10, v4

    invoke-virtual {v5}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v11, v5

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 533
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v11
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_78} :catch_9f

    move-object/from16 v16, v8

    :try_start_7a
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v8

    move/from16 v17, v9

    .line 534
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v9

    move/from16 v18, v10

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v10
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_8a} :catch_9b

    move/from16 v19, v6

    move-object v6, v11

    const/4 v11, 0x1

    move/from16 v25, v13

    move/from16 v13, v19

    .line 531
    :try_start_92
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    move-object/from16 v0, p0

    goto :goto_ce

    :catch_98
    :goto_98
    move-object/from16 v0, p0

    goto :goto_f0

    :catch_9b
    :goto_9b
    move/from16 v25, v13

    move v13, v6

    goto :goto_98

    :catch_9f
    move-object/from16 v16, v8

    goto :goto_9b

    :catch_a2
    move-object/from16 v16, v2

    goto :goto_9b

    :cond_a5
    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v25, v13

    move v13, v1

    .line 537
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v2

    .line 539
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v9

    .line 540
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v10
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_c2} :catch_98

    const/4 v11, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 537
    :try_start_cb
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    :goto_ce
    if-eqz v12, :cond_d4

    .line 543
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    :goto_d2
    move-object v15, v1

    goto :goto_d7

    :cond_d4
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_d2

    .line 544
    :goto_d7
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-eqz v1, :cond_113

    .line 546
    iget v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    add-int/lit8 v3, v17, -0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I
    :try_end_ea
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_ea} :catch_f0

    goto :goto_113

    :catch_eb
    move-object/from16 v16, v2

    move/from16 v25, v13

    move v13, v1

    .line 553
    :catch_f0
    :goto_f0
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 554
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v20, v5

    .line 553
    invoke-virtual/range {v16 .. v24}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    goto :goto_113

    :cond_110
    move/from16 v25, v13

    move v13, v1

    :cond_113
    :goto_113
    add-int/lit8 v1, v13, 0x1

    move/from16 v13, v25

    goto/16 :goto_2b

    :cond_119
    :goto_119
    return-void
.end method

.method public pause()V
    .registers 15

    .line 415
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 419
    :cond_7
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 420
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_13
    const/4 v0, 0x0

    move v2, v0

    .line 423
    :goto_15
    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    .line 424
    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 425
    iget-object v4, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 428
    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v7, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v8, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 429
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v10

    .line 430
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v12

    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v13

    const/4 v11, 0x0

    .line 428
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_54
    const/4 v0, 0x0

    .line 432
    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    return-void
.end method

.method public rejected(III)V
    .registers 15

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 167
    invoke-virtual {p0, v8, v9, p1, p2}, Lcom/android/server/appop/AttributedOp;->rejected(JII)V

    .line 169
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    move-object v2, v1

    iget v1, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    move-object v3, v2

    iget v2, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    move v6, p1

    move v7, p2

    move v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistryInterface;->incrementOpRejectedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJI)V

    return-void
.end method

.method public rejected(JII)V
    .registers 22

    move-object/from16 v0, p0

    .line 184
    invoke-static/range {p3 .. p4}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v1

    .line 186
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-nez v3, :cond_12

    .line 187
    new-instance v3, Landroid/util/LongSparseArray;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 191
    :cond_12
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v4, :cond_2a

    .line 193
    iget-object v0, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-wide/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    return-void

    .line 195
    :cond_2a
    iget-object v0, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    new-instance v11, Landroid/app/AppOpsManager$NoteOpEvent;

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    move-wide/from16 v12, p1

    invoke-direct/range {v11 .. v16}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v0, v1, v2, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public resume()V
    .registers 39

    move-object/from16 v0, p0

    .line 440
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 444
    :cond_9
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_1a

    .line 445
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 447
    :cond_1a
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 448
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    move v1, v2

    .line 450
    :goto_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 451
    :goto_32
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_e3

    .line 452
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 453
    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->setStartElapsedTime(J)V

    .line 455
    invoke-virtual {v3, v11, v12}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->setStartTime(J)V

    .line 456
    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    move-object v6, v3

    move-object v3, v4

    iget v4, v5, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v7, v5, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object v8, v6

    move-object v6, v5

    move v5, v7

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    move-object v10, v9

    .line 457
    invoke-virtual {v10}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v9

    move-object v13, v10

    .line 458
    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v10

    move-object v14, v13

    invoke-virtual {v14}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v13

    move-object v15, v14

    .line 459
    invoke-virtual {v15}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v14

    move-object/from16 v16, v15

    const/4 v15, 0x1

    move-object/from16 v17, v16

    const/16 v16, 0x1

    .line 456
    invoke-interface/range {v3 .. v16}, Lcom/android/server/appop/HistoricalRegistryInterface;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIZ)V

    if-eqz v1, :cond_b2

    .line 461
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 462
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v23

    .line 463
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v25

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v26

    const/16 v24, 0x1

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v22, v7

    .line 461
    invoke-virtual/range {v18 .. v26}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    .line 467
    :cond_b2
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 468
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v32

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v33

    .line 469
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v36

    .line 470
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v37

    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v27, v3

    move-object/from16 v30, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v31, v7

    .line 467
    invoke-virtual/range {v27 .. v37}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_32

    :cond_e3
    const/4 v1, 0x0

    .line 472
    iput-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    return-void
.end method

.method public started(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 24

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 218
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    return-void
.end method

.method public final startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    if-nez p11, :cond_26

    .line 230
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v1

    if-nez v1, :cond_26

    if-eqz p12, :cond_26

    .line 231
    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v8, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v10, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v13, 0x1

    move/from16 v12, p2

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v7 .. v15}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    :cond_26
    const/4 v1, 0x1

    if-eqz p12, :cond_35

    .line 236
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v2, :cond_35

    .line 237
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_42

    :cond_35
    if-nez p12, :cond_42

    .line 238
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-nez v2, :cond_42

    .line 239
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_42
    :goto_42
    if-eqz p12, :cond_47

    .line 242
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_49

    :cond_47
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 244
    :goto_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 245
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-nez v3, :cond_8c

    .line 247
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    new-instance v10, Lcom/android/server/appop/AttributedOp$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/android/server/appop/AttributedOp$$ExternalSyntheticLambda0;-><init>()V

    .line 249
    invoke-static {v10, v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v10

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, v1

    move-object v0, v2

    move-object v1, v3

    move-wide v2, v8

    move-object v9, v10

    move/from16 v8, p2

    move/from16 v10, p3

    .line 247
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->acquire(JJLandroid/os/IBinder;Ljava/lang/String;ILjava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    move-result-object v1

    move-wide v8, v2

    .line 252
    invoke-virtual {v0, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v3, v1

    goto :goto_9e

    :cond_8c
    move/from16 v14, p7

    move/from16 v18, v1

    .line 254
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v0

    if-eq v14, v0, :cond_9c

    move-object/from16 v0, p0

    .line 255
    invoke-virtual {v0, v14}, Lcom/android/server/appop/AttributedOp;->onUidStateChanged(I)V

    goto :goto_9e

    :cond_9c
    move-object/from16 v0, p0

    .line 259
    :goto_9e
    iget v1, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    if-eqz p12, :cond_c9

    .line 262
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    move-object v3, v1

    iget v1, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object v5, v3

    move-object v3, v2

    move v2, v4

    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v6, v5

    move-object v5, v0

    move-object v0, v6

    move/from16 v7, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move v6, v14

    invoke-interface/range {v0 .. v13}, Lcom/android/server/appop/HistoricalRegistryInterface;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIZ)V

    :cond_c9
    return-void
.end method
