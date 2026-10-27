.class Landroid/media/MediaRouter2$LocalMediaRouter2Impl;
.super Ljava/lang/Object;
.source "MediaRouter2.java"

# interfaces
.implements Landroid/media/MediaRouter2$MediaRouter2Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalMediaRouter2Impl"
.end annotation


# instance fields
.field private final blacklist mPackageName:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/media/MediaRouter2;


# direct methods
.method public static synthetic blacklist $r8$lambda$aFJoGEHxImSXiMb3VG6bbcwxYBs(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyStop(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaRouter2;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 4126
    iput-object p1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4127
    iput-object p2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->mPackageName:Ljava/lang/String;

    .line 4128
    return-void
.end method

.method private blacklist registerRouterStubIfNeededLocked()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4520
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 4521
    new-instance v0, Landroid/media/MediaRouter2$MediaRouter2Stub;

    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter2$MediaRouter2Stub;-><init>(Landroid/media/MediaRouter2;)V

    .line 4522
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/media/IMediaRouterService;->registerRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    .line 4523
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, v0}, Landroid/media/MediaRouter2;->-$$Nest$fputmStub(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$MediaRouter2Stub;)V

    .line 4525
    :cond_1f
    return-void
.end method

.method private blacklist unregisterRouterStubIfNeededLocked(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4530
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRouteCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 4531
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v0

    .line 4532
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmScanRequestsMap(Landroid/media/MediaRouter2;)Landroid/util/SparseArray;

    move-result-object v0

    .line 4533
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_43

    .line 4534
    :cond_2e
    iget-object p1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object p1

    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/media/IMediaRouterService;->unregisterRouter2(Landroid/media/IMediaRouter2;)V

    .line 4535
    iget-object p1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/MediaRouter2;->-$$Nest$fputmStub(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$MediaRouter2Stub;)V

    .line 4537
    :cond_43
    return-void
.end method


# virtual methods
.method public blacklist createRouteCallbackRecord(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)Landroid/media/MediaRouter2$RouteCallbackRecord;
    .registers 5

    .line 4194
    new-instance v0, Landroid/media/MediaRouter2$RouteCallbackRecord;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/MediaRouter2$RouteCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    return-object v0
.end method

.method public blacklist deselectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;Landroid/media/RoutingChangeInfo;)V
    .registers 7

    .line 4441
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4442
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v1

    .line 4443
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_30

    .line 4444
    if-eqz v1, :cond_2f

    .line 4446
    if-nez p3, :cond_19

    .line 4447
    :try_start_12
    new-instance p3, Landroid/media/RoutingChangeInfo;

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-direct {p3, v0, v2}, Landroid/media/RoutingChangeInfo;-><init>(IZ)V

    .line 4452
    :cond_19
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    .line 4453
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p2

    .line 4452
    invoke-interface {v0, v1, p2, p1, p3}, Landroid/media/IMediaRouterService;->deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_26} :catch_27

    .line 4456
    goto :goto_2f

    .line 4454
    :catch_27
    move-exception p1

    .line 4455
    const-string p2, "MR2"

    const-string p3, "Unable to deselect route from session."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4458
    :cond_2f
    :goto_2f
    return-void

    .line 4443
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public blacklist filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Landroid/media/RouteDiscoveryPreference;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 4393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4394
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 4395
    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info;->hasAnyFeatures(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 4396
    goto :goto_9

    .line 4398
    :cond_20
    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 4399
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getProviderPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 4401
    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v2

    .line 4402
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getProviderPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 4403
    goto :goto_9

    .line 4405
    :cond_3f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4406
    goto :goto_9

    .line 4407
    :cond_43
    return-object v0
.end method

.method public blacklist getAllRoutes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 4300
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getClientPackageName()Ljava/lang/String;
    .registers 2

    .line 4169
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->mPackageName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public blacklist getControllers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRouter2$RoutingController;",
            ">;"
        }
    .end annotation

    .line 4357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4359
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4360
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4361
    :try_start_16
    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4362
    monitor-exit v1

    .line 4363
    return-object v0

    .line 4362
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public blacklist getDeviceSuggestions()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;>;"
        }
    .end annotation

    .line 4267
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4269
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/IMediaRouterService;->getDeviceSuggestionsWithRouter2(Landroid/media/IMediaRouter2;)Ljava/util/Map;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_1b
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    :try_start_17
    monitor-exit v0

    return-object v1

    .line 4273
    :catchall_19
    move-exception v1

    goto :goto_21

    .line 4270
    :catch_1b
    move-exception v1

    .line 4271
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4273
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_19

    throw v1
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 4174
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSystemSessionInfo()Landroid/media/RoutingSessionInfo;
    .registers 3

    .line 4179
    nop

    .line 4181
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    .line 4182
    invoke-interface {v0}, Landroid/media/IMediaRouterService;->getSystemSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmContext(Landroid/media/MediaRouter2;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4181
    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$smensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_1a

    .line 4185
    goto :goto_1f

    .line 4183
    :catch_1a
    move-exception v0

    .line 4184
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    .line 4186
    :goto_1f
    return-object v0
.end method

.method public blacklist getSystemSessionOverridesAppIds()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/media/AppId;",
            ">;"
        }
    .end annotation

    .line 4514
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAppsWithSystemSessionOverrides is only supported on proxy routers."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist notifyDeviceSuggestionRequested()V
    .registers 1

    .line 4279
    return-void
.end method

.method public blacklist registerRouteCallback()V
    .registers 5

    .line 4199
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4201
    :try_start_7
    invoke-direct {p0}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->registerRouterStubIfNeededLocked()V

    .line 4203
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$mupdateDiscoveryPreferenceIfNeededLocked(Landroid/media/MediaRouter2;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4204
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v3}, Landroid/media/MediaRouter2;->-$$Nest$fgetmDiscoveryPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteDiscoveryPreference;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/media/IMediaRouterService;->setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_27} :catch_2a
    .catchall {:try_start_7 .. :try_end_27} :catchall_28

    .line 4209
    :cond_27
    goto :goto_2e

    .line 4210
    :catchall_28
    move-exception v1

    goto :goto_30

    .line 4207
    :catch_2a
    move-exception v1

    .line 4208
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 4210
    :goto_2e
    monitor-exit v0

    .line 4211
    return-void

    .line 4210
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_28

    throw v1
.end method

.method public blacklist registerSystemSessionOverridesListener(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$SystemSessionOverridesListener;)V
    .registers 3

    .line 4501
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "registerSystemSessionOverridesListener is only supported on proxy routers."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist releaseSession(ZZLandroid/media/MediaRouter2$RoutingController;)V
    .registers 7

    .line 4465
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4466
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p3}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4468
    if-eqz p1, :cond_36

    iget-object p1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_57

    if-eqz p1, :cond_36

    .line 4470
    :try_start_1e
    iget-object p1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object p1

    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v1

    invoke-virtual {p3}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/media/IMediaRouterService;->releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_31} :catch_32
    .catchall {:try_start_1e .. :try_end_31} :catchall_57

    .line 4473
    goto :goto_36

    .line 4471
    :catch_32
    move-exception p1

    .line 4472
    :try_start_33
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 4476
    :cond_36
    :goto_36
    if-eqz p2, :cond_4c

    .line 4477
    iget-object p1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Landroid/media/MediaRouter2$LocalMediaRouter2Impl$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    .line 4478
    invoke-static {p2, v1, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 4477
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_57

    .line 4482
    :cond_4c
    const/4 p1, 0x0

    :try_start_4d
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->unregisterRouterStubIfNeededLocked(Z)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_50} :catch_51
    .catchall {:try_start_4d .. :try_end_50} :catchall_57

    .line 4485
    goto :goto_55

    .line 4483
    :catch_51
    move-exception p1

    .line 4484
    :try_start_52
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 4487
    :goto_55
    monitor-exit v0

    .line 4488
    return-void

    .line 4487
    :catchall_57
    move-exception p1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_57

    throw p1
.end method

.method public blacklist selectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;Landroid/media/RoutingChangeInfo;)V
    .registers 7

    .line 4416
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4417
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v1

    .line 4418
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_30

    .line 4419
    if-eqz v1, :cond_2f

    .line 4421
    if-nez p3, :cond_19

    .line 4422
    :try_start_12
    new-instance p3, Landroid/media/RoutingChangeInfo;

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-direct {p3, v0, v2}, Landroid/media/RoutingChangeInfo;-><init>(IZ)V

    .line 4427
    :cond_19
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    .line 4428
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p2

    .line 4427
    invoke-interface {v0, v1, p2, p1, p3}, Landroid/media/IMediaRouterService;->selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_26} :catch_27

    .line 4431
    goto :goto_2f

    .line 4429
    :catch_27
    move-exception p1

    .line 4430
    const-string p2, "MR2"

    const-string p3, "Unable to select route for session."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4433
    :cond_2f
    :goto_2f
    return-void

    .line 4418
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public blacklist setDeviceSuggestions(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 4254
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4256
    :try_start_7
    invoke-direct {p0}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->registerRouterStubIfNeededLocked()V

    .line 4257
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/media/IMediaRouterService;->setDeviceSuggestionsWithRouter2(Landroid/media/IMediaRouter2;Ljava/util/List;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1c
    .catchall {:try_start_7 .. :try_end_19} :catchall_1a

    .line 4260
    goto :goto_20

    .line 4261
    :catchall_1a
    move-exception p1

    goto :goto_22

    .line 4258
    :catch_1c
    move-exception p1

    .line 4259
    :try_start_1d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 4261
    :goto_20
    monitor-exit v0

    .line 4262
    return-void

    .line 4261
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_1a

    throw p1
.end method

.method public blacklist setOnGetControllerHintsListener(Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V
    .registers 3

    .line 4305
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, p1}, Landroid/media/MediaRouter2;->-$$Nest$fputmOnGetControllerHintsListener(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V

    .line 4306
    return-void
.end method

.method public blacklist setRouteListingPreference(Landroid/media/RouteListingPreference;)V
    .registers 6

    .line 4236
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4237
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRouteListingPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteListingPreference;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4239
    monitor-exit v0

    return-void

    .line 4241
    :cond_15
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, p1}, Landroid/media/MediaRouter2;->-$$Nest$fputmRouteListingPreference(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_3e

    .line 4243
    :try_start_1a
    invoke-direct {p0}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->registerRouterStubIfNeededLocked()V

    .line 4244
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v3}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRouteListingPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteListingPreference;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/media/IMediaRouterService;->setRouteListingPreference(Landroid/media/IMediaRouter2;Landroid/media/RouteListingPreference;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_33
    .catchall {:try_start_1a .. :try_end_32} :catchall_3e

    .line 4247
    goto :goto_37

    .line 4245
    :catch_33
    move-exception v1

    .line 4246
    :try_start_34
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 4248
    :goto_37
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, p1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyRouteListingPreferenceUpdated(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V

    .line 4249
    monitor-exit v0

    .line 4250
    return-void

    .line 4249
    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public blacklist setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .registers 3

    .line 4369
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "setRouteVolume is only supported by proxy routers. See javadoc."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setSessionVolume(ILandroid/media/RoutingSessionInfo;)V
    .registers 5

    .line 4377
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4378
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v1

    .line 4379
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_27

    .line 4380
    if-eqz v1, :cond_26

    .line 4382
    :try_start_10
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    .line 4383
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p2

    .line 4382
    invoke-interface {v0, v1, p2, p1}, Landroid/media/IMediaRouterService;->setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1d} :catch_1e

    .line 4386
    goto :goto_26

    .line 4384
    :catch_1e
    move-exception p1

    .line 4385
    const-string p2, "MR2"

    const-string v0, "setVolume: Failed to deliver request."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4388
    :cond_26
    :goto_26
    return-void

    .line 4379
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public blacklist showSystemOutputSwitcher(Landroid/media/session/MediaSession$Token;)Z
    .registers 5

    .line 4283
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4285
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/media/IMediaRouterService;->showMediaOutputSwitcherWithRouter2(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)Z

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_17
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    :try_start_13
    monitor-exit v0

    return p1

    .line 4290
    :catchall_15
    move-exception p1

    goto :goto_1e

    .line 4287
    :catch_17
    move-exception p1

    .line 4288
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 4290
    monitor-exit v0

    .line 4291
    const/4 p1, 0x0

    return p1

    .line 4290
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_15

    throw p1
.end method

.method public blacklist startScan()V
    .registers 1

    .line 4139
    return-void
.end method

.method public blacklist stop()V
    .registers 2

    .line 4337
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$mgetCurrentController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->release()V

    .line 4338
    return-void
.end method

.method public blacklist stopScan()V
    .registers 1

    .line 4150
    return-void
.end method

.method public blacklist transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    .registers 4

    .line 4353
    return-void
.end method

.method public blacklist transferTo(Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    .registers 11

    .line 4311
    const-string v0, "MR2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transferring to route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4314
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4316
    :try_start_1f
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRoutes(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 4317
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_57

    .line 4318
    if-nez v0, :cond_36

    .line 4319
    iget-object p2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p2, p1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyTransferFailure(Landroid/media/MediaRouter2;Landroid/media/MediaRoute2Info;)V

    .line 4320
    return-void

    .line 4324
    :cond_36
    if-nez p2, :cond_41

    .line 4325
    new-instance p2, Landroid/media/RoutingChangeInfo;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroid/media/RoutingChangeInfo;-><init>(IZ)V

    move-object v7, p2

    goto :goto_42

    .line 4327
    :cond_41
    move-object v7, p2

    .line 4328
    :goto_42
    iget-object p2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p2}, Landroid/media/MediaRouter2;->-$$Nest$mgetCurrentController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v3

    .line 4329
    invoke-virtual {v3, p1, v7}, Landroid/media/MediaRouter2$RoutingController;->tryTransferWithinProvider(Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)Z

    move-result p2

    if-nez p2, :cond_56

    .line 4330
    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    const-wide/16 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaRouter2;->requestCreateController(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;JLandroid/media/RoutingChangeInfo;)V

    .line 4333
    :cond_56
    return-void

    .line 4317
    :catchall_57
    move-exception v0

    move-object p1, v0

    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_57

    throw p1
.end method

.method public blacklist unregisterRouteCallback()V
    .registers 5

    .line 4215
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4216
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v1

    if-nez v1, :cond_11

    .line 4217
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_3d

    return-void

    .line 4221
    :cond_11
    :try_start_11
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$mupdateDiscoveryPreferenceIfNeededLocked(Landroid/media/MediaRouter2;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4222
    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v3}, Landroid/media/MediaRouter2;->-$$Nest$fgetmDiscoveryPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteDiscoveryPreference;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/media/IMediaRouterService;->setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V

    .line 4226
    :cond_2e
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->unregisterRouterStubIfNeededLocked(Z)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_32} :catch_33
    .catchall {:try_start_11 .. :try_end_32} :catchall_3d

    .line 4230
    goto :goto_3b

    .line 4228
    :catch_33
    move-exception v1

    .line 4229
    :try_start_34
    const-string v2, "MR2"

    const-string v3, "unregisterRouteCallback: Unable to set discovery request."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4231
    :goto_3b
    monitor-exit v0

    .line 4232
    return-void

    .line 4231
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public blacklist unregisterSystemSessionOverridesListener(Landroid/media/MediaRouter2$SystemSessionOverridesListener;)V
    .registers 3

    .line 4508
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unregisterSystemSessionOverridesListener is only supported on proxy routers."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist updateScanningState(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4155
    if-eqz p1, :cond_5

    .line 4156
    invoke-direct {p0}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->registerRouterStubIfNeededLocked()V

    .line 4158
    :cond_5
    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/media/IMediaRouterService;->updateScanningStateWithRouter2(Landroid/media/IMediaRouter2;I)V

    .line 4159
    if-nez p1, :cond_1a

    .line 4160
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->unregisterRouterStubIfNeededLocked(Z)V

    .line 4162
    :cond_1a
    return-void
.end method

.method public blacklist wasTransferredBySelf(Landroid/media/RoutingSessionInfo;)Z
    .registers 4

    .line 4492
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 4493
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4494
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmContext(Landroid/media/MediaRouter2;)Landroid/content/Context;

    move-result-object v0

    .line 4495
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    .line 4494
    :goto_25
    return p1
.end method
