.class public abstract Lcom/android/server/location/listeners/ListenerMultiplexer;
.super Ljava/lang/Object;
.source "ListenerMultiplexer.java"


# instance fields
.field public mActiveRegistrationsCount:I

.field public mMerged:Ljava/lang/Object;

.field public final mMultiplexerLock:Ljava/lang/Object;

.field public final mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

.field public final mRegistrations:Landroid/util/ArrayMap;

.field public mServiceRegistered:Z

.field public final mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRegistrations(Lcom/android/server/location/listeners/ListenerMultiplexer;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateServiceBuffer(Lcom/android/server/location/listeners/ListenerMultiplexer;)Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    .line 102
    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-direct {v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    .line 104
    new-instance v0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-direct {v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;-><init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    .line 109
    iput-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    return-void
.end method


# virtual methods
.method public final deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .registers 8

    .line 617
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2f

    .line 619
    :try_start_9
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_29

    .line 621
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 622
    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 623
    invoke-virtual {v4, p1}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_24

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_33

    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_29
    if-eqz v1, :cond_31

    .line 626
    :try_start_2b
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_3e

    .line 627
    :cond_31
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_2f

    return-void

    :goto_33
    if-eqz v1, :cond_3d

    .line 618
    :try_start_35
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception p1

    :try_start_3a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    throw p0

    .line 627
    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_2f

    throw p0
.end method

.method public final deliverToListeners(Ljava/util/function/Function;)V
    .registers 8

    .line 593
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_37

    .line 595
    :try_start_9
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_31

    .line 597
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 598
    invoke-virtual {v4}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 599
    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    if-eqz v5, :cond_2e

    .line 601
    invoke-virtual {v4, v5}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_2c

    goto :goto_2e

    :catchall_2c
    move-exception p0

    goto :goto_3b

    :cond_2e
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_31
    if-eqz v1, :cond_39

    .line 605
    :try_start_33
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_46

    .line 606
    :cond_39
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_37

    return-void

    :goto_3b
    if-eqz v1, :cond_45

    .line 594
    :try_start_3d
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception p1

    :try_start_42
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    throw p0

    .line 606
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_37

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 640
    iget-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 641
    :try_start_3
    const-string/jumbo p3, "service: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getServiceState()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 645
    iget-object p3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4d

    .line 646
    const-string p3, "listeners:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    iget-object p3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_27
    if-ge v0, p3, :cond_4d

    .line 650
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 651
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 653
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v1

    if-nez v1, :cond_47

    .line 654
    const-string v1, " (inactive)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4a

    :catchall_45
    move-exception p0

    goto :goto_4f

    .line 656
    :cond_47
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 660
    :cond_4d
    monitor-exit p1

    return-void

    :goto_4f
    monitor-exit p1
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_45

    throw p0
.end method

.method public final findRegistration(Ljava/util/function/Predicate;)Z
    .registers 8

    .line 488
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_27

    .line 493
    :try_start_9
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_31

    .line 495
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 496
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2f

    if-eqz v5, :cond_2c

    if-eqz v1, :cond_29

    .line 500
    :try_start_23
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_43

    :cond_29
    :goto_29
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :catchall_2f
    move-exception p0

    goto :goto_38

    :cond_31
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V

    .line 502
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_27

    return v3

    :goto_38
    if-eqz v1, :cond_42

    .line 492
    :try_start_3a
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p1

    :try_start_3f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    throw p0

    .line 503
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_27

    throw p0
.end method

.method public getServiceState()Ljava/lang/String;
    .registers 2

    .line 669
    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v0, :cond_11

    .line 670
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    if-eqz p0, :cond_d

    .line 671
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 673
    :cond_d
    const-string/jumbo p0, "registered"

    return-object p0

    .line 676
    :cond_11
    const-string/jumbo p0, "unregistered"

    return-object p0
.end method

.method public abstract isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z
.end method

.method public abstract mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
.end method

.method public onActive()V
    .registers 1

    .line 0
    return-void
.end method

.method public onInactive()V
    .registers 1

    .line 0
    return-void
.end method

.method public onRegister()V
    .registers 1

    .line 0
    return-void
.end method

.method public final onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 5

    .line 567
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->isRegistered()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 568
    :goto_10
    invoke-virtual {p1, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->setActive(Z)Z

    move-result v2

    if-eqz v2, :cond_36

    if-eqz v0, :cond_26

    .line 571
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    if-ne v0, v1, :cond_22

    .line 572
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onActive()V

    .line 574
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->onActive()V

    goto :goto_33

    .line 576
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->onInactive()V

    .line 577
    iget p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mActiveRegistrationsCount:I

    if-nez p1, :cond_33

    .line 578
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onInactive()V

    .line 582
    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    :cond_36
    return-void
.end method

.method public onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 5

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 215
    invoke-virtual {p0, p3, p4}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public onUnregister()V
    .registers 1

    .line 0
    return-void
.end method

.method public final putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 248
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->replaceRegistration(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public abstract registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
.end method

.method public final removeRegistration(I)V
    .registers 6

    .line 391
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 400
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v2

    .line 401
    :try_start_14
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v3
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_3c

    .line 403
    :try_start_1a
    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregister(Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 404
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 405
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerRegistration;->onUnregister()V

    .line 406
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 407
    iget-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 408
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onUnregister()V
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_34

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_44

    :cond_36
    :goto_36
    if-eqz v3, :cond_3e

    .line 410
    :try_start_38
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_4f

    :cond_3e
    :goto_3e
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_43
    return-void

    :goto_44
    if-eqz v3, :cond_4e

    .line 400
    :try_start_46
    invoke-virtual {v3}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception p1

    :try_start_4b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4e
    :goto_4e
    throw p0
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_3c

    :goto_4f
    if-eqz v2, :cond_59

    :try_start_51
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    throw p0
.end method

.method public final removeRegistration(Ljava/lang/Object;)V
    .registers 4

    .line 349
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 353
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1a

    .line 355
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    goto :goto_1f

    .line 358
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(I)V

    .line 359
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_18

    throw p0
.end method

.method public final removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 6

    .line 369
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_f

    .line 372
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_31

    .line 375
    :cond_f
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/listeners/ListenerRegistration;

    if-eq v2, p2, :cond_1b

    .line 377
    monitor-exit v0

    return-void

    .line 380
    :cond_1b
    iget-object p2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {p2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 381
    invoke-virtual {p0, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregister(Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 382
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->markForRemoval(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    goto :goto_2f

    .line 384
    :cond_2c
    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(I)V

    .line 386
    :goto_2f
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_d

    throw p0
.end method

.method public final removeRegistrationIf(Ljava/util/function/Predicate;)V
    .registers 9

    .line 320
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 330
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_4e

    .line 331
    :try_start_14
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_46

    .line 333
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_40

    .line 335
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 336
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 337
    iget-object v6, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/listeners/ListenerRegistration;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_3b

    goto :goto_3d

    :catchall_3b
    move-exception p0

    goto :goto_52

    :cond_3d
    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_40
    if-eqz v2, :cond_48

    .line 340
    :try_start_42
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_48

    :catchall_46
    move-exception p0

    goto :goto_5d

    :cond_48
    :goto_48
    if-eqz v1, :cond_50

    :try_start_4a
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    goto :goto_50

    :catchall_4e
    move-exception p0

    goto :goto_68

    .line 341
    :cond_50
    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_4e

    return-void

    :goto_52
    if-eqz v2, :cond_5c

    .line 330
    :try_start_54
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception p1

    :try_start_59
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5c
    :goto_5c
    throw p0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_46

    :goto_5d
    if-eqz v1, :cond_67

    :try_start_5f
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_67

    :catchall_63
    move-exception p1

    :try_start_64
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_67
    :goto_67
    throw p0

    .line 341
    :goto_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_4e

    throw p0
.end method

.method public final replaceRegistration(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 11

    .line 262
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_c
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    if-eq p1, p2, :cond_27

    .line 271
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_27

    :cond_22
    const/4 v2, 0x0

    goto :goto_27

    :catchall_24
    move-exception p0

    goto/16 :goto_a5

    :cond_27
    :goto_27
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_24

    .line 280
    :try_start_30
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v2
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_86

    .line 282
    :try_start_36
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    .line 285
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_5c

    .line 288
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 289
    invoke-virtual {p0, v5}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregister(Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 290
    invoke-virtual {v5}, Lcom/android/server/location/listeners/ListenerRegistration;->onUnregister()V

    if-eq p1, p2, :cond_5d

    .line 292
    iget-object v6, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_5d

    :catchall_5a
    move-exception p0

    goto :goto_8f

    :cond_5c
    const/4 v5, 0x0

    :cond_5d
    :goto_5d
    if-ne p1, p2, :cond_67

    if-ltz v4, :cond_67

    .line 296
    iget-object v6, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, p3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 298
    :cond_67
    iget-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6c
    if-eqz v3, :cond_71

    .line 302
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegister()V

    .line 304
    :cond_71
    invoke-virtual {p3, p2}, Lcom/android/server/location/listeners/ListenerRegistration;->onRegister(Ljava/lang/Object;)V

    if-nez v5, :cond_7a

    .line 306
    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    goto :goto_7d

    .line 308
    :cond_7a
    invoke-virtual {p0, p1, v5, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 310
    :goto_7d
    invoke-virtual {p0, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_80
    .catchall {:try_start_36 .. :try_end_80} :catchall_5a

    if-eqz v2, :cond_88

    .line 311
    :try_start_82
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_88

    :catchall_86
    move-exception p0

    goto :goto_9a

    :cond_88
    :goto_88
    if-eqz v1, :cond_8d

    :try_start_8a
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    .line 312
    :cond_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_24

    return-void

    :goto_8f
    if-eqz v2, :cond_99

    .line 279
    :try_start_91
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_99

    :catchall_95
    move-exception p1

    :try_start_96
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_99
    :goto_99
    throw p0
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_86

    :goto_9a
    if-eqz v1, :cond_a4

    :try_start_9c
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a0

    goto :goto_a4

    :catchall_a0
    move-exception p1

    :try_start_a1
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a4
    :goto_a4
    throw p0

    .line 312
    :goto_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_24

    throw p0
.end method

.method public reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 4

    .line 145
    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final resetService()V
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    .line 465
    iput-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 466
    iput-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 467
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregisterWithService()V

    .line 468
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_18

    .line 470
    :cond_16
    :goto_16
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_14

    throw p0
.end method

.method public final unregister(Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 2

    .line 632
    invoke-virtual {p1}, Lcom/android/server/location/listeners/ListenerRegistration;->unregisterInternal()V

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public abstract unregisterWithService()V
.end method

.method public final updateRegistration(Ljava/lang/Object;Ljava/util/function/Predicate;)Z
    .registers 7

    .line 542
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_25

    .line 549
    :try_start_9
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1d

    .line 551
    :try_start_f
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_3c

    if-gez p1, :cond_2a

    if-eqz v2, :cond_1f

    .line 561
    :try_start_19
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_56

    :cond_1f
    :goto_1f
    if-eqz v1, :cond_27

    :try_start_21
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_61

    :cond_27
    :goto_27
    const/4 p0, 0x0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_25

    return p0

    .line 556
    :cond_2a
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 557
    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 558
    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_3c

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_4b

    :cond_3e
    :goto_3e
    if-eqz v2, :cond_43

    .line 561
    :try_start_40
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_1d

    :cond_43
    if-eqz v1, :cond_48

    :try_start_45
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_48
    const/4 p0, 0x1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_25

    return p0

    :goto_4b
    if-eqz v2, :cond_55

    .line 548
    :try_start_4d
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception p1

    :try_start_52
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_55
    :goto_55
    throw p0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_1d

    :goto_56
    if-eqz v1, :cond_60

    :try_start_58
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception p1

    :try_start_5d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_60
    :goto_60
    throw p0

    .line 562
    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_25

    throw p0
.end method

.method public final updateRegistrations(Ljava/util/function/Predicate;)V
    .registers 9

    .line 513
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3d

    .line 520
    :try_start_9
    iget-object v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mReentrancyGuard:Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_35

    .line 522
    :try_start_f
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_2f

    .line 524
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 525
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 526
    invoke-virtual {p0, v5}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationActiveChanged(Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_2a

    goto :goto_2c

    :catchall_2a
    move-exception p0

    goto :goto_41

    :cond_2c
    :goto_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_2f
    if-eqz v2, :cond_37

    .line 529
    :try_start_31
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_37

    :catchall_35
    move-exception p0

    goto :goto_4c

    :cond_37
    :goto_37
    if-eqz v1, :cond_3f

    :try_start_39
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    goto :goto_3f

    :catchall_3d
    move-exception p0

    goto :goto_57

    .line 530
    :cond_3f
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_3d

    return-void

    :goto_41
    if-eqz v2, :cond_4b

    .line 519
    :try_start_43
    invoke-virtual {v2}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception p1

    :try_start_48
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    throw p0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_35

    :goto_4c
    if-eqz v1, :cond_56

    :try_start_4e
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception p1

    :try_start_53
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_56
    :goto_56
    throw p0

    .line 530
    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_3d

    throw p0
.end method

.method public final updateService()V
    .registers 8

    .line 418
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->isBuffered()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 420
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mUpdateServiceBuffer:Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->markUpdateServiceRequired()V

    .line 421
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_75

    .line 424
    :cond_14
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 425
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_21
    if-ge v4, v1, :cond_37

    .line 427
    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/listeners/ListenerRegistration;

    .line 428
    invoke-virtual {v5}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 429
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 433
    :cond_37
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4a

    .line 434
    iget-boolean v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v1, :cond_73

    .line 435
    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    .line 436
    iput-boolean v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    .line 437
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->unregisterWithService()V

    goto :goto_73

    .line 440
    :cond_4a
    invoke-virtual {p0, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    .line 441
    iget-boolean v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v3, :cond_68

    .line 442
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 443
    iget-object v3, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v2, :cond_65

    move-object v4, v1

    .line 444
    :cond_65
    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    goto :goto_73

    .line 447
    :cond_68
    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mServiceRegistered:Z

    if-eqz v2, :cond_71

    move-object v4, v1

    .line 448
    :cond_71
    iput-object v4, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMerged:Ljava/lang/Object;

    .line 451
    :cond_73
    :goto_73
    monitor-exit v0

    return-void

    :goto_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_12

    throw p0
.end method
