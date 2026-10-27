.class public final Landroid/hardware/location/ContextHubManager;
.super Ljava/lang/Object;
.source "ContextHubManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubManager$Callback;,
        Landroid/hardware/location/ContextHubManager$ICallback;,
        Landroid/hardware/location/ContextHubManager$Event;,
        Landroid/hardware/location/ContextHubManager$AuthorizationState;
    }
.end annotation


# static fields
.field public static final whitelist AUTHORIZATION_DENIED:I = 0x0

.field public static final whitelist AUTHORIZATION_DENIED_GRACE_PERIOD:I = 0x1

.field public static final whitelist AUTHORIZATION_GRANTED:I = 0x2

.field public static final whitelist EVENT_CLIENT_AUTHORIZATION:I = 0x7

.field public static final whitelist EVENT_HUB_RESET:I = 0x6

.field public static final whitelist EVENT_NANOAPP_ABORTED:I = 0x4

.field public static final whitelist EVENT_NANOAPP_DISABLED:I = 0x3

.field public static final whitelist EVENT_NANOAPP_ENABLED:I = 0x2

.field public static final whitelist EVENT_NANOAPP_LOADED:I = 0x0

.field public static final whitelist EVENT_NANOAPP_MESSAGE:I = 0x5

.field public static final whitelist EVENT_NANOAPP_UNLOADED:I = 0x1

.field public static final whitelist EXTRA_CLIENT_AUTHORIZATION_STATE:Ljava/lang/String; = "android.hardware.location.extra.CLIENT_AUTHORIZATION_STATE"

.field public static final whitelist EXTRA_CONTEXT_HUB_INFO:Ljava/lang/String; = "android.hardware.location.extra.CONTEXT_HUB_INFO"

.field public static final whitelist EXTRA_EVENT_TYPE:Ljava/lang/String; = "android.hardware.location.extra.EVENT_TYPE"

.field public static final whitelist EXTRA_MESSAGE:Ljava/lang/String; = "android.hardware.location.extra.MESSAGE"

.field public static final whitelist EXTRA_NANOAPP_ABORT_CODE:Ljava/lang/String; = "android.hardware.location.extra.NANOAPP_ABORT_CODE"

.field public static final whitelist EXTRA_NANOAPP_ID:Ljava/lang/String; = "android.hardware.location.extra.NANOAPP_ID"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContextHubManager"


# instance fields
.field private greylist-max-o mCallback:Landroid/hardware/location/ContextHubManager$Callback;

.field private greylist-max-o mCallbackHandler:Landroid/os/Handler;

.field private final greylist-max-o mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

.field private blacklist mDiscoveryCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;",
            "Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final greylist-max-o mMainLooper:Landroid/os/Looper;

.field private final greylist-max-o mService:Landroid/hardware/location/IContextHubService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackHandler(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalCallback(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMatchingEndpointDiscoveryList(Landroid/hardware/location/ContextHubManager;[Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ContextHubManager;->getMatchingEndpointDiscoveryList([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minvokeOnMessageReceiptCallback(Landroid/hardware/location/ContextHubManager;IILandroid/hardware/location/ContextHubMessage;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager;->invokeOnMessageReceiptCallback(IILandroid/hardware/location/ContextHubMessage;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/location/IContextHubService;Landroid/os/Looper;)V
    .registers 4

    .line 1536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mDiscoveryCallbacks:Ljava/util/Map;

    .line 1518
    new-instance v0, Landroid/hardware/location/ContextHubManager$4;

    invoke-direct {v0, p0}, Landroid/hardware/location/ContextHubManager$4;-><init>(Landroid/hardware/location/ContextHubManager;)V

    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

    .line 1537
    const-string v0, "service cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1538
    const-string v0, "mainLooper cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1539
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    .line 1540
    iput-object p2, p0, Landroid/hardware/location/ContextHubManager;->mMainLooper:Landroid/os/Looper;

    .line 1543
    :try_start_1f
    iget-object p1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    iget-object p2, p0, Landroid/hardware/location/ContextHubManager;->mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

    invoke-interface {p1, p2}, Landroid/hardware/location/IContextHubService;->registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_28

    .line 1546
    nop

    .line 1547
    return-void

    .line 1544
    :catch_28
    move-exception p1

    .line 1545
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private greylist-max-o createClientCallback(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/IContextHubClientCallback;
    .registers 5

    .line 1056
    new-instance v0, Landroid/hardware/location/ContextHubManager$3;

    invoke-direct {v0, p0, p3, p2, p1}, Landroid/hardware/location/ContextHubManager$3;-><init>(Landroid/hardware/location/ContextHubManager;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V

    return-object v0
.end method

.method private blacklist createDiscoveryCallback(Landroid/hardware/location/IContextHubService;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    .registers 11

    .line 781
    new-instance v0, Landroid/hardware/location/ContextHubManager$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/location/ContextHubManager$2;-><init>(Landroid/hardware/location/ContextHubManager;Landroid/hardware/location/IContextHubService;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;)V

    return-object v0
.end method

.method private greylist-max-o createQueryCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;>;)",
            "Landroid/hardware/location/IContextHubTransactionCallback;"
        }
    .end annotation

    .line 533
    new-instance v0, Landroid/hardware/location/ContextHubManager$1;

    invoke-direct {v0, p0, p1}, Landroid/hardware/location/ContextHubManager$1;-><init>(Landroid/hardware/location/ContextHubManager;Landroid/hardware/location/ContextHubTransaction;)V

    return-object v0
.end method

.method private blacklist getMatchingEndpointDiscoveryList([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/contexthub/HubEndpointInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubDiscoveryInfo;",
            ">;"
        }
    .end annotation

    .line 847
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 848
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_41

    aget-object v3, p1, v2

    .line 849
    if-eqz p2, :cond_36

    .line 850
    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/contexthub/HubServiceInfo;

    .line 851
    invoke-virtual {v5}, Landroid/hardware/contexthub/HubServiceInfo;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 852
    new-instance v6, Landroid/hardware/contexthub/HubDiscoveryInfo;

    invoke-direct {v6, v3, v5}, Landroid/hardware/contexthub/HubDiscoveryInfo;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubServiceInfo;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    :cond_34
    goto :goto_16

    :cond_35
    goto :goto_3e

    .line 856
    :cond_36
    new-instance v4, Landroid/hardware/contexthub/HubDiscoveryInfo;

    invoke-direct {v4, v3}, Landroid/hardware/contexthub/HubDiscoveryInfo;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 859
    :cond_41
    return-object v0
.end method

.method private declared-synchronized blacklist invokeOnMessageReceiptCallback(IILandroid/hardware/location/ContextHubMessage;)V
    .registers 5

    monitor-enter p0

    .line 1513
    :try_start_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eqz v0, :cond_a

    .line 1514
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager$Callback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1516
    :cond_a
    monitor-exit p0

    return-void

    .line 1512
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method


# virtual methods
.method public whitelist createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;J)Landroid/hardware/location/ContextHubClient;
    .registers 13

    .line 1268
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    invoke-virtual {p3}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_35

    .line 1274
    new-instance v0, Landroid/hardware/location/ContextHubClient;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Landroid/hardware/location/ContextHubClient;-><init>(Landroid/hardware/location/ContextHubInfo;Z)V

    .line 1276
    nop

    .line 1277
    if-eqz p1, :cond_1b

    .line 1278
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_1d

    .line 1277
    :cond_1b
    const/4 p1, 0x0

    move-object v6, p1

    .line 1283
    :goto_1d
    :try_start_1d
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    .line 1284
    invoke-virtual {p2}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v2

    .line 1283
    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v1 .. v6}, Landroid/hardware/location/IContextHubService;->createPendingIntentClient(ILandroid/app/PendingIntent;JLjava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object p1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_29} :catch_2e

    .line 1287
    nop

    .line 1289
    invoke-virtual {v0, p1}, Landroid/hardware/location/ContextHubClient;->setClientProxy(Landroid/hardware/location/IContextHubClient;)V

    .line 1290
    return-object v0

    .line 1285
    :catch_2e
    move-exception v0

    move-object p1, v0

    .line 1286
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1271
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PendingIntent must be mutable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;
    .registers 7

    .line 1161
    const-string v0, "Callback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1162
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1163
    const-string v0, "Executor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1165
    new-instance v0, Landroid/hardware/location/ContextHubClient;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/hardware/location/ContextHubClient;-><init>(Landroid/hardware/location/ContextHubInfo;Z)V

    .line 1166
    invoke-direct {p0, v0, p4, p3}, Landroid/hardware/location/ContextHubManager;->createClientCallback(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object p3

    .line 1169
    nop

    .line 1170
    if-eqz p1, :cond_21

    .line 1171
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p4

    goto :goto_22

    .line 1170
    :cond_21
    const/4 p4, 0x0

    .line 1176
    :goto_22
    if-eqz p1, :cond_29

    .line 1177
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    .line 1179
    :cond_29
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1184
    :goto_2d
    :try_start_2d
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    .line 1185
    invoke-virtual {p2}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p2

    .line 1184
    invoke-interface {v1, p2, p3, p4, p1}, Landroid/hardware/location/IContextHubService;->createClient(ILandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object p1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_37} :catch_3c

    .line 1188
    nop

    .line 1190
    invoke-virtual {v0, p1}, Landroid/hardware/location/ContextHubClient;->setClientProxy(Landroid/hardware/location/IContextHubClient;)V

    .line 1191
    return-object v0

    .line 1186
    :catch_3c
    move-exception p1

    .line 1187
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist createClient(Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;J)Landroid/hardware/location/ContextHubClient;
    .registers 11

    .line 1300
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/location/ContextHubManager;->createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;J)Landroid/hardware/location/ContextHubClient;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;
    .registers 5

    .line 1214
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/hardware/location/ContextHubManager;->createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/ContextHubClient;
    .registers 5

    .line 1204
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/hardware/location/ContextHubManager;->createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;

    move-result-object p1

    return-object p1
.end method

.method public whitelist disableNanoApp(Landroid/hardware/location/ContextHubInfo;J)Landroid/hardware/location/ContextHubTransaction;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "J)",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 655
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 657
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 659
    nop

    .line 660
    invoke-static {v0}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 663
    :try_start_10
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p1

    invoke-interface {v2, p1, v1, p2, p3}, Landroid/hardware/location/IContextHubService;->disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1b

    .line 666
    nop

    .line 668
    return-object v0

    .line 664
    :catch_1b
    move-exception p1

    .line 665
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist disableTestMode()Z
    .registers 3

    .line 1449
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/hardware/location/IContextHubService;->setTestMode(Z)Z

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return v0

    .line 1450
    :catch_8
    move-exception v0

    .line 1451
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist enableNanoApp(Landroid/hardware/location/ContextHubInfo;J)Landroid/hardware/location/ContextHubTransaction;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "J)",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 626
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 628
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 630
    nop

    .line 631
    invoke-static {v0}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 634
    :try_start_10
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p1

    invoke-interface {v2, p1, v1, p2, p3}, Landroid/hardware/location/IContextHubService;->enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1b

    .line 637
    nop

    .line 639
    return-object v0

    .line 635
    :catch_1b
    move-exception p1

    .line 636
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist enableTestMode()Z
    .registers 3

    .line 1427
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/hardware/location/IContextHubService;->setTestMode(Z)Z

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return v0

    .line 1428
    :catch_8
    move-exception v0

    .line 1429
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist findEndpoints(J)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubDiscoveryInfo;",
            ">;"
        }
    .end annotation

    .line 710
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubService;->findEndpoints(J)Ljava/util/List;

    move-result-object p1

    .line 711
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 713
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 714
    new-instance v1, Landroid/hardware/contexthub/HubDiscoveryInfo;

    invoke-direct {v1, v0}, Landroid/hardware/contexthub/HubDiscoveryInfo;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_29

    .line 715
    goto :goto_13

    .line 716
    :cond_28
    return-object p2

    .line 717
    :catch_29
    move-exception p1

    .line 718
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist findEndpoints(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubDiscoveryInfo;",
            ">;"
        }
    .end annotation

    .line 746
    invoke-virtual {p1}, Ljava/lang/String;->isBlank()Z

    move-result v0

    if-nez v0, :cond_54

    .line 750
    :try_start_6
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    .line 751
    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->findEndpointsWithService(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 752
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 754
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 755
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/HubServiceInfo;

    .line 756
    invoke-virtual {v4}, Landroid/hardware/contexthub/HubServiceInfo;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 757
    new-instance v5, Landroid/hardware/contexthub/HubDiscoveryInfo;

    invoke-direct {v5, v2, v4}, Landroid/hardware/contexthub/HubDiscoveryInfo;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubServiceInfo;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_4b} :catch_4e

    .line 759
    :cond_4b
    goto :goto_2d

    .line 760
    :cond_4c
    goto :goto_19

    .line 761
    :cond_4d
    return-object v1

    .line 762
    :catch_4e
    move-exception p1

    .line 763
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 747
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid service descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 436
    const/4 p1, 0x0

    return-object p1

    .line 440
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubService;->findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object p1

    .line 441
    :catch_f
    move-exception p1

    .line 442
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getContextHubHandles()[I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 274
    const/4 v0, 0x0

    return-object v0

    .line 278
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubService;->getContextHubHandles()[I

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 279
    :catch_f
    move-exception v0

    .line 280
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 299
    const/4 p1, 0x0

    return-object p1

    .line 303
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object p1

    .line 304
    :catch_f
    move-exception p1

    .line 305
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getContextHubs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation

    .line 498
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubService;->getContextHubs()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 499
    :catch_7
    move-exception v0

    .line 500
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getHubs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/HubInfo;",
            ">;"
        }
    .end annotation

    .line 518
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubService;->getHubs()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 519
    :catch_7
    move-exception v0

    .line 520
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 408
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 409
    const/4 p1, 0x0

    return-object p1

    .line 413
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return-object p1

    .line 414
    :catch_f
    move-exception p1

    .line 415
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getPreloadedNanoAppIds(Landroid/hardware/location/ContextHubInfo;)[J
    .registers 3

    .line 1395
    const-string v0, "hubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1397
    nop

    .line 1399
    :try_start_6
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->getPreloadedNanoAppIds(Landroid/hardware/location/ContextHubInfo;)[J

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_13

    .line 1402
    nop

    .line 1404
    if-nez p1, :cond_12

    .line 1405
    const/4 p1, 0x0

    new-array p1, p1, [J

    .line 1407
    :cond_12
    return-object p1

    .line 1400
    :catch_13
    move-exception p1

    .line 1401
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 334
    const/4 p1, -0x1

    return p1

    .line 338
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubService;->loadNanoApp(ILandroid/hardware/location/NanoApp;)I

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return p1

    .line 339
    :catch_f
    move-exception p1

    .line 340
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist loadNanoApp(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/ContextHubTransaction;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "Landroid/hardware/location/NanoAppBinary;",
            ")",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 567
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 568
    const-string v0, "NanoAppBinary cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 570
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 572
    nop

    .line 573
    invoke-static {v0}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 576
    :try_start_15
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p1

    invoke-interface {v2, p1, v1, p2}, Landroid/hardware/location/IContextHubService;->loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_20

    .line 579
    nop

    .line 581
    return-object v0

    .line 577
    :catch_20
    move-exception p1

    .line 578
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist openSession(Landroid/hardware/contexthub/HubEndpoint;Landroid/hardware/contexthub/HubEndpointInfo;)V
    .registers 4

    .line 1337
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/contexthub/HubEndpoint;->openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 1338
    return-void
.end method

.method public whitelist openSession(Landroid/hardware/contexthub/HubEndpoint;Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .registers 4

    .line 1363
    invoke-virtual {p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint;->openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 1364
    return-void
.end method

.method public whitelist queryNanoApps(Landroid/hardware/location/ContextHubInfo;)Landroid/hardware/location/ContextHubTransaction;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            ")",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;>;"
        }
    .end annotation

    .line 683
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 685
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 687
    invoke-direct {p0, v0}, Landroid/hardware/location/ContextHubManager;->createQueryCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 690
    :try_start_f
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p1

    invoke-interface {v2, p1, v1}, Landroid/hardware/location/IContextHubService;->queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_1a

    .line 693
    nop

    .line 695
    return-object v0

    .line 691
    :catch_1a
    move-exception p1

    .line 692
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist registerCallback(Landroid/hardware/location/ContextHubManager$Callback;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 988
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 989
    const/4 p1, -0x1

    return p1

    .line 992
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/location/ContextHubManager;->registerCallback(Landroid/hardware/location/ContextHubManager$Callback;Landroid/os/Handler;)I

    move-result p1

    return p1
.end method

.method public whitelist registerCallback(Landroid/hardware/location/ContextHubManager$Callback;Landroid/os/Handler;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1030
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 1031
    return v1

    .line 1034
    :cond_8
    monitor-enter p0

    .line 1035
    :try_start_9
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eqz v0, :cond_16

    .line 1036
    const-string p1, "ContextHubManager"

    const-string p2, "Max number of callbacks reached!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    monitor-exit p0

    return v1

    .line 1039
    :cond_16
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    .line 1040
    if-nez p2, :cond_21

    new-instance p2, Landroid/os/Handler;

    iget-object p1, p0, Landroid/hardware/location/ContextHubManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_21
    iput-object p2, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    .line 1041
    monitor-exit p0

    .line 1042
    const/4 p1, 0x0

    return p1

    .line 1041
    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public greylist-max-o registerCallback(Landroid/hardware/location/ContextHubManager$ICallback;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1001
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 1002
    return v1

    .line 1005
    :cond_8
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    if-eqz v0, :cond_14

    .line 1006
    const-string p1, "ContextHubManager"

    const-string v0, "Max number of local callbacks reached!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return v1

    .line 1009
    :cond_14
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    .line 1010
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist registerEndpoint(Landroid/hardware/contexthub/HubEndpoint;)V
    .registers 3

    .line 1317
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1, v0}, Landroid/hardware/contexthub/HubEndpoint;->register(Landroid/hardware/location/IContextHubService;)V

    .line 1318
    return-void
.end method

.method public whitelist registerEndpointDiscoveryCallback(Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;J)V
    .registers 6

    .line 870
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 871
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 870
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager;->registerEndpointDiscoveryCallback(Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;J)V

    .line 872
    return-void
.end method

.method public whitelist registerEndpointDiscoveryCallback(Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Ljava/lang/String;)V
    .registers 5

    .line 910
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 911
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 910
    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/location/ContextHubManager;->registerEndpointDiscoveryCallback(Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method public whitelist registerEndpointDiscoveryCallback(Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;J)V
    .registers 7

    .line 889
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 890
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 891
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    .line 892
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/hardware/location/ContextHubManager;->createDiscoveryCallback(Landroid/hardware/location/IContextHubService;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object p1

    .line 894
    :try_start_11
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p3, p4, p1}, Landroid/hardware/location/IContextHubService;->registerEndpointDiscoveryCallbackId(JLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    .line 897
    goto :goto_1b

    .line 895
    :catch_17
    move-exception p3

    .line 896
    invoke-virtual {p3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 899
    :goto_1b
    iget-object p3, p0, Landroid/hardware/location/ContextHubManager;->mDiscoveryCallbacks:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    return-void
.end method

.method public whitelist registerEndpointDiscoveryCallback(Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Ljava/lang/String;)V
    .registers 5

    .line 930
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 931
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 932
    const-string v0, "serviceDescriptor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 933
    invoke-virtual {p3}, Ljava/lang/String;->isBlank()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 937
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    .line 938
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager;->createDiscoveryCallback(Landroid/hardware/location/IContextHubService;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object p1

    .line 940
    :try_start_1b
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p3, p1}, Landroid/hardware/location/IContextHubService;->registerEndpointDiscoveryCallbackDescriptor(Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    .line 943
    goto :goto_25

    .line 941
    :catch_21
    move-exception p3

    .line 942
    invoke-virtual {p3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 945
    :goto_25
    iget-object p3, p0, Landroid/hardware/location/ContextHubManager;->mDiscoveryCallbacks:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    return-void

    .line 934
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid service descriptor: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 475
    const/4 p1, -0x1

    return p1

    .line 479
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/location/IContextHubService;->sendMessage(IILandroid/hardware/location/ContextHubMessage;)I

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return p1

    .line 480
    :catch_f
    move-exception p1

    .line 481
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist unloadNanoApp(I)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 365
    const/4 p1, -0x1

    return p1

    .line 369
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->unloadNanoApp(I)I

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return p1

    .line 370
    :catch_f
    move-exception p1

    .line 371
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist unloadNanoApp(Landroid/hardware/location/ContextHubInfo;J)Landroid/hardware/location/ContextHubTransaction;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "J)",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 597
    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 599
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 601
    nop

    .line 602
    invoke-static {v0}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 605
    :try_start_10
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p1

    invoke-interface {v2, p1, v1, p2, p3}, Landroid/hardware/location/IContextHubService;->unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1b

    .line 608
    nop

    .line 610
    return-object v0

    .line 606
    :catch_1b
    move-exception p1

    .line 607
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist unregisterCallback(Landroid/hardware/location/ContextHubManager$Callback;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1470
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 1471
    return v1

    .line 1474
    :cond_8
    monitor-enter p0

    .line 1475
    :try_start_9
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eq p1, v0, :cond_16

    .line 1476
    const-string p1, "ContextHubManager"

    const-string v0, "Cannot recognize callback!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    monitor-exit p0

    return v1

    .line 1480
    :cond_16
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    .line 1481
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    .line 1482
    monitor-exit p0

    .line 1483
    const/4 p1, 0x0

    return p1

    .line 1482
    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public declared-synchronized greylist-max-o unregisterCallback(Landroid/hardware/location/ContextHubManager$ICallback;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1492
    :try_start_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->removeOldContextHubApis()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1d

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    .line 1493
    monitor-exit p0

    return v1

    .line 1496
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    if-eq p1, v0, :cond_17

    .line 1497
    const-string p1, "ContextHubManager"

    const-string v0, "Cannot recognize local callback!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1d

    .line 1498
    monitor-exit p0

    return v1

    .line 1500
    :cond_17
    const/4 p1, 0x0

    :try_start_18
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_1d

    .line 1501
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 1491
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public whitelist unregisterEndpoint(Landroid/hardware/contexthub/HubEndpoint;)V
    .registers 2

    .line 1379
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpoint;->unregister()V

    .line 1380
    return-void
.end method

.method public whitelist unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/HubEndpointDiscoveryCallback;)V
    .registers 3

    .line 959
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 960
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mDiscoveryCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    .line 961
    if-eqz p1, :cond_1a

    .line 966
    :try_start_f
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 969
    goto :goto_19

    .line 967
    :catch_15
    move-exception p1

    .line 968
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 970
    :goto_19
    return-void

    .line 962
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Callback not previously registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
