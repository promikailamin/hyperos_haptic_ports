.class public Lcom/android/server/wm/SnapshotPersistQueue;
.super Ljava/lang/Object;
.source "SnapshotPersistQueue.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mMaxTotalStoreQueue:I

.field public mPaused:Z

.field public final mPersister:Ljava/lang/Thread;

.field public mQueueIdling:Z

.field public mShutdown:Z

.field public mStarted:Z

.field public final mStoreQueueItems:Ljava/util/ArrayDeque;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWriteQueue:Ljava/util/ArrayDeque;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPaused(Lcom/android/server/wm/SnapshotPersistQueue;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShutdown(Lcom/android/server/wm/SnapshotPersistQueue;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mShutdown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStoreQueueItems(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManagerInternal(Lcom/android/server/wm/SnapshotPersistQueue;)Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWriteQueue(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmQueueIdling(Lcom/android/server/wm/SnapshotPersistQueue;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 65
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    .line 256
    new-instance v0, Lcom/android/server/wm/SnapshotPersistQueue$1;

    const-string v1, "TaskSnapshotPersister"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/SnapshotPersistQueue$1;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPersister:Ljava/lang/Thread;

    .line 78
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 79
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mMaxTotalStoreQueue:I

    return-void
.end method


# virtual methods
.method public final addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 180
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 181
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;

    .line 182
    invoke-virtual {p1, v1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->isDuplicateOrExclusiveItem(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 183
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1b
    if-eqz p2, :cond_23

    .line 188
    iget-object p2, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_28

    .line 190
    :cond_23
    iget-object p2, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 192
    :goto_28
    invoke-virtual {p1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onQueuedLocked()V

    .line 193
    iget-boolean p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mShutdown:Z

    if-nez p1, :cond_32

    .line 194
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotPersistQueue;->ensureStoreQueueDepthLocked()V

    .line 196
    :cond_32
    iget-boolean p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    if-nez p1, :cond_3b

    .line 197
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_3b
    return-void
.end method

.method public createDeleteWriteQueueItem(IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;
    .registers 5

    .line 586
    new-instance v0, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    return-object v0
.end method

.method public createStoreWriteQueueItem(IILandroid/window/TaskSnapshot;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Ljava/util/function/Consumer;)Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;
    .registers 13

    .line 345
    new-instance v0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;IILandroid/window/TaskSnapshot;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public deleteSnapshot(IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .registers 6

    .line 242
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getProtoFile(II)Ljava/io/File;

    move-result-object p0

    .line 243
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getLowResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 245
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 247
    :cond_11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 250
    :cond_1a
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getHighResolutionBitmapFile(II)Ljava/io/File;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 252
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_27
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;

    .line 636
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_4e

    .line 637
    array-length v0, p0

    if-nez v0, :cond_13

    goto :goto_4d

    .line 640
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PersistQueue contains:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_2a
    if-ltz v0, :cond_4d

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    :cond_4d
    :goto_4d
    return-void

    :catchall_4e
    move-exception p0

    .line 636
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public final ensureStoreQueueDepthLocked()V
    .registers 9

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 220
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    iget-object v4, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_5e

    .line 221
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    const/4 v6, 0x1

    add-int/2addr v2, v6

    .line 224
    invoke-static {v4}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->-$$Nest$fgetmSnapshot(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)Landroid/window/TaskSnapshot;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wm/TaskSnapshotConvertUtil;->mustPersistByHardwareRender(Landroid/window/TaskSnapshot;)Z

    move-result v7

    if-eqz v7, :cond_30

    add-int/lit8 v3, v3, 0x1

    if-le v3, v5, :cond_30

    move v5, v6

    goto :goto_31

    :cond_30
    move v5, v1

    :goto_31
    if-nez v5, :cond_38

    .line 230
    iget v7, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mMaxTotalStoreQueue:I

    if-le v2, v7, :cond_38

    goto :goto_39

    :cond_38
    move v6, v5

    :goto_39
    if-eqz v6, :cond_9

    .line 234
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 235
    iget-object v5, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Queue is too deep! Purged item with index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->-$$Nest$fgetmId(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_5e
    return-void
.end method

.method public getLock()Ljava/lang/Object;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public insertQueueAtFirstLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V
    .registers 3

    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    return-void
.end method

.method public final isQueueEmpty()Z
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z

    if-nez v1, :cond_18

    iget-boolean p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    if-eqz p0, :cond_14

    goto :goto_18

    :cond_14
    const/4 p0, 0x0

    goto :goto_19

    :catchall_16
    move-exception p0

    goto :goto_1b

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    monitor-exit v0

    return p0

    .line 126
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_16

    throw p0
.end method

.method public peekQueueSize()I
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 175
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public peekWriteQueueSize()I
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 169
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public prepareShutdown()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 119
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mShutdown:Z

    .line 120
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public sendToQueueLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V
    .registers 3

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    return-void
.end method

.method public setPaused(Z)V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    if-nez p1, :cond_f

    .line 109
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_11

    .line 111
    :cond_f
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_d

    throw p0
.end method

.method public start()V
    .registers 2

    .line 94
    iget-boolean v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStarted:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStarted:Z

    .line 96
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPersister:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_c
    return-void
.end method

.method public systemReady()V
    .registers 1

    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotPersistQueue;->start()V

    return-void
.end method

.method public updateKnownLowResSnapshotIfPossible(ILandroid/window/TaskSnapshot;)V
    .registers 6

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    .line 351
    invoke-static {v1}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->-$$Nest$fgetmId(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)I

    move-result v2

    if-ne v2, p1, :cond_9

    invoke-virtual {v1, p2}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->updateKnownLowResSnapshotIfPossible(Landroid/window/TaskSnapshot;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_26

    .line 355
    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_22

    throw p0
.end method

.method public waitFlush(J)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    goto :goto_32

    .line 133
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 135
    :goto_c
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotPersistQueue;->isQueueEmpty()Z

    move-result p1

    if-nez p1, :cond_32

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long p1, v2, p1

    cmp-long v4, p1, v0

    if-lez v4, :cond_2b

    .line 138
    iget-object v4, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 140
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    invoke-virtual {v5, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_24} :catch_27
    .catchall {:try_start_1f .. :try_end_24} :catchall_25

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_29

    .line 143
    :catch_27
    :goto_27
    :try_start_27
    monitor-exit v4

    goto :goto_c

    :goto_29
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_25

    throw p0

    .line 145
    :cond_2b
    const-string p0, "WindowManager"

    const-string p1, "Snapshot Persist Queue flush timed out"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return-void
.end method

.method public waitForQueueEmpty()V
    .registers 3

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z

    if-eqz v1, :cond_13

    .line 159
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_1a

    .line 161
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_11

    const-wide/16 v0, 0x64

    .line 162
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 161
    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_11

    throw p0
.end method
