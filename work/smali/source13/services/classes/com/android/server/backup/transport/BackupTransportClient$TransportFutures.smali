.class Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;
.super Ljava/lang/Object;
.source "BackupTransportClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/transport/BackupTransportClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransportFutures"
.end annotation


# instance fields
.field private final mActiveFutures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/infra/AndroidFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mActiveFuturesLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFuturesLock:Ljava/lang/Object;

    .line 389
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFutures:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;-><init>()V

    return-void
.end method


# virtual methods
.method cancelActiveFutures()V
    .registers 5

    .line 406
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFuturesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFutures:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_23

    .line 409
    .local v2, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<*>;"
    const/4 v3, 0x1

    :try_start_16
    invoke-virtual {v2, v3}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z
    :try_end_19
    .catch Ljava/util/concurrent/CancellationException; {:try_start_16 .. :try_end_19} :catch_1a
    .catchall {:try_start_16 .. :try_end_19} :catchall_23

    .line 412
    goto :goto_1b

    .line 410
    :catch_1a
    move-exception v3

    .line 413
    .end local v2    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<*>;"
    :goto_1b
    goto :goto_9

    .line 414
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFutures:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 415
    monitor-exit v0

    .line 416
    return-void

    .line 415
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw v1
.end method

.method newFuture()Lcom/android/internal/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 392
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 393
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<TT;>;"
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFuturesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_8
    iget-object v2, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFutures:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    monitor-exit v1

    .line 396
    return-object v0

    .line 395
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v2
.end method

.method remove(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;)V"
        }
    .end annotation

    .line 400
    .local p1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<TT;>;"
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFuturesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFutures:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 402
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
