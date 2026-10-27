.class public Lcom/android/server/location/contexthub/HubInfoRegistry;
.super Ljava/lang/Object;
.source "HubInfoRegistry.java"

# interfaces
.implements Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;


# instance fields
.field public final mCallbackLock:Ljava/lang/Object;

.field public final mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mEndpointDiscoveryCallbacks:Ljava/util/List;

.field public final mHubEndpointInfos:Landroid/util/ArrayMap;

.field public mHubsInfo:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$7-F02yP-nYvSK3Y5lp-W2N5HyHY(Lcom/android/server/location/contexthub/HubInfoRegistry;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->lambda$acquireWakeLock$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$QBoBT60ZQptf3kjxWZuPTaT2sc8(BLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;[Landroid/hardware/contexthub/HubEndpointInfo;)V
    .registers 3

    .line 260
    :try_start_0
    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toAppHubEndpointReason(B)I

    move-result p0

    .line 259
    invoke-interface {p1, p2, p0}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->onEndpointsStopped([Landroid/hardware/contexthub/HubEndpointInfo;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 262
    const-string p1, "HubInfoRegistry"

    const-string p2, "Exception while calling onEndpointsStopped"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$Qrk1k42BYvbl0zwgh5utalM0iRo(Lcom/android/server/location/contexthub/HubInfoRegistry;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->lambda$releaseWakeLock$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$j4LJXTw6edBTK-za5okcRmvtqwc(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;[Landroid/hardware/contexthub/HubEndpointInfo;)V
    .registers 3

    .line 235
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->onEndpointsStarted([Landroid/hardware/contexthub/HubEndpointInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 237
    const-string p1, "HubInfoRegistry"

    const-string v0, "Exception while calling onEndpointsStarted"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V
    .registers 5

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    .line 154
    iput-object p2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 155
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedHubs()V

    .line 156
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedEndpoints()V

    .line 158
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 159
    const-string v0, "HubInfoRegistry"

    if-eqz p2, :cond_4e

    const/4 v1, 0x1

    .line 164
    invoke-virtual {p2, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 165
    new-instance p0, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 166
    invoke-virtual {p2, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void

    .line 161
    :cond_4e
    const-string p0, "PowerManager was null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance p1, Ljava/lang/InstantiationException;

    invoke-direct {p1, p0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final acquireWakeLock()V
    .registers 2

    .line 389
    new-instance v0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final checkCallbackAlreadyRegistered(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .registers 5

    .line 349
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    .line 351
    invoke-static {v1}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->-$$Nest$fgetmCallback(Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_24

    goto :goto_9

    .line 352
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback is already registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2c
    move-exception p0

    goto :goto_30

    .line 355
    :cond_2e
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2c

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    .line 409
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/HubInfoRegistry;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    .line 411
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 416
    const-string v0, "HubInfoRegistry"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 419
    const-string v0, "Hubs"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubsInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/HubInfo;

    .line 421
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_13

    .line 423
    :cond_23
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 425
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 427
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 428
    const-string v0, "Endpoints"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 429
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 430
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3b

    .line 432
    :cond_4b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 434
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public findEndpoints(J)Ljava/util/List;
    .registers 9

    .line 269
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedEndpoints()V

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_b
    iget-object v2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    .line 273
    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_15

    .line 274
    iget-object v4, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :catchall_35
    move-exception p0

    goto :goto_39

    .line 277
    :cond_37
    monitor-exit v1

    return-object v0

    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_35

    throw p0
.end method

.method public findEndpointsWithService(Ljava/lang/String;)Ljava/util/List;
    .registers 7

    .line 285
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedEndpoints()V

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_b
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 289
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/HubServiceInfo;

    .line 290
    invoke-virtual {v4}, Landroid/hardware/contexthub/HubServiceInfo;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 291
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :catchall_43
    move-exception p0

    goto :goto_47

    .line 295
    :cond_45
    monitor-exit v1

    return-object v0

    :goto_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_43

    throw p0
.end method

.method public getEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;)Landroid/hardware/contexthub/HubEndpointInfo;
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/contexthub/HubEndpointInfo;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 211
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getHubs()Ljava/util/List;
    .registers 2

    .line 171
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedHubs()V

    .line 172
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_6
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubsInfo:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    .line 174
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final invokeForMatchingEndpoints([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/util/function/BiConsumer;)V
    .registers 11

    .line 369
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 371
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 372
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    .line 373
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 374
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v4, :cond_2f

    aget-object v6, p1, v5

    .line 375
    invoke-virtual {v2, v6}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->isMatch(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 376
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :catchall_2a
    move-exception p0

    goto :goto_48

    :cond_2c
    :goto_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 380
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->acquireWakeLock()V

    .line 382
    invoke-virtual {v2}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->getCallback()Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object v2

    .line 383
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/contexthub/HubEndpointInfo;

    .line 381
    invoke-interface {p2, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 385
    :cond_46
    monitor-exit v0

    return-void

    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_2a

    throw p0
.end method

.method public final synthetic lambda$acquireWakeLock$2()V
    .registers 3

    .line 391
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public final synthetic lambda$releaseWakeLock$3()V
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 400
    :try_start_8
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 402
    const-string v0, "HubInfoRegistry"

    const-string v1, "Releasing the wakelock fails - "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    return-void
.end method

.method public onDiscoveryCallbackFinished()V
    .registers 1

    .line 344
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->releaseWakeLock()V

    return-void
.end method

.method public onEndpointStarted([Landroid/hardware/contexthub/HubEndpointInfo;)V
    .registers 8

    .line 224
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_3
    array-length v1, p1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_20

    aget-object v3, p1, v2

    .line 226
    iget-object v4, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v4, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_1e
    move-exception p0

    goto :goto_2a

    .line 229
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1e

    .line 231
    new-instance v0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->invokeForMatchingEndpoints([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/util/function/BiConsumer;)V

    return-void

    .line 229
    :goto_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_1e

    throw p0
.end method

.method public onEndpointStopped([Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;B)V
    .registers 9

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_8
    array-length v2, p1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_21

    aget-object v4, p1, v3

    .line 248
    iget-object v5, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/HubEndpointInfo;

    if-eqz v4, :cond_1e

    .line 250
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_37

    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 253
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_1c

    .line 256
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/contexthub/HubEndpointInfo;

    new-instance v0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda0;-><init>(B)V

    .line 255
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->invokeForMatchingEndpoints([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/util/function/BiConsumer;)V

    return-void

    .line 253
    :goto_37
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_1c

    throw p0
.end method

.method public onHalRestart()V
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedHubs()V

    .line 218
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedEndpoints()V

    .line 219
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final refreshCachedEndpoints()V
    .registers 6

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getEndpoints()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_24

    :catch_7
    move-exception v0

    .line 196
    const-string v1, "HubInfoRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while getting Hub info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 200
    :goto_24
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_27
    iget-object v2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 203
    iget-object v3, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :catchall_46
    move-exception p0

    goto :goto_4a

    .line 205
    :cond_48
    monitor-exit v1

    return-void

    :goto_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_27 .. :try_end_4b} :catchall_46

    throw p0
.end method

.method public final refreshCachedHubs()V
    .registers 5

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getHubs()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_24

    :catch_7
    move-exception v0

    .line 182
    const-string v1, "HubInfoRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while getting Hub info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 186
    :goto_24
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_27
    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubsInfo:Ljava/util/List;

    .line 188
    monitor-exit v1

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public registerEndpointDiscoveryCallback(JLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .registers 7

    .line 302
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_8
    invoke-virtual {p0, p3}, Lcom/android/server/location/contexthub/HubInfoRegistry;->checkCallbackAlreadyRegistered(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_16

    .line 306
    :try_start_b
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;J)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_18
    .catchall {:try_start_b .. :try_end_15} :catchall_16

    goto :goto_20

    :catchall_16
    move-exception p0

    goto :goto_22

    :catch_18
    move-exception p0

    .line 308
    :try_start_19
    const-string p1, "HubInfoRegistry"

    const-string p2, "RemoteException while adding discovery callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    :goto_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_16

    throw p0
.end method

.method public registerEndpointDiscoveryCallback(Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .registers 6

    .line 316
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_8
    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry;->checkCallbackAlreadyRegistered(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_16

    .line 320
    :try_start_b
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_18
    .catchall {:try_start_b .. :try_end_15} :catchall_16

    goto :goto_20

    :catchall_16
    move-exception p0

    goto :goto_22

    :catch_18
    move-exception p0

    .line 323
    :try_start_19
    const-string p1, "HubInfoRegistry"

    const-string p2, "RemoteException while adding discovery callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    :goto_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_16

    throw p0
.end method

.method public final releaseWakeLock()V
    .registers 2

    .line 396
    new-instance v0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .registers 5

    .line 330
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_8
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 333
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 334
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->getCallback()Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_e

    .line 335
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_2e

    :catchall_2c
    move-exception p0

    goto :goto_30

    .line 339
    :cond_2e
    :goto_2e
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2c

    throw p0
.end method
