.class Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
.super Ljava/lang/Object;
.source "BLASTSyncEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BLASTSyncEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncGroup"
.end annotation


# instance fields
.field final mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

.field final mOnTimeout:Ljava/lang/Runnable;

.field private mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

.field mReady:Z

.field final mRootMembers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field final mSyncId:I

.field private mTraceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/BLASTSyncEngine;


# direct methods
.method static bridge synthetic -$$Nest$maddToSync(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->addToSync(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishNow(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->finishNow()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSurfacePlacement(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->onSurfacePlacement()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetReady(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->setReady(Z)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/wm/BLASTSyncEngine;
    .param p2, "listener"    # Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    .line 91
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 96
    iput p3, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 97
    iput-object p2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    .line 98
    new-instance v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOnTimeout:Ljava/lang/Runnable;

    .line 104
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SyncGroupReady"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mTraceName:Ljava/lang/String;

    .line 106
    invoke-static {v0, v1, v2, p3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 108
    :cond_3d
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;-><init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;)V

    return-void
.end method

.method private addToSync(Lcom/android/server/wm/WindowContainer;)V
    .registers 11
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 225
    return-void

    .line 227
    :cond_9
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v0, v0

    .local v0, "protoLogParam0":J
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x759b6aa3

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 228
    .end local v0    # "protoLogParam0":J
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    :cond_2a
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setSyncGroup(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 229
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 231
    return-void
.end method

.method private finishNow()V
    .registers 12

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mTraceName:Ljava/lang/String;

    const-wide/16 v1, 0x20

    if-eqz v0, :cond_b

    .line 141
    iget v3, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 143
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v5, v0

    .local v5, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x718ee8c5

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v0, v7, v8, v3, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 144
    .end local v5    # "protoLogParam0":J
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 145
    .local v0, "merged":Landroid/view/SurfaceControl$Transaction;
    iget-object v5, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v5, :cond_3a

    .line 146
    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 148
    :cond_3a
    iget-object v5, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 149
    .local v6, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v6, v0, v4}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 150
    .end local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    goto :goto_40

    .line 152
    :cond_50
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 153
    .local v5, "wcAwaitingCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v6, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    .line 154
    .local v7, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowContainer;->waitForSyncTransactionCommit(Landroid/util/ArraySet;)V

    .line 155
    .end local v7    # "wc":Lcom/android/server/wm/WindowContainer;
    goto :goto_5b

    .line 189
    :cond_6b
    new-instance v6, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;

    invoke-direct {v6, p0, v5}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Landroid/util/ArraySet;)V

    .line 190
    .local v6, "callback":Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;
    new-instance v7, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda1;

    invoke-direct {v8, v6}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;)V

    invoke-virtual {v0, v7, v8}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 191
    iget-object v7, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v7}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v8, 0x5dc

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    const-string/jumbo v7, "onTransactionReady"

    invoke-static {v1, v2, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 194
    iget-object v7, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    iget v8, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-interface {v7, v8, v0}, Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V

    .line 195
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 196
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v1}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmActiveSyncs(Lcom/android/server/wm/BLASTSyncEngine;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 197
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v1}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOnTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v1}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmActiveSyncs(Lcom/android/server/wm/BLASTSyncEngine;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_114

    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v1}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmPendingSyncSets(Lcom/android/server/wm/BLASTSyncEngine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_114

    .line 201
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    if-eqz v1, :cond_dc

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x67224914

    move-object v7, v3

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :cond_dc
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v1}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmPendingSyncSets(Lcom/android/server/wm/BLASTSyncEngine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;

    .line 203
    .local v1, "pt":Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;
    invoke-static {v1}, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->-$$Nest$fgetmStartSync(Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 204
    iget-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v2}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmActiveSyncs(Lcom/android/server/wm/BLASTSyncEngine;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_10c

    .line 208
    iget-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v2}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v3, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_114

    .line 205
    :cond_10c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Pending Sync Set didn\'t start a sync."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    .end local v1    # "pt":Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;
    :cond_114
    :goto_114
    return-void
.end method

.method static synthetic lambda$finishNow$1(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 190
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private onSurfacePlacement()V
    .registers 13

    .line 125
    iget-boolean v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    if-nez v0, :cond_5

    return-void

    .line 126
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v5, v0

    .local v5, "protoLogParam0":J
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x399caf31

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v1

    aput-object v0, v9, v4

    invoke-static {v7, v8, v4, v3, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .end local v0    # "protoLogParam1":Ljava/lang/String;
    .end local v5    # "protoLogParam0":J
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_2f
    if-ltz v0, :cond_60

    .line 129
    iget-object v5, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 130
    .local v5, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isSyncFinished()Z

    move-result v6

    if-nez v6, :cond_5d

    .line 131
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    if-eqz v6, :cond_5c

    iget v6, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v6, v6

    .local v6, "protoLogParam0":J
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam1":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0xdbe7d16

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v2, v1

    aput-object v8, v2, v4

    invoke-static {v9, v10, v4, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .end local v6    # "protoLogParam0":J
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    :cond_5c
    return-void

    .line 128
    .end local v5    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_5d
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 136
    .end local v0    # "i":I
    :cond_60
    invoke-direct {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->finishNow()V

    .line 137
    return-void
.end method

.method private onTimeout()V
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmActiveSyncs(Lcom/android/server/wm/BLASTSyncEngine;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 239
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_17
    if-ltz v0, :cond_42

    .line 240
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 241
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isSyncFinished()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unfinished container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BLASTSyncEngine"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 245
    .end local v0    # "i":I
    :cond_42
    invoke-direct {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->finishNow()V

    .line 246
    return-void
.end method

.method private setReady(Z)V
    .registers 11
    .param p1, "ready"    # Z

    .line 217
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    int-to-long v0, v0

    .local v0, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x64bb3305

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 218
    .end local v0    # "protoLogParam0":J
    :cond_1a
    iput-boolean p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    .line 219
    if-nez p1, :cond_1f

    return-void

    .line 220
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 221
    return-void
.end method


# virtual methods
.method getOrphanTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez v0, :cond_14

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 121
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method synthetic lambda$finishNow$2$com-android-server-wm-BLASTSyncEngine$SyncGroup(Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)V
    .registers 4
    .param p1, "pt"    # Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 210
    invoke-static {p1}, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->-$$Nest$fgetmApplySync(Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 211
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 212
    return-void

    .line 211
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$new$0$com-android-server-wm-BLASTSyncEngine$SyncGroup()V
    .registers 4

    .line 99
    const-string v0, "BLASTSyncEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->-$$Nest$fgetmWm(Lcom/android/server/wm/BLASTSyncEngine;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 101
    invoke-direct {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->onTimeout()V

    .line 102
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 103
    return-void

    .line 102
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onCancelSync(Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method
