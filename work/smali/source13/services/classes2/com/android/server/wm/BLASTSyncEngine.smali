.class Lcom/android/server/wm/BLASTSyncEngine;
.super Ljava/lang/Object;
.source "BLASTSyncEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;,
        Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;,
        Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BLASTSyncEngine"


# instance fields
.field private final mActiveSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mNextSyncId:I

.field private final mPendingSyncSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveSyncs(Lcom/android/server/wm/BLASTSyncEngine;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingSyncSets(Lcom/android/server/wm/BLASTSyncEngine;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 251
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    .line 261
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 262
    return-void
.end method

.method private getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .registers 6
    .param p1, "id"    # I

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 333
    .local v0, "syncGroup":Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    if-eqz v0, :cond_b

    .line 336
    return-object v0

    .line 334
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncGroup is not started yet id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method abort(I)V
    .registers 3
    .param p1, "id"    # I

    .line 328
    invoke-direct {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->-$$Nest$mfinishNow(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 329
    return-void
.end method

.method addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 309
    invoke-direct {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->-$$Nest$maddToSync(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/WindowContainer;)V

    .line 310
    return-void
.end method

.method hasActiveSync()Z
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method hasPendingSyncSets()Z
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isReady(I)Z
    .registers 3
    .param p1, "id"    # I

    .line 321
    invoke-direct {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    return v0
.end method

.method onSurfacePlacement()V
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 342
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    invoke-static {v1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->-$$Nest$monSurfacePlacement(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 341
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 344
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method prepareSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;Ljava/lang/String;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .registers 10
    .param p1, "listener"    # Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;
    .param p2, "name"    # Ljava/lang/String;

    .line 269
    new-instance v6, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget v3, p0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;-><init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup-IA;)V

    return-object v6
.end method

.method queueSyncSet(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "startSync"    # Ljava/lang/Runnable;
    .param p2, "applySync"    # Ljava/lang/Runnable;

    .line 362
    new-instance v0, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;-><init>(Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet-IA;)V

    .line 363
    .local v0, "pt":Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;
    invoke-static {v0, p1}, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->-$$Nest$fputmStartSync(Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;Ljava/lang/Runnable;)V

    .line 364
    invoke-static {v0, p2}, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->-$$Nest$fputmApplySync(Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;Ljava/lang/Runnable;)V

    .line 365
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method

.method scheduleTimeout(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;J)V
    .registers 6
    .param p1, "s"    # Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .param p2, "timeoutMs"    # J

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOnTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    return-void
.end method

.method setReady(I)V
    .registers 3
    .param p1, "id"    # I

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)V

    .line 318
    return-void
.end method

.method setReady(IZ)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "ready"    # Z

    .line 313
    invoke-direct {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->-$$Nest$msetReady(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V

    .line 314
    return-void
.end method

.method startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;)I
    .registers 5
    .param p1, "listener"    # Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    .line 273
    const-wide/16 v0, 0x5dc

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;JLjava/lang/String;)I
    .registers 7
    .param p1, "listener"    # Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;
    .param p2, "timeoutMs"    # J
    .param p4, "name"    # Ljava/lang/String;

    .line 277
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/BLASTSyncEngine;->prepareSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;Ljava/lang/String;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    .line 278
    .local v0, "s":Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;J)V

    .line 279
    iget v1, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    return v1
.end method

.method startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 4
    .param p1, "s"    # Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 283
    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;J)V

    .line 284
    return-void
.end method

.method startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;J)V
    .registers 14
    .param p1, "s"    # Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .param p2, "timeoutMs"    # J

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_22

    .line 290
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    if-eqz v0, :cond_22

    iget v0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v4, v0

    .local v4, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x2fb9b1fb

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v0, v6, v3, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 293
    .end local v4    # "protoLogParam0":J
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Landroid/util/SparseArray;

    iget v4, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v0, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    if-eqz v0, :cond_49

    iget v0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v4, v0

    .restart local v4    # "protoLogParam0":J
    iget-object v0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x20d347fe

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v1

    aput-object v0, v8, v3

    invoke-static {v6, v7, v3, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 296
    .end local v0    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam0":J
    :cond_49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/BLASTSyncEngine;->scheduleTimeout(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;J)V

    .line 297
    return-void
.end method
