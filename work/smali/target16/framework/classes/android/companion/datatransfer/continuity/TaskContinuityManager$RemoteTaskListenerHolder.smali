.class final Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;
.super Landroid/companion/datatransfer/continuity/IRemoteTaskListener$Stub;
.source "TaskContinuityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/datatransfer/continuity/TaskContinuityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteTaskListenerHolder"
.end annotation


# instance fields
.field private final blacklist mLastReceivedRemoteTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/datatransfer/continuity/RemoteTask;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRegistered:Z

.field final synthetic blacklist this$0:Landroid/companion/datatransfer/continuity/TaskContinuityManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$Fv3AD_Nhcx2FFSzkFacdk0ujn0s(Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->lambda$registerListener$0(Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/companion/datatransfer/continuity/TaskContinuityManager;Landroid/companion/datatransfer/continuity/ITaskContinuityManager;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 266
    iput-object p1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->this$0:Landroid/companion/datatransfer/continuity/TaskContinuityManager;

    invoke-direct {p0}, Landroid/companion/datatransfer/continuity/IRemoteTaskListener$Stub;-><init>()V

    .line 257
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mListeners:Ljava/util/Map;

    .line 260
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mRegistered:Z

    .line 263
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mLastReceivedRemoteTasks:Ljava/util/List;

    .line 266
    return-void
.end method

.method static synthetic blacklist lambda$onRemoteTasksChanged$1(Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;Ljava/util/List;)V
    .registers 2

    .line 323
    invoke-interface {p0, p1}, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;->onRemoteTasksChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$registerListener$0(Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;)V
    .registers 3

    .line 287
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mLastReceivedRemoteTasks:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;->onRemoteTasksChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onRemoteTasksChanged(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/companion/datatransfer/continuity/RemoteTask;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mListeners:Ljava/util/Map;

    monitor-enter v0

    .line 317
    :try_start_3
    iget-object v1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mLastReceivedRemoteTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 318
    iget-object v1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mLastReceivedRemoteTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 320
    iget-object v1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 321
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;

    .line 322
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 323
    new-instance v4, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1}, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder$$ExternalSyntheticLambda1;-><init>(Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 324
    goto :goto_17

    .line 325
    :cond_38
    monitor-exit v0

    .line 326
    return-void

    .line 325
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public blacklist registerListener(Ljava/util/concurrent/Executor;Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mListeners:Ljava/util/Map;

    monitor-enter v0

    .line 282
    :try_start_9
    iget-boolean v1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mRegistered:Z

    if-nez v1, :cond_1a

    .line 283
    iget-object v1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->this$0:Landroid/companion/datatransfer/continuity/TaskContinuityManager;

    invoke-static {v1}, Landroid/companion/datatransfer/continuity/TaskContinuityManager;->-$$Nest$fgetmService(Landroid/companion/datatransfer/continuity/TaskContinuityManager;)Landroid/companion/datatransfer/continuity/ITaskContinuityManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/companion/datatransfer/continuity/ITaskContinuityManager;->registerRemoteTaskListener(Landroid/companion/datatransfer/continuity/IRemoteTaskListener;)V

    .line 284
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mRegistered:Z

    goto :goto_22

    .line 286
    :cond_1a
    new-instance v1, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder$$ExternalSyntheticLambda0;-><init>(Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 291
    :goto_22
    iget-object v1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    monitor-exit v0

    .line 293
    return-void

    .line 292
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public blacklist unregisterListener(Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mListeners:Ljava/util/Map;

    monitor-enter v0

    .line 306
    :try_start_6
    iget-object v1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object p1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-boolean p1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mRegistered:Z

    if-eqz p1, :cond_23

    .line 308
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->mRegistered:Z

    .line 309
    iget-object p1, p0, Landroid/companion/datatransfer/continuity/TaskContinuityManager$RemoteTaskListenerHolder;->this$0:Landroid/companion/datatransfer/continuity/TaskContinuityManager;

    invoke-static {p1}, Landroid/companion/datatransfer/continuity/TaskContinuityManager;->-$$Nest$fgetmService(Landroid/companion/datatransfer/continuity/TaskContinuityManager;)Landroid/companion/datatransfer/continuity/ITaskContinuityManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/companion/datatransfer/continuity/ITaskContinuityManager;->unregisterRemoteTaskListener(Landroid/companion/datatransfer/continuity/IRemoteTaskListener;)V

    .line 311
    :cond_23
    monitor-exit v0

    .line 312
    return-void

    .line 311
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw p1
.end method
