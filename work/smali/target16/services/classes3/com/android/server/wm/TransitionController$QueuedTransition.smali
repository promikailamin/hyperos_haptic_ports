.class public Lcom/android/server/wm/TransitionController$QueuedTransition;
.super Ljava/lang/Object;
.source "TransitionController.java"


# instance fields
.field public final mLegacySync:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

.field public final mOnStartCollect:Lcom/android/server/wm/TransitionController$OnStartCollect;

.field public mShouldNoopUponDequeue:Z

.field public final mTransition:Lcom/android/server/wm/Transition;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/TransitionController$OnStartCollect;)V
    .registers 4

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    .line 194
    iput-object p2, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mOnStartCollect:Lcom/android/server/wm/TransitionController$OnStartCollect;

    .line 195
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mLegacySync:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V
    .registers 3

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    .line 188
    iput-object p2, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mOnStartCollect:Lcom/android/server/wm/TransitionController$OnStartCollect;

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mLegacySync:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    return-void
.end method


# virtual methods
.method public isAborted(Lcom/android/server/wm/BLASTSyncEngine;)Z
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mLegacySync:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {p1, p0}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0

    .line 200
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->isAborted()Z

    move-result p0

    return p0
.end method
