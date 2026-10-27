.class Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;
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
    name = "ProxyMediaRouter2Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;
    }
.end annotation


# instance fields
.field private final blacklist mClient:Landroid/media/IMediaRouter2Manager$Stub;

.field private final blacklist mClientPackageName:Ljava/lang/String;

.field private final blacklist mClientUser:Landroid/os/UserHandle;

.field private final blacklist mInstanceInvalidatedCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mLastSystemSessionSessionOverridesLocked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/media/AppId;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mSystemSessionOverridesListenerRecords:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2Manager$TransferRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/media/MediaRouter2;


# direct methods
.method public static synthetic blacklist $r8$lambda$vvAWVdtRyR4iRKnRpoJQkMnb_ZA(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/MediaRouter2Manager$TransferRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->handleTransferTimeout(Landroid/media/MediaRouter2Manager$TransferRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyDeviceSuggestionRequestedHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->notifyDeviceSuggestionRequestedHandler()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifySystemSessionOverridesChangedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->notifySystemSessionOverridesChangedOnHandler(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDeviceSuggestionsChangeHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onDeviceSuggestionsChangeHandler(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDiscoveryPreferenceChangedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onDiscoveryPreferenceChangedOnHandler(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInvalidateInstanceOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onInvalidateInstanceOnHandler()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRequestFailedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onRequestFailedOnHandler(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRouteListingPreferenceChangedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onRouteListingPreferenceChangedOnHandler(Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSessionCreatedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;ILandroid/media/RoutingSessionInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onSessionCreatedOnHandler(ILandroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSessionReleasedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onSessionReleasedOnHandler(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSessionUpdatedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onSessionUpdatedOnHandler(Landroid/media/RoutingSessionInfo;Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaRouter2;Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 3056
    iput-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3026
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3029
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mSystemSessionOverridesListenerRecords:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3031
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3036
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3038
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mInstanceInvalidatedCallbackRecords:Ljava/util/List;

    .line 3050
    nop

    .line 3051
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mLastSystemSessionSessionOverridesLocked:Ljava/util/Set;

    .line 3057
    iput-object p4, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientUser:Landroid/os/UserHandle;

    .line 3058
    iput-object p3, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    .line 3059
    new-instance p2, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;-><init>(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/MediaRouter2-IA;)V

    iput-object p2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    .line 3060
    sget-object p2, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    invoke-static {p1, p2}, Landroid/media/MediaRouter2;->-$$Nest$fputmDiscoveryPreference(Landroid/media/MediaRouter2;Landroid/media/RouteDiscoveryPreference;)V

    .line 3061
    return-void
.end method

.method private blacklist createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I
    .registers 6

    .line 3709
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 3710
    new-instance v1, Landroid/media/MediaRouter2Manager$TransferRequest;

    invoke-direct {v1, v0, p1, p2}, Landroid/media/MediaRouter2Manager$TransferRequest;-><init>(ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 3712
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3714
    new-instance p1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$$ExternalSyntheticLambda1;-><init>()V

    .line 3715
    invoke-static {p1, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3717
    iget-object p2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v1, 0x7530

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3718
    return v0
.end method

.method private blacklist getRoutingSessions()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 3737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3738
    invoke-virtual {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getSystemSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3742
    :try_start_c
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v1, v2}, Landroid/media/IMediaRouterService;->getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_3a

    .line 3745
    nop

    .line 3747
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 3748
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 3749
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3751
    :cond_38
    goto :goto_1d

    .line 3752
    :cond_39
    return-object v0

    .line 3743
    :catch_3a
    move-exception v0

    .line 3744
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static blacklist getSystemSessionInfoImpl(Landroid/media/IMediaRouterService;Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 3

    .line 3683
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/media/IMediaRouterService;->getSystemSessionInfoForPackage(Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 3684
    :catch_5
    move-exception p0

    .line 3685
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private blacklist handleTransferTimeout(Landroid/media/MediaRouter2Manager$TransferRequest;)V
    .registers 3

    .line 3722
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 3723
    if-eqz v0, :cond_f

    .line 3724
    iget-object v0, p1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    iget-object p1, p1, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 3726
    :cond_f
    return-void
.end method

.method private blacklist initSystemSessionOverridesSnapshot()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3077
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3078
    return-void

    .line 3080
    :cond_7
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3081
    :try_start_e
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    .line 3082
    invoke-interface {v1, v2}, Landroid/media/IMediaRouterService;->getSystemSessionOverridesAppIds(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mLastSystemSessionSessionOverridesLocked:Ljava/util/Set;

    .line 3083
    monitor-exit v0

    .line 3084
    return-void

    .line 3083
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_22

    throw v1
.end method

.method private blacklist isSessionRelatedToTargetPackageName(Landroid/media/RoutingSessionInfo;)Z
    .registers 3

    .line 3813
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3814
    invoke-virtual {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    .line 3813
    :goto_18
    return p1
.end method

.method static synthetic blacklist lambda$notifySystemSessionOverridesChangedOnHandler$1(Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;Ljava/util/Set;)V
    .registers 2

    .line 4000
    invoke-static {p0}, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;->-$$Nest$fgetmSystemSessionOverridesListener(Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;)Landroid/media/MediaRouter2$SystemSessionOverridesListener;

    move-result-object p0

    .line 4001
    invoke-interface {p0, p1}, Landroid/media/MediaRouter2$SystemSessionOverridesListener;->onSystemSessionOverridesChanged(Ljava/util/Set;)V

    .line 4000
    return-void
.end method

.method static synthetic blacklist lambda$stopScan$0(I)I
    .registers 2

    .line 3125
    if-eqz p0, :cond_5

    .line 3129
    add-int/lit8 p0, p0, -0x1

    return p0

    .line 3126
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No active scan requests to unregister."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist notifyDeviceSuggestionRequestedHandler()V
    .registers 2

    .line 3949
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyCallbacksDeviceSuggestionRequested(Landroid/media/MediaRouter2;)V

    .line 3950
    return-void
.end method

.method private blacklist notifySystemSessionOverridesChangedOnHandler(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AppId;",
            ">;)V"
        }
    .end annotation

    .line 3993
    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    .line 3994
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3995
    :try_start_b
    iput-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mLastSystemSessionSessionOverridesLocked:Ljava/util/Set;

    .line 3996
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_2e

    .line 3997
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mSystemSessionOverridesListenerRecords:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;

    .line 3998
    invoke-static {v1}, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;->-$$Nest$fgetmExecutor(Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4002
    goto :goto_14

    .line 4003
    :cond_2d
    return-void

    .line 3996
    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method

.method private blacklist onDeviceSuggestionsChangeHandler(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 3935
    invoke-virtual {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 3936
    return-void

    .line 3938
    :cond_b
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3939
    :try_start_12
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSuggestedDeviceInfo(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v0

    .line 3940
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3939
    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3941
    monitor-exit p1

    return-void

    .line 3943
    :cond_24
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSuggestedDeviceInfo(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3944
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_34

    .line 3945
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p1, p2, p3}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyDeviceSuggestionsUpdated(Landroid/media/MediaRouter2;Ljava/lang/String;Ljava/util/List;)V

    .line 3946
    return-void

    .line 3944
    :catchall_34
    move-exception p2

    :try_start_35
    monitor-exit p1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p2
.end method

.method private blacklist onDiscoveryPreferenceChangedOnHandler(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 4

    .line 3892
    invoke-virtual {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 3893
    return-void

    .line 3896
    :cond_b
    if-nez p2, :cond_e

    .line 3897
    return-void

    .line 3899
    :cond_e
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3900
    :try_start_15
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmDiscoveryPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3901
    monitor-exit p1

    return-void

    .line 3903
    :cond_23
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, p2}, Landroid/media/MediaRouter2;->-$$Nest$fputmDiscoveryPreference(Landroid/media/MediaRouter2;Landroid/media/RouteDiscoveryPreference;)V

    .line 3904
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-virtual {v0}, Landroid/media/MediaRouter2;->updateFilteredRoutesLocked()V

    .line 3905
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_54

    .line 3906
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyPreferredFeaturesChanged(Landroid/media/MediaRouter2;Ljava/util/List;)V

    .line 3907
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/flags/Flags;->enableRouteVisibilityControlCompatFixes()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 3908
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    iget-object p2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmFilteredRoutes(Landroid/media/MediaRouter2;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter2;->dispatchFilteredRoutesUpdatedOnHandler(Ljava/util/List;)V

    .line 3909
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    iget-object p2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRoutes(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter2;->dispatchControllerUpdatedIfNeededOnHandler(Ljava/util/Map;)V

    .line 3911
    :cond_53
    return-void

    .line 3905
    :catchall_54
    move-exception p2

    :try_start_55
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p2
.end method

.method private blacklist onInvalidateInstanceOnHandler()V
    .registers 5

    .line 3970
    const-string v0, "MR2"

    const-string v1, "MEDIA_ROUTING_CONTROL has been revoked for this package. Invalidating instance."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetsSystemRouterLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3977
    :try_start_c
    new-instance v1, Landroid/media/AppId;

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientUser:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3}, Landroid/media/AppId;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 3978
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetsAppToProxyRouterMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3979
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_62

    .line 3981
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3983
    :try_start_24
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mInstanceInvalidatedCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;

    .line 3984
    invoke-static {v2}, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->-$$Nest$fgetexecutor(Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v2}, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->-$$Nest$fgetrunnable(Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3985
    goto :goto_2a

    .line 3986
    :cond_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_24 .. :try_end_43} :catchall_5f

    .line 3987
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRouteCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 3988
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmControllerCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 3989
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmTransferCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 3990
    return-void

    .line 3986
    :catchall_5f
    move-exception v0

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v0

    .line 3979
    :catchall_62
    move-exception v1

    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v1
.end method

.method private blacklist onRequestFailedOnHandler(II)V
    .registers 6

    .line 3953
    nop

    .line 3954
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$TransferRequest;

    .line 3955
    iget v2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mRequestId:I

    if-ne v2, p1, :cond_19

    .line 3956
    nop

    .line 3957
    goto :goto_1b

    .line 3959
    :cond_19
    goto :goto_7

    .line 3954
    :cond_1a
    const/4 v1, 0x0

    .line 3961
    :goto_1b
    if-eqz v1, :cond_2a

    .line 3962
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3963
    iget-object p1, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    iget-object p2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    goto :goto_2f

    .line 3965
    :cond_2a
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p1, p2}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyRequestFailed(Landroid/media/MediaRouter2;I)V

    .line 3967
    :goto_2f
    return-void
.end method

.method private blacklist onRouteListingPreferenceChangedOnHandler(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 4

    .line 3916
    invoke-virtual {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 3917
    return-void

    .line 3920
    :cond_b
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3921
    :try_start_12
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRouteListingPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteListingPreference;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3922
    monitor-exit p1

    return-void

    .line 3925
    :cond_20
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, p2}, Landroid/media/MediaRouter2;->-$$Nest$fputmRouteListingPreference(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V

    .line 3926
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_2c

    .line 3928
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p1, p2}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyRouteListingPreferenceUpdated(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V

    .line 3929
    return-void

    .line 3926
    :catchall_2c
    move-exception p2

    :try_start_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p2
.end method

.method private blacklist onSessionCreatedOnHandler(ILandroid/media/RoutingSessionInfo;)V
    .registers 8

    .line 3819
    nop

    .line 3820
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$TransferRequest;

    .line 3821
    iget v2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mRequestId:I

    if-ne v2, p1, :cond_19

    .line 3822
    nop

    .line 3823
    goto :goto_1b

    .line 3825
    :cond_19
    goto :goto_7

    .line 3820
    :cond_1a
    const/4 v1, 0x0

    .line 3827
    :goto_1b
    if-nez v1, :cond_1e

    .line 3828
    return-void

    .line 3831
    :cond_1e
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3833
    iget-object p1, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    .line 3835
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ")"

    const-string v3, "MR2"

    if-nez v0, :cond_69

    .line 3836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The session does not contain the requested route. (requestedRouteId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3840
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", actualRoutes="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3842
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3836
    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    iget-object p2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-direct {p0, p2, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    goto :goto_af

    .line 3845
    :cond_69
    nop

    .line 3846
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    .line 3845
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 3847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The session\'s provider ID does not match the requested route\'s. (requested route\'s providerId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3851
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", actual providerId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3853
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3847
    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    iget-object p2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-direct {p0, p2, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    goto :goto_af

    .line 3857
    :cond_aa
    iget-object p1, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    .line 3859
    :goto_af
    return-void
.end method

.method private blacklist onSessionReleasedOnHandler(Landroid/media/RoutingSessionInfo;)V
    .registers 6

    .line 3878
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3879
    const-string p1, "MR2"

    const-string v0, "onSessionReleasedOnHandler: Called on system session. Ignoring."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    return-void

    .line 3883
    :cond_e
    invoke-virtual {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 3884
    return-void

    .line 3887
    :cond_1d
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    new-instance v1, Landroid/media/MediaRouter2$RoutingController;

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    const/4 v3, 0x3

    invoke-direct {v1, v2, p1, v3}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;I)V

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyStop(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V

    .line 3888
    return-void
.end method

.method private blacklist onSessionUpdated(Landroid/media/RoutingSessionInfo;Z)V
    .registers 5

    .line 3793
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->isSessionRelatedToTargetPackageName(Landroid/media/RoutingSessionInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3794
    return-void

    .line 3798
    :cond_7
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3799
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    .line 3800
    invoke-static {p1, v1}, Landroid/media/MediaRouter2;->-$$Nest$smensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object p1

    .line 3799
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 3801
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p1

    goto :goto_2b

    .line 3803
    :cond_23
    new-instance v0, Landroid/media/MediaRouter2$RoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    move-object p1, v0

    .line 3805
    :goto_2b
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, p1, p2}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyControllerUpdated(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;Z)V

    .line 3806
    return-void
.end method

.method private blacklist onSessionUpdatedOnHandler(Landroid/media/RoutingSessionInfo;Z)V
    .registers 7

    .line 3863
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$TransferRequest;

    .line 3864
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3865
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 3866
    goto :goto_6

    .line 3869
    :cond_23
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3870
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3871
    goto :goto_3a

    .line 3873
    :cond_39
    goto :goto_6

    .line 3874
    :cond_3a
    :goto_3a
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onSessionUpdated(Landroid/media/RoutingSessionInfo;Z)V

    .line 3875
    return-void
.end method

.method private blacklist onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 3

    .line 3785
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->isSessionRelatedToTargetPackageName(Landroid/media/RoutingSessionInfo;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 3786
    return-void

    .line 3788
    :cond_7
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p1, p2}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyTransferFailure(Landroid/media/MediaRouter2;Landroid/media/MediaRoute2Info;)V

    .line 3789
    return-void
.end method

.method private blacklist onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .registers 5

    .line 3757
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->isSessionRelatedToTargetPackageName(Landroid/media/RoutingSessionInfo;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 3758
    invoke-direct {p0, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->isSessionRelatedToTargetPackageName(Landroid/media/RoutingSessionInfo;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_5b

    .line 3763
    :cond_d
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3764
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    .line 3765
    invoke-static {p1, v1}, Landroid/media/MediaRouter2;->-$$Nest$smensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object p1

    .line 3764
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 3766
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p1

    goto :goto_31

    .line 3768
    :cond_29
    new-instance v0, Landroid/media/MediaRouter2$RoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    move-object p1, v0

    .line 3772
    :goto_31
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 3773
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    .line 3774
    invoke-static {p2, v1}, Landroid/media/MediaRouter2;->-$$Nest$smensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object p2

    .line 3773
    invoke-virtual {v0, p2}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 3775
    iget-object p2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p2

    goto :goto_55

    .line 3777
    :cond_4d
    new-instance v0, Landroid/media/MediaRouter2$RoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v0, v1, p2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    move-object p2, v0

    .line 3780
    :goto_55
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, p1, p2}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyTransfer(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    .line 3781
    return-void

    .line 3759
    :cond_5b
    :goto_5b
    return-void
.end method

.method private blacklist releaseSession(Landroid/media/RoutingSessionInfo;)V
    .registers 5

    .line 3696
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3699
    :try_start_5
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 3700
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    .line 3701
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 3700
    invoke-interface {v1, v2, v0, p1}, Landroid/media/IMediaRouterService;->releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1e} :catch_20

    .line 3704
    nop

    .line 3705
    return-void

    .line 3702
    :catch_20
    move-exception p1

    .line 3703
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist requestCreateSession(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    .registers 11

    .line 3434
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3435
    const-string p3, "MR2"

    const-string v0, "requestCreateSession: Can\'t create a session without package name."

    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 3437
    return-void

    .line 3440
    :cond_15
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I

    move-result v3

    .line 3443
    :try_start_19
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    move-object v4, p1

    move-object v6, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/media/IMediaRouterService;->requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/RoutingChangeInfo;Landroid/media/MediaRoute2Info;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_27} :catch_29

    .line 3447
    nop

    .line 3448
    return-void

    .line 3445
    :catch_29
    move-exception v0

    move-object p1, v0

    .line 3446
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist transferToRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;Landroid/media/RoutingChangeInfo;)V
    .registers 14

    .line 3398
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I

    move-result v2

    .line 3401
    :try_start_4
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    .line 3404
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 3401
    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Landroid/media/IMediaRouterService;->transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;Landroid/media/RoutingChangeInfo;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_19

    .line 3411
    nop

    .line 3412
    return-void

    .line 3409
    :catch_19
    move-exception v0

    move-object p1, v0

    .line 3410
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public blacklist createRouteCallbackRecord(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)Landroid/media/MediaRouter2$RouteCallbackRecord;
    .registers 5

    .line 3173
    new-instance p3, Landroid/media/MediaRouter2$RouteCallbackRecord;

    sget-object v0, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    invoke-direct {p3, p1, p2, v0}, Landroid/media/MediaRouter2$RouteCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    return-object p3
.end method

.method public blacklist deselectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;Landroid/media/RoutingChangeInfo;)V
    .registers 11

    .line 3600
    const-string v0, "sessionInfo must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3601
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3603
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MR2"

    if-nez v0, :cond_31

    .line 3604
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring deselecting a route that is not selected. route="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    return-void

    .line 3608
    :cond_31
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 3609
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring deselecting a non-deselectable route="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    return-void

    .line 3614
    :cond_56
    :try_start_56
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 3615
    if-nez p3, :cond_6b

    .line 3616
    new-instance p3, Landroid/media/RoutingChangeInfo;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Landroid/media/RoutingChangeInfo;-><init>(IZ)V

    move-object v6, p3

    goto :goto_6c

    .line 3615
    :cond_6b
    move-object v6, p3

    .line 3620
    :goto_6c
    iget-object p3, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p3}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    .line 3621
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 3620
    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Landroid/media/IMediaRouterService;->deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_7c} :catch_7e

    .line 3624
    nop

    .line 3625
    return-void

    .line 3622
    :catch_7e
    move-exception v0

    move-object p1, v0

    .line 3623
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .registers 3
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

    .line 3533
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method

.method public blacklist getAllRoutes()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 3244
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3245
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRoutes(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 3246
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist getClientPackageName()Ljava/lang/String;
    .registers 2

    .line 3145
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getControllers()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRouter2$RoutingController;",
            ">;"
        }
    .end annotation

    .line 3452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3456
    invoke-direct {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getRoutingSessions()Ljava/util/List;

    move-result-object v1

    .line 3457
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 3459
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 3460
    iget-object v3, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v3}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 3461
    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v2

    goto :goto_37

    .line 3463
    :cond_2f
    new-instance v3, Landroid/media/MediaRouter2$RoutingController;

    iget-object v4, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v3, v4, v2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    move-object v2, v3

    .line 3465
    :goto_37
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3466
    goto :goto_d

    .line 3467
    :cond_3b
    return-object v0
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

    .line 3213
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3215
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v1, v2}, Landroid/media/IMediaRouterService;->getDeviceSuggestionsWithManager(Landroid/media/IMediaRouter2Manager;)Ljava/util/Map;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_17
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    :try_start_13
    monitor-exit v0

    return-object v1

    .line 3219
    :catchall_15
    move-exception v1

    goto :goto_1d

    .line 3216
    :catch_17
    move-exception v1

    .line 3217
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3219
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_15

    throw v1
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 3154
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemSessionInfo()Landroid/media/RoutingSessionInfo;
    .registers 4

    .line 3159
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmContext(Landroid/media/MediaRouter2;)Landroid/content/Context;

    move-result-object v1

    .line 3160
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    .line 3159
    invoke-static {v0, v1, v2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getSystemSessionInfoImpl(Landroid/media/IMediaRouterService;Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

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

    .line 3665
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3666
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mLastSystemSessionSessionOverridesLocked:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 3667
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist notifyDeviceSuggestionRequested()V
    .registers 3

    .line 3225
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v0, v1}, Landroid/media/IMediaRouterService;->onDeviceSuggestionRequestedWithManager(Landroid/media/IMediaRouter2Manager;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 3228
    nop

    .line 3229
    return-void

    .line 3226
    :catch_d
    move-exception v0

    .line 3227
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist registerInstanceInvalidatedCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 5

    .line 3088
    if-eqz p1, :cond_24

    if-nez p2, :cond_5

    goto :goto_24

    .line 3092
    :cond_5
    new-instance v0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Landroid/media/MediaRouter2-IA;)V

    .line 3094
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3095
    :try_start_12
    iget-object p2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mInstanceInvalidatedCallbackRecords:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1f

    .line 3096
    iget-object p2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mInstanceInvalidatedCallbackRecords:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3098
    :cond_1f
    monitor-exit p1

    .line 3099
    return-void

    .line 3098
    :catchall_21
    move-exception p2

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    throw p2

    .line 3089
    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist registerProxyRouter()V
    .registers 6

    .line 3065
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmContext(Landroid/media/MediaRouter2;)Landroid/content/Context;

    move-result-object v2

    .line 3067
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientUser:Landroid/os/UserHandle;

    .line 3065
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/media/IMediaRouterService;->registerProxyRouter(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 3070
    invoke-direct {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->initSystemSessionOverridesSnapshot()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_22

    .line 3073
    nop

    .line 3074
    return-void

    .line 3071
    :catch_22
    move-exception v0

    .line 3072
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist registerRouteCallback()V
    .registers 1

    .line 3185
    return-void
.end method

.method public blacklist registerSystemSessionOverridesListener(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$SystemSessionOverridesListener;)V
    .registers 5

    .line 3646
    new-instance v0, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$SystemSessionOverridesListener;Landroid/media/MediaRouter2-IA;)V

    .line 3649
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mSystemSessionOverridesListenerRecords:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 3650
    iget-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mSystemSessionOverridesListenerRecords:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 3651
    return-void
.end method

.method public blacklist releaseSession(ZZLandroid/media/MediaRouter2$RoutingController;)V
    .registers 4

    .line 3632
    invoke-virtual {p3}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    .line 3633
    return-void
.end method

.method public blacklist selectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;Landroid/media/RoutingChangeInfo;)V
    .registers 11

    .line 3562
    const-string v0, "sessionInfo must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3563
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3565
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MR2"

    if-eqz v0, :cond_31

    .line 3566
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring selecting a route that is already selected. route="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    return-void

    .line 3570
    :cond_31
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 3571
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring selecting a non-selectable route="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    return-void

    .line 3576
    :cond_56
    :try_start_56
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 3577
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    .line 3578
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 3577
    move-object v5, p1

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/media/IMediaRouterService;->selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_71} :catch_73

    .line 3581
    nop

    .line 3582
    return-void

    .line 3579
    :catch_73
    move-exception v0

    move-object p1, v0

    .line 3580
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

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

    .line 3201
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3203
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v1, v2, p1}, Landroid/media/IMediaRouterService;->setDeviceSuggestionsWithManager(Landroid/media/IMediaRouter2Manager;Ljava/util/List;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_15
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    .line 3207
    goto :goto_19

    .line 3208
    :catchall_13
    move-exception p1

    goto :goto_1b

    .line 3205
    :catch_15
    move-exception p1

    .line 3206
    :try_start_16
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3208
    :goto_19
    monitor-exit v0

    .line 3209
    return-void

    .line 3208
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_13

    throw p1
.end method

.method public blacklist setOnGetControllerHintsListener(Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V
    .registers 2

    .line 3253
    return-void
.end method

.method public blacklist setRouteListingPreference(Landroid/media/RouteListingPreference;)V
    .registers 3

    .line 3195
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "RouteListingPreference cannot be set by a proxy MediaRouter2 instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .registers 6

    .line 3480
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getVolumeHandling()I

    move-result v0

    const-string v1, "MR2"

    if-nez v0, :cond_e

    .line 3481
    const-string p1, "setRouteVolume: the route has fixed volume. Ignoring."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    return-void

    .line 3484
    :cond_e
    if-ltz p2, :cond_34

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getVolumeMax()I

    move-result v0

    if-le p2, v0, :cond_17

    goto :goto_34

    .line 3490
    :cond_17
    :try_start_17
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 3491
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v1, v2, v0, p1, p2}, Landroid/media/IMediaRouterService;->setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2c} :catch_2e

    .line 3494
    nop

    .line 3495
    return-void

    .line 3492
    :catch_2e
    move-exception p1

    .line 3493
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3485
    :cond_34
    :goto_34
    const-string p1, "setRouteVolume: the target volume is out of range. Ignoring"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    return-void
.end method

.method public blacklist setSessionVolume(ILandroid/media/RoutingSessionInfo;)V
    .registers 6

    .line 3505
    const-string v0, "sessionInfo must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3507
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getVolumeHandling()I

    move-result v0

    const-string v1, "MR2"

    if-nez v0, :cond_13

    .line 3508
    const-string p1, "setSessionVolume: the route has fixed volume. Ignoring."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    return-void

    .line 3511
    :cond_13
    if-ltz p1, :cond_3d

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v0

    if-le p1, v0, :cond_1c

    goto :goto_3d

    .line 3517
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 3518
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    .line 3519
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p2

    .line 3518
    invoke-interface {v1, v2, v0, p2, p1}, Landroid/media/IMediaRouterService;->setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_35} :catch_37

    .line 3522
    nop

    .line 3523
    return-void

    .line 3520
    :catch_37
    move-exception p1

    .line 3521
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3512
    :cond_3d
    :goto_3d
    const-string p1, "setSessionVolume: the target volume is out of range. Ignoring"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    return-void
.end method

.method public blacklist showSystemOutputSwitcher(Landroid/media/session/MediaSession$Token;)Z
    .registers 4

    .line 3234
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v0, v1, p1}, Landroid/media/IMediaRouterService;->showMediaOutputSwitcherWithProxyRouter(Landroid/media/IMediaRouter2Manager;Landroid/media/session/MediaSession$Token;)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 3236
    :catch_d
    move-exception p1

    .line 3237
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist startScan()V
    .registers 4

    .line 3108
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_23

    .line 3109
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_23

    .line 3111
    :try_start_11
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v0, v2, v1}, Landroid/media/IMediaRouterService;->updateScanningState(Landroid/media/IMediaRouter2Manager;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1c} :catch_1d

    .line 3115
    goto :goto_23

    .line 3113
    :catch_1d
    move-exception v0

    .line 3114
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3118
    :cond_23
    :goto_23
    return-void
.end method

.method public blacklist stop()V
    .registers 3

    .line 3285
    invoke-direct {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getRoutingSessions()Ljava/util/List;

    move-result-object v0

    .line 3286
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RoutingSessionInfo;

    .line 3287
    invoke-direct {p0, v0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    .line 3288
    return-void
.end method

.method public blacklist stopScan()V
    .registers 4

    .line 3122
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mIsScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3123
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->updateAndGet(Ljava/util/function/IntUnaryOperator;)I

    move-result v0

    if-nez v0, :cond_28

    .line 3134
    :try_start_16
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v0, v2, v1}, Landroid/media/IMediaRouterService;->updateScanningState(Landroid/media/IMediaRouter2Manager;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_22

    .line 3138
    goto :goto_28

    .line 3136
    :catch_22
    move-exception v0

    .line 3137
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3141
    :cond_28
    :goto_28
    return-void
.end method

.method public blacklist transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    .registers 14

    .line 3315
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3316
    const-string v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3318
    const-string v0, "MR2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transferring routing session. session= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", route="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3324
    :try_start_33
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRoutes(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_47

    move v0, v2

    goto :goto_48

    :cond_47
    move v0, v3

    .line 3325
    :goto_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_f0

    .line 3327
    if-eqz v0, :cond_6b

    .line 3328
    const-string p3, "MR2"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transfer: Ignoring an unknown route id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 3330
    return-void

    .line 3334
    :cond_6b
    if-nez p3, :cond_75

    .line 3335
    new-instance p3, Landroid/media/RoutingChangeInfo;

    const/4 v0, 0x4

    invoke-direct {p3, v0, v3}, Landroid/media/RoutingChangeInfo;-><init>(IZ)V

    move-object v9, p3

    goto :goto_76

    .line 3337
    :cond_75
    move-object v9, p3

    .line 3343
    :goto_76
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    move-result p3

    if-eqz p3, :cond_98

    .line 3344
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result p3

    if-eqz p3, :cond_98

    .line 3345
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result p3

    if-eqz p3, :cond_98

    .line 3346
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_98

    move p3, v2

    goto :goto_99

    :cond_98
    move p3, v3

    .line 3347
    :goto_99
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    if-eqz p3, :cond_ac

    move-object v4, p0

    move-object v6, p2

    goto :goto_e7

    .line 3352
    :cond_ac
    iget-object p3, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {p3}, Landroid/media/MediaRouter2;->-$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v5

    .line 3353
    nop

    .line 3354
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result p3

    if-nez p3, :cond_d2

    .line 3355
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result p3

    if-eqz p3, :cond_d2

    .line 3356
    invoke-virtual {v5}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d2

    goto :goto_d3

    :cond_d2
    move v2, v3

    .line 3357
    :goto_d3
    if-eqz v2, :cond_df

    .line 3362
    iget-object v7, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientUser:Landroid/os/UserHandle;

    iget-object v8, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->transferToRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;Landroid/media/RoutingChangeInfo;)V

    goto :goto_e1

    .line 3357
    :cond_df
    move-object v4, p0

    move-object v6, p2

    .line 3369
    :goto_e1
    invoke-direct {p0, p1, v6, v9}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->requestCreateSession(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V

    goto :goto_ef

    .line 3347
    :cond_e5
    move-object v4, p0

    move-object v6, p2

    .line 3349
    :goto_e7
    iget-object v7, v4, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientUser:Landroid/os/UserHandle;

    iget-object v8, v4, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->transferToRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;Landroid/media/RoutingChangeInfo;)V

    .line 3371
    :goto_ef
    return-void

    .line 3325
    :catchall_f0
    move-exception v0

    move-object p1, v0

    :try_start_f2
    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f0

    throw p1
.end method

.method public blacklist transferTo(Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    .registers 6

    .line 3271
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3273
    invoke-direct {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getRoutingSessions()Ljava/util/List;

    move-result-object v0

    .line 3274
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RoutingSessionInfo;

    .line 3276
    if-nez p2, :cond_1f

    .line 3277
    new-instance p2, Landroid/media/RoutingChangeInfo;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2}, Landroid/media/RoutingChangeInfo;-><init>(IZ)V

    goto :goto_20

    .line 3279
    :cond_1f
    nop

    .line 3280
    :goto_20
    invoke-virtual {p0, v0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V

    .line 3281
    return-void
.end method

.method public blacklist unregisterRouteCallback()V
    .registers 1

    .line 3191
    return-void
.end method

.method public blacklist unregisterSystemSessionOverridesListener(Landroid/media/MediaRouter2$SystemSessionOverridesListener;)V
    .registers 6

    .line 3658
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mSystemSessionOverridesListenerRecords:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;

    new-instance v2, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$SystemSessionOverridesListener;Landroid/media/MediaRouter2-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 3661
    return-void
.end method

.method public blacklist updateScanningState(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3103
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClient:Landroid/media/IMediaRouter2Manager$Stub;

    invoke-interface {v0, v1, p1}, Landroid/media/IMediaRouterService;->updateScanningState(Landroid/media/IMediaRouter2Manager;I)V

    .line 3104
    return-void
.end method

.method public blacklist wasTransferredBySelf(Landroid/media/RoutingSessionInfo;)Z
    .registers 4

    .line 3637
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 3638
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3639
    iget-object v1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientUser:Landroid/os/UserHandle;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->mClientPackageName:Ljava/lang/String;

    .line 3640
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    .line 3639
    :goto_1b
    return p1
.end method
