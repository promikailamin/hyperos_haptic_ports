.class public Lcom/android/server/media/SystemMediaRoute2Provider;
.super Lcom/android/server/media/MediaRoute2Provider;
.source "SystemMediaRoute2Provider.java"


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final DEBUG:Z


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public mDefaultRoute:Landroid/media/MediaRoute2Info;

.field public mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

.field public final mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

.field public final mDeviceRouteEventListener:Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;

.field public final mHandler:Landroid/os/Handler;

.field public volatile mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

.field public volatile mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

.field public final mRequestLock:Ljava/lang/Object;

.field public mSelectedRouteIds:Ljava/util/List;

.field public mSystemSessionInfo:Landroid/media/RoutingSessionInfo;

.field public final mTransferLock:Ljava/lang/Object;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public static synthetic $r8$lambda$GvcSDtu0yU93V03Ps6hplfnnS-4(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->lambda$start$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$fsXr8huzrw2UsrQcYM2EuQzsF80(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->lambda$stop$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 59
    const-string v0, "MR2SystemProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/SystemMediaRoute2Provider;->DEBUG:Z

    .line 61
    new-instance v0, Landroid/content/ComponentName;

    .line 62
    const-class v1, Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/media/SystemMediaRoute2Provider;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/os/Looper;)V
    .registers 6

    const/4 v0, 0x1

    .line 117
    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaRoute2Provider;-><init>(Landroid/content/ComponentName;Z)V

    .line 75
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteIds:Ljava/util/List;

    .line 90
    new-instance p2, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;Lcom/android/server/media/SystemMediaRoute2Provider-IA;)V

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    .line 93
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    .line 98
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mTransferLock:Ljava/lang/Object;

    .line 104
    new-instance p2, Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;

    invoke-direct {p2, p0, v0}, Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;Lcom/android/server/media/SystemMediaRoute2Provider-IA;)V

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteEventListener:Lcom/android/server/media/SystemMediaRoute2Provider$DeviceRouteEventListener;

    .line 118
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    .line 119
    iput-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUser:Landroid/os/UserHandle;

    .line 120
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    .line 122
    const-string p3, "audio"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    .line 124
    invoke-static {p1, p4, p2}, Lcom/android/server/media/DeviceRouteController;->createInstance(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/media/DeviceRouteController$EventListener;)Lcom/android/server/media/DeviceRouteController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Looper;)Lcom/android/server/media/SystemMediaRoute2Provider;
    .registers 5

    .line 109
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider;

    sget-object v1, Lcom/android/server/media/SystemMediaRoute2Provider;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/media/SystemMediaRoute2Provider;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/os/Looper;)V

    .line 110
    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    .line 111
    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    return-object v0
.end method


# virtual methods
.method public final containsSelectedRouteWithId(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 628
    :cond_4
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object p1

    .line 637
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 638
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p0, 0x1

    :cond_1b
    return p0
.end method

.method public deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 232
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {p0, p1, p2, p4}, Lcom/android/server/media/DeviceRouteController;->deselectRoute(JLjava/lang/String;)V

    return-void
.end method

.method public generateDeviceRouteSelectedSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 7

    .line 354
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 p0, 0x0

    .line 356
    monitor-exit v0

    return-object p0

    :catchall_e
    move-exception p0

    goto/16 :goto_d8

    .line 359
    :cond_11
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v1}, Lcom/android/server/media/DeviceRouteController;->getSelectedRoutes()Ljava/util/List;

    move-result-object v1

    .line 361
    new-instance v2, Landroid/media/RoutingSessionInfo$Builder;

    const-string v3, "SYSTEM_SESSION"

    invoke-direct {v2, v3, p1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 363
    invoke-virtual {v2, p1}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p1

    .line 364
    new-instance v2, Landroid/util/ArraySet;

    .line 365
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 366
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 367
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {p1, v3}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    goto :goto_30

    .line 372
    :cond_47
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v1}, Lcom/android/server/media/DeviceRouteController;->getAvailableRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_51
    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 373
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 375
    invoke-virtual {p1, v3}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    goto :goto_51

    .line 380
    :cond_6b
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v1}, Lcom/android/server/media/DeviceRouteController;->getSelectableRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 381
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/media/RoutingSessionInfo$Builder;->addSelectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    goto :goto_75

    .line 384
    :cond_89
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v1}, Lcom/android/server/media/DeviceRouteController;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 385
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/media/RoutingSessionInfo$Builder;->addDeselectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    goto :goto_93

    .line 393
    :cond_a7
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 394
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/media/RoutingSessionInfo$Builder;->setTransferReason(I)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v2

    .line 395
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 396
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {v2, v3, v1}, Landroid/media/RoutingSessionInfo$Builder;->setTransferInitiator(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 400
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v1}, Lcom/android/server/media/DeviceRouteController;->getSessionReleaseType()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/media/RoutingSessionInfo$Builder;->setReleaseType(I)Landroid/media/RoutingSessionInfo$Builder;

    .line 407
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 408
    :goto_d8
    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_3 .. :try_end_d9} :catchall_e

    throw p0
.end method

.method public getDebugString()Ljava/lang/String;
    .registers 3

    .line 670
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteIds:Ljava/util/List;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 668
    const-string v0, "%s - package: %s, selected route ids: %s"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultRoute()Landroid/media/MediaRoute2Info;
    .registers 1

    .line 319
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    return-object p0
.end method

.method public getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;
    .registers 1

    .line 323
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    return-object p0
.end method

.method public getSessionForPackage(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 334
    new-instance v1, Landroid/media/RoutingSessionInfo$Builder;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/RoutingSessionInfo;

    invoke-direct {v1, p0}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 335
    invoke-virtual {v1, p1}, Landroid/media/RoutingSessionInfo$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p0

    .line 336
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_23
    move-exception p0

    goto :goto_28

    :cond_25
    const/4 p0, 0x0

    .line 338
    monitor-exit v0

    return-object p0

    .line 340
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_23

    throw p0
.end method

.method public final synthetic lambda$start$0()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUser:Landroid/os/UserHandle;

    invoke-interface {v0, p0}, Lcom/android/server/media/DeviceRouteController;->start(Landroid/os/UserHandle;)V

    return-void
.end method

.method public final synthetic lambda$stop$1()V
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v0}, Lcom/android/server/media/DeviceRouteController;->stop()V

    .line 141
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderStateChanged()V

    return-void
.end method

.method public notifyGlobalSessionInfoUpdated()V
    .registers 4

    .line 647
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->haveCallback()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 652
    :cond_7
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_a
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 654
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    goto :goto_26

    .line 656
    :cond_16
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 657
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_14

    .line 662
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 659
    invoke-virtual {p0, p0, v1, v0, v2}, Lcom/android/server/media/MediaRoute2Provider;->notifySessionUpdated(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;Ljava/util/Set;Z)V

    return-void

    .line 657
    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_14

    throw p0
.end method

.method public onSystemProviderRoutesChanged(Landroid/media/MediaRoute2ProviderInfo;)V
    .registers 2

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRoute2Provider;->setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    return-void
.end method

.method public onSystemSessionInfoUpdated()V
    .registers 2

    .line 586
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 587
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSystemSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public prepareReleaseSession(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public publishProviderState()V
    .registers 1

    .line 642
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    .line 643
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderStateChanged()V

    return-void
.end method

.method public releaseSession(JLjava/lang/String;)V
    .registers 4

    .line 210
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {p0}, Lcom/android/server/media/DeviceRouteController;->releaseRoutingSession()V

    return-void
.end method

.method public final reportPendingSessionRequestResultLockedIfNeeded(Landroid/media/RoutingSessionInfo;)V
    .registers 8

    .line 593
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    if-nez v0, :cond_5

    return-void

    .line 598
    :cond_5
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-wide v0, v0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mRequestId:J

    .line 599
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteIds:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object v3, v3, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "MR2SystemProvider"

    if-eqz v2, :cond_3a

    .line 601
    sget-boolean v2, Lcom/android/server/media/SystemMediaRoute2Provider;->DEBUG:Z

    if-eqz v2, :cond_34

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session creation success to route "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object v5, v5, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_34
    iput-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 608
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/media/MediaRoute2Provider;->notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V

    return-void

    .line 610
    :cond_3a
    sget-boolean p1, Lcom/android/server/media/SystemMediaRoute2Provider;->DEBUG:Z

    if-eqz p1, :cond_56

    .line 611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session creation failed to route "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object v2, v2, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_56
    iput-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    const/4 p1, 0x0

    .line 617
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    return-void
.end method

.method public requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/UserHandle;Ljava/lang/String;)V
    .registers 19

    .line 163
    const-string v1, "DEFAULT_ROUTE"

    invoke-static {p4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 164
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/media/MediaRoute2Provider;->notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V

    return-void

    .line 168
    :cond_e
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_44

    .line 181
    iget-object v9, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    monitor-enter v9

    .line 183
    :try_start_15
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    if-eqz v1, :cond_24

    .line 184
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-wide v1, v1, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mRequestId:J

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v2, v6}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    goto :goto_24

    :catchall_22
    move-exception v0

    goto :goto_42

    .line 188
    :cond_24
    :goto_24
    new-instance v2, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    const/4 v6, 0x0

    move-wide v3, p1

    move-object v5, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;-><init>(JLjava/lang/String;ILandroid/os/UserHandle;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingSessionCreationOrTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 195
    monitor-exit v9
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_22

    .line 198
    const-string v5, "SYSTEM_SESSION"

    move-object v0, p0

    move-wide v1, p1

    move-object v6, p4

    move/from16 v7, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/SystemMediaRoute2Provider;->transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 195
    :goto_42
    :try_start_42
    monitor-exit v9
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_22

    throw v0

    :catchall_44
    move-exception v0

    .line 179
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public selectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 225
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {p0, p1, p2, p4}, Lcom/android/server/media/DeviceRouteController;->selectRoute(JLjava/lang/String;)V

    return-void
.end method

.method public setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V
    .registers 2

    .line 147
    invoke-super {p0, p1}, Lcom/android/server/media/MediaRoute2Provider;->setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderStateChanged()V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifyGlobalSessionInfoUpdated()V

    return-void
.end method

.method public setRouteVolume(JLjava/lang/String;I)V
    .registers 7

    .line 278
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteIds:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 p3, 0x4

    .line 280
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    .line 281
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_1a

    .line 283
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_11

    .line 285
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/media/DeviceRouteController;->setVolume(JLjava/lang/String;I)V

    return-void

    .line 283
    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_11

    throw p0
.end method

.method public setSessionVolume(JLjava/lang/String;I)V
    .registers 5

    .line 0
    return-void
.end method

.method public start()V
    .registers 7

    .line 128
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mUser:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateVolume()V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioReceiver:Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16

    .line 244
    iget-object p5, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    .line 245
    invoke-interface {p5}, Lcom/android/server/media/DeviceRouteController;->getSelectedRoutes()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/media/MediaRoute2Info;

    invoke-virtual {p5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p5

    .line 246
    const-string v0, "DEFAULT_ROUTE"

    invoke-static {p6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object v4, p5

    goto :goto_1b

    :cond_1a
    move-object v4, p6

    .line 258
    :goto_1b
    iget-object p5, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mTransferLock:Ljava/lang/Object;

    monitor-enter p5

    .line 259
    :try_start_1e
    new-instance v1, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    move-wide v2, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;-><init>(JLjava/lang/String;ILandroid/os/UserHandle;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 266
    monitor-exit p5
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_39

    .line 268
    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {p1, v2, v3, v4}, Lcom/android/server/media/DeviceRouteController;->transferTo(JLjava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 272
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifyGlobalSessionInfoUpdated()V

    :cond_38
    return-void

    :catchall_39
    move-exception v0

    move-object p0, v0

    .line 266
    :try_start_3b
    monitor-exit p5
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_39

    throw p0
.end method

.method public updateDiscoveryPreference(Ljava/util/Set;Landroid/media/RouteDiscoveryPreference;Ljava/util/Map;)V
    .registers 4

    .line 0
    return-void
.end method

.method public updateProviderState()V
    .registers 4

    .line 437
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo$Builder;

    invoke-direct {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>()V

    .line 439
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v1}, Lcom/android/server/media/DeviceRouteController;->getAvailableRoutes()Ljava/util/List;

    move-result-object v1

    .line 440
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 441
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    goto :goto_f

    .line 444
    :cond_1f
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRoute2Provider;->setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 446
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v0

    .line 447
    invoke-virtual {p0, v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->onSystemProviderRoutesChanged(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 448
    sget-boolean p0, Lcom/android/server/media/SystemMediaRoute2Provider;->DEBUG:Z

    if-eqz p0, :cond_47

    .line 449
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating system provider info : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MR2SystemProvider"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void
.end method

.method public updateSessionInfosIfNeeded()Z
    .registers 14

    .line 457
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    move-object v1, v3

    goto :goto_17

    :cond_f
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 465
    :goto_17
    new-instance v4, Landroid/media/RoutingSessionInfo$Builder;

    const-string v5, "SYSTEM_SESSION"

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 467
    invoke-virtual {v4, v5}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v4

    .line 469
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v6}, Lcom/android/server/media/DeviceRouteController;->getSelectedRoutes()Ljava/util/List;

    move-result-object v6

    .line 470
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda11;

    invoke-direct {v8}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteIds:Ljava/util/List;

    .line 471
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 473
    iget-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteIds:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_49
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 474
    invoke-virtual {v4, v9}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    goto :goto_49

    :catchall_59
    move-exception p0

    goto/16 :goto_1c6

    .line 477
    :cond_5c
    iget-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v8}, Lcom/android/server/media/DeviceRouteController;->getAvailableRoutes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_66
    :goto_66
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_82

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaRoute2Info;

    .line 478
    invoke-virtual {v9}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v9

    .line 479
    iget-object v10, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteIds:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_66

    .line 480
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 484
    :cond_82
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v2

    :goto_87
    if-ge v9, v8, :cond_95

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Ljava/lang/String;

    .line 485
    invoke-virtual {v4, v10}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    goto :goto_87

    .line 489
    :cond_95
    iget-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v8}, Lcom/android/server/media/DeviceRouteController;->getSelectableRoutes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaRoute2Info;

    .line 490
    invoke-virtual {v9}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/media/RoutingSessionInfo$Builder;->addSelectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    goto :goto_9f

    .line 493
    :cond_b3
    iget-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v8}, Lcom/android/server/media/DeviceRouteController;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_bd
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaRoute2Info;

    .line 494
    invoke-virtual {v9}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/media/RoutingSessionInfo$Builder;->addDeselectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    goto :goto_bd

    .line 499
    :cond_d1
    new-instance v8, Landroid/media/MediaRoute2Info$Builder;

    const-string v9, "DEFAULT_ROUTE"

    .line 501
    invoke-interface {v6}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/MediaRoute2Info;

    invoke-direct {v8, v9, v10}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 502
    invoke-virtual {v8, v5}, Landroid/media/MediaRoute2Info$Builder;->setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 503
    invoke-virtual {v8, v9}, Landroid/media/MediaRoute2Info$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v8

    .line 507
    invoke-virtual {v8}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    if-eqz v1, :cond_10b

    .line 514
    iget-object v8, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSelectedRouteIds:Ljava/util/List;

    .line 516
    invoke-interface {v8}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 515
    invoke-virtual {p0, v1, v8}, Lcom/android/server/media/SystemMediaRoute2Provider;->containsSelectedRouteWithId(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10b

    .line 517
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    move-result v8

    .line 518
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    .line 519
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    move-result-object v10

    goto :goto_10e

    :cond_10b
    move v8, v2

    move-object v9, v3

    move-object v10, v9

    .line 522
    :goto_10e
    iget-object v11, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mTransferLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_111
    .catchall {:try_start_3 .. :try_end_111} :catchall_59

    .line 523
    :try_start_111
    iget-object v12, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    if-eqz v12, :cond_13f

    .line 524
    iget-object v12, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 525
    invoke-interface {v6}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRoute2Info;

    invoke-virtual {v12, v6}, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->isTargetRoute(Landroid/media/MediaRoute2Info;)Z

    move-result v6

    .line 526
    iget-object v12, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 527
    invoke-virtual {v12, v7}, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->isTargetRouteIdInRouteOriginalIdList(Ljava/util/List;)Z

    move-result v7

    if-eqz v6, :cond_13b

    .line 531
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget v8, v6, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferReason:I

    .line 532
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object v9, v6, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    .line 534
    iget-object v6, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    iget-object v10, v6, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferInitiatorPackageName:Ljava/lang/String;

    .line 537
    iput-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    goto :goto_13f

    :catchall_138
    move-exception p0

    goto/16 :goto_1c4

    :cond_13b
    if-nez v7, :cond_13f

    .line 539
    iput-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mPendingTransferRequest:Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 542
    :cond_13f
    :goto_13f
    monitor-exit v11
    :try_end_140
    .catchall {:try_start_111 .. :try_end_140} :catchall_138

    .line 545
    :try_start_140
    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v3}, Lcom/android/server/media/DeviceRouteController;->getSessionReleaseType()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/media/RoutingSessionInfo$Builder;->setReleaseType(I)Landroid/media/RoutingSessionInfo$Builder;

    .line 548
    invoke-virtual {v4, v8}, Landroid/media/RoutingSessionInfo$Builder;->setTransferReason(I)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v3

    .line 549
    invoke-virtual {v3, v9, v10}, Landroid/media/RoutingSessionInfo$Builder;->setTransferInitiator(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 553
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v3

    .line 555
    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mRequestLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_15d
    .catchall {:try_start_140 .. :try_end_15d} :catchall_59

    .line 556
    :try_start_15d
    invoke-virtual {p0, v3}, Lcom/android/server/media/SystemMediaRoute2Provider;->reportPendingSessionRequestResultLockedIfNeeded(Landroid/media/RoutingSessionInfo;)V

    .line 557
    monitor-exit v4
    :try_end_161
    .catchall {:try_start_15d .. :try_end_161} :catchall_1c1

    .line 559
    :try_start_161
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    .line 560
    monitor-exit v0

    return v2

    .line 562
    :cond_169
    sget-boolean v1, Lcom/android/server/media/SystemMediaRoute2Provider;->DEBUG:Z

    if-eqz v1, :cond_183

    .line 563
    const-string v1, "MR2SystemProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating system routing session info : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_183
    iput-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSystemSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 566
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->onSystemSessionInfoUpdated()V

    .line 567
    new-instance v1, Landroid/media/RoutingSessionInfo$Builder;

    const-string v4, "SYSTEM_SESSION"

    const-string v6, ""

    invoke-direct {v1, v4, v6}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 570
    invoke-virtual {v1, v4}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    .line 571
    invoke-virtual {v1, v5}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    const-string v4, "DEFAULT_ROUTE"

    .line 572
    invoke-virtual {v1, v4}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    .line 573
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/media/RoutingSessionInfo$Builder;->setTransferReason(I)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    .line 575
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 576
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    move-result-object v3

    .line 574
    invoke-virtual {v1, v4, v3}, Landroid/media/RoutingSessionInfo$Builder;->setTransferInitiator(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    .line 577
    invoke-virtual {v1, v2}, Landroid/media/RoutingSessionInfo$Builder;->setReleaseType(I)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v1

    .line 578
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 579
    monitor-exit v0
    :try_end_1c0
    .catchall {:try_start_161 .. :try_end_1c0} :catchall_59

    return v5

    :catchall_1c1
    move-exception p0

    .line 557
    :try_start_1c2
    monitor-exit v4
    :try_end_1c3
    .catchall {:try_start_1c2 .. :try_end_1c3} :catchall_1c1

    :try_start_1c3
    throw p0
    :try_end_1c4
    .catchall {:try_start_1c3 .. :try_end_1c4} :catchall_59

    .line 542
    :goto_1c4
    :try_start_1c4
    monitor-exit v11
    :try_end_1c5
    .catchall {:try_start_1c4 .. :try_end_1c5} :catchall_138

    :try_start_1c5
    throw p0

    .line 581
    :goto_1c6
    monitor-exit v0
    :try_end_1c7
    .catchall {:try_start_1c5 .. :try_end_1c7} :catchall_59

    throw p0
.end method

.method public updateVolume()V
    .registers 4

    .line 674
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 676
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getVolume()I

    move-result v1

    if-eq v1, v0, :cond_20

    .line 677
    new-instance v1, Landroid/media/MediaRoute2Info$Builder;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {v1, v2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 678
    invoke-virtual {v1, v0}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    .line 679
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 681
    :cond_20
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDeviceRouteController:Lcom/android/server/media/DeviceRouteController;

    invoke-interface {v1, v0}, Lcom/android/server/media/DeviceRouteController;->updateVolume(I)Z

    .line 682
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->publishProviderState()V

    return-void
.end method
