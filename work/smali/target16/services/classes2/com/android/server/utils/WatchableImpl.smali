.class public Lcom/android/server/utils/WatchableImpl;
.super Ljava/lang/Object;
.source "WatchableImpl.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;


# instance fields
.field public final mObservers:Ljava/util/ArrayList;

.field public mSealed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/android/server/utils/WatchableImpl;->mSealed:Z

    return-void
.end method


# virtual methods
.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 6

    .line 99
    iget-object v0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/utils/WatchableImpl;->mSealed:Z

    if-nez v1, :cond_22

    .line 103
    iget-object v1, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_20

    .line 105
    iget-object v3, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/Watcher;

    invoke-virtual {v3, p1}, Lcom/android/server/utils/Watcher;->onChange(Lcom/android/server/utils/Watchable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :catchall_1e
    move-exception p0

    goto :goto_2a

    .line 107
    :cond_20
    monitor-exit v0

    return-void

    .line 101
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "attempt to change a sealed object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_1e

    throw p0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 77
    :try_start_3
    iget-object p0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 78
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 4

    .line 47
    const-string/jumbo v0, "observer may not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 49
    :try_start_9
    iget-object v1, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 50
    iget-object p0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_1b

    .line 52
    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_17

    throw p0
.end method

.method public registeredObserverCount()I
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object p0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 89
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public seal()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    .line 121
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/utils/WatchableImpl;->mSealed:Z

    .line 122
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 3

    .line 63
    const-string/jumbo v0, "observer may not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 65
    :try_start_9
    iget-object p0, p0, Lcom/android/server/utils/WatchableImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw p0
.end method
