.class public abstract Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.super Ljava/lang/Object;
.source "SnapshotPersistQueue.java"


# instance fields
.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V
    .registers 3

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 314
    iput p2, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    return-void
.end method


# virtual methods
.method public isDuplicateOrExclusiveItem(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isReady(Lcom/android/server/pm/UserManagerInternal;)Z
    .registers 2

    .line 320
    iget p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public onDequeuedLocked()V
    .registers 1

    .line 0
    return-void
.end method

.method public onQueuedLocked()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract write()V
.end method
