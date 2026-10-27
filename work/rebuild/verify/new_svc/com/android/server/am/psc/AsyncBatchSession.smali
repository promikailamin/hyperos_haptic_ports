.class public Lcom/android/server/am/psc/AsyncBatchSession;
.super Lcom/android/server/am/psc/BatchSession;
.source "AsyncBatchSession.java"


# instance fields
.field public mBatchList:Ljava/util/ArrayList;

.field public mBoostPriority:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mLockedUpdateRunnable:Ljava/lang/Runnable;

.field public mRunUpdate:Z

.field public final mStagingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$6ZhVoG-wIii61VzWwZkpkR_MGbM(Lcom/android/server/am/psc/AsyncBatchSession;Ljava/util/ArrayList;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/psc/AsyncBatchSession;->lambda$onClose$2(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$iFARH7roAw0ZJzXi15DdyYXRlPU(Lcom/android/server/am/psc/AsyncBatchSession;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/psc/AsyncBatchSession;->lambda$enqueue$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t7tWz5te-gMytgh2RxTlSGh2vrU(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 2

    .line 49
    monitor-enter p0

    .line 50
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 51
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/Runnable;)V
    .registers 6

    .line 43
    invoke-direct {p0}, Lcom/android/server/am/psc/BatchSession;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mRunUpdate:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mBoostPriority:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mBatchList:Ljava/util/ArrayList;

    .line 44
    iput-object p1, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p2, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mLock:Ljava/lang/Object;

    .line 46
    iput-object p3, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mStagingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    iput-object p4, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 48
    new-instance p1, Lcom/android/server/am/psc/AsyncBatchSession$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2, p4}, Lcom/android/server/am/psc/AsyncBatchSession$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mLockedUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public enqueue(Ljava/lang/Runnable;)V
    .registers 4

    .line 80
    invoke-virtual {p0}, Lcom/android/server/am/psc/BatchSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 81
    iget-object p0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mBatchList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 84
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/psc/AsyncBatchSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/psc/AsyncBatchSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/psc/AsyncBatchSession;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$enqueue$1(Ljava/lang/Runnable;)V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 86
    :try_start_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 87
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public final synthetic lambda$onClose$2(Ljava/util/ArrayList;Z)V
    .registers 7

    .line 124
    iget-object v0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    .line 126
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catchall_16
    move-exception p0

    goto :goto_21

    :cond_18
    if-eqz p2, :cond_1f

    .line 129
    iget-object p0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 131
    :cond_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_16

    throw p0
.end method

.method public onClose()V
    .registers 5

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mBatchList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    iget-boolean v1, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mRunUpdate:Z

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    if-nez v1, :cond_12

    return-void

    .line 119
    :cond_12
    iget-object v2, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mBatchList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    .line 120
    iput-boolean v2, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mRunUpdate:Z

    .line 123
    new-instance v3, Lcom/android/server/am/psc/AsyncBatchSession$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/am/psc/AsyncBatchSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/psc/AsyncBatchSession;Ljava/util/ArrayList;Z)V

    .line 134
    iget-boolean v0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mBoostPriority:Z

    if-eqz v0, :cond_2b

    .line 137
    iput-boolean v2, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mBoostPriority:Z

    .line 138
    iget-object p0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    .line 140
    :cond_2b
    iget-object p0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postToHead()V
    .registers 2

    .line 60
    invoke-virtual {p0}, Lcom/android/server/am/psc/BatchSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mBoostPriority:Z

    :cond_9
    return-void
.end method

.method public runUpdate()V
    .registers 3

    .line 100
    invoke-virtual {p0}, Lcom/android/server/am/psc/BatchSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mRunUpdate:Z

    return-void

    .line 106
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mLockedUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mLockedUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stage(Ljava/lang/Runnable;)V
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/android/server/am/psc/AsyncBatchSession;->mStagingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
