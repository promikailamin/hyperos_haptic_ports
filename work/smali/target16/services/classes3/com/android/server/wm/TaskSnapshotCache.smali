.class public Lcom/android/server/wm/TaskSnapshotCache;
.super Lcom/android/server/wm/SnapshotCache;
.source "TaskSnapshotCache.java"


# instance fields
.field public final mLoader:Lcom/android/server/wm/AppSnapshotLoader;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppSnapshotLoader;)V
    .registers 3

    .line 34
    const-string v0, "Task"

    invoke-direct {p0, v0}, Lcom/android/server/wm/SnapshotCache;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mLoader:Lcom/android/server/wm/AppSnapshotLoader;

    return-void
.end method


# virtual methods
.method public getSnapshot(III)Landroid/window/TaskSnapshot;
    .registers 5

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->getSnapshotInner(Ljava/lang/Integer;)Landroid/window/TaskSnapshot;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_12

    .line 83
    monitor-exit v0

    return-object p1

    :catchall_10
    move-exception p0

    goto :goto_21

    .line 85
    :cond_12
    invoke-static {p0, p2}, Landroid/window/TaskSnapshotManager;->isResolutionMatch(Landroid/window/TaskSnapshot;I)Z

    move-result p2

    if-eqz p2, :cond_1f

    if-eqz p3, :cond_1d

    .line 87
    invoke-virtual {p0, p3}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 89
    :cond_1d
    monitor-exit v0

    return-object p0

    .line 91
    :cond_1f
    monitor-exit v0

    return-object p1

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_10

    throw p0
.end method

.method public getSnapshotFromDisk(IIZI)Landroid/window/TaskSnapshot;
    .registers 5

    .line 100
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mLoader:Lcom/android/server/wm/AppSnapshotLoader;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppSnapshotLoader;->loadTask(IIZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    if-eqz p0, :cond_d

    if-eqz p4, :cond_d

    .line 103
    invoke-virtual {p0, p4}, Landroid/window/TaskSnapshot;->addReference(I)V

    :cond_d
    return-object p0
.end method

.method public putSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V
    .registers 8

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 40
    :try_start_4
    invoke-virtual {p2, v1}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 41
    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mSafeSnapshotReleaser:Ljava/util/function/Consumer;

    invoke-virtual {p2, v2}, Landroid/window/TaskSnapshot;->setSafeRelease(Ljava/util/function/Consumer;)V

    .line 42
    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    if-eqz v2, :cond_2b

    .line 44
    iget-object v3, p0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v2, v2, Lcom/android/server/wm/SnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2, v1}, Landroid/window/TaskSnapshot;->removeReference(I)V

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_4c

    .line 47
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object p0, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    invoke-direct {v2, p2, v1}, Lcom/android/server/wm/SnapshotCache$CacheEntry;-><init>(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_29

    throw p0
.end method

.method public bridge synthetic putSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot;)V
    .registers 3

    .line 29
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V

    return-void
.end method
