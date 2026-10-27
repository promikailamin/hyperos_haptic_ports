.class Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;
.super Ljava/lang/Object;
.source "BackupTransportClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/transport/BackupTransportClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransportStatusCallbackPool"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x64


# instance fields
.field private final mActiveCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/backup/transport/TransportStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/backup/transport/TransportStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPoolLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mPoolLock:Ljava/lang/Object;

    .line 423
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    .line 424
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;-><init>()V

    return-void
.end method


# virtual methods
.method acquire()Lcom/android/server/backup/transport/TransportStatusCallback;
    .registers 4

    .line 427
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 429
    .local v1, "callback":Lcom/android/server/backup/transport/TransportStatusCallback;
    if-nez v1, :cond_13

    .line 430
    new-instance v2, Lcom/android/server/backup/transport/TransportStatusCallback;

    invoke-direct {v2}, Lcom/android/server/backup/transport/TransportStatusCallback;-><init>()V

    move-object v1, v2

    .line 432
    :cond_13
    invoke-virtual {v1}, Lcom/android/server/backup/transport/TransportStatusCallback;->reset()V

    .line 433
    iget-object v2, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    monitor-exit v0

    return-object v1

    .line 435
    .end local v1    # "callback":Lcom/android/server/backup/transport/TransportStatusCallback;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method cancelActiveCallbacks()V
    .registers 6

    .line 450
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportStatusCallback;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_36

    .line 453
    .local v2, "callback":Lcom/android/server/backup/transport/TransportStatusCallback;
    const/16 v3, -0x3e8

    :try_start_17
    invoke-virtual {v2, v3}, Lcom/android/server/backup/transport/TransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 455
    invoke-virtual {v2}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_1e
    .catchall {:try_start_17 .. :try_end_1d} :catchall_36

    .line 458
    goto :goto_1f

    .line 456
    :catch_1e
    move-exception v3

    .line 459
    :goto_1f
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_2e

    .line 460
    iget-object v3, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 462
    .end local v2    # "callback":Lcom/android/server/backup/transport/TransportStatusCallback;
    :cond_2e
    goto :goto_9

    .line 463
    :cond_2f
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 464
    monitor-exit v0

    .line 465
    return-void

    .line 464
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_36

    throw v1
.end method

.method recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 439
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 441
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1b

    .line 442
    const-string v1, "BackupTransportClient"

    const-string v2, "TransportStatusCallback pool size exceeded"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    monitor-exit v0

    return-void

    .line 445
    :cond_1b
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 446
    monitor-exit v0

    .line 447
    return-void

    .line 446
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method
