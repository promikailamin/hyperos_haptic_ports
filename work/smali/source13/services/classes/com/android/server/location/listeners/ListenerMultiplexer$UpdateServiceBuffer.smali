.class final Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
.super Ljava/lang/Object;
.source "ListenerMultiplexer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/listeners/ListenerMultiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateServiceBuffer"
.end annotation


# instance fields
.field private mBufferCount:I

.field private mUpdateServiceRequired:Z

.field final synthetic this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;


# direct methods
.method constructor <init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V
    .registers 2

    .line 727
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    .line 729
    iput-boolean p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    .line 730
    return-void
.end method


# virtual methods
.method declared-synchronized acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    monitor-enter p0

    .line 742
    :try_start_1
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 743
    monitor-exit p0

    return-object p0

    .line 741
    .end local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 5

    .line 748
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    const/4 v0, 0x0

    .line 749
    .local v0, "updateServiceRequired":Z
    monitor-enter p0

    .line 750
    :try_start_2
    iget v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 751
    iget v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    if-nez v1, :cond_1a

    .line 752
    iget-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    move v0, v1

    .line 753
    iput-boolean v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    .line 755
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_23

    .line 757
    if-eqz v0, :cond_22

    .line 758
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    .line 760
    :cond_22
    return-void

    .line 755
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method declared-synchronized isBuffered()Z
    .registers 2

    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    monitor-enter p0

    .line 733
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

    .line 733
    .end local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized markUpdateServiceRequired()V
    .registers 2

    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    monitor-enter p0

    .line 737
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->isBuffered()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 739
    monitor-exit p0

    return-void

    .line 736
    .end local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
