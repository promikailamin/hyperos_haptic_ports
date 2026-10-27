.class public final Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;
.super Ljava/lang/Object;
.source "ListenerMultiplexer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public mGuardCount:I

.field public mScheduledRemovals:Landroid/util/ArraySet;

.field public final synthetic this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V
    .registers 2

    .line 697
    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 698
    iput p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    const/4 p1, 0x0

    .line 699
    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;
    .registers 3

    .line 720
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_5
    iget v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    .line 722
    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 723
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public close()V
    .registers 9

    .line 728
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_5
    iget v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_d

    move v1, v3

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 733
    iget v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    const/4 v3, 0x0

    if-nez v1, :cond_21

    .line 734
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    .line 735
    iput-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    move-object v3, v1

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_61

    :cond_21
    :goto_21
    if-nez v3, :cond_25

    .line 739
    monitor-exit v0

    return-void

    .line 742
    :cond_25
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-static {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->-$$Nest$fgetmUpdateServiceBuffer(Lcom/android/server/location/listeners/ListenerMultiplexer;)Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_1f

    .line 743
    :try_start_2f
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    :goto_33
    if-ge v2, v4, :cond_4f

    .line 745
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 746
    iget-object v6, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/listeners/ListenerRegistration;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_4d

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :catchall_4d
    move-exception p0

    goto :goto_56

    :cond_4f
    if-eqz v1, :cond_54

    .line 748
    :try_start_51
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    .line 749
    :cond_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_1f

    return-void

    :goto_56
    if-eqz v1, :cond_60

    .line 742
    :try_start_58
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v1

    :try_start_5d
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_60
    :goto_60
    throw p0

    .line 749
    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_1f

    throw p0
.end method

.method public isReentrant()Z
    .registers 2

    .line 703
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_5
    iget p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 705
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public markForRemoval(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 6

    .line 709
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 712
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    if-nez v1, :cond_24

    .line 713
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-static {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->-$$Nest$fgetmRegistrations(Lcom/android/server/location/listeners/ListenerMultiplexer;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_30

    .line 715
    :cond_24
    :goto_24
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 716
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_22

    throw p0
.end method
