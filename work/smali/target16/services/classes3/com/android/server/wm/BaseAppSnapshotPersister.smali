.class public abstract Lcom/android/server/wm/BaseAppSnapshotPersister;
.super Ljava/lang/Object;
.source "BaseAppSnapshotPersister.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field protected final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 48
    iput-object p2, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 49
    invoke-virtual {p1}, Lcom/android/server/wm/SnapshotPersistQueue;->getLock()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public persistSnapshot(IILandroid/window/TaskSnapshot;)V
    .registers 12

    .line 60
    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v6, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 62
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/SnapshotPersistQueue;->createStoreWriteQueueItem(IILandroid/window/TaskSnapshot;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Ljava/util/function/Consumer;)Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    move-result-object p0

    .line 61
    invoke-virtual {v2, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->sendToQueueLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V

    .line 64
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_14

    throw p0
.end method

.method public persistSnapshotAndConvert(IILandroid/window/TaskSnapshot;Ljava/util/function/Consumer;)V
    .registers 13

    .line 76
    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v6, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 78
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/SnapshotPersistQueue;->createStoreWriteQueueItem(IILandroid/window/TaskSnapshot;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Ljava/util/function/Consumer;)Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    move-result-object p0

    .line 77
    invoke-virtual {v2, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->sendToQueueLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V

    .line 80
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_14

    throw p0
.end method

.method public removeSnapshot(II)V
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 98
    invoke-virtual {v1, p1, p2, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->createDeleteWriteQueueItem(IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;

    move-result-object p0

    .line 97
    invoke-virtual {v1, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->sendToQueueLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V

    .line 99
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method
