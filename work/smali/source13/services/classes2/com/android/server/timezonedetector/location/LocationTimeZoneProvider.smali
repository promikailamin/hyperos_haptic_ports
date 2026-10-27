.class abstract Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
.super Ljava/lang/Object;
.source "LocationTimeZoneProvider.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;,
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;,
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;
    }
.end annotation


# instance fields
.field final mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

.field mProviderListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;

.field private final mProviderMetricsLogger:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;

.field final mProviderName:Ljava/lang/String;

.field private final mRecordStateChanges:Z

.field private final mRecordedStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedLock:Ljava/lang/Object;

.field final mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

.field private final mTimeZoneProviderEventPreProcessor:Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;


# direct methods
.method public static synthetic $r8$lambda$qbR8AtKpHfNrxEQ1exygjQponDA(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->handleInitializationTimeout()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;Lcom/android/server/timezonedetector/location/ThreadingDomain;Ljava/lang/String;Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;Z)V
    .registers 8
    .param p1, "providerMetricsLogger"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;
    .param p2, "threadingDomain"    # Lcom/android/server/timezonedetector/location/ThreadingDomain;
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "timeZoneProviderEventPreProcessor"    # Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;
    .param p5, "recordStateChanges"    # Z

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

    .line 367
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 386
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/ThreadingDomain;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    .line 387
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderMetricsLogger:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;

    .line 388
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->createSingleRunnableQueue()Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 389
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 390
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    .line 391
    nop

    .line 392
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mTimeZoneProviderEventPreProcessor:Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;

    .line 393
    iput-boolean p5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordStateChanges:Z

    .line 394
    return-void
.end method

.method private assertCurrentState(I)V
    .registers 6
    .param p1, "requiredState"    # I

    .line 763
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 764
    .local v0, "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    iget v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    if-ne v1, p1, :cond_d

    .line 768
    return-void

    .line 765
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required stateEnum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private assertIsStarted()V
    .registers 5

    .line 755
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 756
    .local v0, "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 759
    return-void

    .line 757
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required a started state, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private cancelInitializationTimeoutIfSet()V
    .registers 2

    .line 779
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->hasQueued()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 780
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    .line 782
    :cond_d
    return-void
.end method

.method private handleInitializationTimeout()V
    .registers 8

    .line 553
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 555
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 557
    .local v1, "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    iget v2, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 559
    const/4 v2, 0x3

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->currentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    const-string v6, "handleInitializationTimeout"

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v2

    .line 562
    .local v2, "newState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    invoke-direct {p0, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 563
    .end local v2    # "newState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    goto :goto_39

    .line 564
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleInitializationTimeout: Initialization timeout triggered when in an unexpected state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 567
    .end local v1    # "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    :goto_39
    monitor-exit v0

    .line 568
    return-void

    .line 567
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V
    .registers 7
    .param p1, "newState"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .param p2, "notifyChanges"    # Z

    .line 480
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 481
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 483
    .local v1, "oldState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onSetCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V

    .line 485
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 486
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderMetricsLogger:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;

    iget v3, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    invoke-interface {v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;->onProviderStateChanged(I)V

    .line 487
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordStateChanges:Z

    if-eqz v2, :cond_2e

    .line 488
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_2e
    if-eqz p2, :cond_35

    .line 491
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;

    invoke-interface {v2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;->onProviderStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V

    .line 494
    .end local v1    # "oldState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    :cond_35
    monitor-exit v0

    .line 495
    return-void

    .line 494
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_37

    throw v1
.end method


# virtual methods
.method final clearRecordedStates()V
    .registers 3

    .line 457
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 458
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 460
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 461
    monitor-exit v0

    .line 462
    return-void

    .line 461
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method final destroy()V
    .registers 6

    .line 434
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 436
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 438
    .local v1, "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_25

    .line 439
    const/4 v2, 0x6

    const-string v3, "destroy"

    .line 440
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v2

    .line 441
    .local v2, "destroyedState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 442
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onDestroy()V

    .line 444
    .end local v1    # "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .end local v2    # "destroyedState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    :cond_25
    monitor-exit v0

    .line 445
    return-void

    .line 444
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v1
.end method

.method final getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .registers 3

    .line 511
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 512
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    monitor-exit v0

    return-object v1

    .line 514
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw v1
.end method

.method getInitializationTimeoutDelay()Ljava/time/Duration;
    .registers 4

    .line 786
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 787
    :try_start_3
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->getQueuedDelayMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 788
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method final getName()Ljava/lang/String;
    .registers 2

    .line 522
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 523
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    return-object v0
.end method

.method final getRecordedStates()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 469
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 471
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v1
.end method

.method final handleTemporaryFailure(Ljava/lang/String;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 712
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 714
    .local v1, "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    iget v2, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    packed-switch v2, :pswitch_data_ce

    .line 747
    new-instance v2, Ljava/lang/IllegalStateException;

    goto/16 :goto_b4

    .line 740
    :pswitch_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleProviderLost reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mProviderName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": No state change required, provider is terminated."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 744
    goto :goto_b2

    .line 732
    :pswitch_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleProviderLost reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mProviderName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": No state change required, provider is stopped."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 736
    goto :goto_b2

    .line 722
    :pswitch_7f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTemporaryFailure: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 723
    invoke-static {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->-$$Nest$smprettyPrintStateEnum(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "debugInfo":Ljava/lang/String;
    const/4 v3, 0x3

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->currentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v3

    .line 727
    .local v3, "newState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 728
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->cancelInitializationTimeoutIfSet()V

    .line 729
    nop

    .line 750
    .end local v1    # "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .end local v2    # "debugInfo":Ljava/lang/String;
    .end local v3    # "newState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    :goto_b2
    monitor-exit v0

    .line 751
    return-void

    .line 747
    .restart local v1    # "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    :goto_b4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown currentState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .end local p1    # "reason":Ljava/lang/String;
    throw v2

    .line 750
    .end local v1    # "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .restart local p0    # "this":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .restart local p1    # "reason":Ljava/lang/String;
    :catchall_cb
    move-exception v1

    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_8 .. :try_end_cd} :catchall_cb

    throw v1

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_4c
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method final handleTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V
    .registers 10
    .param p1, "timeZoneProviderEvent"    # Landroid/service/timezone/TimeZoneProviderEvent;

    .line 609
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 610
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mTimeZoneProviderEventPreProcessor:Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;

    .line 613
    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;->preProcess(Landroid/service/timezone/TimeZoneProviderEvent;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object p1

    .line 615
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTimeZoneProviderEvent: mProviderName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeZoneProviderEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 619
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 620
    .local v1, "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getType()I

    move-result v2

    .line 621
    .local v2, "eventType":I
    iget v3, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_17e

    .line 702
    new-instance v3, Ljava/lang/IllegalStateException;

    goto/16 :goto_163

    .line 626
    :pswitch_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimeZoneProviderEvent: Event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " received for provider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when in terminated state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 628
    monitor-exit v0

    return-void

    .line 631
    :pswitch_73
    packed-switch v2, :pswitch_data_18e

    .line 656
    new-instance v3, Ljava/lang/IllegalStateException;

    goto :goto_d5

    .line 648
    :pswitch_79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimeZoneProviderEvent: event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " received for stopped provider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 653
    monitor-exit v0

    return-void

    .line 633
    :pswitch_a1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTimeZoneProviderEvent: Failure event="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " received for stopped provider="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", entering permanently failed state"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "msg":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v1, v4, v6, v6, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v4

    .line 640
    .local v4, "newState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    invoke-direct {p0, v4, v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 641
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->cancelInitializationTimeoutIfSet()V

    .line 642
    monitor-exit v0

    return-void

    .line 656
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "newState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    :goto_d5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown eventType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .end local p1    # "timeZoneProviderEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    throw v3

    .line 664
    .restart local p0    # "this":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .restart local p1    # "timeZoneProviderEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    :pswitch_ec
    packed-switch v2, :pswitch_data_198

    .line 696
    new-instance v3, Ljava/lang/IllegalStateException;

    goto :goto_14c

    .line 683
    :pswitch_f2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_f7

    .line 684
    const/4 v3, 0x3

    .local v3, "providerStateEnum":I
    goto :goto_f8

    .line 686
    .end local v3    # "providerStateEnum":I
    :cond_f7
    const/4 v3, 0x2

    .line 688
    .restart local v3    # "providerStateEnum":I
    :goto_f8
    iget-object v4, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->currentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    const-string v6, "handleTimeZoneProviderEvent"

    invoke-virtual {v1, v3, p1, v4, v6}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v4

    .line 691
    .restart local v4    # "newState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    invoke-direct {p0, v4, v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 692
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->cancelInitializationTimeoutIfSet()V

    .line 693
    monitor-exit v0

    return-void

    .line 666
    .end local v3    # "providerStateEnum":I
    .end local v4    # "newState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    :pswitch_108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTimeZoneProviderEvent: Failure event="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " received for provider="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " in state="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 669
    invoke-static {v7}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->-$$Nest$smprettyPrintStateEnum(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", entering permanently failed state"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 672
    .local v3, "msg":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v1, v4, v6, v6, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v4

    .line 675
    .restart local v4    # "newState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    invoke-direct {p0, v4, v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 676
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->cancelInitializationTimeoutIfSet()V

    .line 678
    monitor-exit v0

    return-void

    .line 696
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "newState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    :goto_14c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown eventType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .end local p1    # "timeZoneProviderEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    throw v3

    .line 702
    .restart local p0    # "this":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .restart local p1    # "timeZoneProviderEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    :goto_163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown providerType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .end local p1    # "timeZoneProviderEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    throw v3

    .line 705
    .end local v1    # "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .end local v2    # "eventType":I
    .restart local p0    # "this":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .restart local p1    # "timeZoneProviderEvent":Landroid/service/timezone/TimeZoneProviderEvent;
    :catchall_17a
    move-exception v1

    monitor-exit v0
    :try_end_17c
    .catchall {:try_start_11 .. :try_end_17c} :catchall_17a

    throw v1

    nop

    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_ec
        :pswitch_ec
        :pswitch_ec
        :pswitch_73
        :pswitch_4b
        :pswitch_4b
    .end packed-switch

    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_79
        :pswitch_79
    .end packed-switch

    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_108
        :pswitch_f2
        :pswitch_f2
    .end packed-switch
.end method

.method final initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;)V
    .registers 9
    .param p1, "providerListener"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;

    .line 400
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 402
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;

    if-nez v1, :cond_52

    .line 406
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;

    .line 407
    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->createStartingState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v1

    .line 408
    .local v1, "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    const/4 v2, 0x4

    const-string v3, "initialize"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v2

    move-object v1, v2

    .line 409
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_5a

    .line 413
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onInitialize()V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_29
    .catchall {:try_start_25 .. :try_end_28} :catchall_5a

    .line 419
    goto :goto_50

    .line 414
    :catch_29
    move-exception v2

    .line 415
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_2a
    const-string v3, "Unable to initialize the provider"

    invoke-static {v3, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to initialize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 417
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 416
    invoke-virtual {v1, v3, v4, v4, v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v3

    move-object v1, v3

    .line 418
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 420
    .end local v1    # "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_50
    monitor-exit v0

    .line 421
    return-void

    .line 404
    :cond_52
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "initialize already called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .end local p1    # "providerListener":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;
    throw v1

    .line 420
    .restart local p0    # "this":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .restart local p1    # "providerListener":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_2a .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method isInitializationTimeoutSet()Z
    .registers 3

    .line 772
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_3
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->hasQueued()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 774
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method abstract onDestroy()V
.end method

.method abstract onInitialize()V
.end method

.method onSetCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V
    .registers 2
    .param p1, "newState"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 503
    return-void
.end method

.method abstract onStartUpdates(Ljava/time/Duration;Ljava/time/Duration;)V
.end method

.method abstract onStopUpdates()V
.end method

.method final startUpdates(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/time/Duration;Ljava/time/Duration;Ljava/time/Duration;)V
    .registers 13
    .param p1, "currentUserConfiguration"    # Lcom/android/server/timezonedetector/ConfigurationInternal;
    .param p2, "initializationTimeout"    # Ljava/time/Duration;
    .param p3, "initializationTimeoutFuzz"    # Ljava/time/Duration;
    .param p4, "eventFilteringAgeThreshold"    # Ljava/time/Duration;

    .line 534
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 536
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    const/4 v1, 0x4

    :try_start_9
    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->assertCurrentState(I)V

    .line 539
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 540
    .local v1, "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "startUpdates"

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v2

    .line 542
    .local v2, "newState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 544
    invoke-virtual {p2, p3}, Ljava/time/Duration;->plus(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v3

    .line 545
    .local v3, "delay":Ljava/time/Duration;
    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    new-instance v5, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 546
    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v6

    .line 545
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->runDelayed(Ljava/lang/Runnable;J)V

    .line 548
    invoke-virtual {p0, p2, p4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onStartUpdates(Ljava/time/Duration;Ljava/time/Duration;)V

    .line 549
    .end local v1    # "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .end local v2    # "newState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .end local v3    # "delay":Ljava/time/Duration;
    monitor-exit v0

    .line 550
    return-void

    .line 549
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method final stopUpdates()V
    .registers 6

    .line 586
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 588
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->assertIsStarted()V

    .line 591
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 592
    .local v1, "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    const/4 v2, 0x4

    const-string/jumbo v3, "stopUpdates"

    .line 593
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v2

    .line 594
    .local v2, "newState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 596
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->cancelInitializationTimeoutIfSet()V

    .line 598
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onStopUpdates()V

    .line 599
    .end local v1    # "currentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .end local v2    # "newState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    monitor-exit v0

    .line 600
    return-void

    .line 599
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v1
.end method
