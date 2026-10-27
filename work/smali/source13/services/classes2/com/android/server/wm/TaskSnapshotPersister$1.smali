.class Lcom/android/server/wm/TaskSnapshotPersister$1;
.super Ljava/lang/Thread;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p2, "name"    # Ljava/lang/String;

    .line 290
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 292
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 295
    :goto_5
    const/4 v0, 0x0

    .line 296
    .local v0, "isReadyToWrite":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 297
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v2}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmPaused(Lcom/android/server/wm/TaskSnapshotPersister;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 298
    const/4 v2, 0x0

    .local v2, "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    goto :goto_39

    .line 300
    .end local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v2}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;

    .line 301
    .restart local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    if-eqz v2, :cond_39

    .line 302
    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->isReady()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 303
    const/4 v0, 0x1

    .line 304
    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->onDequeuedLocked()V

    goto :goto_39

    .line 306
    :cond_30
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 310
    :cond_39
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_7e

    .line 311
    if-eqz v2, :cond_46

    .line 312
    if-eqz v0, :cond_41

    .line 313
    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->write()V

    .line 315
    :cond_41
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 317
    :cond_46
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 318
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    .line 319
    .local v1, "writeQueueEmpty":Z
    if-nez v1, :cond_63

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v4}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmPaused(Lcom/android/server/wm/TaskSnapshotPersister;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 320
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_4d .. :try_end_62} :catchall_7b

    goto :goto_5

    .line 323
    :cond_63
    :try_start_63
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v4, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fputmQueueIdling(Lcom/android/server/wm/TaskSnapshotPersister;Z)V

    .line 324
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v4}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 325
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wm/TaskSnapshotPersister;->-$$Nest$fputmQueueIdling(Lcom/android/server/wm/TaskSnapshotPersister;Z)V
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_77} :catch_78
    .catchall {:try_start_63 .. :try_end_77} :catchall_7b

    .line 327
    goto :goto_79

    .line 326
    :catch_78
    move-exception v4

    .line 328
    .end local v1    # "writeQueueEmpty":Z
    :goto_79
    :try_start_79
    monitor-exit v3

    .line 329
    .end local v0    # "isReadyToWrite":Z
    .end local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    goto :goto_5

    .line 328
    .restart local v0    # "isReadyToWrite":Z
    .restart local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :catchall_7b
    move-exception v1

    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7b

    throw v1

    .line 310
    .end local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :catchall_7e
    move-exception v2

    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v2
.end method
