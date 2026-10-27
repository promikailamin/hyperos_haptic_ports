.class public Landroid/hardware/contexthub/HubEndpoint;
.super Ljava/lang/Object;
.source "HubEndpoint.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/HubEndpoint$Builder;,
        Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;,
        Landroid/hardware/contexthub/HubEndpoint$Reason;
    }
.end annotation


# static fields
.field public static final whitelist REASON_CLOSE_ENDPOINT_SESSION_REQUESTED:I = 0x4

.field public static final whitelist REASON_ENDPOINT_INVALID:I = 0x5

.field public static final whitelist REASON_ENDPOINT_STOPPED:I = 0x6

.field public static final whitelist REASON_FAILURE:I = 0x0

.field public static final whitelist REASON_OPEN_ENDPOINT_SESSION_REQUEST_REJECTED:I = 0x3

.field public static final whitelist REASON_PERMISSION_DENIED:I = 0x9

.field private static final blacklist TAG:Ljava/lang/String; = "HubEndpoint"


# instance fields
.field private final blacklist mActiveSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/contexthub/HubEndpointSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

.field private final blacklist mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

.field private final blacklist mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

.field private final blacklist mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

.field private final blacklist mServiceCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

.field private blacklist mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAssignedHubEndpointInfo(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointInfo;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointMessageCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceToken(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/IContextHubEndpoint;
    .registers 1

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;Ljava/util/concurrent/Executor;)V
    .registers 7

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    .line 117
    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1;

    invoke-direct {v0, p0}, Landroid/hardware/contexthub/HubEndpoint$1;-><init>(Landroid/hardware/contexthub/HubEndpoint;)V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    .line 345
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 346
    iput-object p2, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    .line 347
    iput-object p3, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 348
    iput-object p4, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    .line 349
    iput-object p5, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 350
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpoint-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/hardware/contexthub/HubEndpoint;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist closeSession(Landroid/hardware/contexthub/HubEndpointSession;)V
    .registers 6

    .line 413
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_3
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 416
    monitor-exit v0

    return-void

    .line 418
    :cond_11
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->setClosed()V

    .line 419
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 420
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_46

    .line 423
    :try_start_1e
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v1

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/hardware/contexthub/IContextHubEndpoint;->closeSession(II)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29

    .line 427
    goto :goto_45

    .line 424
    :catch_29
    move-exception v0

    .line 425
    const-string v1, "HubEndpoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSession: failed to close session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 428
    :goto_45
    return-void

    .line 420
    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public whitelist getLifecycleCallback()Landroid/hardware/contexthub/HubEndpointLifecycleCallback;
    .registers 2

    .line 458
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    return-object v0
.end method

.method public whitelist getMessageCallback()Landroid/hardware/contexthub/HubEndpointMessageCallback;
    .registers 2

    .line 463
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    return-object v0
.end method

.method public whitelist getServiceInfoCollection()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .registers 2

    .line 448
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 443
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo;->getVersion()I

    move-result v0

    return v0
.end method

.method public blacklist openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .registers 11

    .line 390
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_23

    .line 392
    :try_start_3
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/IContextHubEndpoint;->openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)I

    move-result v3

    .line 395
    new-instance v2, Landroid/hardware/contexthub/HubEndpointSession;

    iget-object v6, p0, Landroid/hardware/contexthub/HubEndpoint;->mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1a

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    :try_start_10
    invoke-direct/range {v2 .. v7}, Landroid/hardware/contexthub/HubEndpointSession;-><init>(ILandroid/hardware/contexthub/HubEndpoint;Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 402
    iget-object p1, v4, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    monitor-exit v1

    .line 408
    goto :goto_41

    .line 403
    :catchall_1a
    move-exception v0

    move-object v5, p1

    :goto_1c
    move-object p1, v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_21

    :try_start_1e
    throw p1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 404
    :catch_1f
    move-exception v0

    goto :goto_25

    .line 403
    :catchall_21
    move-exception v0

    goto :goto_1c

    .line 404
    :catch_23
    move-exception v0

    move-object v5, p1

    :goto_25
    move-object p1, v0

    .line 406
    const-string p2, "HubEndpoint"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openSession: failed to open session to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 409
    :goto_41
    return-void
.end method

.method public blacklist register(Landroid/hardware/location/IContextHubService;)V
    .registers 6

    .line 355
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 359
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointInfo;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint;->mPendingHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 360
    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/hardware/location/IContextHubService;->registerEndpoint(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object p1

    .line 361
    invoke-interface {p1}, Landroid/hardware/contexthub/IContextHubEndpoint;->getAssignedHubEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mAssignedHubEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 362
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 366
    goto :goto_28

    .line 363
    :catch_1d
    move-exception p1

    .line 364
    const-string v0, "HubEndpoint"

    const-string v1, "registerEndpoint: failed to register endpoint"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 367
    :goto_28
    return-void
.end method

.method blacklist sendMessage(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V
    .registers 6

    .line 435
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointSession;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Landroid/hardware/contexthub/IContextHubEndpoint;->sendMessage(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 439
    goto :goto_26

    .line 436
    :catch_a
    move-exception p2

    .line 437
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMessage: failed to send message session="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HubEndpoint"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 440
    :goto_26
    return-void
.end method

.method public blacklist unregister()V
    .registers 5

    .line 372
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_2f

    .line 374
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 375
    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubEndpointSession;

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointSession;->setClosed()V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 377
    :cond_20
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 378
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2c

    .line 379
    :try_start_26
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint;->mServiceToken:Landroid/hardware/contexthub/IContextHubEndpoint;

    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHubEndpoint;->unregister()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2f

    .line 383
    goto :goto_3a

    .line 378
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2f} :catch_2f

    .line 380
    :catch_2f
    move-exception v0

    .line 381
    const-string v1, "HubEndpoint"

    const-string v2, "unregisterEndpoint: failed to unregister endpoint"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 384
    :goto_3a
    return-void
.end method
