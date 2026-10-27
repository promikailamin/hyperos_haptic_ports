.class final Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
.super Landroid/os/Handler;
.source "MediaRouter2ServiceImpl.java"

# interfaces
.implements Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;
.implements Lcom/android/server/media/MediaRoute2Provider$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouter2ServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UserHandler"
.end annotation


# instance fields
.field private final mLastProviderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRouteProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaRoute2Provider;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionToRouterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

.field private final mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

.field private final mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;


# direct methods
.method public static synthetic $r8$lambda$BlvJKclcwWlp8CPpAUiMFIFJPBg(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;JI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onRequestFailedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$E05IHmTYE16-m9BPiK5Ztl5G9NU(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->updateDiscoveryPreferenceOnHandler()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ql47u_8r4_d74bv620QU10yO-hw(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onProviderStateChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XIF9oatYwLVC7vmfWhMOZ1ZfRm4(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionCreatedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kJWtxriKWmzBPKaC6Yp_JVj4kP8(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionInfoChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mCo8AjH0OUPTIR7ZsHOwgO4A3mc(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionReleasedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRouteProviders(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdeselectRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->deselectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDiscoveryPreferenceChangedToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyDiscoveryPreferenceChangedToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDiscoveryPreferenceChangedToManagers(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyDiscoveryPreferenceChangedToManagers(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyRequestFailedToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Landroid/media/IMediaRouter2Manager;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyRouterRegistered(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRouterRegistered(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyRoutesToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Landroid/media/IMediaRouter2Manager;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesToManager(Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseSessionOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->releaseSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestCreateSessionWithRouter2OnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->requestCreateSessionWithRouter2OnHandler(JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestRouterCreateSessionOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->requestRouterCreateSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->selectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRouteVolumeOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/media/MediaRoute2Info;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->setRouteVolumeOnHandler(JLandroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSessionVolumeOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLjava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->setSessionVolumeOnHandler(JLjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstart(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->start()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstop(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->stop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtransferToRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->transferToRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDiscoveryPreferenceOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->updateDiscoveryPreferenceOnHandler()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/media/MediaRouter2ServiceImpl;
    .param p2, "userRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 1318
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    .line 1309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    .line 1310
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1312
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    .line 1319
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 1320
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 1321
    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/content/Context;

    move-result-object v2

    iget v3, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    .line 1322
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/media/SystemMediaRoute2Provider;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 1323
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/content/Context;

    move-result-object v1

    iget v2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    invoke-direct {v0, v1, p0, p0, v2}, Lcom/android/server/media/MediaRoute2ProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    .line 1326
    return-void
.end method

.method private checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z
    .registers 13
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;
    .param p4, "description"    # Ljava/lang/String;

    .line 1620
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 1621
    .local v0, "providerId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v1

    .line 1622
    .local v1, "provider":Lcom/android/server/media/MediaRoute2Provider;
    const-string v2, "Ignoring "

    const/4 v3, 0x0

    const-string v4, "MR2ServiceImpl"

    if-nez v1, :cond_2e

    .line 1623
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " route since no provider found for given route="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    return v3

    .line 1629
    :cond_2e
    invoke-static {p2}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v6}, Lcom/android/server/media/SystemMediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_40

    .line 1630
    return v6

    .line 1633
    :cond_40
    iget-object v5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1634
    .local v5, "matchingRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-eq v5, p1, :cond_75

    .line 1635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " route from non-matching router. packageName="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " route="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    return v3

    .line 1640
    :cond_75
    invoke-static {p2}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1641
    .local v2, "sessionId":Ljava/lang/String;
    if-nez v2, :cond_92

    .line 1642
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get original session id from unique session id. uniqueSessionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    return v3

    .line 1647
    :cond_92
    return v6
.end method

.method private deselectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 10
    .param p1, "uniqueRequestId"    # J
    .param p3, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "uniqueSessionId"    # Ljava/lang/String;
    .param p5, "route"    # Landroid/media/MediaRoute2Info;

    .line 1582
    const-string v0, "deselecting"

    invoke-direct {p0, p3, p4, p5, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1584
    return-void

    .line 1587
    :cond_9
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 1588
    .local v0, "providerId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v1

    .line 1589
    .local v1, "provider":Lcom/android/server/media/MediaRoute2Provider;
    if-nez v1, :cond_14

    .line 1590
    return-void

    .line 1593
    :cond_14
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1594
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v3

    .line 1593
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/media/MediaRoute2Provider;->deselectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 1595
    return-void
.end method

.method private findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;
    .registers 5
    .param p1, "providerId"    # Ljava/lang/String;

    .line 2235
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRoute2Provider;

    .line 2236
    .local v1, "provider":Lcom/android/server/media/MediaRoute2Provider;
    invoke-virtual {v1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2237
    return-object v1

    .line 2239
    .end local v1    # "provider":Lcom/android/server/media/MediaRoute2Provider;
    :cond_1d
    goto :goto_6

    .line 2240
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAllRouters()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;"
        }
    .end annotation

    .line 1888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1889
    .local v0, "routers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 1890
    .local v1, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v1, :cond_10

    .line 1891
    return-object v0

    .line 1893
    :cond_10
    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1894
    :try_start_15
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1895
    .local v4, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1896
    nop

    .end local v4    # "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    goto :goto_1d

    .line 1897
    :cond_30
    monitor-exit v2

    .line 1898
    return-object v0

    .line 1897
    :catchall_32
    move-exception v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_32

    throw v3
.end method

.method private getLastProviderInfoIndex(Ljava/lang/String;)I
    .registers 5
    .param p1, "providerId"    # Ljava/lang/String;

    .line 1510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1511
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2ProviderInfo;

    .line 1512
    .local v1, "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1513
    return v0

    .line 1510
    .end local v1    # "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1516
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method private getManagerRecords()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;",
            ">;"
        }
    .end annotation

    .line 1943
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 1944
    .local v0, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v0, :cond_f

    .line 1945
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1947
    :cond_f
    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1948
    :try_start_14
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    .line 1949
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private getManagers()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;"
        }
    .end annotation

    .line 1919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1920
    .local v0, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 1921
    .local v1, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v1, :cond_10

    .line 1922
    return-object v0

    .line 1924
    :cond_10
    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1925
    :try_start_15
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 1926
    .local v4, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1927
    nop

    .end local v4    # "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    goto :goto_1d

    .line 1928
    :cond_30
    monitor-exit v2

    .line 1929
    return-object v0

    .line 1928
    :catchall_32
    move-exception v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_32

    throw v3
.end method

.method private getRouterRecords()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;",
            ">;"
        }
    .end annotation

    .line 1933
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 1934
    .local v0, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v0, :cond_f

    .line 1935
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1937
    :cond_f
    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1938
    :try_start_14
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    .line 1939
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private getRouters(Z)Ljava/util/List;
    .registers 8
    .param p1, "hasModifyAudioRoutingPermission"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;"
        }
    .end annotation

    .line 1902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1903
    .local v0, "routers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 1904
    .local v1, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v1, :cond_10

    .line 1905
    return-object v0

    .line 1907
    :cond_10
    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1908
    :try_start_15
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1909
    .local v4, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget-boolean v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-ne p1, v5, :cond_32

    .line 1911
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1913
    .end local v4    # "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    :cond_32
    goto :goto_1d

    .line 1914
    :cond_33
    monitor-exit v2

    .line 1915
    return-object v0

    .line 1914
    :catchall_35
    move-exception v3

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_35

    throw v3
.end method

.method private handleSessionCreationRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)Z
    .registers 11
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "uniqueRequestId"    # J
    .param p4, "reason"    # I

    .line 1814
    const/4 v0, 0x0

    .line 1815
    .local v0, "matchingRequest":Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 1816
    .local v2, "request":Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
    iget-wide v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mUniqueRequestId:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_2b

    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 1817
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    .line 1816
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1818
    move-object v0, v2

    .line 1819
    goto :goto_2c

    .line 1821
    .end local v2    # "request":Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
    :cond_2b
    goto :goto_7

    .line 1823
    :cond_2c
    :goto_2c
    if-nez v0, :cond_30

    .line 1825
    const/4 v1, 0x0

    return v1

    .line 1828
    :cond_30
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1832
    iget-wide v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_47

    .line 1833
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1834
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v2

    .line 1833
    invoke-direct {p0, v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    goto :goto_5e

    .line 1836
    :cond_47
    iget-wide v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    invoke-static {v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result v1

    .line 1837
    .local v1, "requesterId":I
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-result-object v2

    .line 1838
    .local v2, "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-eqz v2, :cond_5e

    .line 1839
    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    iget-wide v4, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    .line 1840
    invoke-static {v4, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v4

    .line 1839
    invoke-direct {p0, v3, v4, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    .line 1843
    .end local v1    # "requesterId":I
    .end local v2    # "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    :cond_5e
    :goto_5e
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$maybeUpdateDiscoveryPreferenceForUid$0(ILcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z
    .registers 3
    .param p0, "uid"    # I
    .param p1, "router"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1417
    iget v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUid:I

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$maybeUpdateDiscoveryPreferenceForUid$1(ILcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)Z
    .registers 3
    .param p0, "uid"    # I
    .param p1, "manager"    # Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 1419
    iget v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUid:I

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$updateDiscoveryPreferenceOnHandler$2(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)Z
    .registers 4
    .param p0, "service"    # Lcom/android/server/media/MediaRouter2ServiceImpl;
    .param p1, "manager"    # Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 2184
    iget-boolean v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mIsScanning:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mPackageName:Ljava/lang/String;

    .line 2185
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 2184
    :goto_13
    return v0
.end method

.method static synthetic lambda$updateDiscoveryPreferenceOnHandler$3(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Landroid/media/RouteDiscoveryPreference;
    .registers 2
    .param p0, "record"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 2190
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    return-object v0
.end method

.method static synthetic lambda$updateDiscoveryPreferenceOnHandler$4(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z
    .registers 4
    .param p0, "service"    # Lcom/android/server/media/MediaRouter2ServiceImpl;
    .param p1, "record"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 2195
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$updateDiscoveryPreferenceOnHandler$5(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Landroid/media/RouteDiscoveryPreference;
    .registers 2
    .param p0, "record"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 2197
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    return-object v0
.end method

.method private notifyDiscoveryPreferenceChangedToManager(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V
    .registers 6
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;

    .line 2130
    :try_start_0
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-interface {p2, v0, v1}, Landroid/media/IMediaRouter2Manager;->notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2135
    goto :goto_10

    .line 2132
    :catch_8
    move-exception v0

    .line 2133
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ServiceImpl"

    const-string v2, "Failed to notify preferred features changed. Manager probably died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2136
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method private notifyDiscoveryPreferenceChangedToManagers(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 10
    .param p1, "routerPackageName"    # Ljava/lang/String;
    .param p2, "discoveryPreference"    # Landroid/media/RouteDiscoveryPreference;

    .line 2140
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 2141
    .local v0, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v0, :cond_b

    .line 2142
    return-void

    .line 2144
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2145
    .local v1, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2146
    :try_start_15
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 2147
    .local v4, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2148
    nop

    .end local v4    # "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    goto :goto_1d

    .line 2149
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_4f

    .line 2150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/IMediaRouter2Manager;

    .line 2152
    .local v3, "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_41
    invoke-interface {v3, p1, p2}, Landroid/media/IMediaRouter2Manager;->notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_45

    .line 2157
    goto :goto_4d

    .line 2154
    :catch_45
    move-exception v4

    .line 2155
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "MR2ServiceImpl"

    const-string v6, "Failed to notify preferred features changed. Manager probably died."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2158
    .end local v3    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_4d
    goto :goto_35

    .line 2159
    :cond_4e
    return-void

    .line 2149
    :catchall_4f
    move-exception v3

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v3
.end method

.method private notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V
    .registers 7
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "reason"    # I

    .line 2164
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/media/IMediaRouter2Manager;->notifyRequestFailed(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2168
    goto :goto_c

    .line 2165
    :catch_4
    move-exception v0

    .line 2166
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ServiceImpl"

    const-string v2, "Failed to notify manager of the request failure. Manager probably died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2169
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private notifyRouterRegistered(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .registers 8
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1955
    .local v0, "currentRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    const/4 v1, 0x0

    .line 1956
    .local v1, "systemProviderInfo":Landroid/media/MediaRoute2ProviderInfo;
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2ProviderInfo;

    .line 1958
    .local v3, "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    invoke-virtual {v3}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v5}, Lcom/android/server/media/SystemMediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1960
    move-object v1, v3

    .line 1961
    goto :goto_c

    .line 1963
    :cond_2a
    invoke-virtual {v3}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1964
    .end local v3    # "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    goto :goto_c

    .line 1967
    :cond_32
    iget-boolean v2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    const-string v3, "MR2ServiceImpl"

    if-eqz v2, :cond_55

    .line 1968
    if-eqz v1, :cond_42

    .line 1969
    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_47

    .line 1972
    :cond_42
    const-string v2, "System route provider not found."

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :goto_47
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v2}, Lcom/android/server/media/SystemMediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .local v2, "currentSystemSessionInfo":Landroid/media/RoutingSessionInfo;
    goto :goto_64

    .line 1976
    .end local v2    # "currentSystemSessionInfo":Landroid/media/RoutingSessionInfo;
    :cond_55
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v2}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1977
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v2}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    .line 1980
    .restart local v2    # "currentSystemSessionInfo":Landroid/media/RoutingSessionInfo;
    :goto_64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6b

    .line 1981
    return-void

    .line 1985
    :cond_6b
    :try_start_6b
    iget-object v4, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v4, v0, v2}, Landroid/media/IMediaRouter2;->notifyRouterRegistered(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_70} :catch_71

    .line 1989
    goto :goto_77

    .line 1987
    :catch_71
    move-exception v4

    .line 1988
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "Failed to notify router registered. Router probably died."

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1990
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_77
    return-void
.end method

.method private notifyRoutesAddedToManagers(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 2053
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2Manager;

    .line 2055
    .local v1, "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_10
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2Manager;->notifyRoutesAdded(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 2058
    goto :goto_1c

    .line 2056
    :catch_14
    move-exception v2

    .line 2057
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string v4, "Failed to notify routes added. Manager probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2059
    .end local v1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1c
    goto :goto_4

    .line 2060
    :cond_1d
    return-void
.end method

.method private notifyRoutesAddedToRouters(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1994
    .local p1, "routers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2;

    .line 1996
    .local v1, "router":Landroid/media/IMediaRouter2;
    :try_start_10
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2;->notifyRoutesAdded(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 1999
    goto :goto_1c

    .line 1997
    :catch_14
    move-exception v2

    .line 1998
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string v4, "Failed to notify routes added. Router probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2000
    .end local v1    # "router":Landroid/media/IMediaRouter2;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1c
    goto :goto_4

    .line 2001
    :cond_1d
    return-void
.end method

.method private notifyRoutesChangedToManagers(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 2075
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2Manager;

    .line 2077
    .local v1, "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_10
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2Manager;->notifyRoutesChanged(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 2080
    goto :goto_1c

    .line 2078
    :catch_14
    move-exception v2

    .line 2079
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string v4, "Failed to notify routes changed. Manager probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2081
    .end local v1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1c
    goto :goto_4

    .line 2082
    :cond_1d
    return-void
.end method

.method private notifyRoutesChangedToRouters(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 2016
    .local p1, "routers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2;

    .line 2018
    .local v1, "router":Landroid/media/IMediaRouter2;
    :try_start_10
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2;->notifyRoutesChanged(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 2021
    goto :goto_1c

    .line 2019
    :catch_14
    move-exception v2

    .line 2020
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string v4, "Failed to notify routes changed. Router probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2022
    .end local v1    # "router":Landroid/media/IMediaRouter2;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1c
    goto :goto_4

    .line 2023
    :cond_1d
    return-void
.end method

.method private notifyRoutesRemovedToManagers(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 2064
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2Manager;

    .line 2066
    .local v1, "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_10
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2Manager;->notifyRoutesRemoved(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 2069
    goto :goto_1c

    .line 2067
    :catch_14
    move-exception v2

    .line 2068
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string v4, "Failed to notify routes removed. Manager probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2070
    .end local v1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1c
    goto :goto_4

    .line 2071
    :cond_1d
    return-void
.end method

.method private notifyRoutesRemovedToRouters(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 2005
    .local p1, "routers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2;

    .line 2007
    .local v1, "router":Landroid/media/IMediaRouter2;
    :try_start_10
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2;->notifyRoutesRemoved(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 2010
    goto :goto_1c

    .line 2008
    :catch_14
    move-exception v2

    .line 2009
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string v4, "Failed to notify routes removed. Router probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2011
    .end local v1    # "router":Landroid/media/IMediaRouter2;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1c
    goto :goto_4

    .line 2012
    :cond_1d
    return-void
.end method

.method private notifyRoutesToManager(Landroid/media/IMediaRouter2Manager;)V
    .registers 6
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;

    .line 2037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2038
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2ProviderInfo;

    .line 2039
    .local v2, "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2040
    .end local v2    # "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    goto :goto_b

    .line 2041
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_26

    .line 2042
    return-void

    .line 2045
    :cond_26
    :try_start_26
    invoke-interface {p1, v0}, Landroid/media/IMediaRouter2Manager;->notifyRoutesAdded(Ljava/util/List;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 2048
    goto :goto_32

    .line 2046
    :catch_2a
    move-exception v1

    .line 2047
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2ServiceImpl"

    const-string v3, "Failed to notify all routes. Manager probably died."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2049
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method private notifySessionCreatedToManagers(JLandroid/media/RoutingSessionInfo;)V
    .registers 11
    .param p1, "managerRequestId"    # J
    .param p3, "session"    # Landroid/media/RoutingSessionInfo;

    .line 2086
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result v0

    .line 2087
    .local v0, "requesterId":I
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v1

    .line 2089
    .local v1, "originalRequestId":I
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 2091
    .local v3, "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    :try_start_1c
    iget-object v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 2092
    iget v5, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    if-ne v5, v0, :cond_24

    move v5, v1

    goto :goto_25

    .line 2093
    :cond_24
    const/4 v5, 0x0

    .line 2091
    :goto_25
    invoke-interface {v4, v5, p3}, Landroid/media/IMediaRouter2Manager;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_28} :catch_29

    .line 2097
    goto :goto_32

    .line 2094
    :catch_29
    move-exception v4

    .line 2095
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "MR2ServiceImpl"

    const-string/jumbo v6, "notifySessionCreatedToManagers: Failed to notify. Manager probably died."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2098
    .end local v3    # "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_32
    goto :goto_10

    .line 2099
    :cond_33
    return-void
.end method

.method private notifySessionCreatedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;ILandroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "requestId"    # I
    .param p3, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1849
    :try_start_0
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0, p2, p3}, Landroid/media/IMediaRouter2;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1853
    goto :goto_e

    .line 1850
    :catch_6
    move-exception v0

    .line 1851
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ServiceImpl"

    const-string v2, "Failed to notify router of the session creation. Router probably died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1854
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V
    .registers 6
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "requestId"    # I

    .line 1859
    :try_start_0
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/media/IMediaRouter2;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 1864
    goto :goto_f

    .line 1861
    :catch_7
    move-exception v0

    .line 1862
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ServiceImpl"

    const-string v2, "Failed to notify router of the session creation failure. Router probably died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1865
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method private notifySessionInfoChangedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;)V
    .registers 6
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1870
    :try_start_0
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0, p2}, Landroid/media/IMediaRouter2;->notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1874
    goto :goto_e

    .line 1871
    :catch_6
    move-exception v0

    .line 1872
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ServiceImpl"

    const-string v2, "Failed to notify router of the session info change. Router probably died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1875
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .registers 8
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .line 2027
    .local p1, "routers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2;

    .line 2029
    .local v1, "router":Landroid/media/IMediaRouter2;
    :try_start_10
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2;->notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 2032
    goto :goto_1c

    .line 2030
    :catch_14
    move-exception v2

    .line 2031
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string v4, "Failed to notify session info changed. Router probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2033
    .end local v1    # "router":Landroid/media/IMediaRouter2;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1c
    goto :goto_4

    .line 2034
    :cond_1d
    return-void
.end method

.method private notifySessionReleasedToManagers(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .registers 8
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .line 2117
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2Manager;

    .line 2119
    .local v1, "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_10
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2Manager;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 2123
    goto :goto_1d

    .line 2120
    :catch_14
    move-exception v2

    .line 2121
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string/jumbo v4, "notifySessionReleasedToManagers: Failed to notify. Manager probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2124
    .end local v1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1d
    goto :goto_4

    .line 2125
    :cond_1e
    return-void
.end method

.method private notifySessionReleasedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;)V
    .registers 6
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1880
    :try_start_0
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0, p2}, Landroid/media/IMediaRouter2;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1884
    goto :goto_e

    .line 1881
    :catch_6
    move-exception v0

    .line 1882
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ServiceImpl"

    const-string v2, "Failed to notify router of the session release. Router probably died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1885
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private notifySessionUpdatedToManagers(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .registers 8
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/IMediaRouter2Manager;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .line 2104
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IMediaRouter2Manager;

    .line 2106
    .local v1, "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_10
    invoke-interface {v1, p2}, Landroid/media/IMediaRouter2Manager;->notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 2110
    goto :goto_1d

    .line 2107
    :catch_14
    move-exception v2

    .line 2108
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2ServiceImpl"

    const-string/jumbo v4, "notifySessionUpdatedToManagers: Failed to notify. Manager probably died."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2111
    .end local v1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1d
    goto :goto_4

    .line 2112
    :cond_1e
    return-void
.end method

.method private onProviderStateChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;)V
    .registers 14
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;

    .line 1428
    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getLastProviderInfoIndex(Ljava/lang/String;)I

    move-result v0

    .line 1429
    .local v0, "providerInfoIndex":I
    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getProviderInfo()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v1

    .line 1431
    .local v1, "currentInfo":Landroid/media/MediaRoute2ProviderInfo;
    if-gez v0, :cond_10

    const/4 v2, 0x0

    goto :goto_18

    :cond_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2ProviderInfo;

    .line 1432
    .local v2, "prevInfo":Landroid/media/MediaRoute2ProviderInfo;
    :goto_18
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    return-void

    .line 1434
    :cond_1f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    .local v3, "addedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    .local v4, "removedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1437
    .local v5, "changedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    if-nez v2, :cond_3e

    .line 1438
    iget-object v6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1439
    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_c5

    .line 1440
    :cond_3e
    if-nez v1, :cond_4e

    .line 1441
    iget-object v6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1442
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_c5

    .line 1444
    :cond_4e
    iget-object v6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v6, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1445
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v6

    .line 1446
    .local v6, "prevRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    .line 1448
    .local v7, "currentRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaRoute2Info;

    .line 1449
    .local v9, "route":Landroid/media/MediaRoute2Info;
    invoke-virtual {v9}, Landroid/media/MediaRoute2Info;->isValid()Z

    move-result v10

    if-nez v10, :cond_8b

    .line 1450
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onProviderStateChangedOnHandler: Ignoring invalid route : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "MR2ServiceImpl"

    invoke-static {v11, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    goto :goto_5f

    .line 1454
    :cond_8b
    invoke-virtual {v9}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/media/MediaRoute2ProviderInfo;->getRoute(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v10

    .line 1455
    .local v10, "prevRoute":Landroid/media/MediaRoute2Info;
    if-nez v10, :cond_99

    .line 1456
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 1457
    :cond_99
    invoke-static {v10, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a2

    .line 1458
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    .end local v9    # "route":Landroid/media/MediaRoute2Info;
    .end local v10    # "prevRoute":Landroid/media/MediaRoute2Info;
    :cond_a2
    :goto_a2
    goto :goto_5f

    .line 1462
    :cond_a3
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_ab
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaRoute2Info;

    .line 1463
    .local v9, "prevRoute":Landroid/media/MediaRoute2Info;
    invoke-virtual {v9}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/media/MediaRoute2ProviderInfo;->getRoute(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v10

    if-nez v10, :cond_c4

    .line 1464
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1466
    .end local v9    # "prevRoute":Landroid/media/MediaRoute2Info;
    :cond_c4
    goto :goto_ab

    .line 1469
    .end local v6    # "prevRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    .end local v7    # "currentRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    :cond_c5
    :goto_c5
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouters(Z)Ljava/util/List;

    move-result-object v6

    .line 1470
    .local v6, "routersWithModifyAudioRoutingPermission":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouters(Z)Ljava/util/List;

    move-result-object v7

    .line 1471
    .local v7, "routersWithoutModifyAudioRoutingPermission":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2;>;"
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagers()Ljava/util/List;

    move-result-object v8

    .line 1472
    .local v8, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    .local v9, "defaultRoute":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v10, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v10}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1475
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_fa

    .line 1476
    invoke-direct {p0, v6, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesAddedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1477
    iget-boolean v10, p1, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    if-nez v10, :cond_f2

    .line 1478
    invoke-direct {p0, v7, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesAddedToRouters(Ljava/util/List;Ljava/util/List;)V

    goto :goto_f7

    .line 1480
    :cond_f2
    if-nez v2, :cond_f7

    .line 1481
    invoke-direct {p0, v7, v9}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesAddedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1484
    :cond_f7
    :goto_f7
    invoke-direct {p0, v8, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesAddedToManagers(Ljava/util/List;Ljava/util/List;)V

    .line 1486
    :cond_fa
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_10d

    .line 1487
    invoke-direct {p0, v6, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesRemovedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1489
    iget-boolean v10, p1, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    if-nez v10, :cond_10a

    .line 1490
    invoke-direct {p0, v7, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesRemovedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1493
    :cond_10a
    invoke-direct {p0, v8, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesRemovedToManagers(Ljava/util/List;Ljava/util/List;)V

    .line 1495
    :cond_10d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_126

    .line 1496
    invoke-direct {p0, v6, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesChangedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1498
    iget-boolean v10, p1, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    if-nez v10, :cond_11e

    .line 1499
    invoke-direct {p0, v7, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesChangedToRouters(Ljava/util/List;Ljava/util/List;)V

    goto :goto_123

    .line 1501
    :cond_11e
    if-eqz v2, :cond_123

    .line 1502
    invoke-direct {p0, v7, v9}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesChangedToRouters(Ljava/util/List;Ljava/util/List;)V

    .line 1505
    :cond_123
    :goto_123
    invoke-direct {p0, v8, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesChangedToManagers(Ljava/util/List;Ljava/util/List;)V

    .line 1507
    :cond_126
    return-void
.end method

.method private onRequestFailedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JI)V
    .registers 9
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "uniqueRequestId"    # J
    .param p4, "reason"    # I

    .line 1795
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->handleSessionCreationRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1796
    return-void

    .line 1799
    :cond_7
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result v0

    .line 1800
    .local v0, "requesterId":I
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-result-object v1

    .line 1801
    .local v1, "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-eqz v1, :cond_1b

    .line 1802
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 1803
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v3

    .line 1802
    invoke-direct {p0, v2, v3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    .line 1804
    return-void

    .line 1809
    :cond_1b
    return-void
.end method

.method private onSessionCreatedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V
    .registers 12
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "uniqueRequestId"    # J
    .param p4, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1707
    const/4 v0, 0x0

    .line 1709
    .local v0, "matchingRequest":Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 1710
    .local v2, "request":Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
    iget-wide v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mUniqueRequestId:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_2b

    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 1712
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    .line 1711
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1713
    move-object v0, v2

    .line 1714
    goto :goto_2c

    .line 1716
    .end local v2    # "request":Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
    :cond_2b
    goto :goto_7

    .line 1718
    :cond_2c
    :goto_2c
    if-nez v0, :cond_31

    .line 1719
    const-wide/16 v1, 0x0

    goto :goto_33

    .line 1720
    :cond_31
    iget-wide v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    :goto_33
    nop

    .line 1721
    .local v1, "managerRequestId":J
    invoke-direct {p0, v1, v2, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreatedToManagers(JLandroid/media/RoutingSessionInfo;)V

    .line 1723
    const-string v3, "MR2ServiceImpl"

    if-nez v0, :cond_5c

    .line 1724
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring session creation result for unknown request. uniqueRequestId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sessionInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    return-void

    .line 1729
    :cond_5c
    iget-object v4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1731
    iget-object v4, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    .line 1732
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v4

    .line 1733
    .local v4, "oldProvider":Lcom/android/server/media/MediaRoute2Provider;
    if-eqz v4, :cond_77

    .line 1734
    iget-object v3, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/media/MediaRoute2Provider;->prepareReleaseSession(Ljava/lang/String;)V

    goto :goto_90

    .line 1736
    :cond_77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSessionCreatedOnHandler: Can\'t find provider for an old session. session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :goto_90
    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    iget-boolean v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez v3, :cond_ac

    .line 1743
    iget-object v3, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1744
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 1745
    invoke-virtual {v6}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v6

    .line 1743
    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreatedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;ILandroid/media/RoutingSessionInfo;)V

    goto :goto_b5

    .line 1747
    :cond_ac
    iget-object v3, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1748
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v5

    .line 1747
    invoke-direct {p0, v3, v5, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreatedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;ILandroid/media/RoutingSessionInfo;)V

    .line 1750
    :goto_b5
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    return-void
.end method

.method private onSessionInfoChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1755
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagers()Ljava/util/List;

    move-result-object v0

    .line 1756
    .local v0, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    invoke-direct {p0, v0, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionUpdatedToManagers(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 1759
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    if-ne p1, v1, :cond_2d

    .line 1760
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 1761
    .local v1, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v1, :cond_16

    .line 1762
    return-void

    .line 1764
    :cond_16
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouters(Z)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 1765
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouters(Z)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 1766
    invoke-virtual {v3}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v3

    .line 1765
    invoke-direct {p0, v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 1767
    return-void

    .line 1770
    .end local v1    # "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    :cond_2d
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1771
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v1, :cond_55

    .line 1772
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSessionInfoChangedOnHandler: No matching router found for session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MR2ServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    return-void

    .line 1776
    :cond_55
    invoke-direct {p0, v1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;)V

    .line 1777
    return-void
.end method

.method private onSessionReleasedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1781
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagers()Ljava/util/List;

    move-result-object v0

    .line 1782
    .local v0, "managers":Ljava/util/List;, "Ljava/util/List<Landroid/media/IMediaRouter2Manager;>;"
    invoke-direct {p0, v0, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionReleasedToManagers(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 1784
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1785
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v1, :cond_2f

    .line 1786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSessionReleasedOnHandler: No matching router found for session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MR2ServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    return-void

    .line 1790
    :cond_2f
    invoke-direct {p0, v1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionReleasedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;)V

    .line 1791
    return-void
.end method

.method private releaseSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .registers 12
    .param p1, "uniqueRequestId"    # J
    .param p3, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "uniqueSessionId"    # Ljava/lang/String;

    .line 1673
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1674
    .local v0, "matchingRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    const-string v1, "MR2ServiceImpl"

    if-eq v0, p3, :cond_33

    .line 1675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring releasing session from non-matching router. packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1676
    if-nez p3, :cond_1b

    const/4 v3, 0x0

    goto :goto_1d

    :cond_1b
    iget-object v3, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uniqueSessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1675
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    return-void

    .line 1681
    :cond_33
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1682
    .local v2, "providerId":Ljava/lang/String;
    const-string v3, "Ignoring releasing session with invalid unique session ID. uniqueSessionId="

    if-nez v2, :cond_50

    .line 1683
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    return-void

    .line 1688
    :cond_50
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1689
    .local v4, "sessionId":Ljava/lang/String;
    if-nez v4, :cond_75

    .line 1690
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " providerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    return-void

    .line 1695
    :cond_75
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v3

    .line 1696
    .local v3, "provider":Lcom/android/server/media/MediaRoute2Provider;
    if-nez v3, :cond_92

    .line 1697
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring releasing session since no provider found for given providerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    return-void

    .line 1702
    :cond_92
    invoke-virtual {v3, p1, p2, v4}, Lcom/android/server/media/MediaRoute2Provider;->releaseSession(JLjava/lang/String;)V

    .line 1703
    return-void
.end method

.method private requestCreateSessionWithRouter2OnHandler(JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "uniqueRequestId"    # J
    .param p3, "managerRequestId"    # J
    .param p5, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p6, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p7, "route"    # Landroid/media/MediaRoute2Info;
    .param p8, "sessionHints"    # Landroid/os/Bundle;

    .line 1543
    move-object v0, p0

    move-object/from16 v9, p5

    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v10

    .line 1544
    .local v10, "provider":Lcom/android/server/media/MediaRoute2Provider;
    if-nez v10, :cond_31

    .line 1545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCreateSessionWithRouter2OnHandler: Ignoring session creation request since no provider found for given route="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v11, p7

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MR2ServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    nop

    .line 1548
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v1

    .line 1547
    invoke-direct {p0, v9, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 1549
    return-void

    .line 1552
    :cond_31
    move-object/from16 v11, p7

    new-instance v12, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    move-object v1, v12

    move-object/from16 v2, p5

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;JJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 1555
    .local v1, "request":Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
    iget-object v2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1557
    iget-object v5, v9, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 1558
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v6

    .line 1557
    move-object v2, v10

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/media/MediaRoute2Provider;->requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1559
    return-void
.end method

.method private requestRouterCreateSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 11
    .param p1, "uniqueRequestId"    # J
    .param p3, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "managerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .param p5, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p6, "route"    # Landroid/media/MediaRoute2Info;

    .line 1523
    :try_start_0
    invoke-virtual {p6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez v0, :cond_16

    .line 1524
    iget-object v0, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 1525
    invoke-virtual {v1}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v1

    .line 1524
    invoke-interface {v0, p1, p2, p5, v1}, Landroid/media/IMediaRouter2;->requestCreateSessionByManager(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    goto :goto_1b

    .line 1527
    :cond_16
    iget-object v0, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0, p1, p2, p5, p6}, Landroid/media/IMediaRouter2;->requestCreateSessionByManager(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 1535
    :goto_1b
    goto :goto_2e

    .line 1530
    :catch_1c
    move-exception v0

    .line 1531
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MR2ServiceImpl"

    const-string v2, "getSessionHintsForCreatingSessionOnHandler: Failed to request. Router probably died."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1533
    iget-object v1, p4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 1534
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v2

    const/4 v3, 0x0

    .line 1533
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    .line 1536
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2e
    return-void
.end method

.method private selectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 10
    .param p1, "uniqueRequestId"    # J
    .param p3, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "uniqueSessionId"    # Ljava/lang/String;
    .param p5, "route"    # Landroid/media/MediaRoute2Info;

    .line 1564
    const-string/jumbo v0, "selecting"

    invoke-direct {p0, p3, p4, p5, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1566
    return-void

    .line 1569
    :cond_a
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 1570
    .local v0, "providerId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v1

    .line 1571
    .local v1, "provider":Lcom/android/server/media/MediaRoute2Provider;
    if-nez v1, :cond_15

    .line 1572
    return-void

    .line 1574
    :cond_15
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1575
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v3

    .line 1574
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/media/MediaRoute2Provider;->selectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 1576
    return-void
.end method

.method private setRouteVolumeOnHandler(JLandroid/media/MediaRoute2Info;I)V
    .registers 8
    .param p1, "uniqueRequestId"    # J
    .param p3, "route"    # Landroid/media/MediaRoute2Info;
    .param p4, "volume"    # I

    .line 1652
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v0

    .line 1653
    .local v0, "provider":Lcom/android/server/media/MediaRoute2Provider;
    if-nez v0, :cond_24

    .line 1654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRouteVolumeOnHandler: Couldn\'t find provider for route="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MR2ServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    return-void

    .line 1657
    :cond_24
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/server/media/MediaRoute2Provider;->setRouteVolume(JLjava/lang/String;I)V

    .line 1658
    return-void
.end method

.method private setSessionVolumeOnHandler(JLjava/lang/String;I)V
    .registers 8
    .param p1, "uniqueRequestId"    # J
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 1662
    invoke-static {p3}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v0

    .line 1663
    .local v0, "provider":Lcom/android/server/media/MediaRoute2Provider;
    if-nez v0, :cond_24

    .line 1664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSessionVolumeOnHandler: Couldn\'t find provider for session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MR2ServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    return-void

    .line 1668
    :cond_24
    invoke-static {p3}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/server/media/MediaRoute2Provider;->setSessionVolume(JLjava/lang/String;I)V

    .line 1669
    return-void
.end method

.method private start()V
    .registers 2

    .line 1333
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    if-nez v0, :cond_11

    .line 1334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    .line 1335
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->start()V

    .line 1336
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->start()V

    .line 1338
    :cond_11
    return-void
.end method

.method private stop()V
    .registers 2

    .line 1341
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    if-eqz v0, :cond_11

    .line 1342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    .line 1343
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->stop()V

    .line 1344
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->stop()V

    .line 1346
    :cond_11
    return-void
.end method

.method private transferToRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 10
    .param p1, "uniqueRequestId"    # J
    .param p3, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "uniqueSessionId"    # Ljava/lang/String;
    .param p5, "route"    # Landroid/media/MediaRoute2Info;

    .line 1601
    const-string/jumbo v0, "transferring to"

    invoke-direct {p0, p3, p4, p5, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1603
    return-void

    .line 1606
    :cond_a
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 1607
    .local v0, "providerId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v1

    .line 1608
    .local v1, "provider":Lcom/android/server/media/MediaRoute2Provider;
    if-nez v1, :cond_15

    .line 1609
    return-void

    .line 1611
    :cond_15
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1612
    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v3

    .line 1611
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/media/MediaRoute2Provider;->transferToRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 1613
    return-void
.end method

.method private updateDiscoveryPreferenceOnHandler()V
    .registers 12

    .line 2172
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 2173
    .local v0, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v0, :cond_b

    .line 2174
    return-void

    .line 2176
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 2177
    .local v1, "discoveryPreferences":Ljava/util/List;, "Ljava/util/List<Landroid/media/RouteDiscoveryPreference;>;"
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords()Ljava/util/List;

    move-result-object v2

    .line 2178
    .local v2, "routerRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;>;"
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object v3

    .line 2180
    .local v3, "managerRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;>;"
    const/4 v4, 0x0

    .line 2182
    .local v4, "shouldBindProviders":Z
    iget-object v5, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 2183
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    .line 2188
    .local v5, "isManagerScanning":Z
    if-eqz v5, :cond_49

    .line 2189
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda1;-><init>()V

    .line 2190
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 2191
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Ljava/util/List;

    .line 2192
    const/4 v4, 0x1

    goto :goto_6a

    .line 2194
    :cond_49
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda3;-><init>()V

    .line 2197
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 2198
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Ljava/util/List;

    .line 2202
    .end local v5    # "isManagerScanning":Z
    :cond_6a
    :goto_6a
    iget-object v5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_70
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaRoute2Provider;

    .line 2203
    .local v6, "provider":Lcom/android/server/media/MediaRoute2Provider;
    instance-of v7, v6, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    if-eqz v7, :cond_86

    .line 2204
    move-object v7, v6

    check-cast v7, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 2205
    invoke-virtual {v7, v4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->setManagerScanning(Z)V

    .line 2207
    .end local v6    # "provider":Lcom/android/server/media/MediaRoute2Provider;
    :cond_86
    goto :goto_70

    .line 2214
    :cond_87
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2215
    .local v5, "preferredFeatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 2216
    .local v6, "activeScan":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_91
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/RouteDiscoveryPreference;

    .line 2217
    .local v8, "preference":Landroid/media/RouteDiscoveryPreference;
    invoke-virtual {v8}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2218
    invoke-virtual {v8}, Landroid/media/RouteDiscoveryPreference;->shouldPerformActiveScan()Z

    move-result v9

    or-int/2addr v6, v9

    .line 2219
    .end local v8    # "preference":Landroid/media/RouteDiscoveryPreference;
    goto :goto_91

    .line 2220
    :cond_aa
    new-instance v7, Landroid/media/RouteDiscoveryPreference$Builder;

    .line 2221
    invoke-static {v5}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v7}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object v7

    .line 2223
    .local v7, "newPreference":Landroid/media/RouteDiscoveryPreference;
    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2224
    :try_start_bc
    iget-object v9, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v9, v9, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v7, v9}, Landroid/media/RouteDiscoveryPreference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 2225
    monitor-exit v8

    return-void

    .line 2227
    :cond_c8
    iget-object v9, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iput-object v7, v9, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 2228
    monitor-exit v8
    :try_end_cd
    .catchall {:try_start_bc .. :try_end_cd} :catchall_e8

    .line 2229
    iget-object v8, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/media/MediaRoute2Provider;

    .line 2230
    .local v9, "provider":Lcom/android/server/media/MediaRoute2Provider;
    iget-object v10, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v10, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v9, v10}, Lcom/android/server/media/MediaRoute2Provider;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V

    .line 2231
    .end local v9    # "provider":Lcom/android/server/media/MediaRoute2Provider;
    goto :goto_d3

    .line 2232
    :cond_e7
    return-void

    .line 2228
    :catchall_e8
    move-exception v9

    :try_start_e9
    monitor-exit v8
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw v9
.end method


# virtual methods
.method public findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .registers 5
    .param p1, "managerId"    # I

    .line 1401
    invoke-direct {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 1402
    .local v1, "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    iget v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    if-ne v2, p1, :cond_19

    .line 1403
    return-object v1

    .line 1405
    .end local v1    # "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    :cond_19
    goto :goto_8

    .line 1406
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .registers 3
    .param p1, "uniqueSessionId"    # Ljava/lang/String;

    .line 1396
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    return-object v0
.end method

.method init()V
    .registers 2

    .line 1329
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v0, p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    .line 1330
    return-void
.end method

.method public maybeUpdateDiscoveryPreferenceForUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 1410
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 1411
    .local v0, "service":Lcom/android/server/media/MediaRouter2ServiceImpl;
    if-nez v0, :cond_b

    .line 1412
    return-void

    .line 1415
    :cond_b
    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1416
    :try_start_10
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda6;

    invoke-direct {v3, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 1418
    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda7;

    invoke-direct {v4, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1420
    .local v2, "isUidRelevant":Z
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_43

    .line 1421
    if-eqz v2, :cond_42

    .line 1422
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1425
    :cond_42
    return-void

    .line 1420
    .end local v2    # "isUidRelevant":Z
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2
.end method

.method public onAddProviderService(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V
    .registers 3
    .param p1, "proxy"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 1350
    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    .line 1351
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {p1, v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V

    .line 1353
    return-void
.end method

.method public onProviderStateChanged(Lcom/android/server/media/MediaRoute2Provider;)V
    .registers 3
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;

    .line 1362
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1364
    return-void
.end method

.method public onRemoveProviderService(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V
    .registers 3
    .param p1, "proxy"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 1357
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1358
    return-void
.end method

.method public onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V
    .registers 8
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "uniqueRequestId"    # J
    .param p4, "reason"    # I

    .line 1390
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda5;-><init>()V

    .line 1391
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1390
    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1392
    return-void
.end method

.method public onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "uniqueRequestId"    # J
    .param p4, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1369
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda11;-><init>()V

    .line 1370
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1369
    invoke-static {v0, p0, p1, v1, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1371
    return-void
.end method

.method public onSessionReleased(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1383
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1385
    return-void
.end method

.method public onSessionUpdated(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/server/media/MediaRoute2Provider;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1376
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1378
    return-void
.end method
