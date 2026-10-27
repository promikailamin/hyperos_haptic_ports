.class public Lcom/android/server/wm/TaskSnapshotPersister;
.super Lcom/android/server/wm/BaseAppSnapshotPersister;
.source "TaskSnapshotPersister.java"


# instance fields
.field public final mDisableSnapshots:Z

.field public final mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPersistedTaskIdsSinceLastRemoveObsolete(Lcom/android/server/wm/TaskSnapshotPersister;)Landroid/util/ArraySet;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Z)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 47
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    .line 54
    iput-boolean p3, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDisableSnapshots:Z

    return-void
.end method


# virtual methods
.method public persistSnapshot(IILandroid/window/TaskSnapshot;)V
    .registers 7

    .line 65
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDisableSnapshots:Z

    if-eqz v0, :cond_5

    return-void

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/BaseAppSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    .line 71
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public persistSnapshotAndConvert(IILandroid/window/TaskSnapshot;Ljava/util/function/Consumer;)V
    .registers 8

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/BaseAppSnapshotPersister;->persistSnapshotAndConvert(IILandroid/window/TaskSnapshot;Ljava/util/function/Consumer;)V

    .line 86
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public removeObsoleteFiles(Landroid/util/ArraySet;[I)V
    .registers 7

    .line 115
    array-length v0, p2

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDisableSnapshots:Z

    if-eqz v0, :cond_8

    goto :goto_21

    .line 118
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_b
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 120
    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    new-instance v2, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;

    iget-object v3, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[ILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SnapshotPersistQueue;->sendToQueueLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V

    .line 122
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw p0

    :cond_21
    :goto_21
    return-void
.end method

.method public removeSnapshot(II)V
    .registers 6

    .line 97
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDisableSnapshots:Z

    if-eqz v0, :cond_5

    return-void

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 102
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister;->removeSnapshot(II)V

    .line 103
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw p0
.end method
