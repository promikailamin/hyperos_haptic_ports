.class public Lcom/android/server/wm/SnapshotPersistQueue$1;
.super Ljava/lang/Thread;
.source "SnapshotPersistQueue.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;Ljava/lang/String;)V
    .registers 3

    .line 256
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/16 v0, 0xa

    .line 258
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 262
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 263
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v1}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmPaused(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    :goto_16
    move v1, v3

    goto :goto_55

    .line 266
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v1}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;

    if-eqz v1, :cond_53

    .line 268
    iget-object v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v4}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/wm/SnapshotPersistQueue;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->isReady(Lcom/android/server/pm/UserManagerInternal;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 270
    invoke-virtual {v1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onDequeuedLocked()V

    const/4 v2, 0x1

    move v5, v2

    move-object v2, v1

    move v1, v5

    goto :goto_55

    :catchall_3a
    move-exception p0

    goto/16 :goto_b5

    .line 271
    :cond_3d
    iget-object v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v4}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmShutdown(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 272
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v2}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_53

    .line 276
    :cond_4f
    invoke-virtual {v1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onDequeuedLocked()V

    goto :goto_16

    :cond_53
    :goto_53
    move-object v2, v1

    goto :goto_16

    .line 281
    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_c .. :try_end_56} :catchall_3a

    if-eqz v2, :cond_6a

    if-eqz v1, :cond_5d

    .line 284
    invoke-virtual {v2}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->write()V

    .line 286
    :cond_5d
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmShutdown(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-wide/16 v0, 0x64

    .line 287
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 290
    :cond_6a
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 291
    :try_start_71
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 292
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v2}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmPaused(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 293
    monitor-exit v1

    goto/16 :goto_5

    :catchall_88
    move-exception p0

    goto :goto_b3

    .line 295
    :cond_8a
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v2}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmShutdown(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v2

    if-eqz v2, :cond_9d

    if-eqz v0, :cond_9d

    .line 296
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v2}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_9d
    .catchall {:try_start_71 .. :try_end_9d} :catchall_88

    .line 299
    :cond_9d
    :try_start_9d
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v2, v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fputmQueueIdling(Lcom/android/server/wm/SnapshotPersistQueue;Z)V

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 301
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0, v3}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fputmQueueIdling(Lcom/android/server/wm/SnapshotPersistQueue;Z)V
    :try_end_b0
    .catch Ljava/lang/InterruptedException; {:try_start_9d .. :try_end_b0} :catch_b0
    .catchall {:try_start_9d .. :try_end_b0} :catchall_88

    .line 304
    :catch_b0
    :try_start_b0
    monitor-exit v1

    goto/16 :goto_5

    :goto_b3
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_88

    throw p0

    .line 281
    :goto_b5
    :try_start_b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_3a

    throw p0
.end method
