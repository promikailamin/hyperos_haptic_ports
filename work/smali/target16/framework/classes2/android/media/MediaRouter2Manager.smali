.class public final Landroid/media/MediaRouter2Manager;
.super Ljava/lang/Object;
.source "MediaRouter2Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter2Manager$Client;,
        Landroid/media/MediaRouter2Manager$CallbackRecord;,
        Landroid/media/MediaRouter2Manager$Callback;,
        Landroid/media/MediaRouter2Manager$TransferRequest;
    }
.end annotation


# static fields
.field public static final blacklist REQUEST_ID_NONE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "MR2Manager"

.field public static final blacklist TRANSFER_TIMEOUT_MS:I = 0x7530

.field private static blacklist sInstance:Landroid/media/MediaRouter2Manager;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field final blacklist mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2Manager$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mClient:Landroid/media/MediaRouter2Manager$Client;

.field private final blacklist mContext:Landroid/content/Context;

.field final blacklist mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Landroid/media/RouteDiscoveryPreference;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mMediaRouterService:Landroid/media/IMediaRouterService;

.field private final blacklist mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private final blacklist mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mPackageToRouteListingPreferenceMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Landroid/media/RouteListingPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRoutesLock:Ljava/lang/Object;

.field private final blacklist mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2Manager$TransferRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$igEh8mYEHNhVIm2fRcEoKWP_JWE(Landroid/media/MediaRouter2Manager;Landroid/media/MediaRouter2Manager$TransferRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2Manager;->handleTransferTimeout(Landroid/media/MediaRouter2Manager$TransferRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateRouteListingPreference(Landroid/media/MediaRouter2Manager;Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->updateRouteListingPreference(Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2Manager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    .line 101
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mPackageToRouteListingPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mContext:Landroid/content/Context;

    .line 126
    nop

    .line 127
    const-string v0, "media_router"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 128
    nop

    .line 129
    const-string v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Landroid/media/MediaRouter2Manager$Client;

    invoke-direct {v0, p0}, Landroid/media/MediaRouter2Manager$Client;-><init>(Landroid/media/MediaRouter2Manager;)V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    .line 133
    :try_start_6d
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/media/IMediaRouterService;->registerManager(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_78} :catch_7a

    .line 136
    nop

    .line 137
    return-void

    .line 134
    :catch_7a
    move-exception p1

    .line 135
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist areSessionsMatched(Landroid/media/session/MediaController;Landroid/media/RoutingSessionInfo;)Z
    .registers 7

    .line 972
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 973
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControlId()Ljava/lang/String;

    move-result-object v0

    .line 974
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 975
    return v1

    .line 978
    :cond_c
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    .line 979
    return v3

    .line 982
    :cond_18
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 983
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 984
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getOwnerPackageName()Ljava/lang/String;

    move-result-object p2

    .line 983
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_32

    move v1, v3

    goto :goto_33

    :cond_32
    nop

    .line 982
    :goto_33
    return v1
.end method

.method private blacklist createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I
    .registers 6

    .line 952
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 953
    new-instance v1, Landroid/media/MediaRouter2Manager$TransferRequest;

    invoke-direct {v1, v0, p1, p2}, Landroid/media/MediaRouter2Manager$TransferRequest;-><init>(ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 954
    iget-object p1, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    new-instance p1, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda11;

    invoke-direct {p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda11;-><init>()V

    .line 957
    invoke-static {p1, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 958
    iget-object p2, p0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 959
    return v0
.end method

.method private blacklist getFilteredRoutes(Landroid/media/RoutingSessionInfo;ZLjava/util/function/Predicate;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Landroid/media/MediaRoute2Info;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 316
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 321
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v2

    .line 322
    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    sget-object v4, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    .line 323
    invoke-interface {v3, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RouteDiscoveryPreference;

    .line 325
    invoke-direct {p0, v3}, Landroid/media/MediaRouter2Manager;->getSortedRoutes(Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ae

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 326
    invoke-virtual {v5, v2}, Landroid/media/MediaRoute2Info;->isVisibleTo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 327
    goto :goto_25

    .line 329
    :cond_38
    nop

    .line 330
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 331
    nop

    .line 332
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 333
    if-nez v6, :cond_a9

    if-eqz p2, :cond_59

    if-eqz v7, :cond_59

    goto :goto_a9

    .line 338
    :cond_59
    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRoute2Info;->hasAnyFeatures(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 339
    goto :goto_25

    .line 341
    :cond_64
    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_83

    .line 342
    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getProviderPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_25

    .line 344
    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v6

    .line 345
    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getProviderPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_83

    .line 346
    goto :goto_25

    .line 348
    :cond_83
    if-eqz p3, :cond_8c

    invoke-interface {p3, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8c

    .line 349
    goto :goto_25

    .line 351
    :cond_8c
    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->shouldRemoveDuplicates()Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 352
    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v6

    invoke-static {v1, v6}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_9d

    .line 353
    goto :goto_25

    .line 355
    :cond_9d
    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 357
    :cond_a4
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    goto/16 :goto_25

    .line 335
    :cond_a9
    :goto_a9
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    goto/16 :goto_25

    .line 359
    :cond_ae
    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;
    .registers 3

    .line 115
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    sget-object v0, Landroid/media/MediaRouter2Manager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_8
    sget-object v1, Landroid/media/MediaRouter2Manager;->sInstance:Landroid/media/MediaRouter2Manager;

    if-nez v1, :cond_13

    .line 118
    new-instance v1, Landroid/media/MediaRouter2Manager;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter2Manager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/MediaRouter2Manager;->sInstance:Landroid/media/MediaRouter2Manager;

    .line 120
    :cond_13
    sget-object p0, Landroid/media/MediaRouter2Manager;->sInstance:Landroid/media/MediaRouter2Manager;

    monitor-exit v0

    return-object p0

    .line 121
    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private blacklist getSortedRoutes(Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RouteDiscoveryPreference;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Landroid/media/RouteDiscoveryPreference;->shouldRemoveDuplicates()Z

    move-result v0

    if-nez v0, :cond_18

    .line 291
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_9
    iget-object p1, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 293
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw p1

    .line 295
    :cond_18
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 296
    invoke-virtual {p1}, Landroid/media/RouteDiscoveryPreference;->getDeduplicationPackageOrder()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 297
    const/4 v2, 0x0

    :goto_26
    if-ge v2, v1, :cond_3e

    .line 299
    invoke-virtual {p1}, Landroid/media/RouteDiscoveryPreference;->getDeduplicationPackageOrder()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 302
    :cond_3e
    iget-object p1, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 303
    :try_start_41
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_5a

    .line 306
    new-instance p1, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    .line 307
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    .line 306
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 309
    return-object v1

    .line 304
    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit p1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method private blacklist handleTransferTimeout(Landroid/media/MediaRouter2Manager$TransferRequest;)V
    .registers 3

    .line 963
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 964
    if-eqz v0, :cond_f

    .line 965
    iget-object v0, p1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    iget-object p1, p1, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 967
    :cond_f
    return-void
.end method

.method static synthetic blacklist lambda$getDeselectableRoutes$12(Ljava/util/List;Ljava/lang/String;)Z
    .registers 2

    .line 786
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$getSelectableRoutes$11(Ljava/util/List;Ljava/lang/String;)Z
    .registers 2

    .line 768
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic blacklist lambda$getSortedRoutes$2(Ljava/util/Map;Landroid/media/MediaRoute2Info;)I
    .registers 3

    .line 308
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getProviderPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method static synthetic blacklist lambda$getTransferableRoutes$1(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)Z
    .registers 2

    .line 286
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result p0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result p1

    xor-int/2addr p0, p1

    return p0
.end method

.method static synthetic blacklist lambda$notifyRequestFailed$6(Landroid/media/MediaRouter2Manager$CallbackRecord;I)V
    .registers 2

    .line 693
    iget-object p0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {p0, p1}, Landroid/media/MediaRouter2Manager$Callback;->onRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesUpdated$3(Landroid/media/MediaRouter2Manager$CallbackRecord;)V
    .registers 1

    .line 675
    iget-object p0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {p0}, Landroid/media/MediaRouter2Manager$Callback;->onRoutesUpdated()V

    return-void
.end method

.method static synthetic blacklist lambda$notifySessionReleased$5(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;)V
    .registers 2

    .line 687
    iget-object p0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {p0, p1}, Landroid/media/MediaRouter2Manager$Callback;->onSessionReleased(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifySessionUpdated$4(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;)V
    .registers 2

    .line 681
    iget-object p0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {p0, p1}, Landroid/media/MediaRouter2Manager$Callback;->onSessionUpdated(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTransferFailed$8(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 3

    .line 705
    iget-object p0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {p0, p1, p2}, Landroid/media/MediaRouter2Manager$Callback;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTransferred$7(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .registers 3

    .line 699
    iget-object p0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {p0, p1, p2}, Landroid/media/MediaRouter2Manager$Callback;->onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$unregisterScanRequest$0(I)I
    .registers 2

    .line 201
    if-eqz p0, :cond_5

    .line 205
    add-int/lit8 p0, p0, -0x1

    return p0

    .line 202
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No active scan requests to unregister."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic blacklist lambda$updateDiscoveryPreference$9(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    .line 720
    iget-object p0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    .line 721
    invoke-interface {p0, p1, p2}, Landroid/media/MediaRouter2Manager$Callback;->onDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    .line 720
    return-void
.end method

.method static synthetic blacklist lambda$updateRouteListingPreference$10(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 3

    .line 738
    iget-object p0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {p0, p1, p2}, Landroid/media/MediaRouter2Manager$Callback;->onRouteListingPreferenceUpdated(Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method private blacklist notifyRoutesUpdated()V
    .registers 5

    .line 674
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 675
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda3;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 676
    goto :goto_6

    .line 677
    :cond_1d
    return-void
.end method

.method private blacklist requestCreateSession(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 11

    .line 932
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 933
    const-string v0, "MR2Manager"

    const-string v1, "requestCreateSession: Can\'t create a session without package name."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 935
    return-void

    .line 938
    :cond_15
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I

    move-result v4

    .line 940
    new-instance v6, Landroid/media/RoutingChangeInfo;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Landroid/media/RoutingChangeInfo;-><init>(IZ)V

    .line 944
    :try_start_20
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    move-object v5, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Landroid/media/IMediaRouterService;->requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/RoutingChangeInfo;Landroid/media/MediaRoute2Info;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_2b

    .line 948
    nop

    .line 949
    return-void

    .line 946
    :catch_2b
    move-exception v0

    move-object p1, v0

    .line 947
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist transferToRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 13

    .line 912
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I

    move-result v2

    .line 914
    new-instance v7, Landroid/media/RoutingChangeInfo;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Landroid/media/RoutingChangeInfo;-><init>(IZ)V

    .line 918
    :try_start_b
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    .line 921
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 918
    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v7}, Landroid/media/IMediaRouterService;->transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;Landroid/media/RoutingChangeInfo;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_1b

    .line 928
    nop

    .line 929
    return-void

    .line 926
    :catch_1b
    move-exception v0

    move-object p1, v0

    .line 927
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist updateRouteListingPreference(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 7

    .line 728
    if-nez p2, :cond_b

    .line 729
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mPackageToRouteListingPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RouteListingPreference;

    goto :goto_13

    .line 730
    :cond_b
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mPackageToRouteListingPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RouteListingPreference;

    .line 732
    :goto_13
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 733
    return-void

    .line 735
    :cond_1a
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 736
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, p1, p2}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda7;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 740
    goto :goto_20

    .line 741
    :cond_37
    return-void
.end method


# virtual methods
.method blacklist createSessionOnHandler(ILandroid/media/RoutingSessionInfo;)V
    .registers 8

    .line 603
    nop

    .line 604
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$TransferRequest;

    .line 605
    iget v2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mRequestId:I

    if-ne v2, p1, :cond_19

    .line 606
    nop

    .line 607
    goto :goto_1b

    .line 609
    :cond_19
    goto :goto_7

    .line 604
    :cond_1a
    const/4 v1, 0x0

    .line 611
    :goto_1b
    if-nez v1, :cond_1e

    .line 612
    return-void

    .line 615
    :cond_1e
    iget-object p1, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 617
    iget-object p1, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    .line 619
    if-nez p2, :cond_2d

    .line 620
    iget-object p2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, p2, p1}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 621
    return-void

    .line 622
    :cond_2d
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ")"

    const-string v3, "MR2Manager"

    if-nez v0, :cond_71

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The session does not contain the requested route. (requestedRouteId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 624
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", actualRoutes="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 625
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 623
    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object p2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, p2, p1}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 628
    return-void

    .line 629
    :cond_71
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    .line 629
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The session\'s provider ID does not match the requested route\'s. (requested route\'s providerId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 632
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", actual providerId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 633
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 631
    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object p2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, p2, p1}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 636
    return-void

    .line 638
    :cond_b1
    iget-object p1, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->notifyTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    .line 639
    return-void
.end method

.method public blacklist deselectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 10

    .line 855
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 856
    const-string v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 858
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MR2Manager"

    if-nez v0, :cond_31

    .line 859
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring deselecting a route that is not selected. route="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-void

    .line 863
    :cond_31
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 864
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring deselecting a non-deselectable route="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-void

    .line 869
    :cond_56
    :try_start_56
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 870
    new-instance v6, Landroid/media/RoutingChangeInfo;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Landroid/media/RoutingChangeInfo;-><init>(IZ)V

    .line 873
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    .line 874
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 873
    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/media/IMediaRouterService;->deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_6f} :catch_71

    .line 877
    nop

    .line 878
    return-void

    .line 875
    :catch_71
    move-exception v0

    move-object p1, v0

    .line 876
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
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

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_8
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 469
    monitor-exit v1

    .line 470
    return-object v0

    .line 469
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public blacklist getAvailableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 268
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaRouter2Manager;->getFilteredRoutes(Landroid/media/RoutingSessionInfo;ZLjava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getAvailableRoutes(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 240
    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 243
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getAvailableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getDeselectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 780
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 782
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    .line 784
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 785
    :try_start_c
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    .line 786
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    .line 787
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda12;-><init>()V

    .line 788
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 789
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit v1

    .line 785
    return-object p1

    .line 790
    :catchall_40
    move-exception p1

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_c .. :try_end_42} :catchall_40

    throw p1
.end method

.method public blacklist getDiscoveryPreference(Ljava/lang/String;)Landroid/media/RouteDiscoveryPreference;
    .registers 4

    .line 367
    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/RouteDiscoveryPreference;

    return-object p1
.end method

.method public blacklist getMediaControllerForRoutingSession(Landroid/media/RoutingSessionInfo;)Landroid/media/session/MediaController;
    .registers 6

    .line 225
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 226
    invoke-direct {p0, v2, p1}, Landroid/media/MediaRouter2Manager;->areSessionsMatched(Landroid/media/session/MediaController;Landroid/media/RoutingSessionInfo;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 227
    return-object v2

    .line 229
    :cond_1e
    goto :goto_b

    .line 230
    :cond_1f
    return-object v1
.end method

.method public blacklist getRemoteSessions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 455
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    invoke-interface {v0, v1}, Landroid/media/IMediaRouterService;->getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 456
    :catch_9
    move-exception v0

    .line 457
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getRouteListingPreference(Ljava/lang/String;)Landroid/media/RouteListingPreference;
    .registers 3

    .line 378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 379
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mPackageToRouteListingPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/RouteListingPreference;

    return-object p1
.end method

.method public blacklist getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;
    .registers 5

    .line 408
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 410
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object p1

    return-object p1

    .line 412
    :cond_14
    invoke-virtual {p0}, Landroid/media/MediaRouter2Manager;->getRemoteSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 413
    invoke-direct {p0, p1, v1}, Landroid/media/MediaRouter2Manager;->areSessionsMatched(Landroid/media/session/MediaController;Landroid/media/RoutingSessionInfo;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 414
    return-object v1

    .line 416
    :cond_2f
    goto :goto_1c

    .line 417
    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getRoutingSessions(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 429
    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {p0}, Landroid/media/MediaRouter2Manager;->getRemoteSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 435
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 436
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_32
    goto :goto_19

    .line 439
    :cond_33
    return-object v0
.end method

.method public blacklist getSelectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 762
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 764
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    .line 766
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 767
    :try_start_c
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    .line 768
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    .line 769
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda12;-><init>()V

    .line 770
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 771
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit v1

    .line 767
    return-object p1

    .line 772
    :catchall_40
    move-exception p1

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_c .. :try_end_42} :catchall_40

    throw p1
.end method

.method public blacklist getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 748
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 750
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 751
    :try_start_8
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda12;-><init>()V

    .line 752
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 753
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit v0

    .line 751
    return-object p1

    .line 754
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public blacklist getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 4

    .line 392
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mContext:Landroid/content/Context;

    .line 393
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-interface {v0, v1, p1}, Landroid/media/IMediaRouterService;->getSystemSessionInfoForPackage(Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    .line 394
    :catch_d
    move-exception p1

    .line 395
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getTransferableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda0;-><init>(Landroid/media/RoutingSessionInfo;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/media/MediaRouter2Manager;->getFilteredRoutes(Landroid/media/RoutingSessionInfo;ZLjava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getTransferableRoutes(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 253
    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getTransferableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method blacklist handleFailureOnHandler(II)V
    .registers 6

    .line 642
    nop

    .line 643
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$TransferRequest;

    .line 644
    iget v2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mRequestId:I

    if-ne v2, p1, :cond_19

    .line 645
    nop

    .line 646
    goto :goto_1b

    .line 648
    :cond_19
    goto :goto_7

    .line 643
    :cond_1a
    const/4 v1, 0x0

    .line 650
    :goto_1b
    if-eqz v1, :cond_2a

    .line 651
    iget-object p1, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 652
    iget-object p1, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    iget-object p2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 653
    return-void

    .line 655
    :cond_2a
    invoke-virtual {p0, p2}, Landroid/media/MediaRouter2Manager;->notifyRequestFailed(I)V

    .line 656
    return-void
.end method

.method blacklist handleSessionsUpdatedOnHandler(Landroid/media/RoutingSessionInfo;)V
    .registers 6

    .line 659
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$TransferRequest;

    .line 660
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 661
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 662
    goto :goto_6

    .line 664
    :cond_23
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 665
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 666
    iget-object v0, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaRouter2Manager;->notifyTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    .line 667
    goto :goto_3f

    .line 669
    :cond_3e
    goto :goto_6

    .line 670
    :cond_3f
    :goto_3f
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V

    .line 671
    return-void
.end method

.method blacklist notifyRequestFailed(I)V
    .registers 6

    .line 692
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 693
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda9;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 694
    goto :goto_6

    .line 695
    :cond_1d
    return-void
.end method

.method blacklist notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .registers 6

    .line 686
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 687
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda5;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 688
    goto :goto_6

    .line 689
    :cond_1d
    return-void
.end method

.method blacklist notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .registers 6

    .line 680
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 681
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda10;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 682
    goto :goto_6

    .line 683
    :cond_1d
    return-void
.end method

.method blacklist notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 7

    .line 704
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 705
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, p1, p2}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 706
    goto :goto_6

    .line 707
    :cond_1d
    return-void
.end method

.method blacklist notifyTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .registers 7

    .line 698
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 699
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda13;

    invoke-direct {v3, v1, p1, p2}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda13;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 700
    goto :goto_6

    .line 701
    :cond_1d
    return-void
.end method

.method public blacklist registerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V
    .registers 4

    .line 147
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    new-instance v0, Landroid/media/MediaRouter2Manager$CallbackRecord;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/MediaRouter2Manager$CallbackRecord;-><init>(Landroid/media/MediaRouter2Manager;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V

    .line 151
    iget-object p1, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 152
    const-string p1, "MR2Manager"

    const-string p2, "Ignoring to register the same callback twice."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 155
    :cond_1f
    return-void
.end method

.method public blacklist registerScanRequest()V
    .registers 4

    .line 181
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_17

    .line 183
    :try_start_8
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/media/IMediaRouterService;->updateScanningState(Landroid/media/IMediaRouter2Manager;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    .line 186
    goto :goto_17

    .line 184
    :catch_11
    move-exception v0

    .line 185
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 188
    :cond_17
    :goto_17
    return-void
.end method

.method public blacklist releaseSession(Landroid/media/RoutingSessionInfo;)V
    .registers 5

    .line 891
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 894
    :try_start_5
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 895
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, v0, p1}, Landroid/media/IMediaRouterService;->releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_18

    .line 898
    nop

    .line 899
    return-void

    .line 896
    :catch_18
    move-exception p1

    .line 897
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist selectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 10

    .line 812
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 813
    const-string v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 815
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MR2Manager"

    if-eqz v0, :cond_31

    .line 816
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring selecting a route that is already selected. route="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void

    .line 820
    :cond_31
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 821
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring selecting a non-selectable route="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return-void

    .line 826
    :cond_56
    :try_start_56
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 827
    new-instance v6, Landroid/media/RoutingChangeInfo;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Landroid/media/RoutingChangeInfo;-><init>(IZ)V

    .line 831
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    .line 832
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 831
    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/media/IMediaRouterService;->selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_6f} :catch_71

    .line 835
    nop

    .line 836
    return-void

    .line 833
    :catch_71
    move-exception v0

    move-object p1, v0

    .line 834
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .registers 6

    .line 545
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 547
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getVolumeHandling()I

    move-result v0

    const-string v1, "MR2Manager"

    if-nez v0, :cond_13

    .line 548
    const-string p1, "setRouteVolume: the route has fixed volume. Ignoring."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-void

    .line 551
    :cond_13
    if-ltz p2, :cond_31

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getVolumeMax()I

    move-result v0

    if-le p2, v0, :cond_1c

    goto :goto_31

    .line 557
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 558
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    invoke-interface {v1, v2, v0, p1, p2}, Landroid/media/IMediaRouterService;->setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_29} :catch_2b

    .line 561
    nop

    .line 562
    return-void

    .line 559
    :catch_2b
    move-exception p1

    .line 560
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 552
    :cond_31
    :goto_31
    const-string p1, "setRouteVolume: the target volume is out of range. Ignoring"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void
.end method

.method public blacklist setSessionVolume(Landroid/media/RoutingSessionInfo;I)V
    .registers 6

    .line 571
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 573
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getVolumeHandling()I

    move-result v0

    const-string v1, "MR2Manager"

    if-nez v0, :cond_13

    .line 574
    const-string p1, "setSessionVolume: the route has fixed volume. Ignoring."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void

    .line 577
    :cond_13
    if-ltz p2, :cond_35

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v0

    if-le p2, v0, :cond_1c

    goto :goto_35

    .line 583
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 584
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    .line 585
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 584
    invoke-interface {v1, v2, v0, p1, p2}, Landroid/media/IMediaRouterService;->setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2d} :catch_2f

    .line 588
    nop

    .line 589
    return-void

    .line 586
    :catch_2f
    move-exception p1

    .line 587
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 578
    :cond_35
    :goto_35
    const-string p1, "setSessionVolume: the target volume is out of range. Ignoring"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void
.end method

.method public blacklist transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 8

    .line 512
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 513
    const-string v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 514
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v0, "MR2Manager"

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

    .line 519
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_35
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 521
    const-string p3, "MR2Manager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transfer: Ignoring an unknown route id="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 523
    monitor-exit v0

    return-void

    .line 525
    :cond_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_35 .. :try_end_63} :catchall_79

    .line 527
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 528
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaRouter2Manager;->transferToRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_78

    .line 531
    :cond_75
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->requestCreateSession(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 533
    :goto_78
    return-void

    .line 525
    :catchall_79
    move-exception p1

    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw p1
.end method

.method public blacklist transfer(Ljava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;)V
    .registers 6

    .line 485
    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 486
    const-string v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 488
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 489
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RoutingSessionInfo;

    .line 490
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/media/MediaRouter2Manager;->transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public blacklist unregisterCallback(Landroid/media/MediaRouter2Manager$Callback;)V
    .registers 5

    .line 163
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Landroid/media/MediaRouter2Manager$CallbackRecord;-><init>(Landroid/media/MediaRouter2Manager;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterCallback: Ignore unknown callback. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MR2Manager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 169
    :cond_2c
    return-void
.end method

.method public blacklist unregisterScanRequest()V
    .registers 4

    .line 199
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->updateAndGet(Ljava/util/function/IntUnaryOperator;)I

    move-result v0

    if-nez v0, :cond_1c

    .line 210
    :try_start_d
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/media/IMediaRouterService;->updateScanningState(Landroid/media/IMediaRouter2Manager;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    .line 213
    goto :goto_1c

    .line 211
    :catch_16
    move-exception v0

    .line 212
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 215
    :cond_1c
    :goto_1c
    return-void
.end method

.method blacklist updateDiscoveryPreference(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 7

    .line 710
    if-nez p2, :cond_8

    .line 711
    iget-object p2, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    return-void

    .line 714
    :cond_8
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    .line 715
    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RouteDiscoveryPreference;

    .line 716
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 717
    return-void

    .line 719
    :cond_17
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    .line 720
    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1, p1, p2}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda8;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 722
    goto :goto_1d

    .line 723
    :cond_34
    return-void
.end method

.method blacklist updateRoutesOnHandler(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 594
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 595
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    goto :goto_c

    .line 597
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_27

    .line 599
    invoke-direct {p0}, Landroid/media/MediaRouter2Manager;->notifyRoutesUpdated()V

    .line 600
    return-void

    .line 597
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method
