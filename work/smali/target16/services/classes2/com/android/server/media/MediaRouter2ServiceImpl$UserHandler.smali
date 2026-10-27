.class public final Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
.super Landroid/os/Handler;
.source "MediaRouter2ServiceImpl.java"

# interfaces
.implements Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;
.implements Lcom/android/server/media/MediaRoute2Provider$Callback;


# instance fields
.field public final mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

.field public final mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

.field public final mLastProviderInfos:Ljava/util/List;

.field public final mRouteProviders:Ljava/util/ArrayList;

.field public mRunning:Z

.field public final mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mSessionToRouterMap:Ljava/util/Map;

.field public final mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

.field public final mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

.field public final mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

.field public final synthetic this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;


# direct methods
.method public static synthetic $r8$lambda$4GeMTgT2EqUI14uXT1g_GxGk-uo(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;JI)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onRequestFailedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$N5oY2Ppa7qwRk5Tejc0FdDPh5ko(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionCreatedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OQ3pQlN5GmMu2MYsaA20twqsFl0(ILcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)Z
    .registers 2

    .line 3453
    iget p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerUid:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ROv5Nn24lknpRH3m6WLfThqTvA4(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;Ljava/util/Set;Z)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionInfoChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;Ljava/util/Set;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZAOt8wcxFonzhUqJvGNTiMQbKHI(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->lambda$areManagersScanning$5(Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aIl8fM0XKWBgICPJfosAbmzw5gY(ILcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z
    .registers 2

    .line 3451
    iget p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUid:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$amz3rnI4Xz6tg4rO_S4o_ibcqmU(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionReleasedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bvBlJPqsZqb7GD80dDEAbCwSDok(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->lambda$getIndividuallyActiveRouters$4(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eOBJ-1pfE8vzA48h7Uqon61T65c(Landroid/media/MediaRoute2Info;)Ljava/lang/String;
    .registers 2

    .line 3600
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s | %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f4GzqvmtHHBH6ePjCBGy1DckMYs(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRoute2Provider;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onProviderStateChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fFTtstVLACy5dqiCA6mMwECkaiQ(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->releaseSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qAWYHpsEJf192Tfv_KOCmVmOo6k(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->updateDiscoveryPreferenceOnHandler()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLastNotifiedRoutesToNonPrivilegedRouters(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastNotifiedRoutesToPrivilegedRouters(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRouteProviders(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdeselectRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->deselectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSystemProvider(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceSuggestionRequestedOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyDeviceSuggestionRequestedOnHandler(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceSuggestionsClearedOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Ljava/util/Set;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyDeviceSuggestionsClearedOnHandler(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceSuggestionsUpdatedOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyDeviceSuggestionsUpdatedOnHandler(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDiscoveryPreferenceChangedToManagers(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyDiscoveryPreferenceChangedToManagers(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyRouteListingPreferenceChangeToManagers(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRouteListingPreferenceChangeToManagers(Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyRouterRegistered(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRouterRegistered(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseSessionOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->releaseSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestCreateSessionWithRouter2OnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->requestCreateSessionWithRouter2OnHandler(JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mselectRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->selectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRouteVolumeOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/media/MediaRoute2Info;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->setRouteVolumeOnHandler(JLandroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSessionVolumeOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLjava/lang/String;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->setSessionVolumeOnHandler(JLjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstart(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->start()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstop(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->stop()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtransferToRouteOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;ILandroid/media/RoutingChangeInfo;)V
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->transferToRouteOnHandler(JLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;ILandroid/media/RoutingChangeInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDiscoveryPreferenceOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->updateDiscoveryPreferenceOnHandler()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/os/Looper;)V
    .registers 7

    .line 3332
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3333
    invoke-direct {p0, p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    .line 3286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    .line 3287
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3289
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    .line 3305
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    .line 3322
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    .line 3334
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 3339
    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v1, v2, p3}, Lcom/android/server/media/SystemMediaRoute2Provider;->create(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Looper;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 3341
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3342
    new-instance p3, Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserHandle:Landroid/os/UserHandle;

    .line 3344
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-direct {p3, p1, p0, p0, p2}, Lcom/android/server/media/MediaRoute2ProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;Landroid/os/Handler;I)V

    iput-object p3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    return-void
.end method

.method public static buildCompositeDiscoveryPreference(Ljava/util/List;ZLjava/util/Set;)Landroid/media/RouteDiscoveryPreference;
    .registers 10

    .line 4394
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4396
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 4397
    iget-object v5, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 4398
    invoke-virtual {v5}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4401
    invoke-virtual {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->isActivelyScanning()Z

    move-result v6

    if-nez v6, :cond_29

    if-eqz p1, :cond_b

    .line 4402
    :cond_29
    invoke-virtual {v5}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 4406
    iget-object v2, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_b

    .line 4409
    :cond_3a
    new-instance p0, Landroid/media/RouteDiscoveryPreference$Builder;

    .line 4410
    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    if-nez v2, :cond_44

    if-eqz p1, :cond_45

    :cond_44
    move v1, v4

    :cond_45
    invoke-direct {p0, p2, v1}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    .line 4411
    invoke-virtual {p0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageNameFromNullableRecord(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_5

    .line 3593
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    return-object p0

    :cond_5
    const-string p0, "<null router record>"

    return-object p0
.end method

.method public static indexOfRouteProviderInfoByUniqueId(Ljava/lang/String;Ljava/util/List;)I
    .registers 4

    const/4 v0, 0x0

    .line 3682
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 3683
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2ProviderInfo;

    .line 3684
    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method

.method public static notifyRoutesUpdatedToRouterRecords(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 4218
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 4219
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->notifyRoutesUpdated(Ljava/util/List;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public static toLoggingMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 4

    .line 3599
    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda11;-><init>()V

    .line 3600
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    const-string v0, ", "

    .line 3601
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3602
    const-string v0, "%s | provider: %s, routes: [%s]"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final areManagersScanning(Ljava/util/List;)Z
    .registers 3

    .line 4431
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 4435
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    .line 4436
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;J)Z
    .registers 12

    .line 3813
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 3814
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v0

    .line 3815
    const-string v1, "Ignoring "

    const/4 v2, 0x0

    const-string v3, "MR2ServiceImpl"

    if-nez v0, :cond_32

    .line 3816
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " route since no provider found for given route="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    invoke-static {}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$sfgetmMediaRouterMetricLogger()Lcom/android/server/media/MediaRouterMetricLogger;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p5, p6, p1}, Lcom/android/server/media/MediaRouterMetricLogger;->logRequestResult(JI)V

    return v2

    .line 3826
    :cond_32
    invoke-static {p2}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    .line 3825
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_46

    return v4

    .line 3830
    :cond_46
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-eq p0, p1, :cond_8c

    .line 3832
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " route from non-matching router. routerRecordPackageName="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3838
    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getPackageNameFromNullableRecord(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " matchingRecordPackageName="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3840
    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getPackageNameFromNullableRecord(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " route="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3832
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    invoke-static {}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$sfgetmMediaRouterMetricLogger()Lcom/android/server/media/MediaRouterMetricLogger;

    move-result-object p0

    const/16 p1, 0x11

    invoke-virtual {p0, p5, p6, p1}, Lcom/android/server/media/MediaRouterMetricLogger;->logRequestResult(JI)V

    return v2

    .line 3849
    :cond_8c
    invoke-static {p2}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_b0

    .line 3851
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to get original session id from unique session id. uniqueSessionId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    invoke-static {}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$sfgetmMediaRouterMetricLogger()Lcom/android/server/media/MediaRouterMetricLogger;

    move-result-object p0

    const/16 p1, 0xb

    invoke-virtual {p0, p5, p6, p1}, Lcom/android/server/media/MediaRouterMetricLogger;->logRequestResult(JI)V

    return v2

    :cond_b0
    return v4
.end method

.method public final deselectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 13

    .line 3752
    const-string v4, "deselecting"

    move-object v0, p0

    move-wide v5, p1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_18

    .line 3757
    :cond_e
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object p0

    .line 3758
    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object p0

    if-nez p0, :cond_19

    :goto_18
    return-void

    .line 3764
    :cond_19
    invoke-static {v2}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object p2

    .line 3763
    invoke-virtual {p0, v5, v6, p1, p2}, Lcom/android/server/media/MediaRoute2Provider;->deselectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 3767
    invoke-static {}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$sfgetmMediaRouterMetricLogger()Lcom/android/server/media/MediaRouterMetricLogger;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, v5, v6, p1}, Lcom/android/server/media/MediaRouterMetricLogger;->logRequestResult(JI)V

    return-void
.end method

.method public dispatchRoutesToManagerOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)V
    .registers 2

    .line 3608
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    .line 3609
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    .line 3610
    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->notifyRoutesUpdated(Ljava/util/List;)V

    return-void
.end method

.method public final dispatchUpdatesOnHandler(ZZZLandroid/media/MediaRoute2Info;)V
    .registers 9

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    goto :goto_62

    :cond_5
    const/4 p2, 0x1

    .line 3636
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords(Z)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    .line 3638
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords(Z)Ljava/util/List;

    move-result-object v0

    .line 3639
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object v1

    .line 3642
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    .line 3643
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    .line 3644
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 3645
    invoke-virtual {v3, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->notifyRoutesUpdated(Ljava/util/List;)V

    goto :goto_25

    .line 3651
    :cond_35
    invoke-static {p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesUpdatedToRouterRecords(Ljava/util/List;Ljava/util/List;)V

    if-nez p3, :cond_49

    .line 3657
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    .line 3659
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3657
    invoke-static {v0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesUpdatedToRouterRecords(Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_49
    if-eqz p1, :cond_62

    .line 3664
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    invoke-virtual {p4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3665
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    .line 3667
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3665
    invoke-static {v0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesUpdatedToRouterRecords(Ljava/util/List;Ljava/util/List;)V

    :cond_62
    :goto_62
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 3480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UserHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mRunning="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3485
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaRoute2Provider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3486
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .registers 4

    .line 3439
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 3440
    iget v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    if-ne v1, p1, :cond_8

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;
    .registers 6

    .line 4451
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_7
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/media/MediaRoute2Provider;

    .line 4452
    invoke-virtual {v2}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-object v2

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .registers 2

    .line 3434
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    return-object p0
.end method

.method public final getIndividuallyActiveRouters(Ljava/util/List;)Ljava/util/List;
    .registers 3

    .line 4417
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 4421
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    .line 4422
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 4427
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getManagerRecords()Ljava/util/List;
    .registers 3

    .line 4176
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4177
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    .line 4178
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final getRouterRecords()Ljava/util/List;
    .registers 3

    .line 4157
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4158
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->-$$Nest$fgetmRouterRecords(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception p0

    .line 4159
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final getRouterRecords(Z)Ljava/util/List;
    .registers 8

    .line 4163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4164
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4165
    :try_start_c
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->-$$Nest$fgetmRouterRecords(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_17
    :goto_17
    if-ge v3, v2, :cond_2d

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 4167
    invoke-virtual {v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    move-result v5

    if-ne p1, v5, :cond_17

    .line 4168
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :catchall_2b
    move-exception p0

    goto :goto_2f

    .line 4171
    :cond_2d
    monitor-exit v1

    return-object v0

    .line 4172
    :goto_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_2b

    throw p0
.end method

.method public final getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;
    .registers 1

    .line 3328
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    return-object p0
.end method

.method public final handleSessionCreationRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)Z
    .registers 11

    .line 4110
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 4111
    iget-wide v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mUniqueRequestId:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 4112
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    .line 4111
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    const/4 v0, 0x0

    .line 4118
    const-string v2, "MR2ServiceImpl"

    if-nez v1, :cond_49

    .line 4125
    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 4122
    const-string p1, "handleSessionCreationRequestFailed | No matching request found for provider: %s, uniqueRequestId: %d, reason: %d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4120
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4129
    :cond_49
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4131
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 4132
    invoke-virtual {p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->isRouterRecordBinded(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z

    move-result p1

    if-nez p1, :cond_73

    .line 4133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleSessionCreationRequestFailed | Ignoring with unbound router:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 4136
    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->-$$Nest$mgetDebugString(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4133
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4142
    :cond_73
    iget-wide v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_85

    .line 4143
    iget-object p0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 4144
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result p1

    .line 4143
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->notifySessionCreationFailed(I)V

    goto :goto_98

    .line 4146
    :cond_85
    invoke-static {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result p1

    .line 4147
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-result-object p0

    if-eqz p0, :cond_98

    .line 4149
    iget-wide p1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    .line 4150
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result p1

    .line 4149
    invoke-virtual {p0, p1, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->notifyRequestFailed(II)V

    :cond_98
    :goto_98
    const/4 p0, 0x1

    return p0
.end method

.method public init()V
    .registers 2

    .line 3348
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    return-void
.end method

.method public final isPackageImportanceSufficientForScanning(Ljava/lang/String;)Z
    .registers 2

    .line 4446
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x64

    if-gt p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$areManagersScanning$5(Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)Z
    .registers 4

    .line 4438
    iget v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mScanningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerPackageName:Ljava/lang/String;

    .line 4439
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->isPackageImportanceSufficientForScanning(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_12

    :cond_d
    iget p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mScanningState:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_13

    :cond_12
    return v1

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$getIndividuallyActiveRouters$4(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z
    .registers 3

    .line 4424
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->isPackageImportanceSufficientForScanning(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    iget p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mScanningState:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method public maybeUpdateDiscoveryPreferenceForUid(I)V
    .registers 6

    .line 3449
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3450
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->-$$Nest$fgetmRouterRecords(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3451
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 3452
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda2;-><init>(I)V

    .line 3453
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    or-int/2addr p1, v1

    .line 3454
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_3c

    if-eqz p1, :cond_3b

    .line 3456
    new-instance p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3b
    return-void

    :catchall_3c
    move-exception p0

    .line 3454
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final notifyDeviceSuggestionRequestedOnHandler(Ljava/lang/String;)V
    .registers 9

    .line 4294
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4295
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_11
    :goto_11
    if-ge v4, v2, :cond_29

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 4296
    iget-object v6, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mTargetPackageName:Ljava/lang/String;

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 4297
    invoke-virtual {v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->notifyDeviceSuggestionRequested()V

    goto :goto_11

    :catchall_27
    move-exception p0

    goto :goto_4b

    .line 4300
    :cond_29
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->-$$Nest$fgetmRouterRecords(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_33
    :goto_33
    if-ge v3, v1, :cond_49

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 4301
    iget-object v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 4302
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->notifyDeviceSuggestionRequested()V

    goto :goto_33

    .line 4305
    :cond_49
    monitor-exit v0

    return-void

    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_27

    throw p0
.end method

.method public final notifyDeviceSuggestionsClearedOnHandler(Ljava/lang/String;Ljava/util/Set;)V
    .registers 5

    .line 4267
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 4268
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyDeviceSuggestionsUpdatedOnHandler(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    :cond_15
    return-void
.end method

.method public final notifyDeviceSuggestionsUpdatedOnHandler(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 11

    .line 4277
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4278
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_11
    :goto_11
    if-ge v4, v2, :cond_29

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 4279
    iget-object v6, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mTargetPackageName:Ljava/lang/String;

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 4280
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_11

    :catchall_27
    move-exception p0

    goto :goto_4b

    .line 4284
    :cond_29
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->-$$Nest$fgetmRouterRecords(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_33
    :goto_33
    if-ge v3, v1, :cond_49

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 4285
    iget-object v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 4286
    invoke-virtual {v2, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_33

    .line 4290
    :cond_49
    monitor-exit v0

    return-void

    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_27

    throw p0
.end method

.method public final notifyDiscoveryPreferenceChangedToManagers(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 7

    .line 4247
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4248
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_20

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 4249
    invoke-virtual {v3, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    goto :goto_10

    :catchall_1e
    move-exception p0

    goto :goto_22

    .line 4252
    :cond_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_1e

    throw p0
.end method

.method public final notifyRouteListingPreferenceChangeToManagers(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 7

    .line 4257
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4258
    :try_start_7
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_20

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 4259
    invoke-virtual {v3, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->notifyRouteListingPreferenceChange(Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    goto :goto_10

    :catchall_1e
    move-exception p0

    goto :goto_22

    .line 4262
    :cond_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_1e

    throw p0
.end method

.method public final notifyRouterRegistered(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .registers 8

    .line 4182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4185
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2ProviderInfo;

    .line 4188
    invoke-virtual {v3}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    .line 4187
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object v2, v3

    goto :goto_c

    .line 4193
    :cond_2c
    invoke-virtual {v3}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    .line 4197
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    move-result v1

    if-eqz v1, :cond_5b

    if-eqz v2, :cond_44

    .line 4199
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4b

    .line 4202
    :cond_44
    const-string v1, "MR2ServiceImpl"

    const-string v2, "System route provider not found."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4204
    :goto_4b
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/RoutingSessionInfo;

    goto :goto_6e

    .line 4206
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4207
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object p0

    .line 4210
    :goto_6e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_77

    .line 4211
    invoke-virtual {p1, v0, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->notifyRegistered(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    :cond_77
    return-void
.end method

.method public final notifySessionCreatedToManagers(JLandroid/media/RoutingSessionInfo;)V
    .registers 6

    .line 4233
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result v0

    .line 4234
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result p1

    .line 4236
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 4238
    iget v1, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    if-ne v1, v0, :cond_22

    move v1, p1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 4241
    :goto_23
    invoke-virtual {p2, v1, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V

    goto :goto_10

    :cond_27
    return-void
.end method

.method public final notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .registers 3

    .line 4226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 4227
    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public onAddProviderService(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V
    .registers 4

    .line 3369
    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaRoute2Provider;->setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    .line 3370
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3371
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mActivelyScanningPackages:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mPerAppPreferences:Ljava/util/Map;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateDiscoveryPreference(Ljava/util/Set;Landroid/media/RouteDiscoveryPreference;Ljava/util/Map;)V

    return-void
.end method

.method public onProviderStateChanged(Lcom/android/server/media/MediaRoute2Provider;)V
    .registers 3

    .line 3384
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onProviderStateChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;)V
    .registers 15

    .line 3490
    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getProviderInfo()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v0

    .line 3492
    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->indexOfRouteProviderInfoByUniqueId(Ljava/lang/String;Ljava/util/List;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    const/4 v2, 0x0

    goto :goto_1b

    .line 3494
    :cond_13
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2ProviderInfo;

    :goto_1b
    if-ne v2, v0, :cond_1e

    return-void

    :cond_1e
    if-eqz v0, :cond_49

    .line 3505
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    .line 3507
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda11;

    invoke-direct {v5}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-ltz v1, :cond_43

    .line 3509
    iget-object v5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v5, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    .line 3511
    :cond_43
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 3515
    :cond_49
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3516
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    move-object v4, v3

    .line 3530
    :goto_51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3532
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    move v6, v5

    :cond_5c
    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    const-string v9, "MR2ServiceImpl"

    if-eqz v7, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaRoute2Info;

    .line 3533
    invoke-virtual {v7}, Landroid/media/MediaRoute2Info;->isValid()Z

    move-result v10

    if-nez v10, :cond_87

    .line 3534
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onProviderStateChangedOnHandler: Ignoring invalid route : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 3538
    :cond_87
    iget-boolean v9, p1, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    if-nez v9, :cond_94

    .line 3539
    iget-object v9, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    .line 3540
    invoke-virtual {v7}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v10

    .line 3539
    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3542
    :cond_94
    iget-object v9, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    .line 3544
    invoke-virtual {v7}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v10

    .line 3543
    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaRoute2Info;

    .line 3545
    invoke-virtual {v7, v9}, Landroid/media/MediaRoute2Info;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v8, v10

    or-int/2addr v6, v8

    if-nez v9, :cond_5c

    .line 3547
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 3552
    :cond_ac
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_b6

    .line 3554
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_ba

    :cond_b6
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    .line 3556
    :goto_ba
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_be
    :goto_be
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/MediaRoute2Info;

    .line 3557
    invoke-virtual {v10}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v11

    .line 3558
    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_be

    .line 3560
    iget-object v5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    invoke-interface {v5, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3561
    iget-object v5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    invoke-interface {v5, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3562
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v8

    goto :goto_be

    .line 3566
    :cond_e3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f6

    .line 3568
    const-string v4, "addProviderRoutes"

    .line 3572
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 3570
    invoke-static {v4, v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->toLoggingMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 3568
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    :cond_f6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10a

    .line 3577
    const-string/jumbo v0, "removeProviderRoutes"

    .line 3580
    invoke-virtual {v2}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 3578
    invoke-static {v0, v1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->toLoggingMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 3577
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    :cond_10a
    iget-boolean p1, p1, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    .line 3588
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v0

    .line 3584
    invoke-virtual {p0, v6, v5, p1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->dispatchUpdatesOnHandler(ZZZLandroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public onRemoveProviderService(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V
    .registers 2

    .line 3379
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V
    .registers 6

    .line 3427
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda9;-><init>()V

    .line 3428
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 3427
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onRequestFailedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JI)V
    .registers 6

    .line 4081
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->handleSessionCreationRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4088
    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 4084
    const-string/jumbo p1, "onRequestFailedOnHandler | Finished handling session creation request failed for provider: %s, uniqueRequestId: %d, reason: %d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4082
    const-string p1, "MR2ServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4092
    :cond_23
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result p1

    .line 4093
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 4095
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result p1

    invoke-virtual {p0, p1, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->notifyRequestFailed(II)V

    .line 4102
    :cond_34
    invoke-static {}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$sfgetmMediaRouterMetricLogger()Lcom/android/server/media/MediaRouterMetricLogger;

    move-result-object p0

    .line 4103
    invoke-static {p4}, Lcom/android/server/media/MediaRouterMetricLogger;->convertResultFromReason(I)I

    move-result p1

    .line 4102
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/media/MediaRouterMetricLogger;->logRequestResult(JI)V

    return-void
.end method

.method public onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V
    .registers 7

    .line 3391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSessionCreated with uniqueRequestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sessionInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda6;-><init>()V

    .line 3398
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 3397
    invoke-static {v0, p0, p1, p2, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onSessionCreatedOnHandler(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V
    .registers 9

    .line 3930
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 3931
    iget-wide v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mUniqueRequestId:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 3933
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/media/MediaRoute2Provider;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    .line 3932
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    if-nez v1, :cond_2f

    const-wide/16 v2, 0x0

    goto :goto_31

    .line 3941
    :cond_2f
    iget-wide v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    .line 3942
    :goto_31
    invoke-virtual {p0, v2, v3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreatedToManagers(JLandroid/media/RoutingSessionInfo;)V

    .line 3944
    const-string p1, "MR2ServiceImpl"

    if-nez v1, :cond_55

    .line 3945
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring session creation result for unknown request. uniqueRequestId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", sessionInfo="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3950
    :cond_55
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 3952
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 3953
    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->isRouterRecordBinded(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 3954
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring session creation request for unbound router:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 3957
    invoke-static {p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->-$$Nest$mgetDebugString(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3954
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3962
    :cond_7f
    iget-object v0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    .line 3963
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 3965
    iget-object p1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRoute2Provider;->prepareReleaseSession(Ljava/lang/String;)V

    goto :goto_ac

    .line 3967
    :cond_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionCreatedOnHandler: Can\'t find provider for an old session. session="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    :goto_ac
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3972
    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result p1

    if-eqz p1, :cond_cd

    iget-object p1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 3973
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    move-result p1

    if-nez p1, :cond_cd

    .line 3976
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object p4

    .line 3978
    :cond_cd
    iget-object p0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 3979
    invoke-static {p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result p1

    .line 3978
    invoke-virtual {p0, p1, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V

    .line 3982
    invoke-static {}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$sfgetmMediaRouterMetricLogger()Lcom/android/server/media/MediaRouterMetricLogger;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/media/MediaRouterMetricLogger;->logRequestResult(JI)V

    .line 3984
    invoke-static {}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$sfgetmMediaRouterMetricLogger()Lcom/android/server/media/MediaRouterMetricLogger;

    move-result-object p0

    iget-object p1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    iget p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUid:I

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/media/MediaRouterMetricLogger;->notifyRoutingChange(JLandroid/media/RoutingSessionInfo;I)V

    return-void
.end method

.method public final onSessionInfoChangedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;Ljava/util/Set;Z)V
    .registers 8

    .line 3998
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object v0

    .line 4000
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 4001
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    if-eqz v1, :cond_3b

    .line 4002
    :try_start_15
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->-$$Nest$fgetmLastPackagesWithSystemOverridesLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)Ljava/util/Set;

    move-result-object v1

    .line 4003
    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 4006
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 4007
    invoke-static {v1, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->-$$Nest$mmapPackageNamesToAppIdList(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Ljava/util/Collection;)Ljava/util/List;

    .line 4009
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->-$$Nest$fgetmLastPackagesWithSystemOverridesLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4010
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->-$$Nest$fgetmLastPackagesWithSystemOverridesLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_a9

    .line 4013
    :cond_3b
    :goto_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_39

    .line 4014
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_40
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 4032
    invoke-virtual {v0, p2, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->notifySessionUpdated(Landroid/media/RoutingSessionInfo;Z)V

    goto :goto_40

    .line 4036
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p3

    if-ne p1, p3, :cond_6f

    const/4 p1, 0x1

    .line 4037
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords(Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    const/4 p1, 0x0

    .line 4039
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords(Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object p2

    .line 4038
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    return-void

    .line 4043
    :cond_6f
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-nez p1, :cond_95

    .line 4045
    const-string p0, "MR2ServiceImpl"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onSessionInfoChangedOnHandler: No matching router found for session="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4049
    :cond_95
    iget-object p3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 4050
    invoke-virtual {p3, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->isRouterRecordBinded(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z

    move-result p3

    if-eqz p3, :cond_a8

    .line 4051
    filled-new-array {p1}, [Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    :cond_a8
    return-void

    .line 4013
    :goto_a9
    :try_start_a9
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_39

    throw p0
.end method

.method public onSessionReleased(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 4

    .line 3420
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onSessionReleasedOnHandler(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;)V
    .registers 4

    .line 4057
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object p1

    .line 4058
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 4059
    invoke-virtual {v0, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V

    goto :goto_8

    .line 4062
    :cond_18
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    if-nez p1, :cond_3e

    .line 4064
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onSessionReleasedOnHandler: No matching router found for session="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MR2ServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4070
    :cond_3e
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->isRouterRecordBinded(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 4071
    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V

    .line 4073
    :cond_49
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSessionUpdated(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;Ljava/util/Set;Z)V
    .registers 11

    .line 3407
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda8;-><init>()V

    .line 3414
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 3408
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3407
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final releaseSessionOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .registers 8

    .line 3885
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 3886
    const-string v1, "MR2ServiceImpl"

    if-eq v0, p3, :cond_39

    .line 3887
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring releasing session from non-matching router. routerRecordPackageName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3891
    invoke-static {p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getPackageNameFromNullableRecord(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " matchingRecordPackageName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3893
    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getPackageNameFromNullableRecord(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uniqueSessionId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3887
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3899
    :cond_39
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3900
    const-string v0, "Ignoring releasing session with invalid unique session ID. uniqueSessionId="

    if-nez p3, :cond_54

    .line 3901
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3906
    :cond_54
    invoke-static {p4}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_75

    .line 3908
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " providerId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3913
    :cond_75
    invoke-virtual {p0, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object p0

    if-nez p0, :cond_90

    .line 3915
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring releasing session since no provider found for given providerId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3920
    :cond_90
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/media/MediaRoute2Provider;->releaseSession(JLjava/lang/String;)V

    .line 3921
    invoke-static {}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$sfgetmMediaRouterMetricLogger()Lcom/android/server/media/MediaRouterMetricLogger;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterMetricLogger;->notifySessionEnd(Ljava/lang/String;)V

    return-void
.end method

.method public removeRouterRecord(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .registers 8

    .line 3462
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3463
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 3464
    iget v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    iget v4, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    if-ne v3, v4, :cond_a

    .line 3468
    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v4, -0x1

    .line 3472
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3469
    invoke-static {v3, p0, v4, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3468
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    :cond_37
    return-void
.end method

.method public final requestCreateSessionWithRouter2OnHandler(JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 19

    .line 3699
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v8

    if-nez v8, :cond_2b

    .line 3701
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "requestCreateSessionWithRouter2OnHandler: Ignoring session creation request since no provider found for given route="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "MR2ServiceImpl"

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result p0

    invoke-virtual {p5, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->notifySessionCreationFailed(I)V

    return-void

    :cond_2b
    move-object/from16 v7, p7

    .line 3707
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    move-wide v2, p1

    move-wide v4, p3

    move-object v1, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;JJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 3710
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x0

    cmp-long p0, p3, v2

    if-eqz p0, :cond_45

    const/4 p0, 0x1

    :goto_43
    move v7, p0

    goto :goto_47

    :cond_45
    const/4 p0, 0x2

    goto :goto_43

    .line 3717
    :goto_47
    iget-object v4, p5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 3720
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v5

    iget-object p0, p5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserHandle:Landroid/os/UserHandle;

    iget-object v9, p5, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    move-wide v2, p1

    move-object/from16 v6, p8

    move-object v1, v8

    move-object v8, p0

    .line 3717
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/media/MediaRoute2Provider;->requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final selectRouteOnHandler(JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 13

    .line 3730
    const-string/jumbo v4, "selecting"

    move-object v0, p0

    move-wide v5, p1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_19

    .line 3735
    :cond_f
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object p0

    .line 3736
    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object p0

    if-nez p0, :cond_1a

    :goto_19
    return-void

    .line 3741
    :cond_1a
    invoke-static {v2}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object p2

    .line 3740
    invoke-virtual {p0, v5, v6, p1, p2}, Lcom/android/server/media/MediaRoute2Provider;->selectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 3744
    invoke-static {}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$sfgetmMediaRouterMetricLogger()Lcom/android/server/media/MediaRouterMetricLogger;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, v5, v6, p1}, Lcom/android/server/media/MediaRouterMetricLogger;->logRequestResult(JI)V

    return-void
.end method

.method public final setRouteVolumeOnHandler(JLandroid/media/MediaRoute2Info;I)V
    .registers 6

    .line 3864
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object p0

    if-nez p0, :cond_22

    .line 3866
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setRouteVolumeOnHandler: Couldn\'t find provider for route="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MR2ServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3869
    :cond_22
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2Provider;->setRouteVolume(JLjava/lang/String;I)V

    return-void
.end method

.method public final setSessionVolumeOnHandler(JLjava/lang/String;I)V
    .registers 6

    .line 3874
    invoke-static {p3}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object p0

    if-nez p0, :cond_22

    .line 3876
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setSessionVolumeOnHandler: Couldn\'t find provider for session id="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MR2ServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3880
    :cond_22
    invoke-static {p3}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRoute2Provider;->setSessionVolume(JLjava/lang/String;I)V

    return-void
.end method

.method public final start()V
    .registers 2

    .line 3352
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 3353
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    .line 3354
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->start()V

    .line 3355
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->start()V

    :cond_13
    return-void
.end method

.method public final stop()V
    .registers 2

    .line 3360
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 3361
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRunning:Z

    .line 3362
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->stop()V

    .line 3363
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getSystemProvider()Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->stop()V

    :cond_13
    return-void
.end method

.method public final transferToRouteOnHandler(JLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;ILandroid/media/RoutingChangeInfo;)V
    .registers 18

    .line 3781
    const-string/jumbo v4, "transferring to"

    move-object v0, p0

    move-wide v5, p1

    move-object v1, p5

    move-object v2, p6

    move-object v3, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;J)Z

    move-result p5

    if-nez p5, :cond_f

    return-void

    .line 3786
    :cond_f
    invoke-virtual {p7}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object p5

    .line 3787
    invoke-virtual {p0, p5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    move-result-object v0

    if-nez v0, :cond_30

    .line 3789
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring transferToRoute due to lack of matching provider for target: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MR2ServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3799
    :cond_30
    invoke-static {p6}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3800
    invoke-virtual {p7}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v6

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move/from16 v7, p8

    .line 3795
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaRoute2Provider;->transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3804
    invoke-static {}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$sfgetmMediaRouterMetricLogger()Lcom/android/server/media/MediaRouterMetricLogger;

    move-result-object p0

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterMetricLogger;->logRequestResult(JI)V

    return-void
.end method

.method public final updateDiscoveryPreferenceForProviders(Ljava/util/Set;)V
    .registers 8

    .line 4343
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/media/MediaRoute2Provider;

    .line 4344
    iget-object v4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mPerAppPreferences:Ljava/util/Map;

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/media/MediaRoute2Provider;->updateDiscoveryPreference(Ljava/util/Set;Landroid/media/RouteDiscoveryPreference;Ljava/util/Map;)V

    goto :goto_7

    :cond_1b
    return-void
.end method

.method public final updateDiscoveryPreferenceOnHandler()V
    .registers 7

    .line 4310
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords()Ljava/util/List;

    move-result-object v0

    .line 4312
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->areManagersScanning(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_13

    .line 4317
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getIndividuallyActiveRouters(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4320
    :goto_13
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4322
    invoke-static {v0, v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->buildCompositeDiscoveryPreference(Ljava/util/List;ZLjava/util/Set;)Landroid/media/RouteDiscoveryPreference;

    move-result-object v1

    .line 4325
    const-string v3, "Updating composite discovery preference | preference: %s, active routers: %s"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v4

    .line 4327
    invoke-static {v3, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4325
    const-string v4, "MR2ServiceImpl"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4332
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4333
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 4334
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 4336
    :cond_48
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->updateScanningOnUserRecord(Ljava/util/Set;Landroid/media/RouteDiscoveryPreference;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 4338
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->updateDiscoveryPreferenceForProviders(Ljava/util/Set;)V

    :cond_51
    return-void
.end method

.method public final updateScanningOnUserRecord(Ljava/util/Set;Landroid/media/RouteDiscoveryPreference;Ljava/util/Map;)Z
    .registers 7

    .line 4354
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4355
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {p2, v1}, Landroid/media/RouteDiscoveryPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mPerAppPreferences:Ljava/util/Map;

    .line 4356
    invoke-interface {p3, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mActivelyScanningPackages:Ljava/util/Set;

    .line 4357
    invoke-interface {p1, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 p0, 0x0

    .line 4358
    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    goto :goto_4a

    .line 4361
    :cond_2a
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 4362
    invoke-virtual {v1}, Landroid/media/RouteDiscoveryPreference;->shouldPerformActiveScan()Z

    move-result v1

    .line 4363
    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->shouldPerformActiveScan()Z

    move-result v2

    if-eq v1, v2, :cond_3f

    .line 4367
    invoke-static {}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$sfgetmMediaRouterMetricLogger()Lcom/android/server/media/MediaRouterMetricLogger;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaRouterMetricLogger;->updateScanningState(Z)V

    .line 4370
    :cond_3f
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 4371
    iput-object p3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mPerAppPreferences:Ljava/util/Map;

    .line 4372
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mActivelyScanningPackages:Ljava/util/Set;

    .line 4373
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_28

    throw p0
.end method
