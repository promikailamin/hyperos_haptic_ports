.class public final Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
.super Ljava/lang/Object;
.source "ListenerMultiplexer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public mBufferCount:I

.field public mUpdateServiceRequired:Z

.field public final synthetic this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V
    .registers 2

    .line 775
    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 776
    iput p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    .line 777
    iput-boolean p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
    .registers 2

    monitor-enter p0

    .line 790
    :try_start_1
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 791
    monitor-exit p0

    return-object p0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public close()V
    .registers 4

    .line 797
    monitor-enter p0

    .line 798
    :try_start_1
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 799
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    if-nez v0, :cond_1c

    .line 800
    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    .line 801
    iput-boolean v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    move v2, v0

    goto :goto_1c

    :catchall_1a
    move-exception v0

    goto :goto_25

    .line 803
    :cond_1c
    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1a

    if-eqz v2, :cond_24

    .line 806
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    :cond_24
    return-void

    .line 803
    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_1a

    throw v0
.end method

.method public declared-synchronized isBuffered()Z
    .registers 2

    monitor-enter p0

    .line 781
    :try_start_1
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized markUpdateServiceRequired()V
    .registers 2

    monitor-enter p0

    .line 785
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->isBuffered()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const/4 v0, 0x1

    .line 786
    iput-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 787
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method
