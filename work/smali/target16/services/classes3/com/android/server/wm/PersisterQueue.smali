.class public Lcom/android/server/wm/PersisterQueue;
.super Ljava/lang/Object;
.source "PersisterQueue.java"


# static fields
.field public static final EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# instance fields
.field public final mInterWriteDelayMs:J

.field public final mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

.field public final mListeners:Ljava/util/ArrayList;

.field public mNextWriteTime:J

.field public final mPreTaskDelayMs:J

.field public final mWriteQueue:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$aGLsAUUZNbiBUDirsbqiXA8GNBQ()V
    .registers 0

    .line 0
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/wm/PersisterQueue;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWriteQueue(Lcom/android/server/wm/PersisterQueue;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mprocessNextItem(Lcom/android/server/wm/PersisterQueue;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/PersisterQueue;->processNextItem()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/wm/PersisterQueue;->EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const-wide/16 v0, 0x1f4

    const-wide/16 v2, 0xbb8

    .line 73
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 8

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 70
    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2c

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2c

    .line 84
    iput-wide p1, p0, Lcom/android/server/wm/PersisterQueue;->mInterWriteDelayMs:J

    .line 85
    iput-wide p3, p0, Lcom/android/server/wm/PersisterQueue;->mPreTaskDelayMs:J

    .line 86
    new-instance p1, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    const-string p2, "LazyTaskWriterThread"

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;-><init>(Lcom/android/server/wm/PersisterQueue;Ljava/lang/String;Lcom/android/server/wm/PersisterQueue-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    return-void

    .line 80
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Both inter-write delay and pre-task delay need tobe non-negative. inter-write delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms pre-task delay: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V
    .registers 5

    monitor-enter p0

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_26

    .line 139
    iget-object p1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x6

    if-le p1, p2, :cond_12

    goto :goto_26

    .line 141
    :cond_12
    iget-wide p1, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_2a

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mPreTaskDelayMs:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    goto :goto_2a

    :catchall_24
    move-exception p1

    goto :goto_2f

    :cond_26
    :goto_26
    const-wide/16 p1, -0x1

    .line 140
    iput-wide p1, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 144
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_24

    .line 145
    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_24

    throw p1
.end method

.method public addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    .registers 6

    monitor-enter p0

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_2c

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 150
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 151
    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 152
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_27

    if-eqz v2, :cond_29

    .line 153
    monitor-exit p0

    return-object v1

    :catchall_27
    move-exception p1

    goto :goto_2f

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 158
    :cond_2c
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_27

    throw p1
.end method

.method public declared-synchronized flush()V
    .registers 5

    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 194
    :try_start_3
    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_c

    .line 198
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_e
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_16

    .line 201
    :catch_e
    :goto_e
    :try_start_e
    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_c

    cmp-long v2, v2, v0

    if-eqz v2, :cond_8

    .line 202
    monitor-exit p0

    return-void

    .line 201
    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_c

    throw v0
.end method

.method public final processNextItem()V
    .registers 7

    .line 233
    monitor-enter p0

    .line 234
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_19

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wm/PersisterQueue;->mInterWriteDelayMs:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    goto :goto_19

    :catchall_17
    move-exception v0

    goto :goto_63

    .line 247
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 248
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    .line 249
    iput-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 254
    :cond_2e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_19

    .line 255
    :cond_3c
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 261
    :cond_42
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 268
    :goto_4f
    iget-wide v3, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_5e

    sub-long/2addr v3, v1

    .line 272
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    goto :goto_4f

    .line 277
    :cond_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_17

    .line 279
    invoke-interface {v0}, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;->process()V

    return-void

    .line 277
    :goto_63
    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_17

    throw v0
.end method

.method public declared-synchronized removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V
    .registers 6

    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_30

    .line 182
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 183
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 184
    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 185
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 187
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_2d

    :catchall_2b
    move-exception p1

    goto :goto_32

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 191
    :cond_30
    monitor-exit p0

    return-void

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2b

    throw p1
.end method

.method public removeListener(Lcom/android/server/wm/PersisterQueue$Listener;)Z
    .registers 2

    .line 222
    iget-object p0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized startPersisting()V
    .registers 2

    monitor-enter p0

    .line 118
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_11

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception v0

    goto :goto_13

    .line 121
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw v0
.end method

.method public stopPersisting()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 130
    :cond_9
    monitor-enter p0

    .line 131
    :try_start_a
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 132
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_16

    .line 133
    iget-object p0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->join()V

    return-void

    :catchall_16
    move-exception v0

    .line 132
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public declared-synchronized updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V
    .registers 5

    monitor-enter p0

    .line 166
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v0

    if-nez v0, :cond_19

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    goto :goto_1c

    :catchall_17
    move-exception p1

    goto :goto_21

    .line 170
    :cond_19
    invoke-interface {v0, p1}, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;->updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V

    .line 173
    :goto_1c
    invoke-virtual {p0}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_17

    .line 174
    monitor-exit p0

    return-void

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_17

    throw p1
.end method

.method public waitUntilWritingThreadIsWaiting(J)Z
    .registers 5

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 105
    :cond_5
    monitor-enter p0

    .line 106
    :try_start_6
    iget-object p1, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p1

    .line 107
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_20

    .line 108
    sget-object p2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne p1, p2, :cond_13

    const/4 p0, 0x1

    return p0

    .line 111
    :cond_13
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-ltz p1, :cond_5

    const/4 p0, 0x0

    return p0

    :catchall_20
    move-exception p1

    .line 107
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public yieldIfQueueTooDeep()V
    .registers 5

    .line 206
    monitor-enter p0

    .line 207
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 210
    :goto_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    if-eqz v0, :cond_12

    .line 212
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_12
    return-void

    :catchall_13
    move-exception v0

    .line 210
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
