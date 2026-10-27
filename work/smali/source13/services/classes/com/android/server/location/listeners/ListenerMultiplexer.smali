.class public abstract Lcom/android/server/location/listeners/ListenerMultiplexer;
.super Ljava/lang/Object;
.source "ListenerMultiplexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;,
        Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;,
        Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        "TRegistration:",
        "Lcom/android/server/location/listeners/ListenerRegistration<",
        "TT",
        "Listener;",
        ">;TMergedRegistration:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActiveRegistrationsCount:I

.field private mMerged:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTMergedRegistration;"
        }
    .end annotation
.end field

.field private final mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
        }
    .end annotation
.end field

.field private final mRegistrations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "TTKey;TTRegistration;>;"
        }
    .end annotation
.end field

.field private mServiceRegistered:Z

.field private final mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmRegistrations(Lcom/android/server/location/listeners/ListenerMultiplexer;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateServiceBuffer(Lcom/android/server/location/listeners/ListenerMultiplexer;)Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 81
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 87
    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-direct {v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    .line 90
    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-direct {v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    .line 96
    iput-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    return-void
.end method

.method private onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRegistration;)V"
        }
    .end annotation

    .line 520
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .local p1, "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 521
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 524
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->isRegistered()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 525
    .local v0, "active":Z
    :goto_1d
    invoke-virtual {p1, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->setActive(Z)Z

    move-result v2

    .line 526
    .local v2, "changed":Z
    if-eqz v2, :cond_43

    .line 527
    if-eqz v0, :cond_33

    .line 528
    iget v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    if-ne v3, v1, :cond_2f

    .line 529
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onActive()V

    .line 531
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->onActive()V

    goto :goto_40

    .line 533
    :cond_33
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->onInactive()V

    .line 534
    iget v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    if-nez v3, :cond_40

    .line 535
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onInactive()V

    .line 539
    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    .line 541
    :cond_43
    return-void
.end method

.method private removeRegistration(IZ)Lcom/android/server/location/listeners/ListenerRegistration;
    .registers 9
    .param p1, "index"    # I
    .param p2, "removeEntry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TTRegistration;"
        }
    .end annotation

    .line 360
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 361
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 364
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 365
    .local v0, "key":Ljava/lang/Object;, "TTKey;"
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 373
    .local v1, "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v2

    .line 374
    .local v2, "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    :try_start_21
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_59

    .line 376
    .local v3, "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :try_start_27
    invoke-direct {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregister(Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 377
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 378
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerRegistration;->onUnregister()V

    .line 379
    if-eqz p2, :cond_42

    .line 380
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 381
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 382
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onUnregister()V
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_4d

    .line 385
    :cond_42
    if-eqz v3, :cond_47

    :try_start_44
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_59

    .end local v3    # "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :cond_47
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    .line 387
    .end local v2    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    :cond_4c
    return-object v1

    .line 373
    .restart local v2    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .restart local v3    # "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :catchall_4d
    move-exception v4

    if-eqz v3, :cond_58

    :try_start_50
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v5

    :try_start_55
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "key":Ljava/lang/Object;, "TTKey;"
    .end local v1    # "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    .end local v2    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .end local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .end local p1    # "index":I
    .end local p2    # "removeEntry":Z
    :cond_58
    :goto_58
    throw v4
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    .end local v3    # "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    .restart local v0    # "key":Ljava/lang/Object;, "TTKey;"
    .restart local v1    # "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    .restart local v2    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .restart local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .restart local p1    # "index":I
    .restart local p2    # "removeEntry":Z
    :catchall_59
    move-exception v3

    if-eqz v2, :cond_64

    :try_start_5c
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_64
    :goto_64
    throw v3
.end method

.method private unregister(Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRegistration;)V"
        }
    .end annotation

    .line 588
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .local p1, "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->unregisterInternal()V

    .line 589
    invoke-direct {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 590
    return-void
.end method


# virtual methods
.method protected final deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 574
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .local p1, "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 575
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_39

    .line 576
    .local v1, "ignored":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :try_start_9
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 577
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_26

    .line 578
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 579
    .local v4, "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 580
    invoke-virtual {v4, p1}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_2d

    .line 577
    .end local v4    # "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 583
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_26
    if-eqz v1, :cond_2b

    :try_start_28
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    .line 584
    .end local v1    # "ignored":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_39

    .line 585
    return-void

    .line 575
    .restart local v1    # "ignored":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :catchall_2d
    move-exception v2

    if-eqz v1, :cond_38

    :try_start_30
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v3

    :try_start_35
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .end local p1    # "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;"
    :cond_38
    :goto_38
    throw v2

    .line 584
    .end local v1    # "ignored":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    .restart local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .restart local p1    # "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;"
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method protected final deliverToListeners(Ljava/util/function/Function;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TTRegistration;",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;>;)V"
        }
    .end annotation

    .line 550
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TTRegistration;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 551
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_41

    .line 552
    .local v1, "ignored":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :try_start_9
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 553
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_2e

    .line 554
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 555
    .local v4, "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 556
    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    .line 557
    .local v5, "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;"
    if-eqz v5, :cond_2b

    .line 558
    invoke-virtual {v4, v5}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_35

    .line 553
    .end local v4    # "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    .end local v5    # "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;"
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 562
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2e
    if-eqz v1, :cond_33

    :try_start_30
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    .line 563
    .end local v1    # "ignored":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_41

    .line 564
    return-void

    .line 551
    .restart local v1    # "ignored":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :catchall_35
    move-exception v2

    if-eqz v1, :cond_40

    :try_start_38
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v3

    :try_start_3d
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .end local p1    # "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TTRegistration;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;>;"
    :cond_40
    :goto_40
    throw v2

    .line 563
    .end local v1    # "ignored":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    .restart local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .restart local p1    # "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TTRegistration;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;>;"
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_41

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 596
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 597
    :try_start_3
    const-string/jumbo v1, "service: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getServiceState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 601
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 602
    const-string/jumbo v1, "listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 605
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v1, :cond_4c

    .line 606
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 607
    .local v3, "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    const-string v4, "  "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 609
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v4

    if-nez v4, :cond_46

    .line 610
    const-string v4, " (inactive)"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_49

    .line 612
    :cond_46
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 605
    .end local v3    # "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 616
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_4c
    monitor-exit v0

    .line 617
    return-void

    .line 616
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method protected getServiceState()Ljava/lang/String;
    .registers 2

    .line 624
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v0, :cond_11

    .line 625
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 626
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 628
    :cond_d
    const-string/jumbo v0, "registered"

    return-object v0

    .line 631
    :cond_11
    const-string/jumbo v0, "unregistered"

    return-object v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method protected abstract isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRegistration;)Z"
        }
    .end annotation
.end method

.method protected abstract mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTRegistration;>;)TTMergedRegistration;"
        }
    .end annotation
.end method

.method public newUpdateServiceLock()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.UpdateService",
            "Lock;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceLock;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;)V

    return-object v0
.end method

.method protected onActive()V
    .registers 1

    .line 207
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    return-void
.end method

.method protected onInactive()V
    .registers 1

    .line 215
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    return-void
.end method

.method protected onRegister()V
    .registers 1

    .line 169
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    return-void
.end method

.method protected onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTRegistration;)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    return-void
.end method

.method protected onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTRegistration;)V"
        }
    .end annotation

    .line 199
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    return-void
.end method

.method protected onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTRegistration;TTRegistration;)V"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "oldRegistration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    .local p3, "newRegistration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    invoke-virtual {p0, p1, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 193
    return-void
.end method

.method protected onUnregister()V
    .registers 1

    .line 177
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    return-void
.end method

.method protected final putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTRegistration;)V"
        }
    .end annotation

    .line 222
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->replaceRegistration(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 223
    return-void
.end method

.method protected abstract registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTMergedRegistration;",
            "Ljava/util/Collection<",
            "TTRegistration;>;)Z"
        }
    .end annotation
.end method

.method protected final removeRegistration(Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;

    .line 289
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 293
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 294
    .local v1, "index":I
    if-gez v1, :cond_1c

    .line 295
    monitor-exit v0

    return-void

    .line 298
    :cond_1c
    invoke-direct {p0, v1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(IZ)Lcom/android/server/location/listeners/ListenerRegistration;

    .line 299
    nop

    .end local v1    # "index":I
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method protected final removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/android/server/location/listeners/ListenerRegistration<",
            "*>;)V"
        }
    .end annotation

    .line 338
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .local p2, "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "Lcom/android/server/location/listeners/ListenerRegistration<*>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 340
    .local v1, "index":I
    if-gez v1, :cond_d

    .line 341
    monitor-exit v0

    return-void

    .line 344
    :cond_d
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 345
    .local v2, "typedRegistration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    if-eq v2, p2, :cond_19

    .line 346
    monitor-exit v0

    return-void

    .line 349
    :cond_19
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 350
    invoke-direct {p0, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregister(Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 351
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->markForRemoval(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    goto :goto_2e

    .line 353
    :cond_2a
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(IZ)Lcom/android/server/location/listeners/ListenerRegistration;

    .line 355
    .end local v1    # "index":I
    .end local v2    # "typedRegistration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    :goto_2e
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method protected final removeRegistrationIf(Ljava/util/function/Predicate;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "TTKey;>;)V"
        }
    .end annotation

    .line 307
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTKey;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 309
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 317
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_64

    .line 318
    .local v1, "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    :try_start_17
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_58

    .line 320
    .local v2, "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 321
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    if-ge v4, v3, :cond_40

    .line 322
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 323
    .local v5, "key":Ljava/lang/Object;, "TTKey;"
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 324
    iget-object v6, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/listeners/ListenerRegistration;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_4c

    .line 321
    .end local v5    # "key":Ljava/lang/Object;, "TTKey;"
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 327
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_40
    if-eqz v2, :cond_45

    :try_start_42
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_58

    .end local v2    # "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :cond_45
    if-eqz v1, :cond_4a

    :try_start_47
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    .line 328
    .end local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    :cond_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_64

    .line 329
    return-void

    .line 317
    .restart local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .restart local v2    # "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :catchall_4c
    move-exception v3

    if-eqz v2, :cond_57

    :try_start_4f
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception v4

    :try_start_54
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .end local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .end local p1    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTKey;>;"
    :cond_57
    :goto_57
    throw v3
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_58

    .end local v2    # "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    .restart local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .restart local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .restart local p1    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTKey;>;"
    :catchall_58
    move-exception v2

    if-eqz v1, :cond_63

    :try_start_5b
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception v3

    :try_start_60
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .end local p1    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTKey;>;"
    :cond_63
    :goto_63
    throw v2

    .line 328
    .end local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .restart local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .restart local p1    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTKey;>;"
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_64

    throw v1
.end method

.method protected final replaceRegistration(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTKey;TTRegistration;)V"
        }
    .end annotation

    .line 237
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .local p1, "oldKey":Ljava/lang/Object;, "TTKey;"
    .local p2, "key":Ljava/lang/Object;, "TTKey;"
    .local p3, "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 243
    :try_start_c
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 246
    if-eq p1, p2, :cond_29

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_29

    :cond_27
    move v1, v3

    goto :goto_2a

    :cond_29
    :goto_29
    move v1, v2

    :goto_2a
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 254
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_98

    .line 255
    .local v1, "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    :try_start_33
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v4
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_8c

    .line 257
    .local v4, "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :try_start_39
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    .line 259
    .local v5, "wasEmpty":Z
    const/4 v6, 0x0

    .line 260
    .local v6, "oldRegistration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    iget-object v7, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v7

    .line 261
    .local v7, "index":I
    if-ltz v7, :cond_51

    .line 262
    if-eq p1, p2, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v3

    :goto_4c
    invoke-direct {p0, v7, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(IZ)Lcom/android/server/location/listeners/ListenerRegistration;

    move-result-object v2

    move-object v6, v2

    .line 264
    :cond_51
    if-ne p1, p2, :cond_5b

    if-ltz v7, :cond_5b

    .line 265
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7, p3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    .line 267
    :cond_5b
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :goto_60
    if-eqz v5, :cond_65

    .line 271
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegister()V

    .line 273
    :cond_65
    invoke-virtual {p3, p2}, Lcom/android/server/location/listeners/ListenerRegistration;->onRegister(Ljava/lang/Object;)V

    .line 274
    if-nez v6, :cond_6e

    .line 275
    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    goto :goto_71

    .line 277
    :cond_6e
    invoke-virtual {p0, p2, v6, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 279
    :goto_71
    invoke-direct {p0, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_74
    .catchall {:try_start_39 .. :try_end_74} :catchall_80

    .line 280
    .end local v5    # "wasEmpty":Z
    .end local v6    # "oldRegistration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    .end local v7    # "index":I
    if-eqz v4, :cond_79

    :try_start_76
    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_8c

    .end local v4    # "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :cond_79
    if-eqz v1, :cond_7e

    :try_start_7b
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    .line 281
    .end local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    :cond_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_98

    .line 282
    return-void

    .line 254
    .restart local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .restart local v4    # "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :catchall_80
    move-exception v2

    if-eqz v4, :cond_8b

    :try_start_83
    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_8b

    :catchall_87
    move-exception v3

    :try_start_88
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .end local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .end local p1    # "oldKey":Ljava/lang/Object;, "TTKey;"
    .end local p2    # "key":Ljava/lang/Object;, "TTKey;"
    .end local p3    # "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    :cond_8b
    :goto_8b
    throw v2
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_8c

    .end local v4    # "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    .restart local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .restart local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .restart local p1    # "oldKey":Ljava/lang/Object;, "TTKey;"
    .restart local p2    # "key":Ljava/lang/Object;, "TTKey;"
    .restart local p3    # "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    :catchall_8c
    move-exception v2

    if-eqz v1, :cond_97

    :try_start_8f
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_97

    :catchall_93
    move-exception v3

    :try_start_94
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .end local p1    # "oldKey":Ljava/lang/Object;, "TTKey;"
    .end local p2    # "key":Ljava/lang/Object;, "TTKey;"
    .end local p3    # "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    :cond_97
    :goto_97
    throw v2

    .line 281
    .end local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .restart local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .restart local p1    # "oldKey":Ljava/lang/Object;, "TTKey;"
    .restart local p2    # "key":Ljava/lang/Object;, "TTKey;"
    .restart local p3    # "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    :catchall_98
    move-exception v1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_98

    throw v1
.end method

.method protected reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTMergedRegistration;TTMergedRegistration;",
            "Ljava/util/Collection<",
            "TTRegistration;>;)Z"
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .local p1, "oldMerged":Ljava/lang/Object;, "TTMergedRegistration;"
    .local p2, "newMerged":Ljava/lang/Object;, "TTMergedRegistration;"
    .local p3, "registrations":Ljava/util/Collection;, "Ljava/util/Collection<TTRegistration;>;"
    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final resetService()V
    .registers 3

    .line 440
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 441
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v1, :cond_13

    .line 442
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    .line 443
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 444
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregisterWithService()V

    .line 445
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    .line 447
    :cond_13
    monitor-exit v0

    .line 448
    return-void

    .line 447
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected abstract unregisterWithService()V
.end method

.method protected final updateRegistration(Ljava/lang/Object;Ljava/util/function/Predicate;)Z
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Predicate<",
            "TTRegistration;>;)Z"
        }
    .end annotation

    .line 495
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTRegistration;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 501
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_5a

    .line 502
    .local v1, "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    :try_start_9
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_4e

    .line 504
    .local v2, "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :try_start_f
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_42

    .line 505
    .local v3, "index":I
    if-gez v3, :cond_24

    .line 506
    const/4 v4, 0x0

    .line 514
    if-eqz v2, :cond_1d

    :try_start_1a
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_4e

    :cond_1d
    if-eqz v1, :cond_22

    :try_start_1f
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_5a

    .line 506
    return v4

    .line 509
    :cond_24
    :try_start_24
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 510
    .local v4, "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 511
    invoke-direct {p0, v4}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_42

    .line 513
    :cond_35
    const/4 v5, 0x1

    .line 514
    if-eqz v2, :cond_3b

    :try_start_38
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_4e

    :cond_3b
    if-eqz v1, :cond_40

    :try_start_3d
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_5a

    .line 513
    return v5

    .line 501
    .end local v3    # "index":I
    .end local v4    # "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    :catchall_42
    move-exception v3

    if-eqz v2, :cond_4d

    :try_start_45
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v4

    :try_start_4a
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .end local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTRegistration;>;"
    :cond_4d
    :goto_4d
    throw v3
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4e

    .end local v2    # "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    .restart local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .restart local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTRegistration;>;"
    :catchall_4e
    move-exception v2

    if-eqz v1, :cond_59

    :try_start_51
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception v3

    :try_start_56
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTRegistration;>;"
    :cond_59
    :goto_59
    throw v2

    .line 515
    .end local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .restart local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTRegistration;>;"
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method protected final updateRegistrations(Ljava/util/function/Predicate;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "TTRegistration;>;)V"
        }
    .end annotation

    .line 466
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTRegistration;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 472
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_50

    .line 473
    .local v1, "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    :try_start_9
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_44

    .line 475
    .local v2, "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :try_start_f
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 476
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v3, :cond_2c

    .line 477
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 478
    .local v5, "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 479
    invoke-direct {p0, v5}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_38

    .line 476
    .end local v5    # "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 482
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_2c
    if-eqz v2, :cond_31

    :try_start_2e
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_44

    .end local v2    # "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :cond_31
    if-eqz v1, :cond_36

    :try_start_33
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    .line 483
    .end local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_50

    .line 484
    return-void

    .line 472
    .restart local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .restart local v2    # "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    :catchall_38
    move-exception v3

    if-eqz v2, :cond_43

    :try_start_3b
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v4

    :try_start_40
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .end local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .end local p1    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTRegistration;>;"
    :cond_43
    :goto_43
    throw v3
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_44

    .end local v2    # "ignored2":Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
    .restart local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .restart local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .restart local p1    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTRegistration;>;"
    :catchall_44
    move-exception v2

    if-eqz v1, :cond_4f

    :try_start_47
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v3

    :try_start_4c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .end local p1    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTRegistration;>;"
    :cond_4f
    :goto_4f
    throw v2

    .line 483
    .end local v1    # "ignored1":Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>.UpdateServiceBuffer;"
    .restart local p0    # "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    .restart local p1    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TTRegistration;>;"
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_50

    throw v1
.end method

.method protected final updateService()V
    .registers 7

    .line 395
    .local p0, "this":Lcom/android/server/location/listeners/ListenerMultiplexer;, "Lcom/android/server/location/listeners/ListenerMultiplexer<TTKey;TTListener;TTRegistration;TTMergedRegistration;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 396
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->isBuffered()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 397
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->markUpdateServiceRequired()V

    .line 398
    monitor-exit v0

    return-void

    .line 401
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 402
    .local v1, "actives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TTRegistration;>;"
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 403
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    if-ge v3, v2, :cond_3a

    .line 404
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 405
    .local v4, "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 406
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .end local v4    # "registration":Lcom/android/server/location/listeners/ListenerRegistration;, "TTRegistration;"
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 410
    .end local v3    # "i":I
    :cond_3a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4f

    .line 411
    iget-boolean v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v3, :cond_4d

    .line 412
    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    .line 413
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 414
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregisterWithService()V

    .line 416
    :cond_4d
    monitor-exit v0

    return-void

    .line 419
    :cond_4f
    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    .line 420
    .local v3, "merged":Ljava/lang/Object;, "TTMergedRegistration;"
    iget-boolean v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v5, :cond_5f

    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    .line 421
    :cond_5f
    iget-boolean v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v5, :cond_6c

    .line 422
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    invoke-virtual {p0, v5, v3, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    goto :goto_72

    .line 424
    :cond_6c
    invoke-virtual {p0, v3, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 426
    :goto_72
    iget-boolean v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v5, :cond_77

    move-object v4, v3

    :cond_77
    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    .line 428
    .end local v1    # "actives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TTRegistration;>;"
    .end local v2    # "size":I
    .end local v3    # "merged":Ljava/lang/Object;, "TTMergedRegistration;"
    :cond_79
    monitor-exit v0

    .line 429
    return-void

    .line 428
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_7b

    throw v1
.end method
